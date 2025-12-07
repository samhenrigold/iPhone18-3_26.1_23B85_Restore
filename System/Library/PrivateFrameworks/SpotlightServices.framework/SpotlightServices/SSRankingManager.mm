@interface SSRankingManager
+ (BOOL)searchToolShouldFilterEventBeforeRanking:(id)ranking queryContext:(id)context matchQUIntent:(BOOL)intent searchToolBundles:(id)bundles useLLMQU:(BOOL)u hasEventTypeFromQU:(BOOL)qU;
+ (BOOL)searchToolShouldFilterResultBeforeRanking:(id)ranking queryContext:(id)context matchQUIntent:(BOOL)intent intentAndResultWithStartDueDate:(BOOL)date searchToolBundles:(id)bundles useLLMQU:(BOOL)u;
+ (BOOL)searchToolShouldFilterWalletResultBeforeRanking:(id)ranking queryContext:(id)context;
+ (float)computeThresholdWithScale:(float)scale bias:(float)bias cutoffOffset:(float)offset;
+ (float)topicalityAdjustmentForHighlyEngagedFileResult:(id)result topicalityBeforeAdjustment:(float)adjustment engagement:(float)engagement;
+ (float)topicalityAdjustmentForMessageFreshness:(float)freshness topicalityBeforeAdjustment:(float)adjustment;
+ (id)bundleIDSetsForQUIntent:(id)intent;
+ (id)getArrivalLocationStringFromResult:(id)result;
+ (id)getCoreDuetValues;
+ (id)getDemoteNonExactMatchBundle;
+ (id)getDepartureLocationStringFromResult:(id)result;
+ (id)getEventIntentFallbackTokens;
+ (id)getForbiddenSecondSections;
+ (id)getLegacyTophitSection;
+ (id)getLocationStringFromResult:(id)result;
+ (id)getPoorSecondSections;
+ (id)getSearchToolL2ModelManager;
+ (id)getSuggestionsRankingThresholds;
+ (id)getTopHitItems:(id)items;
+ (id)getTopHitsContinuationThresholds;
+ (id)getTopHitsThresholdsForBundleId:(unint64_t)id queryLength:(unint64_t)length queryTermCount:(char)count getFallback:;
+ (id)keyForIntervalType:(int64_t)type;
+ (id)nominateServerTopHitForSection:(id)section queryString:(id)string language:(id)language currentTime:(double)time;
+ (id)processSearchToolFinalResults:(id)results queryContext:(id)context;
+ (id)rankLocalBundles:(id)bundles sectionMapping:(id)mapping l3RankingScores:(id)scores;
+ (id)rankLocalBundlesUsingModelL3ScoreAndRules:(id)rules sectionMapping:(id)mapping l3RankingScores:(id)scores;
+ (id)rankLocalBundlesUsingOriginalL2ScoreAndRules:(id)rules sectionMapping:(id)mapping l3RankingScores:(id)scores;
+ (id)searchToolPopulateResultsForBiomeForTTRWithResult:(id)result queryContext:(id)context;
+ (uint64_t)getMinMisspellingLengthForLanguage:(uint64_t)language;
+ (uint64_t)getRecencyIntervalForBundleId:(uint64_t)id intervalType:(unint64_t)type indexRequired:;
+ (uint64_t)getRecencyIntervalForBundleType:(uint64_t)type intervalType:(unint64_t)intervalType indexRequired:;
+ (uint64_t)isKeywordsHidingEnabledForLanguage:(uint64_t)language;
+ (void)calculateLikelihoodForSearchTool:(id)tool queryContext:(id)context isQUInferredIntent:(id)intent isEventSearchIntent:(BOOL)searchIntent;
+ (void)determineTopHitsForSafariSection:(id)section forQuery:(id)query;
+ (void)extractThresholdABValues:(id)values forLanguage:(id)language;
+ (void)fetchDuetValues;
+ (void)fillRankingPosition:(id)position;
+ (void)fullPageRankingShouldHideUnderShowMore:(id)more item:(id)item bundleID:(id)d;
+ (void)initialize;
+ (void)logL3Results:(id)results l3Info:(id)info;
+ (void)moveSafariTopHitsToTopOfSection:(id)section;
+ (void)parseWalletBoardingPass:(id)pass isSearchToolClient:(BOOL *)client;
+ (void)prepareSafariUserTypedURLForTopHitNomination:(id)nomination query:(id)query;
+ (void)prepareServerSectionRankingItemsForTopHitNomination:(id)nomination currentTime:(double)time;
+ (void)prepareTopHitsParametersForLanguage:(id)language;
+ (void)rankLocalBundlesUsingL3Score:(id)score sectionMapping:(id)mapping l3RankingScores:(id)scores;
+ (void)reloadCommittedSearchParametersFromTrial;
+ (void)reloadLocaleSpecificMatchingParameters;
+ (void)reloadRankingParametersFromTrial;
+ (void)reloadRecencyThresholds;
+ (void)reloadSuggestionsRankingThresholds;
+ (void)reloadTopHitsParametersFromTrial;
+ (void)searchToolDeduplicateResults:(id)results;
+ (void)searchToolDonateResultsToBiomeForTTRWithData:(id)data forQuery:(id)query;
+ (void)searchToolExtractDocTextualFeature:(id)feature queryContext:(id)context title:(id)title subject:(id)subject displayName:(id)name searchTermsSet:(id)set;
+ (void)searchToolFilterResultsAfterRanking:(id)ranking queryContext:(id)context;
+ (void)searchToolRanker:(id)ranker queryContext:(id)context searchToolBundles:(id)bundles;
+ (void)searchToolSortResults:(id)results isQUIntent:(id)intent isQUInferredIntent:(id)inferredIntent queryContext:(id)context searchToolBundles:(id)bundles eventSearchIntent:(BOOL)searchIntent maxTopicalityPerBundle:(id)bundle preExtractionBoost:(BOOL)self0;
- (BOOL)sectionContainsOnlyStaleApps:(id)apps shortcutResult:(id)result;
- (BOOL)sectionDoesNotContainMoreRecentlyUsedApps:(id)apps lastUsedDate:(id)date;
- (BOOL)sectionsContainsOnlyOneAppSection:(id)section;
- (BOOL)sectionsContainsShortcutResult:(id)result shortcutResult:(id)shortcutResult;
- (SSRankingManager)initWithQuery:(id)query;
- (double)roundedValueForScore:(double)score;
- (float)appFreshnessAdjustmentForLaunchCounts:(float)counts topicality:(float)topicality engagement:(float)engagement launchCount:(float)count launchCountTotal:(float)total nAppResultsWithLaunchCount:(unint64_t)launchCount launchPortion:(float *)portion;
- (float)appFreshnessAdjustmentForOutOfSpotlightCounts:(float)counts topicality:(float)topicality engagement:(float)engagement launchCount:(float)count launchCountTotal:(float)total nAppResultsWithLaunchCount:(unint64_t)launchCount launchPortion:(float *)portion;
- (float)freshnessAdjustmentForAppResult:(id)result section:(id)section freshnessBeforeAdjustment:(float)adjustment topicality:(float)topicality engagement:(float)engagement appsWithLaunchCount:(BOOL)count isSearchToolClient:(BOOL)client;
- (float)likelihoodAdjustmentForMailAndNotesResult:(float)result freshness:(float)freshness topicality:(float)topicality engagement:(float)engagement numQueryTokens:(unint64_t)tokens queryLength:(unint64_t)length;
- (float)topicalityAdjustmentForContactsResult:(id)result topicalityBeforeAdjustment:(float)result freshness:(float)freshness;
- (id)CEPValuesForTTR;
- (id)applyTopSectionPolicy:(id)policy withTopHitSection:(id)section isPeopleSearch:(BOOL)search queryKind:(unint64_t)kind correction:(id)correction queryLength:(unint64_t)length ranker:(id)ranker;
- (id)groupSectionsByCategory:(id)category genreMap:(id)map topSections:(id)sections;
- (id)keyForSection:(id)section;
- (id)makeTopHitSectionUsingSections:(id)sections withItemRanker:(id)ranker sectionHeader:(id)header shortcutResult:(id)result isBullseyeNonCommittedSearch:(BOOL)search isBullseyeCommittedSearch:(BOOL)committedSearch parsecEnabled:(BOOL)enabled maxNumAppsInTopHitSection:(unint64_t)self0;
- (id)nominateLocalTopHitsFromSections:(id)sections withItemRanker:(id)ranker sectionHeader:(id)header maxInitiallyVisibleResults:(unint64_t)results shortcutResult:(id)result isBullseyeNonCommittedSearch:(BOOL)search isBullseyeCommittedSearch:(BOOL)committedSearch parsecEnabled:(BOOL)self0 maxNumAppsInTopHitSection:(unint64_t)self1 queryId:(unint64_t)self2 isSearchToolClient:(BOOL)self3 qu:(id)self4 currentTime:(double)self5;
- (id)rankAppsAtTopForScopedSearchWithSections:(id)sections;
- (id)rankSectionsUsingBundleIDToSectionMapping:(id)mapping withRanker:(id)ranker preferredBundleIds:(id)ids isScopedSearch:(BOOL)search queryId:(unint64_t)id isCJK:(BOOL)k isBullseyeNonCommittedSearch:(BOOL)committedSearch isBullseyeCommittedSearch:(BOOL)self0 isPeopleSearch:(BOOL)self1 queryContext:(id)self2;
- (id)relativeRankWithAbsRank:(id)rank numberValues:(unint64_t)values;
- (id)removeBlockListedSectionsForMapping:(id)mapping;
- (id)removeBlockListedSectionsForMapping:(id)mapping withRankingConfiguration:(id)configuration;
- (int64_t)compareDate:(id)date withDate:(id)withDate;
- (void)_tagQUIntent:(id)intent qu:(id)qu;
- (void)addCEPValuesForTTR;
- (void)applyTopHitRankingPolicyToSection:(id)section topResultSection:(id)resultSection maxTopHitCount:(int64_t)count isShortcut:(BOOL)shortcut;
- (void)calculateLikelihoodAndPriorForSection:(id)section currentTime:(double)time shortcutResult:(id)result queryId:(unint64_t)id ranker:(id)ranker nominateLocalTopHit:(BOOL)hit qu:(id)qu isSearchToolClient:(BOOL)self0;
- (void)finalizeLog;
- (void)logPommesScoringForRankingItem:(id)item queryId:(unint64_t)id query:(id)query bundleID:(id)d name:(id)name topicality:(float)topicality freshness:(float)freshness engagement:(float)self0 likelihood:(float)self1 launchPortion:(float)self2 launchCount:(float)self3 launchPortionOutOfSpotlight:(float)self4 launchCountOutOfSpotlight:(float)self5 engagedInSpotlight:(BOOL)self6 exactMatchedLaunchString:(BOOL)self7 lastUsedDate:(id)self8 recentEngagementDateInSpotlight:(id)self9 recentEngagementDateInApp:(id)app recentEngagementDateOutSpotlight:(id)outSpotlight nominateLocalTopHit:(BOOL)hit isSearchToolClient:(BOOL)client;
- (void)refineSectionShowingVisibleResultsWithBetterTextMatches:(id)matches;
- (void)sendTTRLogsWithSections:(id)sections queryContext:(id)context isCommittedSearch:(BOOL)search parsecCameLaterThanSRT:(BOOL)t;
- (void)updateServerScoresUsingBlockOrder:(id)order bundleFeatures:(id)features;
- (void)updateWithNewRankingInfo:(id)info;
- (void)withinSectionTopHitNomination:(id)nomination withItemRanker:(id)ranker;
@end

@implementation SSRankingManager

+ (id)bundleIDSetsForQUIntent:(id)intent
{
  intentCopy = intent;
  if (bundleIDSetsForQUIntent__onceToken != -1)
  {
    +[SSRankingManager bundleIDSetsForQUIntent:];
  }

  v4 = intentCopy;
  v5 = @"INTENT_FLIGHT";
  if (([(__CFString *)v4 hasPrefix:@"INTENT_FLIGHT"]& 1) != 0 || (v5 = @"INTENT_HOTEL", v6 = v4, [(__CFString *)v4 hasPrefix:@"INTENT_HOTEL"]))
  {

    v6 = v5;
  }

  if ([(__CFString *)v4 hasPrefix:@"INTENT_RESTAURANT"])
  {

    v6 = @"INTENT_RESTAURANT";
  }

  v7 = [bundleIDSetsForQUIntent___quIntentBundleSets objectForKeyedSubscript:v4];

  return v7;
}

void __44__SSRankingManager_bundleIDSetsForQUIntent___block_invoke()
{
  v51[12] = *MEMORY[0x1E69E9840];
  v50[0] = @"INTENT_PHOTO_SEARCH";
  v0 = MEMORY[0x1E695DFD8];
  v49 = @"com.apple.mobileslideshow";
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v36 = [v0 setWithArray:v37];
  v51[0] = v36;
  v50[1] = @"INTENT_PHOTO_SEARCH_OCR";
  v1 = MEMORY[0x1E695DFD8];
  v48 = @"com.apple.mobileslideshow";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v34 = [v1 setWithArray:v35];
  v51[1] = v34;
  v50[2] = @"INTENT_NOTES_SEARCH";
  v2 = MEMORY[0x1E695DFD8];
  v47 = @"com.apple.mobilenotes";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v32 = [v2 setWithArray:v33];
  v51[2] = v32;
  v50[3] = @"INTENT_FILE_SEARCH";
  v3 = MEMORY[0x1E695DFD8];
  v46 = @"com.apple.DocumentsApp";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v30 = [v3 setWithArray:v31];
  v51[3] = v30;
  v50[4] = @"INTENT_MAIL_SEARCH";
  v4 = MEMORY[0x1E695DFD8];
  v45 = @"com.apple.mobilemail";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v28 = [v4 setWithArray:v29];
  v51[4] = v28;
  v50[5] = @"INTENT_MESSAGE_SEARCH";
  v5 = MEMORY[0x1E695DFD8];
  v44[0] = @"com.apple.MobileSMS";
  v44[1] = @"com.apple.mobilemail";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v26 = [v5 setWithArray:v27];
  v51[5] = v26;
  v50[6] = @"INTENT_CALENDAR_SEARCH";
  v6 = MEMORY[0x1E695DFD8];
  v43 = @"com.apple.mobilecal";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v24 = [v6 setWithArray:v25];
  v51[6] = v24;
  v50[7] = @"INTENT_REMINDER_SEARCH";
  v7 = MEMORY[0x1E695DFD8];
  v42 = @"com.apple.reminders";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v22 = [v7 setWithArray:v23];
  v51[7] = v22;
  v50[8] = @"INTENT_SAFARI_SEARCH";
  v8 = MEMORY[0x1E695DFD8];
  v41 = @"com.apple.mobilesafari";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v9 = [v8 setWithArray:v21];
  v51[8] = v9;
  v50[9] = @"INTENT_FLIGHT";
  v10 = MEMORY[0x1E695DFD8];
  v40[0] = @"com.apple.spotlight.events";
  v40[1] = @"com.apple.mobilemail";
  v40[2] = @"com.apple.mobilecal";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  v12 = [v10 setWithArray:v11];
  v51[9] = v12;
  v50[10] = @"INTENT_HOTEL";
  v13 = MEMORY[0x1E695DFD8];
  v39[0] = @"com.apple.spotlight.events";
  v39[1] = @"com.apple.mobilemail";
  v39[2] = @"com.apple.mobilecal";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
  v15 = [v13 setWithArray:v14];
  v51[10] = v15;
  v50[11] = @"INTENT_RESTAURANT";
  v16 = MEMORY[0x1E695DFD8];
  v38[0] = @"com.apple.spotlight.events";
  v38[1] = @"com.apple.mobilemail";
  v38[2] = @"com.apple.mobilecal";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v18 = [v16 setWithArray:v17];
  v51[11] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:12];
  v20 = bundleIDSetsForQUIntent___quIntentBundleSets;
  bundleIDSetsForQUIntent___quIntentBundleSets = v19;
}

+ (id)getEventIntentFallbackTokens
{
  if (getEventIntentFallbackTokens_onceToken != -1)
  {
    +[SSRankingManager getEventIntentFallbackTokens];
  }

  v3 = getEventIntentFallbackTokens_eventIntentFallbackTokens;

  return v3;
}

void __48__SSRankingManager_getEventIntentFallbackTokens__block_invoke()
{
  v0 = getEventIntentFallbackTokens_eventIntentFallbackTokens;
  getEventIntentFallbackTokens_eventIntentFallbackTokens = &unk_1F55B6F68;
}

+ (void)fetchDuetValues
{
  v4 = +[PRSMLManager getSPMLSharedInstance];
  v2 = [v4 getRankedCategoriesAsDictionaryForDays:14];
  os_unfair_lock_lock(&sDuetValuesLock);
  v3 = initRankedCategoriesFromDuet;
  initRankedCategoriesFromDuet = v2;

  os_unfair_lock_unlock(&sDuetValuesLock);
}

+ (id)getCoreDuetValues
{
  os_unfair_lock_lock(&sDuetValuesLock);
  v2 = initRankedCategoriesFromDuet;
  os_unfair_lock_unlock(&sDuetValuesLock);

  return v2;
}

- (double)roundedValueForScore:(double)score
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%.3g", score);
  return atof(__str);
}

- (id)removeBlockListedSectionsForMapping:(id)mapping withRankingConfiguration:(id)configuration
{
  v23 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  configurationCopy = configuration;
  [configurationCopy lock];
  cepBlocklistSet = [configurationCopy cepBlocklistSet];
  v8 = cepBlocklistSet;
  if (mappingCopy && cepBlocklistSet)
  {
    v9 = [mappingCopy mutableCopy];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [mappingCopy allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([v8 containsObject:v15])
          {
            [v9 removeObjectForKey:v15];
          }
        }

        v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    mappingCopy = v16;
  }

  [configurationCopy unlock];

  return mappingCopy;
}

- (id)relativeRankWithAbsRank:(id)rank numberValues:(unint64_t)values
{
  v5 = MEMORY[0x1E696AD98];
  [rank doubleValue];
  v7 = (v6 + -1.0) / values;

  return [v5 numberWithDouble:v7];
}

- (void)applyTopHitRankingPolicyToSection:(id)section topResultSection:(id)resultSection maxTopHitCount:(int64_t)count isShortcut:(BOOL)shortcut
{
  v31 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  resultSectionCopy = resultSection;
  if ([sectionCopy resultsCount] > count)
  {
    [sectionCopy removeResultsInRange:{count, objc_msgSend(sectionCopy, "resultsCount") - count}];
  }

  if ([resultSectionCopy resultsCount])
  {
    results = [resultSectionCopy results];
    v12 = [results objectAtIndexedSubscript:0];

    rankingItem = [v12 rankingItem];
    if (![rankingItem eligibleForDemotion] || shortcut || objc_msgSend(v12, "topHit"))
    {
    }

    else
    {
      rankingItem2 = [v12 rankingItem];
      topHitReason = [rankingItem2 topHitReason];

      if (!topHitReason)
      {
        results2 = [sectionCopy results];
        v17 = [results2 copy];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v22 = *v27;
          do
          {
            v23 = 0;
            v24 = v21;
            do
            {
              if (*v27 != v22)
              {
                objc_enumerationMutation(v18);
              }

              v25 = *(*(&v26 + 1) + 8 * v23);
              v21 = v24 + 1;
              [resultSectionCopy addResults:v25 atIndex:{v24, v26}];
              [sectionCopy removeResults:v25];
              ++v23;
              ++v24;
            }

            while (v20 != v23);
            v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v20);
        }

        if (![sectionCopy resultsCount])
        {
          [resultSectionCopy setPinToTop:1];
        }
      }
    }
  }
}

- (BOOL)sectionContainsOnlyStaleApps:(id)apps shortcutResult:(id)result
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [apps resultSet];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = *v28;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        sectionBundleIdentifier = [v7 sectionBundleIdentifier];
        if (![sectionBundleIdentifier isEqualToString:@"com.apple.application"])
        {
          goto LABEL_19;
        }

        rankingItem = [v7 rankingItem];
        if ([rankingItem didMatchRankingDescriptor:@"kMDItemLastUsedDateThisMonth"])
        {

LABEL_19:
LABEL_20:
          v23 = 0;
          goto LABEL_21;
        }

        rankingItem2 = [v7 rankingItem];
        l2FeatureVector = [rankingItem2 L2FeatureVector];
        isAppInDock = [l2FeatureVector isAppInDock];

        if (isAppInDock)
        {
          goto LABEL_20;
        }

        rankingItem3 = [v7 rankingItem];
        v14 = [rankingItem3 didMatchRankingDescriptor:@"kMDItemContentCreationDateToday"];

        if (v14)
        {
          rankingItem4 = [v7 rankingItem];
          v16 = SSCompactRankingAttrsGetValue([rankingItem4 attributes], 0x186uLL);

          rankingItem5 = [v7 rankingItem];
          v18 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 0x20uLL);

          [v16 timeIntervalSinceReferenceDate];
          v20 = v19;
          [v18 timeIntervalSinceReferenceDate];
          v22 = v20 <= v21 ? v21 - v20 : v20 - v21;

          if (v22 < 600.0)
          {
            goto LABEL_20;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v23 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 1;
  }

LABEL_21:

  return v23;
}

- (BOOL)sectionDoesNotContainMoreRecentlyUsedApps:(id)apps lastUsedDate:(id)date
{
  v43 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [apps resultSet];
  v6 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v37 = *v39;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        rankingItem = [v9 rankingItem];
        if ([rankingItem didMatchRankingDescriptor:@"kMDItemLastUsedDateThisMonth"])
        {
          v11 = SSCompactRankingAttrsGetValue([rankingItem attributes], 9uLL);
          [v11 timeIntervalSinceReferenceDate];
          v13 = v12;
          [dateCopy timeIntervalSinceReferenceDate];
          v15 = v14;

          if (v13 > v15)
          {
            goto LABEL_21;
          }
        }

        contentType = [rankingItem contentType];
        v17 = [contentType isEqualToString:@"public.contact"];

        if (v17)
        {
          lastAccessDate = [rankingItem lastAccessDate];
          [lastAccessDate timeIntervalSinceReferenceDate];
          v20 = v19;
          [dateCopy timeIntervalSinceReferenceDate];
          v22 = v21;

          if (v20 > v22)
          {
            goto LABEL_21;
          }
        }

        rankingItem2 = [v9 rankingItem];
        v24 = [rankingItem2 didMatchRankingDescriptor:@"kMDItemContentCreationDateToday"];

        if (v24)
        {
          rankingItem3 = [v9 rankingItem];
          v26 = SSCompactRankingAttrsGetValue([rankingItem3 attributes], 0x186uLL);

          rankingItem4 = [v9 rankingItem];
          v28 = SSCompactRankingAttrsGetValue([rankingItem4 attributes], 0x20uLL);

          [v26 timeIntervalSinceReferenceDate];
          v30 = v29;
          [v28 timeIntervalSinceReferenceDate];
          if (v30 <= v31)
          {
            v32 = v31 - v30;
          }

          else
          {
            v32 = v30 - v31;
          }

          if (v32 < 600.0)
          {
            [dateCopy timeIntervalSinceReferenceDate];
            if (v30 > v33)
            {

LABEL_21:
              v34 = 0;
              goto LABEL_22;
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v34 = 1;
LABEL_22:

  return v34;
}

- (BOOL)sectionsContainsOnlyOneAppSection:(id)section
{
  sectionCopy = section;
  if (objc_msgSend_count(sectionCopy) == 1)
  {
    firstObject = [sectionCopy firstObject];
    resultSet = [firstObject resultSet];
    firstObject2 = [resultSet firstObject];

    rankingItem = [firstObject2 rankingItem];
    bundleIDType = [rankingItem bundleIDType];

    v9 = (bundleIDType >> 8) & 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)sectionsContainsShortcutResult:(id)result shortcutResult:(id)shortcutResult
{
  v37 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  shortcutResultCopy = shortcutResult;
  identifier = [shortcutResultCopy identifier];

  if (identifier)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = resultCopy;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      v25 = resultCopy;
      v26 = v8;
      v24 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          if ([v13 domain] != 2)
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            resultSet = [v13 resultSet];
            v15 = [resultSet countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v28;
              while (2)
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v28 != v17)
                  {
                    objc_enumerationMutation(resultSet);
                  }

                  identifier2 = [*(*(&v27 + 1) + 8 * j) identifier];
                  identifier3 = [shortcutResultCopy identifier];
                  v21 = [identifier2 isEqualToString:identifier3];

                  if (v21)
                  {

                    v22 = 1;
                    resultCopy = v25;
                    v8 = v26;
                    goto LABEL_23;
                  }
                }

                v16 = [resultSet countByEnumeratingWithState:&v27 objects:v35 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v26;
            v11 = v24;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
        v22 = 0;
        resultCopy = v25;
      }

      while (v10);
    }

    else
    {
      v22 = 0;
    }

LABEL_23:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (void)moveSafariTopHitsToTopOfSection:(id)section
{
  sectionCopy = section;
  v3 = objc_opt_new();
  resultSet = [sectionCopy resultSet];
  v5 = objc_msgSend_count(resultSet);

  if (v5)
  {
    v6 = 0;
    do
    {
      resultSet2 = [sectionCopy resultSet];
      v8 = [resultSet2 objectAtIndexedSubscript:v6];

      if ([v8 isSafariTopHit])
      {
        [v3 addIndex:v6];
      }

      ++v6;
      resultSet3 = [sectionCopy resultSet];
      v10 = objc_msgSend_count(resultSet3);
    }

    while (v10 > v6);
  }

  [sectionCopy moveResultsAtIndexes:v3 toIndex:0];
  [sectionCopy sortRange:0 options:objc_msgSend_count(v3) usingComparator:{0, &__block_literal_global_489}];
}

uint64_t __52__SSRankingManager_moveSafariTopHitsToTopOfSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 contentType];
  v7 = [v6 isEqualToString:@"com.apple.safari.bookmark"];

  v8 = [v5 contentType];
  v9 = [v8 isEqualToString:@"com.apple.safari.bookmark"];

  if (!v7 || v9)
  {
    if (v7 & 1 | ((v9 & 1) == 0))
    {
      v11 = [v4 contentURL];
      v12 = [v5 contentURL];
      v13 = [v11 length];
      v14 = [v12 length];
      if (v13 >= v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      if (v13 > v14)
      {
        v10 = 1;
      }

      else
      {
        v10 = v15;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)logPommesScoringForRankingItem:(id)item queryId:(unint64_t)id query:(id)query bundleID:(id)d name:(id)name topicality:(float)topicality freshness:(float)freshness engagement:(float)self0 likelihood:(float)self1 launchPortion:(float)self2 launchCount:(float)self3 launchPortionOutOfSpotlight:(float)self4 launchCountOutOfSpotlight:(float)self5 engagedInSpotlight:(BOOL)self6 exactMatchedLaunchString:(BOOL)self7 lastUsedDate:(id)self8 recentEngagementDateInSpotlight:(id)self9 recentEngagementDateInApp:(id)app recentEngagementDateOutSpotlight:(id)outSpotlight nominateLocalTopHit:(BOOL)hit isSearchToolClient:(BOOL)client
{
  v98 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dateCopy = date;
  dateInSpotlightCopy = dateInSpotlight;
  appCopy = app;
  outSpotlightCopy = outSpotlight;
  v86 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  dCopy = d;
  v80 = SSRedactStringClient(query, 0, client);
  isLocalTopHitCandidate = [itemCopy isLocalTopHitCandidate];
  identifier = [itemCopy identifier];
  v76 = SSRedactStringClient(identifier, 0, client);
  v74 = SSRedactStringClient(nameCopy, 1, client);

  topicalityCopy = topicality;
  [itemCopy pommesL1Score];
  v35 = v34;
  [itemCopy embeddingSimilarity];
  v37 = v36;
  [itemCopy keywordMatchScore];
  v39 = v38;
  documentEmbeddingAvailable = [itemCopy documentEmbeddingAvailable];
  retrievalType = [itemCopy retrievalType];
  intValue = [retrievalType intValue];
  if (client)
  {
    v42 = @"spotlight_freshness";
  }

  else
  {
    v42 = @"freshness";
  }

  v43 = [v86 stringWithFormat:@"[TH=%d] qid: %llu, query: %@, isLocalCand: %d, bundleID: %@, identifier: %@, name: %@, topicality: %f (pommesL1Score = %f, embeddingSimilarity = %f, keywordMatchScore = %f, documentEmbeddingAvailable = %d, retrievalType = %i), %@: %f, ri: %p/%p/%lu, isMailCategory: (HighImpact = %d, Promotions = %d, Transactions = %d, Updates = %d)", hit, id, v80, isLocalTopHitCandidate, dCopy, v76, v74, *&topicalityCopy, *&v35, *&v37, *&v39, documentEmbeddingAvailable, intValue, v42, freshness, itemCopy, objc_msgSend(itemCopy, "attributes"), SSCompactRankingAttrsGetCount(objc_msgSend(itemCopy, "attributes")), objc_msgSend(itemCopy, "isMailCategoryHighImpact"), objc_msgSend(itemCopy, "isMailCategoryPromotions"), objc_msgSend(itemCopy, "isMailCategoryTransactions"), objc_msgSend(itemCopy, "isMailCategoryUpdates")];

  v90 = MEMORY[0x1E696AEC0];
  if (client)
  {
    v88 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x16DuLL);
    v87 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x20uLL);
    v85 = SSCompactRankingAttrsGetValue([itemCopy attributes], 9uLL);
    v81 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x19uLL);
    v79 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x18AuLL);
    v83 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x11uLL);
    v77 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x12uLL);
    startDueDateToNowInSeconds = [itemCopy startDueDateToNowInSeconds];
    v71 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [itemCopy detectedEventType]);
    v61 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x11DuLL);
    v67 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x120uLL);
    v75 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x122uLL);
    v64 = SSRedactStringClient(v75, 1, 1);
    v69 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x65uLL);
    v62 = SSRedactStringClient(v69, 1, 1);
    v65 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x145uLL);
    v44 = SSRedactStringClient(v65, 1, 1);
    v63 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x158uLL);
    v45 = SSRedactStringClient(v63, 1, 1);
    v46 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0x159uLL);
    v47 = SSRedactStringClient(v46, 1, 1);
    v91 = [v90 stringWithFormat:@"%@ dates=(receivedDate=[%@] contentCreationDate=[%@] lastUsedDate=[%@] contentModificationDate=[%@] sentDate=[%@] startDate=[%@] endDate=[%@] startDueDateToNowInSeconds=%ld) documentSignals=(detectedEventTypes=%@ cardType=%@ link=(type=%@ name=%@ url=%@ urlDescription=%@ lpTitle=%@ lpDescription=%@) calendarEventDetection=(Flight=%i Hotel=%i Restaurant=%i Other=%i) mostRecentTimeToQueryInMinutes=%ld) ", v43, v88, v87, v85, v81, v79, v83, v77, startDueDateToNowInSeconds, v71, v61, v67, v64, v62, v44, v45, v47, objc_msgSend(itemCopy, "isCalendarFlightEventType"), objc_msgSend(itemCopy, "isCalendarHotelEventType"), objc_msgSend(itemCopy, "isCalendarRestaurantEventType"), objc_msgSend(itemCopy, "isCalendarOtherReservationEventType"), objc_msgSend(itemCopy, "mostRecentTimeToQueryInMinutesForFreshness")];

    v48 = SSGeneralLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v91;
      v97 = v91;
      _os_log_impl(&dword_1D9F69000, v48, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <Engagement_Debug> %@", buf, 0xCu);
      v51 = dateInSpotlightCopy;
      v50 = dateCopy;
      v53 = outSpotlightCopy;
      v52 = appCopy;
    }

    else
    {
      v51 = dateInSpotlightCopy;
      v50 = dateCopy;
      v53 = outSpotlightCopy;
      v52 = appCopy;
      v49 = v91;
    }
  }

  else
  {
    matchedQUIntent = [itemCopy matchedQUIntent];
    quIntentAvailable = [itemCopy quIntentAvailable];
    [itemCopy quIntentScore];
    v57 = v56;
    wasEngagedInSpotlight = [itemCopy wasEngagedInSpotlight];
    exactMatchedLaunchString = [itemCopy exactMatchedLaunchString];
    [itemCopy score];
    v53 = outSpotlightCopy;
    v52 = appCopy;
    v49 = [v90 stringWithFormat:@"%@, QU: (matchedQUIntent: %d, quIntentAvailable: %d, quIntentScore: %f), engagement: %f (launchPortion = %f, launchCount = %f, launchPortionOutSpotlight = %f, launchCountOutSpotlight = %f, engagedInSpotlight = %d, exactMatchedLaunchString = %d, lastUsedDate = %@, recentEngInSpotlight = %@, recentEngInApp = %@, recentEngOutSpotlight = %@), likelihood: %f, L2 model: %f, spellCorrectedApp: %d", v43, matchedQUIntent, quIntentAvailable, *&v57, engagement, portion, count, spotlight, ofSpotlight, wasEngagedInSpotlight, exactMatchedLaunchString, dateCopy, dateInSpotlightCopy, appCopy, outSpotlightCopy, likelihood, v60, objc_msgSend(itemCopy, "spellCorrectedApp")];

    v48 = SSGeneralLog();
    v50 = dateCopy;
    v51 = dateInSpotlightCopy;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v97 = v49;
      _os_log_impl(&dword_1D9F69000, v48, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <Engagement_Debug> %@", buf, 0xCu);
    }
  }
}

- (float)freshnessAdjustmentForAppResult:(id)result section:(id)section freshnessBeforeAdjustment:(float)adjustment topicality:(float)topicality engagement:(float)engagement appsWithLaunchCount:(BOOL)count isSearchToolClient:(BOOL)client
{
  sectionCopy = section;
  topicalityCopy = topicality;
  if (topicality >= 1.0 && adjustment <= 0.9)
  {
    adjustmentCopy = 0.9;
  }

  else
  {
    adjustmentCopy = adjustment;
  }

  rankingItem = [result rankingItem];
  v19 = SSCompactRankingAttrsGetValue([rankingItem attributes], 0x77uLL);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 BOOLValue])
  {
    v20 = [sectionCopy resultsCount] > 1 && count;
    if (adjustmentCopy >= 0.98)
    {
      v20 = 0;
    }

    if (engagement >= 0.5)
    {
      v20 = 0;
    }

    if (topicalityCopy < 1.0 && v20)
    {
      adjustmentCopy = 0.2;
    }
  }

  return adjustmentCopy;
}

- (float)appFreshnessAdjustmentForLaunchCounts:(float)counts topicality:(float)topicality engagement:(float)engagement launchCount:(float)count launchCountTotal:(float)total nAppResultsWithLaunchCount:(unint64_t)launchCount launchPortion:(float *)portion
{
  if (count <= 0.0 || topicality <= 0.0 && engagement <= 0.0)
  {
    return counts;
  }

  if (launchCount >= 2 && launchCount < total)
  {
    v11 = count / total;
    if ((count / total) > 0.0)
    {
      v9 = 1.0;
      v12 = (v11 + 1.0) * counts;
      if (v12 <= 1.0)
      {
        v9 = v12;
      }

      *portion = v11;
      return v9;
    }

    return counts;
  }

  if (launchCount != 1 || topicality <= 0.8 && engagement <= 0.8 || total <= 0.0)
  {
    return counts;
  }

  v9 = 1.0;
  if (count > 1000.0)
  {
    return v9;
  }

  if (count <= 100.0)
  {
    if (count <= 50.0)
    {
      if (count <= 25.0)
      {
        if (count <= 10.0)
        {
          return counts;
        }

        v13 = counts <= 0.7;
        v9 = 0.7;
      }

      else
      {
        v13 = counts <= 0.8;
        v9 = 0.8;
      }
    }

    else
    {
      v13 = counts <= 0.85;
      v9 = 0.85;
    }
  }

  else
  {
    v13 = counts <= 0.95;
    v9 = 0.95;
  }

  if (!v13)
  {
    return counts;
  }

  return v9;
}

- (float)appFreshnessAdjustmentForOutOfSpotlightCounts:(float)counts topicality:(float)topicality engagement:(float)engagement launchCount:(float)count launchCountTotal:(float)total nAppResultsWithLaunchCount:(unint64_t)launchCount launchPortion:(float *)portion
{
  if (count <= 0.0 || topicality <= 0.0 && engagement <= 0.0)
  {
    return counts;
  }

  if (launchCount >= 2 && launchCount < total)
  {
    v11 = count / total;
    if ((count / total) > 0.0)
    {
      v9 = 1.0;
      v12 = (v11 + 1.0) * counts;
      if (v12 <= 1.0)
      {
        v9 = v12;
      }

      *portion = v11;
      return v9;
    }

    return counts;
  }

  if (launchCount != 1 || topicality <= 0.8 && engagement <= 0.8 || total <= 0.0)
  {
    return counts;
  }

  v9 = 1.0;
  if (count > 18.0)
  {
    return v9;
  }

  if (count <= 15.0)
  {
    if (count <= 12.0)
    {
      if (count <= 9.0)
      {
        if (count <= 6.0)
        {
          return counts;
        }

        v13 = counts <= 0.7;
        v9 = 0.7;
      }

      else
      {
        v13 = counts <= 0.8;
        v9 = 0.8;
      }
    }

    else
    {
      v13 = counts <= 0.85;
      v9 = 0.85;
    }
  }

  else
  {
    v13 = counts <= 0.95;
    v9 = 0.95;
  }

  if (!v13)
  {
    return counts;
  }

  return v9;
}

- (float)likelihoodAdjustmentForMailAndNotesResult:(float)result freshness:(float)freshness topicality:(float)topicality engagement:(float)engagement numQueryTokens:(unint64_t)tokens queryLength:(unint64_t)length
{
  v8 = freshness <= 0.2 || topicality <= 0.5;
  if (!v8 && (tokens > 2 || length >= 0x10))
  {
    v9 = result + 0.15;
    if (v9 > 1.0)
    {
      return 1.0;
    }

    return v9;
  }

  return result;
}

- (float)topicalityAdjustmentForContactsResult:(id)result topicalityBeforeAdjustment:(float)result freshness:(float)freshness
{
  freshnessCopy = freshness;
  if (freshnessCopy <= 0.94)
  {
    if (freshnessCopy <= 0.91)
    {
      return result;
    }

    resultCopy = result;
    if (result > 0.5)
    {
      v7 = resultCopy < 0.8;
      v8 = 0.8;
LABEL_7:
      if (v7)
      {
        return v8;
      }

      return result;
    }

    if (resultCopy > 0.1)
    {
      return 0.7;
    }
  }

  else
  {
    resultCopy2 = result;
    if (result > 0.5)
    {
      v7 = resultCopy2 < 0.9;
      v8 = 0.9;
      goto LABEL_7;
    }

    if (resultCopy2 > 0.1)
    {
      return 0.8;
    }
  }

  return result;
}

+ (float)topicalityAdjustmentForHighlyEngagedFileResult:(id)result topicalityBeforeAdjustment:(float)adjustment engagement:(float)engagement
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v8 = resultCopy;
  if (engagement >= 0.75)
  {
    rankingItem = [resultCopy rankingItem];
    if (rankingItem)
    {
      v10 = rankingItem;
      rankingItem2 = [v8 rankingItem];
      if ([rankingItem2 exactMatchedLaunchString])
      {
      }

      else
      {
        rankingItem3 = [v8 rankingItem];
        recentSimilarIntentEngagementDates = [rankingItem3 recentSimilarIntentEngagementDates];
        v14 = objc_msgSend_count(recentSimilarIntentEngagementDates);

        if (!v14)
        {
          goto LABEL_9;
        }
      }

      v15 = SSGeneralLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = 0x3FF0000000000000;
        _os_log_impl(&dword_1D9F69000, v15, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][Topicality adjustment][Files] Changing to %.04f due to high engagement", &v17, 0xCu);
      }

      adjustment = 1.0;
    }
  }

LABEL_9:

  return adjustment;
}

+ (float)topicalityAdjustmentForMessageFreshness:(float)freshness topicalityBeforeAdjustment:(float)adjustment
{
  v16 = *MEMORY[0x1E69E9840];
  freshnessCopy = freshness;
  if (freshness >= 0.65)
  {
    return adjustment;
  }

  v6 = freshness * adjustment;
  if ((freshness * adjustment) < 0.05)
  {
    v6 = 0.05;
  }

  if (freshness <= 2.2204e-16)
  {
    v7 = 0.049;
  }

  else
  {
    v7 = v6;
  }

  v8 = SSGeneralLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218496;
    adjustmentCopy = adjustment;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = freshnessCopy;
    _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][Topicality adjustment][Messages] Changing %.04f -> %.04f due to freshness %.04f", &v10, 0x20u);
  }

  return v7;
}

- (void)_tagQUIntent:(id)intent qu:(id)qu
{
  v33 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  quCopy = qu;
  v7 = quCopy;
  if (quCopy)
  {
    intentBundleIds = [quCopy intentBundleIds];
    if (intentBundleIds)
    {
      v9 = intentBundleIds;
      [v7 intentScore];
      v11 = v10;

      if (v11 >= 0.9)
      {
        intentBundleIds2 = [v7 intentBundleIds];
        bundleIdentifier = [intentCopy bundleIdentifier];
        v14 = [intentBundleIds2 containsObject:bundleIdentifier];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        results = [intentCopy results];
        v16 = [results countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v29;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v29 != v18)
              {
                objc_enumerationMutation(results);
              }

              v20 = *(*(&v28 + 1) + 8 * i);
              rankingItem = [v20 rankingItem];

              if (rankingItem)
              {
                rankingItem2 = [v20 rankingItem];
                [rankingItem2 setMatchedQUIntent:v14];

                v23 = -1.0;
                if (v14)
                {
                  [v7 intentScore];
                  v23 = v24;
                }

                rankingItem3 = [v20 rankingItem];
                *&v26 = v23;
                [rankingItem3 setQuIntentScore:v26];

                rankingItem4 = [v20 rankingItem];
                [rankingItem4 setQuIntentAvailable:1];
              }
            }

            v17 = [results countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v17);
        }
      }
    }
  }
}

- (void)calculateLikelihoodAndPriorForSection:(id)section currentTime:(double)time shortcutResult:(id)result queryId:(unint64_t)id ranker:(id)ranker nominateLocalTopHit:(BOOL)hit qu:(id)qu isSearchToolClient:(BOOL)self0
{
  hitCopy = hit;
  v286 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  resultCopy = result;
  rankerCopy = ranker;
  quCopy = qu;
  if (![sectionCopy resultsCount])
  {
    goto LABEL_118;
  }

  bundleIdentifier = [sectionCopy bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
  {
    [SSRankingManager prepareSafariUserTypedURLForTopHitNomination:sectionCopy query:self->_query];
  }

  rankingItem2 = bundleIdentifier;
  v17 = [bundleIdentifier isEqualToString:@"com.apple.application"];
  [(SSRankingManager *)self _tagQUIntent:sectionCopy qu:quCopy];
  v231 = sectionCopy;
  v234 = v17;
  v227 = quCopy;
  if (v17)
  {
    selfCopy = self;
    v283 = 0u;
    v281 = 0u;
    v282 = 0u;
    v280 = 0u;
    results = [sectionCopy results];
    v19 = [results countByEnumeratingWithState:&v280 objects:v285 count:16];
    if (!v19)
    {
      v21 = 0;
      v268 = 0;
      v23 = 0.0;
      v24 = 0.0;
      goto LABEL_45;
    }

    v20 = v19;
    v21 = 0;
    v268 = 0;
    v22 = *v281;
    v23 = 0.0;
    v24 = 0.0;
    while (1)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v281 != v22)
        {
          objc_enumerationMutation(results);
        }

        v26 = *(*(&v280 + 1) + 8 * i);
        v279 = 0.0;
        rankingItem = [v26 rankingItem];
        SSCompactRankingAttrsGetFloat([rankingItem attributes], 0x163uLL, &v279);

        v28 = v279;
        if (v279 <= 0.0)
        {
          rankingItem2 = [v26 rankingItem];
          if (![rankingItem2 wasEngagedInSpotlight])
          {
            v31 = 0;
LABEL_18:

            goto LABEL_19;
          }
        }

        rankingItem3 = [v26 rankingItem];
        [rankingItem3 topicalityScore];
        if (v30 <= 0.0)
        {
          rankingItem4 = [v26 rankingItem];
          [rankingItem4 engagementScore];
          v31 = v33 > 0.0;
        }

        else
        {
          v31 = 1;
        }

        if (v28 <= 0.0)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (v31)
        {
          v24 = v24 + v279;
        }

        if (SSEnableSpotlightPersonalizedRanking2024())
        {
          rankingItem5 = [v26 rankingItem];
          v35 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 0x75uLL);

          if (objc_msgSend_count(v35))
          {
            rankingItem6 = [v26 rankingItem];
            [rankingItem6 topicalityScore];
            if (v37 > 0.0)
            {

              goto LABEL_26;
            }

            rankingItem7 = [v26 rankingItem];
            [rankingItem7 engagementScore];
            v40 = v39;

            if (v40 > 0.0)
            {
LABEL_26:
              v23 = v23 + objc_msgSend_count(v35);
              ++v21;
            }
          }
        }

        v268 += v31;
      }

      v20 = [results countByEnumeratingWithState:&v280 objects:v285 count:16];
      if (!v20)
      {
LABEL_45:
        v230 = v24;
        v229 = v23;
        v232 = v21;
        self = selfCopy;

        sectionCopy = v231;
        goto LABEL_46;
      }
    }
  }

  if (([bundleIdentifier isEqualToString:@"com.apple.conversion"] & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.calculation") & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.worldclock") & 1) == 0 && !objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.datadetector.quick_actions"))
  {
    v232 = 0;
    v268 = 0;
    v229 = 0.0;
    v230 = 0.0;
LABEL_46:
    v239 = objc_opt_new();
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    obj = [sectionCopy results];
    v242 = [obj countByEnumeratingWithState:&v275 objects:v284 count:16];
    if (!v242)
    {
      goto LABEL_116;
    }

    v237 = *v276;
    selfCopy2 = self;
LABEL_48:
    v83 = 0;
    while (1)
    {
      if (*v276 != v237)
      {
        objc_enumerationMutation(obj);
      }

      v264 = v83;
      v84 = [objc_alloc(objc_opt_class()) initWithResult:*(*(&v275 + 1) + 8 * v83)];
      [v239 addObject:v84];
      rankingItem8 = [v84 rankingItem];
      [rankingItem8 topicalityScore];
      v87 = v86;

      rankingItem9 = [v84 rankingItem];
      [rankingItem9 engagementScore];
      v90 = v89;

      v279 = 0.0;
      v274 = 0;
      if (v87 > 0.0)
      {
        break;
      }

      v96 = 0.0;
      if (v90 <= 0.0)
      {
        v107 = 0.05;
      }

      else
      {
        v107 = v90 * 0.4;
      }

      v94 = 0.0;
LABEL_89:
      rankingItem10 = [v84 rankingItem];
      [rankingItem10 setFreshnessScore:v94];

      v273 = v107;
      v272 = 3227;
      rankingItem11 = [v84 rankingItem];
      l2FeatureVector = [rankingItem11 L2FeatureVector];
      [l2FeatureVector setScores:&v273 forFeatures:&v272 count:1];

      rankingItem12 = [v84 rankingItem];
      [rankingItem12 setTopicalityScore:v87];

      rankingItem13 = [v84 rankingItem];
      [rankingItem13 setLikelihood:v107];

      rankingItem14 = [v84 rankingItem];
      [rankingItem14 setFinalTopicality:v87];

      if (hitCopy)
      {
        [SSTopHitNominationManager nominateTopHitCandidate:v84];
      }

      rankingItem15 = [v84 rankingItem];
      v262 = SSCompactRankingAttrsGetValue([rankingItem15 attributes], 9uLL);

      rankingItem16 = [v84 rankingItem];
      v169 = SSCompactRankingAttrsGetValue([rankingItem16 attributes], 0x6DuLL);

      rankingItem17 = [v84 rankingItem];
      v171 = SSCompactRankingAttrsGetValue([rankingItem17 attributes], 0x73uLL);

      rankingItem18 = [v84 rankingItem];
      v173 = SSCompactRankingAttrsGetValue([rankingItem18 attributes], 7uLL);

      rankingItem19 = [v84 rankingItem];
      v260 = SSCompactRankingAttrsGetValue([rankingItem19 attributes], 0xCuLL);

      rankingItem20 = [v84 rankingItem];
      v271 = SSCompactRankingAttrsGetValue([rankingItem20 attributes], 4uLL);

      if (SSEnableSpotlightPersonalizedRankingFeedbackLogging(v176))
      {
        rankingItem21 = [v84 rankingItem];
        v178 = SSCompactRankingAttrsGetValue([rankingItem21 attributes], 9uLL);
        v179 = v178;
        if (v178)
        {
          [v178 timeIntervalSinceReferenceDate];
          v181 = trunc(fmax(time - v180, 0.0)) / 86400.0;
          if (v181 <= 540.0)
          {
            if (v181 <= 365.0)
            {
              if (v181 <= 90.0)
              {
                if (v181 <= 30.0)
                {
                  if (v181 <= 7.0)
                  {
                    if (v181 <= 3.0)
                    {
                      if (v181 <= 1.0)
                      {
                        v182 = 1;
                      }

                      else
                      {
                        v182 = 2;
                      }
                    }

                    else
                    {
                      v182 = 3;
                    }
                  }

                  else
                  {
                    v182 = 4;
                  }
                }

                else
                {
                  v182 = 5;
                }
              }

              else
              {
                v182 = 6;
              }
            }

            else
            {
              v182 = 7;
            }
          }

          else
          {
            v182 = 8;
          }
        }

        else
        {
          v182 = 0;
        }

        v183 = objc_opt_new();
        [v183 setResultQueryRecency:v182];
        v184 = MEMORY[0x1E696AD98];
        [rankingItem21 l2Score];
        v185 = [v184 numberWithFloat:?];
        [v183 setPommesL2Score:v185];

        v186 = MEMORY[0x1E696AD98];
        [rankingItem21 topicalityScore];
        v188 = [v186 numberWithDouble:round(v187 * 100000000.0) / 100000000.0];
        [v183 setTopicalityScore:v188];

        v189 = MEMORY[0x1E696AD98];
        [rankingItem21 freshnessScore];
        v191 = [v189 numberWithDouble:round(v190 * 100000000.0) / 100000000.0];
        [v183 setFreshness:v191];

        v192 = MEMORY[0x1E696AD98];
        [rankingItem21 engagementScore];
        v194 = [v192 numberWithDouble:round(v193 * 100000000.0) / 100000000.0];
        [v183 setEngagementScore:v194];

        v195 = MEMORY[0x1E696AD98];
        [rankingItem21 likelihood];
        v197 = [v195 numberWithDouble:round(v196 * 100000000.0) / 100000000.0];
        [v183 setPredictedLikelihoodOfEngagement:v197];

        [v183 setWasNominatedAsTopHit:{objc_msgSend(rankingItem21, "isLocalTopHitCandidate")}];
        [v183 setIsExactMatchOfLaunchString:{objc_msgSend(rankingItem21, "exactMatchedLaunchString")}];
        [v183 setWasEngagedInSpotlight:{objc_msgSend(rankingItem21, "wasEngagedInSpotlight")}];
        retrievalType = [rankingItem21 retrievalType];
        [v183 setIsSemanticMatch:{(objc_msgSend(retrievalType, "integerValue") >> 1) & 1}];

        retrievalType2 = [rankingItem21 retrievalType];
        [v183 setIsSyntacticMatch:{objc_msgSend(retrievalType2, "integerValue") != 2}];

        v200 = MEMORY[0x1E696AD98];
        [rankingItem21 embeddingSimilarity];
        v201 = [v200 numberWithFloat:?];
        [v183 setSemanticScore:v201];

        v202 = MEMORY[0x1E696AD98];
        [rankingItem21 pommesL1Score];
        v203 = [v202 numberWithFloat:?];
        [v183 setSyntacticScore:v203];

        [v84 setCoreSpotlightRankingSignals:v183];
      }

      rankingItem22 = [v84 rankingItem];
      v205 = SSCompactRankingAttrsGetValue([rankingItem22 attributes], 0x75uLL);

      rankingItem23 = [v84 rankingItem];
      query = selfCopy2->_query;
      v207 = v271;
      if (v260)
      {
        v207 = v260;
      }

      if (v173)
      {
        v207 = v173;
      }

      v247 = rankingItem23;
      v249 = v207;
      v208 = HIDWORD(v274);
      v209 = v279;
      v210 = v274;
      rankingItem24 = [v84 rankingItem];
      v258 = v84;
      wasEngagedInSpotlight = [rankingItem24 wasEngagedInSpotlight];
      rankingItem25 = [v84 rankingItem];
      v254 = v173;
      exactMatchedLaunchString = [rankingItem25 exactMatchedLaunchString];
      [v169 valueForKeyPath:@"@max.self"];
      v214 = v256 = v169;
      v215 = [v171 valueForKeyPath:@"@max.self"];
      v216 = [v205 valueForKeyPath:@"@max.self"];
      BYTE1(v226) = client;
      LOBYTE(v226) = hitCopy;
      LOBYTE(v225) = exactMatchedLaunchString;
      *&v217 = v87;
      *&v218 = v94;
      *&v219 = v90;
      *&v220 = v107;
      LODWORD(v221) = v208;
      *&v222 = v209;
      LODWORD(v223) = v210;
      *&v224 = v96;
      [(SSRankingManager *)selfCopy2 logPommesScoringForRankingItem:v247 queryId:id query:query bundleID:bundleIdentifier name:v249 topicality:wasEngagedInSpotlight freshness:v217 engagement:v218 likelihood:v219 launchPortion:v220 launchCount:v221 launchPortionOutOfSpotlight:v222 launchCountOutOfSpotlight:v223 engagedInSpotlight:v224 exactMatchedLaunchString:v225 lastUsedDate:v262 recentEngagementDateInSpotlight:v214 recentEngagementDateInApp:v215 recentEngagementDateOutSpotlight:v216 nominateLocalTopHit:v226 isSearchToolClient:?];

      v83 = v264 + 1;
      if (v242 == v264 + 1)
      {
        v242 = [obj countByEnumeratingWithState:&v275 objects:v284 count:16];
        if (!v242)
        {
LABEL_116:

          sectionCopy = v231;
          [v231 setResults:v239];

          v82 = bundleIdentifier;
          goto LABEL_117;
        }

        goto LABEL_48;
      }
    }

    rankingItem26 = [v84 rankingItem];
    *&v92 = v87;
    [rankingItem26 staleDemotionWithCurrentTime:time topicality:v92];
    v94 = v93;

    if (v234)
    {
      rankingItem27 = [v84 rankingItem];
      SSCompactRankingAttrsGetFloat([rankingItem27 attributes], 0x163uLL, &v279);

      v96 = 0.0;
      v102 = bundleIdentifier;
      if (!SSEnableSpotlightPersonalizedRanking2024())
      {
LABEL_76:
        *&v100 = v279;
        *&v97 = v94;
        *&v98 = v87;
        *&v99 = v90;
        *&v101 = v230;
        [(SSRankingManager *)selfCopy2 appFreshnessAdjustmentForLaunchCounts:v268 topicality:&v274 + 4 engagement:v97 launchCount:v98 launchCountTotal:v99 nAppResultsWithLaunchCount:v100 launchPortion:v101];
        v141 = v140;
        if (SSEnableSpotlightPersonalizedRanking2024())
        {
          LODWORD(v142) = v141;
          *&v143 = v87;
          *&v144 = v90;
          *&v145 = v96;
          v147 = v232;
          *&v146 = v229;
          [(SSRankingManager *)selfCopy2 appFreshnessAdjustmentForOutOfSpotlightCounts:v232 topicality:&v274 engagement:v142 launchCount:v143 launchCountTotal:v144 nAppResultsWithLaunchCount:v145 launchPortion:v146];
          v141 = LODWORD(v142);
        }

        else
        {
          v147 = v232;
        }

        LODWORD(v142) = v141;
        *&v143 = v87;
        *&v144 = v90;
        clientCopy3 = client;
        [(SSRankingManager *)selfCopy2 freshnessAdjustmentForAppResult:v84 section:v231 freshnessBeforeAdjustment:(v268 | v147) != 0 topicality:client engagement:v142 appsWithLaunchCount:v143 isSearchToolClient:v144];
        v94 = v148;
        goto LABEL_80;
      }

      rankingItem28 = [v84 rankingItem];
      v104 = SSCompactRankingAttrsGetValue([rankingItem28 attributes], 0x75uLL);

      if (objc_msgSend_count(v104))
      {
        rankingItem29 = [v84 rankingItem];
        [rankingItem29 topicalityScore];
        if (v106 > 0.0)
        {

LABEL_74:
          v96 = objc_msgSend_count(v104);
          v229 = v229 + v96;
          ++v232;
          goto LABEL_75;
        }

        rankingItem30 = [v84 rankingItem];
        [rankingItem30 engagementScore];
        v139 = v138;

        if (v139 > 0.0)
        {
          goto LABEL_74;
        }
      }

LABEL_75:

      goto LABEL_76;
    }

    clientCopy3 = client;
    v102 = bundleIdentifier;
    if (client)
    {
LABEL_60:
      v96 = 0.0;
      if ([bundleIdentifier isEqualToString:@"com.apple.mobilemail"])
      {
        rankingItem31 = [v84 rankingItem];
        v110 = SSCompactRankingAttrsGetValue([rankingItem31 attributes], 0x10FuLL);

        if (v110)
        {
          unsignedIntegerValue = [v110 unsignedIntegerValue];
          v112 = (unsignedIntegerValue & 0xFFFFFFFFFFFFFFDFLL) == 0;
          v113 = (unsignedIntegerValue & 0xFFFFFFFFFFFFFFDFLL) == 4;
          v114 = (unsignedIntegerValue & 0xFFFFFFFFFFFFFFDFLL) == 16;
          v115 = (unsignedIntegerValue & 0xFFFFFFFFFFFFFFDFLL) == 2;
          v116 = (unsignedIntegerValue >> 5) & 1;
          rankingItem32 = [v84 rankingItem];
          v118 = v112;
          v102 = bundleIdentifier;
          [rankingItem32 setIsMailCategoryDefault:v118];

          rankingItem33 = [v84 rankingItem];
          [rankingItem33 setIsMailCategoryTransactions:v113];

          rankingItem34 = [v84 rankingItem];
          [rankingItem34 setIsMailCategoryUpdates:v114];

          rankingItem35 = [v84 rankingItem];
          [rankingItem35 setIsMailCategoryPromotions:v115];

          rankingItem36 = [v84 rankingItem];
          [rankingItem36 setIsMailCategoryHighImpact:v116];
        }

        clientCopy3 = client;
      }

LABEL_80:
      if (clientCopy3)
      {
LABEL_84:
        v107 = v94 * 0.8 * v87 + v90 * 0.2;
        if (([v102 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || objc_msgSend(v102, "isEqualToString:", @"com.apple.mobilenotes"))
        {
          queryTermCount = [rankerCopy queryTermCount];
          queryTermLength = [rankerCopy queryTermLength];
          *&v156 = v94 * 0.8 * v87 + v90 * 0.2;
          *&v157 = v94;
          *&v158 = v87;
          *&v159 = v90;
          [(SSRankingManager *)selfCopy2 likelihoodAdjustmentForMailAndNotesResult:queryTermCount freshness:queryTermLength topicality:v156 engagement:v157 numQueryTokens:v158 queryLength:v159];
          v107 = v160;
        }

        if (v107 < 0.05)
        {
          v107 = 0.05;
        }

        goto LABEL_89;
      }

LABEL_81:
      rankingItem37 = [v84 rankingItem];
      bundleIDType = [rankingItem37 bundleIDType];

      if ((bundleIDType & 0x800) != 0 && v90 > 0.0)
      {
        *&v151 = v87;
        *&v152 = v90;
        [SSRankingManager topicalityAdjustmentForHighlyEngagedFileResult:v84 topicalityBeforeAdjustment:v151 engagement:v152];
        v87 = v153;
      }

      goto LABEL_84;
    }

    if ([bundleIdentifier isEqualToString:@"com.apple.MobileAddressBook"])
    {
      *&v123 = v87;
      *&v124 = v94;
      [(SSRankingManager *)selfCopy2 topicalityAdjustmentForContactsResult:v84 topicalityBeforeAdjustment:v123 freshness:v124];
      v126 = LODWORD(v125);
      v87 = v125;
    }

    else
    {
      if (![bundleIdentifier isEqualToString:@"com.apple.MobileSMS"] || v87 <= 0.0)
      {
        goto LABEL_60;
      }

      *&v129 = v94;
      *&v130 = v87;
      [SSRankingManager topicalityAdjustmentForMessageFreshness:v129 topicalityBeforeAdjustment:v130];
      v87 = v131;
      rankingItem38 = [v84 rankingItem];
      *&v133 = v87;
      [rankingItem38 setKeywordMatchScore:v133];

      rankingItem39 = [v84 rankingItem];
      [rankingItem39 freshnessScore];
      v136 = v135;

      v96 = 0.0;
      if (v136 > 2.22044605e-16)
      {
        goto LABEL_81;
      }

      v126 = 1028174906;
    }

    rankingItem40 = [v84 rankingItem];
    LODWORD(v128) = v126;
    [rankingItem40 setKeywordMatchScore:v128];

    v96 = 0.0;
    goto LABEL_81;
  }

  resultSet = [sectionCopy resultSet];
  v42 = [resultSet objectAtIndexedSubscript:0];
  rankingItem41 = [v42 rankingItem];

  if (!rankingItem41)
  {
    v44 = [[PRSRankingItem alloc] initWithAttrs:SSCompactRankingAttrsAlloc(0)];
    resultSet2 = [sectionCopy resultSet];
    v46 = [resultSet2 objectAtIndexedSubscript:0];
    [v46 setRankingItem:v44];

    resultSet3 = [sectionCopy resultSet];
    v48 = [resultSet3 objectAtIndexedSubscript:0];
    rankingItem42 = [v48 rankingItem];
    [rankingItem42 setSectionBundleIdentifier:bundleIdentifier];
  }

  intentLabel = [v227 intentLabel];
  if ([intentLabel isEqualToString:@"INTENT_MAIL_SEARCH"])
  {
    resultSet4 = [sectionCopy resultSet];
    v52 = [resultSet4 objectAtIndexedSubscript:0];
    resultBundleId = [v52 resultBundleId];
    v54 = [resultBundleId isEqualToString:@"com.apple.datadetector.quick_actions.calendar"];

    v55 = 1.0;
    if (v54)
    {
      [SSTopHitNominationManager getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_THRESHOLD"];
      v55 = v56 + -0.01;
    }
  }

  else
  {

    v55 = 1.0;
  }

  sectionCopy = v231;
  resultSet5 = [v231 resultSet];
  v58 = [resultSet5 objectAtIndexedSubscript:0];
  rankingItem43 = [v58 rankingItem];
  [rankingItem43 setLikelihood:v55];

  if (hitCopy)
  {
    resultSet6 = [v231 resultSet];
    v61 = [resultSet6 objectAtIndexedSubscript:0];
    [SSTopHitNominationManager nominateTopHitCandidate:v61];
  }

  resultSet7 = [v231 resultSet];
  v269 = [resultSet7 objectAtIndexedSubscript:0];
  rankingItem44 = [v269 rankingItem];
  v250 = self->_query;
  resultSet8 = [v231 resultSet];
  v261 = [resultSet8 objectAtIndexedSubscript:0];
  rankingItem45 = [v261 rankingItem];
  [rankingItem45 topicalityScore];
  *&v64 = v63;
  resultSet9 = [v231 resultSet];
  v255 = [resultSet9 objectAtIndexedSubscript:0];
  rankingItem46 = [v255 rankingItem];
  [rankingItem46 freshnessScore];
  v66 = v65;
  resultSet10 = [v231 resultSet];
  v248 = [resultSet10 objectAtIndexedSubscript:0];
  rankingItem47 = [v248 rankingItem];
  [rankingItem47 engagementScore];
  v68 = v67;
  resultSet11 = [v231 resultSet];
  v241 = [resultSet11 objectAtIndexedSubscript:0];
  rankingItem48 = [v241 rankingItem];
  [rankingItem48 likelihood];
  v70 = v69;
  resultSet12 = [v231 resultSet];
  v72 = [resultSet12 objectAtIndexedSubscript:0];
  rankingItem49 = [v72 rankingItem];
  wasEngagedInSpotlight2 = [rankingItem49 wasEngagedInSpotlight];
  resultSet13 = [v231 resultSet];
  v76 = [resultSet13 objectAtIndexedSubscript:0];
  rankingItem50 = [v76 rankingItem];
  BYTE1(v226) = client;
  LOBYTE(v226) = hitCopy;
  LOBYTE(v225) = [rankingItem50 exactMatchedLaunchString];
  selfCopy3 = self;
  *&v79 = v66;
  *&v80 = v68;
  *&v81 = v70;
  v82 = bundleIdentifier;
  [(SSRankingManager *)selfCopy3 logPommesScoringForRankingItem:rankingItem44 queryId:id query:v250 bundleID:bundleIdentifier name:@"CCCD" topicality:wasEngagedInSpotlight2 freshness:COERCE_DOUBLE(v64) engagement:v79 likelihood:v80 launchPortion:v81 launchCount:0.0 launchPortionOutOfSpotlight:0.0 launchCountOutOfSpotlight:0.0 engagedInSpotlight:0.0 exactMatchedLaunchString:v225 lastUsedDate:0 recentEngagementDateInSpotlight:0 recentEngagementDateInApp:0 recentEngagementDateOutSpotlight:0 nominateLocalTopHit:v226 isSearchToolClient:?];

LABEL_117:
  quCopy = v227;
LABEL_118:
}

- (void)withinSectionTopHitNomination:(id)nomination withItemRanker:(id)ranker
{
  nominationCopy = nomination;
  rankerCopy = ranker;
  bundleIdentifier = [nominationCopy bundleIdentifier];
  if ([nominationCopy domain] == 1)
  {
    if ([bundleIdentifier isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (SSSectionIsSyndicatedPhotos(bundleIdentifier))
    {
      goto LABEL_9;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__SSRankingManager_withinSectionTopHitNomination_withItemRanker___block_invoke;
    v9[3] = &unk_1E8595898;
    v9[4] = self;
    v10 = bundleIdentifier;
    v11 = rankerCopy;
    [nominationCopy sortWithOptions:16 usingComparator:v9];
  }

  else if ([nominationCopy domain] == 2)
  {
    [nominationCopy sortWithOptions:16 usingComparator:&__block_literal_global_520];
  }

  if ([bundleIdentifier isEqualToString:@"com.apple.application"])
  {
    [SSTopHitNominationManager topHitCandidacyThresholdingForAppSection:nominationCopy];
  }

LABEL_9:
}

uint64_t __65__SSRankingManager_withinSectionTopHitNomination_withItemRanker___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 rankingItem];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 rankingItem];

      if (v10)
      {
        v11 = [v5 rankingItem];
        v12 = [v11 bundleIDType];

        if ((v12 & 0x80) != 0)
        {
          v13 = [v5 rankingItem];
          v14 = [v7 rankingItem];
          v15 = [v13 compareSafariTopHitCandidate:v14];
        }

        else if ((v12 & 0x100) != 0)
        {
          v13 = [v5 rankingItem];
          v14 = [v7 rankingItem];
          v15 = [v13 compareAppsTopHitCandidate:v14];
        }

        else if ((v12 & 4) != 0)
        {
          v13 = [v5 rankingItem];
          v14 = [v7 rankingItem];
          v15 = [v13 compareContactsTopHitCandidate:v14];
        }

        else
        {
          if ((v12 & 0x1800000) == 0)
          {
            if ((v12 & 0x10) != 0)
            {
              v13 = [v5 rankingItem];
              v14 = [v7 rankingItem];
            }

            else
            {
              v19 = [*(a1 + 32) allowedTopHitSections];
              v20 = [v19 containsObject:*(a1 + 40)];

              v13 = [v5 rankingItem];
              v14 = [v7 rankingItem];
              if (v20)
              {
                [*(a1 + 48) currentTime];
                v15 = [v13 compare:v14 currentTime:?];
                goto LABEL_28;
              }
            }

            v15 = [v13 compareLocalTopHitCandidate:v14];
            goto LABEL_28;
          }

          v13 = [v5 rankingItem];
          v14 = [v7 rankingItem];
          v15 = [v13 comparePeopleItemTopHitCandidate:v14];
        }

LABEL_28:
        v21 = v15;

        v17 = -v21;
        goto LABEL_29;
      }
    }
  }

  else if (!v5)
  {
    if (!v6)
    {
      v17 = 0;
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v16 = [v5 rankingItem];

  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  if (v7 && !v16)
  {
LABEL_18:
    v18 = [v7 rankingItem];
    v17 = v18 != 0;
  }

LABEL_29:

  return v17;
}

uint64_t __65__SSRankingManager_withinSectionTopHitNomination_withItemRanker___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rankingItem];
  if (v6)
  {
    v7 = [v5 rankingItem];

    if (v7)
    {
      v8 = [v4 rankingItem];
      v9 = [v5 rankingItem];
      v6 = -[v8 compareParsecTopHitCandidate:v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)nominateLocalTopHitsFromSections:(id)sections withItemRanker:(id)ranker sectionHeader:(id)header maxInitiallyVisibleResults:(unint64_t)results shortcutResult:(id)result isBullseyeNonCommittedSearch:(BOOL)search isBullseyeCommittedSearch:(BOOL)committedSearch parsecEnabled:(BOOL)self0 maxNumAppsInTopHitSection:(unint64_t)self1 queryId:(unint64_t)self2 isSearchToolClient:(BOOL)self3 qu:(id)self4 currentTime:(double)self5
{
  v162 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  rankerCopy = ranker;
  headerCopy = header;
  resultCopy = result;
  quCopy = qu;
  v22 = objc_opt_new();
  [v22 setBundleIdentifier:@"com.apple.spotlight.tophits"];
  v117 = headerCopy;
  [v22 setTitle:headerCopy];
  v118 = v22;
  [v22 setMaxInitiallyVisibleResults:results];
  if (section <= 1)
  {
    sectionCopy = 1;
  }

  else
  {
    sectionCopy = section;
  }

  v116 = sectionCopy;
  v119 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(sectionsCopy)];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = sectionsCopy;
  v24 = [obj countByEnumeratingWithState:&v151 objects:v161 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v152;
    v124 = *v152;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v152 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v151 + 1) + 8 * i);
        if ([v29 resultsCount])
        {
          bundleIdentifier = [v29 bundleIdentifier];
          v31 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

          if (v31)
          {
            LOBYTE(v115) = client;
            [(SSRankingManager *)self calculateLikelihoodAndPriorForSection:v29 currentTime:resultCopy shortcutResult:id queryId:rankerCopy ranker:1 nominateLocalTopHit:quCopy qu:time isSearchToolClient:v115];
            v32 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v29, "resultsCount")}];

            v149 = 0u;
            v150 = 0u;
            v147 = 0u;
            v148 = 0u;
            resultSet = [v29 resultSet];
            v34 = [resultSet countByEnumeratingWithState:&v147 objects:v160 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v148;
              do
              {
                for (j = 0; j != v35; ++j)
                {
                  if (*v148 != v36)
                  {
                    objc_enumerationMutation(resultSet);
                  }

                  v38 = *(*(&v147 + 1) + 8 * j);
                  identifier = [v38 identifier];
                  if (identifier)
                  {
                    v40 = identifier;
                    rankingItem = [v38 rankingItem];

                    if (rankingItem)
                    {
                      rankingItem2 = [v38 rankingItem];
                      identifier2 = [v38 identifier];
                      [v32 setObject:rankingItem2 forKeyedSubscript:identifier2];
                    }
                  }
                }

                v35 = [resultSet countByEnumeratingWithState:&v147 objects:v160 count:16];
              }

              while (v35);
            }

            v26 = v32;
            v27 = v124;
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v151 objects:v161 count:16];
    }

    while (v25);
  }

  else
  {
    v26 = 0;
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v44 = obj;
  v45 = [v44 countByEnumeratingWithState:&v143 objects:v159 count:16];
  if (!v45)
  {
    v125 = 0;
    v47 = rankerCopy;
    goto LABEL_55;
  }

  v46 = v45;
  v125 = 0;
  obja = *v144;
  v47 = rankerCopy;
  v120 = v44;
  do
  {
    for (k = 0; k != v46; ++k)
    {
      if (*v144 != obja)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v143 + 1) + 8 * k);
      if ([v49 resultsCount])
      {
        bundleIdentifier2 = [v49 bundleIdentifier];
        if ([bundleIdentifier2 isEqualToString:@"com.apple.Preferences"])
        {
          goto LABEL_33;
        }

        bundleIdentifier3 = [v49 bundleIdentifier];
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(bundleIdentifier3);

        if ((IsSyndicatedPhotos & 1) == 0)
        {
          LOBYTE(v115) = client;
          [(SSRankingManager *)self calculateLikelihoodAndPriorForSection:v49 currentTime:resultCopy shortcutResult:id queryId:v47 ranker:1 nominateLocalTopHit:quCopy qu:time isSearchToolClient:v115];
          bundleIdentifier4 = [v49 bundleIdentifier];
          v54 = [bundleIdentifier4 isEqualToString:@"com.apple.shortcuts"];

          if (v54)
          {
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            bundleIdentifier2 = [v49 resultSet];
            v55 = [bundleIdentifier2 countByEnumeratingWithState:&v139 objects:v158 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v140;
              do
              {
                for (m = 0; m != v56; ++m)
                {
                  if (*v140 != v57)
                  {
                    objc_enumerationMutation(bundleIdentifier2);
                  }

                  v59 = *(*(&v139 + 1) + 8 * m);
                  rankingItem3 = [v59 rankingItem];

                  if (rankingItem3)
                  {
                    rankingItem4 = [v59 rankingItem];
                    [rankingItem4 resetScoreForShortcutsSetting:v26];
                  }
                }

                v56 = [bundleIdentifier2 countByEnumeratingWithState:&v139 objects:v158 count:16];
              }

              while (v56);
              v44 = v120;
              v47 = rankerCopy;
            }

LABEL_33:
          }
        }

        [(SSRankingManager *)self withinSectionTopHitNomination:v49 withItemRanker:v47];
        if ([v49 resultsCount])
        {
          resultSet2 = [v49 resultSet];
          v63 = [resultSet2 objectAtIndexedSubscript:0];
          rankingItem5 = [v63 rankingItem];
          isLocalTopHitCandidate = [rankingItem5 isLocalTopHitCandidate];

          if (isLocalTopHitCandidate)
          {
            resultSet3 = [v49 resultSet];
            v67 = [resultSet3 objectAtIndexedSubscript:0];
            v68 = SSSetTopHitWithReasonType(1, v67, 28, 0, 1);
            resultSet4 = [v49 resultSet];
            v70 = [resultSet4 objectAtIndexedSubscript:0];
            [v70 setTopHit:v68];

            v44 = v120;
            [v119 addObject:v49];
          }
        }

        bundleIdentifier5 = [v49 bundleIdentifier];
        v72 = [bundleIdentifier5 isEqualToString:@"com.apple.datadetector.quick_actions"];

        if (v72)
        {
          v73 = v49;

          v125 = v73;
        }

        continue;
      }
    }

    v46 = [v44 countByEnumeratingWithState:&v143 objects:v159 count:16];
  }

  while (v46);
LABEL_55:

  v74 = v119;
  [v119 sortWithOptions:16 usingComparator:&__block_literal_global_527];
  if (client)
  {
    v75 = SSGeneralLog();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v75, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] by-pass TH nomination", buf, 2u);
    }

    goto LABEL_99;
  }

  if (objc_msgSend_count(v119))
  {
    v76 = [v119 objectAtIndexedSubscript:0];
    bundleIdentifier6 = [v76 bundleIdentifier];
    v78 = [bundleIdentifier6 isEqualToString:@"com.apple.application"];

    resultsCount = [v76 resultsCount];
    if (resultsCount)
    {
      v80 = 0;
      v81 = v116;
      if (!v78)
      {
        v81 = 1;
      }

      if (v81 >= resultsCount)
      {
        v81 = resultsCount;
      }

      if (v81 <= 1)
      {
        v82 = 1;
      }

      else
      {
        v82 = v81;
      }

      do
      {
        resultSet5 = [v76 resultSet];
        v84 = [resultSet5 objectAtIndexedSubscript:v80];
        rankingItem6 = [v84 rankingItem];
        isLocalTopHitCandidate2 = [rankingItem6 isLocalTopHitCandidate];

        if (isLocalTopHitCandidate2)
        {
          v87 = [v119 objectAtIndexedSubscript:0];
          resultSet6 = [v87 resultSet];
          v89 = [resultSet6 objectAtIndexedSubscript:v80];
          [v118 addResults:v89];

          bundleIdentifier7 = [v76 bundleIdentifier];
          [v118 setRelatedSectionBundleIdentifier:bundleIdentifier7];
        }

        ++v80;
      }

      while (v82 != v80);
    }

    v47 = rankerCopy;
    v74 = v119;
  }

  if (v125)
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    resultSet7 = [v118 resultSet];
    v92 = [resultSet7 countByEnumeratingWithState:&v134 objects:v157 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v135;
      while (2)
      {
        for (n = 0; n != v93; ++n)
        {
          if (*v135 != v94)
          {
            objc_enumerationMutation(resultSet7);
          }

          sectionBundleIdentifier = [*(*(&v134 + 1) + 8 * n) sectionBundleIdentifier];
          v97 = [sectionBundleIdentifier isEqualToString:@"com.apple.datadetector.quick_actions"];

          if (v97)
          {

            v47 = rankerCopy;
            v74 = v119;
            goto LABEL_83;
          }
        }

        v93 = [resultSet7 countByEnumeratingWithState:&v134 objects:v157 count:16];
        if (v93)
        {
          continue;
        }

        break;
      }
    }

    resultSet8 = [v125 resultSet];
    v99 = [resultSet8 objectAtIndexedSubscript:0];
    resultBundleId = [v99 resultBundleId];
    v101 = [resultBundleId isEqualToString:@"com.apple.datadetector.quick_actions.tracking_number"];

    v47 = rankerCopy;
    v74 = v119;
    if ((v101 & 1) == 0)
    {
      [v125 clearResults];
    }
  }

LABEL_83:
  if (_os_feature_enabled_impl())
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v102 = v44;
    v103 = [v102 countByEnumeratingWithState:&v130 objects:v156 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v131;
LABEL_86:
      v106 = 0;
      while (1)
      {
        if (*v131 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v107 = *(*(&v130 + 1) + 8 * v106);
        bundleIdentifier8 = [v107 bundleIdentifier];
        v109 = [bundleIdentifier8 isEqualToString:@"com.apple.spotlight.events"];

        if (v109)
        {
          break;
        }

        if (v104 == ++v106)
        {
          v104 = [v102 countByEnumeratingWithState:&v130 objects:v156 count:16];
          if (v104)
          {
            goto LABEL_86;
          }

          v75 = v102;
          v47 = rankerCopy;
          goto LABEL_97;
        }
      }

      v75 = v107;

      v47 = rankerCopy;
      v74 = v119;
      if (!v75)
      {
        goto LABEL_100;
      }

      [v118 clearResults];
      memset(v129, 0, sizeof(v129));
      resultSet9 = [v75 resultSet];
      if ([resultSet9 countByEnumeratingWithState:v129 objects:v155 count:16])
      {
        v111 = **(&v129[0] + 1);
        rankingItem7 = [**(&v129[0] + 1) rankingItem];
        [rankingItem7 setLikelihood:1.0];

        [SSTopHitNominationManager setTopHitCandidate:v111];
        [v118 addResults:v111];
      }

LABEL_97:
      v74 = v119;
    }

    else
    {
      v75 = v102;
    }

LABEL_99:
  }

LABEL_100:
  v113 = v118;

  return v118;
}

uint64_t __261__SSRankingManager_nominateLocalTopHitsFromSections_withItemRanker_sectionHeader_maxInitiallyVisibleResults_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection_queryId_isSearchToolClient_qu_currentTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 bundleIdentifier];
  if ([v6 isEqualToString:@"com.apple.datadetector.quick_actions"])
  {
    v7 = [v5 bundleIdentifier];
    v8 = @"com.apple.calculation";
    if ([v7 isEqualToString:@"com.apple.calculation"])
    {

LABEL_11:
      v15 = [v4 resultSet];
      v16 = [v15 objectAtIndexedSubscript:0];
      v17 = [v16 resultBundleId];
      v18 = [v17 isEqualToString:@"com.apple.datadetector.quick_actions.phone_number"];

      v19 = v18 == 0;
      v20 = -1;
      goto LABEL_14;
    }

    v13 = [v5 bundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.conversion"];

    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v8 = @"com.apple.calculation";
  }

  v9 = [v4 bundleIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.calculation"];
  if ((v10 & 1) == 0)
  {
    v8 = [v4 bundleIdentifier];
    if (([(__CFString *)v8 isEqualToString:@"com.apple.conversion"]& 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v11 = [v5 bundleIdentifier];
  v12 = [v11 isEqualToString:@"com.apple.datadetector.quick_actions"];

  if ((v10 & 1) == 0)
  {

    if (v12)
    {
      goto LABEL_13;
    }

LABEL_18:
    v26 = [v4 resultSet];
    v27 = [v26 objectAtIndexedSubscript:0];
    v28 = [v27 rankingItem];

    v29 = [v5 resultSet];
    v30 = [v29 objectAtIndexedSubscript:0];
    v31 = [v30 rankingItem];

    if (v28 && v31)
    {
      v32 = [v28 compareShortcutTopHitCandidate:v31];
      if (v32)
      {
        v25 = -v32;
LABEL_24:

        goto LABEL_25;
      }

      if (![v28 compareWithCCCDTopHitCandidate:v31])
      {
        [v28 likelihood];
        v35 = v34;
        [v31 likelihood];
        if (v35 > v36)
        {
          v25 = -1;
          goto LABEL_24;
        }

        [v28 likelihood];
        v38 = v37;
        [v31 likelihood];
        if (v38 < v39)
        {
          v25 = 1;
          goto LABEL_24;
        }
      }
    }

    v25 = 0;
    goto LABEL_24;
  }

  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_13:
  v21 = [v5 resultSet];
  v22 = [v21 objectAtIndexedSubscript:0];
  v23 = [v22 resultBundleId];
  v24 = [v23 isEqualToString:@"com.apple.datadetector.quick_actions.phone_number"];

  v19 = v24 == 0;
  v20 = 1;
LABEL_14:
  if (v19)
  {
    v25 = -v20;
  }

  else
  {
    v25 = v20;
  }

LABEL_25:

  return v25;
}

+ (void)prepareServerSectionRankingItemsForTopHitNomination:(id)nomination currentTime:(double)time
{
  v39 = *MEMORY[0x1E69E9840];
  nominationCopy = nomination;
  v6 = SSGeneralLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [nominationCopy bundleIdentifier];
    *buf = 138412290;
    v38 = bundleIdentifier;
    _os_log_impl(&dword_1D9F69000, v6, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] prepareServerSectionRankingItemsForTopHitNomination bundle_id = %@", buf, 0xCu);
  }

  results = [nominationCopy results];
  v9 = objc_msgSend_count(results);

  if (v9)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    results2 = [nominationCopy results];
    v11 = [results2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(results2);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          if (v15)
          {
            v16 = [PRSRankingItem alloc];
            bundleIdentifier2 = [nominationCopy bundleIdentifier];
            v18 = [(PRSRankingItem *)v16 initForParsecResultWithBundleID:bundleIdentifier2];

            [v18 setEngagementScore:0.0];
            [v18 setTopicalityScore:-1.0];
            if ([v15 topHit] == 1)
            {
              bundleIDType = [v18 bundleIDType];
              v20 = 0.85;
              if ((bundleIDType & 0x180060000000001) == 0)
              {
                bundleIDType2 = [v18 bundleIDType];
                v20 = 0.6;
                if ((bundleIDType2 & 0x200500000000000) == 0)
                {
                  bundleIDType3 = [v18 bundleIDType];
                  v20 = 0.3;
                  if ((bundleIDType3 & 0x200000000000) == 0)
                  {
                    bundleIDType4 = [v18 bundleIDType];
                    v20 = 0.53;
                    if ((bundleIDType4 & 0x80000000000) == 0)
                    {
                      bundleIDType5 = [v18 bundleIDType];
                      v20 = 0.6;
                      if ((bundleIDType5 & 0x1000000000000) == 0)
                      {
                        v20 = dbl_1DA0D53A0[([v18 bundleIDType] & 0x10000000000) == 0];
                      }
                    }
                  }
                }
              }

              [v18 setTopicalityScore:v20];
            }

            if (([v18 bundleIDType] & 0x10000000000) != 0)
            {
              mapsPersonalizationResult = [v15 mapsPersonalizationResult];
              v26 = mapsPersonalizationResult;
              if (mapsPersonalizationResult)
              {
                if ([mapsPersonalizationResult resultType])
                {
                  startEventDate = [v26 startEventDate];

                  if (startEventDate)
                  {
                    startEventDate2 = [v26 startEventDate];
                    [startEventDate2 timeIntervalSinceReferenceDate];
                    v30 = v29 - time;

                    if (v30 > -3600.0 && v30 < 21600.0)
                    {
                      [v18 setEngagementScore:0.5];
                    }
                  }
                }
              }
            }

            [v18 topicalityScore];
            *&v31 = v31;
            [v18 setKeywordMatchScore:v31];
            [v15 setRankingItem:v18];
          }
        }

        v12 = [results2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }
  }
}

+ (void)prepareSafariUserTypedURLForTopHitNomination:(id)nomination query:(id)query
{
  v38 = *MEMORY[0x1E69E9840];
  nominationCopy = nomination;
  queryCopy = query;
  v7 = SSGeneralLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] prepareSafariUserTypedURLForTopHitNomination", buf, 2u);
  }

  results = [nominationCopy results];
  if (objc_msgSend_count(results))
  {
    bundleIdentifier = [nominationCopy bundleIdentifier];
    v10 = [bundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

    if (v10)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      results = [nominationCopy results];
      v11 = [results countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v11;
      v30 = nominationCopy;
      v13 = *v33;
      v31 = queryCopy;
      while (1)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(results);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          if (v15)
          {
            resultBundleId = [*(*(&v32 + 1) + 8 * i) resultBundleId];
            if ([resultBundleId isEqualToString:@"com.apple.safari.userTypedURL"])
            {
              rankingItem = [v15 rankingItem];

              if (rankingItem)
              {
                continue;
              }

              if ([queryCopy containsString:@"://"])
              {
                queryCopy = queryCopy;
              }

              else
              {
                queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", queryCopy];
              }

              resultBundleId = queryCopy;
              v19 = [MEMORY[0x1E695DFF8] URLWithString:queryCopy];
              v20 = v19;
              if (v19)
              {
                scheme = [v19 scheme];
                if (scheme)
                {
                  v22 = scheme;
                  host = [v20 host];

                  if (host)
                  {
                    [v15 setContentURL:resultBundleId];
                    v24 = SSCompactRankingAttrsAlloc(3);
                    SSCompactRankingAttrsUpdateValue(v24, 0xCuLL, v31);
                    SSCompactRankingAttrsUpdateValue(v24, 0xDuLL, v31);
                    SSCompactRankingAttrsUpdateValue(v24, 0x1FuLL, v31);
                    v25 = [[PRSRankingItem alloc] initWithAttrs:v24];
                    [v15 setRankingItem:v25];

                    rankingItem2 = [v15 rankingItem];
                    [rankingItem2 setBundleIDType:{objc_msgSend(rankingItem2, "bundleIDType") | 0x80}];

                    rankingItem3 = [v15 rankingItem];
                    [rankingItem3 setTopicalityScore:1.0];

                    rankingItem4 = [v15 rankingItem];
                    LODWORD(v29) = 1.0;
                    [rankingItem4 setKeywordMatchScore:v29];
                  }
                }
              }

              queryCopy = v31;
            }
          }
        }

        v12 = [results countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (!v12)
        {
          nominationCopy = v30;
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
LABEL_25:
  }
}

+ (id)nominateServerTopHitForSection:(id)section queryString:(id)string language:(id)language currentTime:(double)time
{
  v93 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  stringCopy = string;
  languageCopy = language;
  if (nominateServerTopHitForSection_queryString_language_currentTime__onceToken != -1)
  {
    +[SSRankingManager nominateServerTopHitForSection:queryString:language:currentTime:];
  }

  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__1;
  v89 = __Block_byref_object_dispose__1;
  v9 = MEMORY[0x1E695DF70];
  results = [sectionCopy results];
  v90 = [v9 arrayWithArray:results];

  results2 = [sectionCopy results];
  LODWORD(v9) = objc_msgSend_count(results2) == 0;

  if (v9)
  {
    v43 = v86[5];
  }

  else
  {
    v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v12 = v86[5];
    v13 = [v12 countByEnumeratingWithState:&v81 objects:v92 count:16];
    if (v13)
    {
      v14 = *v82;
      v15 = 3;
LABEL_6:
      v16 = 0;
      v52 = v15 - v13;
      while (1)
      {
        if (*v82 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v81 + 1) + 8 * v16);
        if (!v17)
        {
          break;
        }

        if (v15 == v16)
        {
          goto LABEL_17;
        }

        rankingItem = [*(*(&v81 + 1) + 8 * v16) rankingItem];
        bundleIDType = [rankingItem bundleIDType];

        if ((bundleIDType & 0x20000000000) != 0)
        {
          identifier = [v17 identifier];
          identifier2 = [identifier componentsSeparatedByString:@"-"];

          if (objc_msgSend_count(identifier2) != 3)
          {
            v43 = v86[5];

            goto LABEL_37;
          }

          v22 = MEMORY[0x1E696AEC0];
          v23 = [identifier2 objectAtIndexedSubscript:1];
          v24 = [v22 stringWithFormat:@"st:%@", v23];
          [v49 addObject:v24];
        }

        else
        {
          identifier2 = [v17 identifier];
          [v49 addObject:identifier2];
        }

        if (v13 == ++v16)
        {
          v13 = [v12 countByEnumeratingWithState:&v81 objects:v92 count:16];
          v15 = v52;
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }
      }

      v43 = v86[5];
LABEL_37:

      goto LABEL_38;
    }

LABEL_17:

    if (objc_msgSend_count(v49))
    {
      v25 = [objc_alloc(MEMORY[0x1E6964DF0]) initWithQuery:stringCopy language:languageCopy fuzzyThreshold:0 options:0];
      [v25 setMatchOncePerTerm:0];
      v53 = _os_feature_enabled_impl();
      v80[0] = 0;
      v80[1] = v80;
      v80[2] = 0x2020000000;
      v80[3] = objc_msgSend_count(v49);
      v78[0] = 0;
      v78[1] = v78;
      v78[2] = 0x3032000000;
      v78[3] = __Block_byref_object_copy__1;
      v78[4] = __Block_byref_object_dispose__1;
      v79 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_549;
      aBlock[3] = &unk_1E85958E0;
      v26 = v49;
      v74 = v26;
      v76 = &v85;
      v45 = v25;
      v75 = v45;
      timeCopy = time;
      v27 = _Block_copy(aBlock);
      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__1;
      v71 = __Block_byref_object_dispose__1;
      v72 = 0;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_2;
      v61[3] = &unk_1E8595908;
      v64 = v80;
      v65 = v78;
      v28 = v26;
      v62 = v28;
      v29 = v27;
      v63 = v29;
      v66 = &v67;
      v51 = _Block_copy(v61);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_3;
      v59[3] = &unk_1E8595930;
      v46 = v29;
      v60 = v46;
      v50 = _Block_copy(v59);
      if (v53)
      {
        v30 = dispatch_group_create();
        v31 = v68[5];
        v68[5] = v30;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v32 = nominateServerTopHitForSection_queryString_language_currentTime__protectionClasses;
      v33 = [v32 countByEnumeratingWithState:&v55 objects:v91 count:16];
      if (v33)
      {
        v34 = *v56;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v56 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v55 + 1) + 8 * i);
            if (v53)
            {
              dispatch_group_enter(v68[5]);
              defaultSearchableIndex = [MEMORY[0x1E6964E78] defaultSearchableIndex];
              v38 = nominateServerTopHitForSection_queryString_language_currentTime__sServerEngagementAttributes;
              bundleIdentifier = [sectionCopy bundleIdentifier];
              [defaultSearchableIndex slowFetchAttributes:v38 protectionClass:v36 bundleID:bundleIdentifier identifiers:v28 completionHandler:v51];
            }

            else
            {
              defaultSearchableIndex = [MEMORY[0x1E69D3DC0] sharedInstance];
              v40 = nominateServerTopHitForSection_queryString_language_currentTime__sServerEngagementAttributes;
              bundleIdentifier = [sectionCopy bundleIdentifier];
              [defaultSearchableIndex fetchAttributesForProtectionClass:v36 attributes:v40 bundleID:bundleIdentifier identifiers:v28 completion:v50];
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v55 objects:v91 count:16];
        }

        while (v33);
      }

      if (v53)
      {
        v41 = v68[5];
        v42 = dispatch_time(0, 300000000);
        dispatch_group_wait(v41, v42);
      }

      v43 = v86[5];

      _Block_object_dispose(&v67, 8);
      _Block_object_dispose(v78, 8);

      _Block_object_dispose(v80, 8);
    }

    else
    {
      v43 = v86[5];
    }

LABEL_38:
  }

  _Block_object_dispose(&v85, 8);

  return v43;
}

void __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke()
{
  v8[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69649B0];
  v8[0] = *MEMORY[0x1E69649C0];
  v8[1] = v0;
  v1 = *MEMORY[0x1E69649B8];
  v8[2] = *MEMORY[0x1E69649C8];
  v8[3] = v1;
  v2 = *MEMORY[0x1E6964548];
  v8[4] = *MEMORY[0x1E6964558];
  v8[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:6];
  v4 = nominateServerTopHitForSection_queryString_language_currentTime__sServerEngagementAttributes;
  nominateServerTopHitForSection_queryString_language_currentTime__sServerEngagementAttributes = v3;

  v7[0] = *MEMORY[0x1E696A388];
  v7[1] = @"Priority";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v6 = nominateServerTopHitForSection_queryString_language_currentTime__protectionClasses;
  nominateServerTopHitForSection_queryString_language_currentTime__protectionClasses = v5;
}

void __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_549(uint64_t a1, void *a2)
{
  v49 = a2;
  if (objc_msgSend_count(v49) && objc_msgSend_count(*(a1 + 32)))
  {
    v3 = 0;
    v4 = &unk_1ECB9F000;
    while (1)
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      v6 = [v49 objectForKeyedSubscript:v5];

      v7 = objc_msgSend_count(v6);
      if (v7 == objc_msgSend_count(v4[104]))
      {
        v8 = [v6 objectAtIndexedSubscript:0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_28;
        }

        v9 = [v6 objectAtIndexedSubscript:1];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        v10 = [v6 objectAtIndexedSubscript:2];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_26;
        }

        v11 = [v6 objectAtIndexedSubscript:3];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }
      }

LABEL_29:

      if (++v3 >= objc_msgSend_count(*(a1 + 32)))
      {
        goto LABEL_30;
      }
    }

    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [v6 objectAtIndexedSubscript:1];
    v10 = [v6 objectAtIndexedSubscript:2];
    v13 = [v6 objectAtIndexedSubscript:3];
    v14 = [v6 objectAtIndexedSubscript:4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v13;
      v15 = [v6 objectAtIndexedSubscript:5];
      objc_opt_class();
      v16 = objc_opt_isKindOfClass();

      if (v16)
      {
        v48 = [v6 objectAtIndexedSubscript:4];
        v17 = [v6 objectAtIndexedSubscript:5];
        if (v17)
        {
          v18 = v17;
          v14 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
          v19 = [v14 rankingItem];
          v20 = v18;
          [v19 setLastUsedDate:v18];

          v13 = v46;
LABEL_14:

          goto LABEL_17;
        }

        v20 = 0;
      }

      else
      {
        v20 = 0;
        v48 = &stru_1F556FE60;
      }

LABEL_17:
      v21 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v22 = [v21 rankingItem];
      v47 = v20;
      LODWORD(v23) = -1.0;
      [v22 inSpotlightEngagementScoreWithEvaluator:*(a1 + 40) currentTime:v8 queriesInSpotlight:v9 datesInSpotlight:v10 queriesInSpotlightNonUnique:v13 datesInSpotlightNonUnique:v48 launchString:*(a1 + 56) lastUsedDate:v23 topicalityScore:v20];
      v25 = v24;

      if (v25 <= 0.0)
      {
        goto LABEL_25;
      }

      v26 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v27 = [v26 rankingItem];
      [v27 setWasEngaged:1];

      v28 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v29 = [v28 rankingItem];
      [v29 setWasEngagedInSpotlight:1];

      v30 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v31 = [v30 rankingItem];
      [v31 engagementScore];
      v33 = v32;

      if (v33 < v25)
      {
        v33 = v25;
      }

      v34 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v35 = [v34 rankingItem];
      [v35 setEngagementScore:v33];

      v36 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
      v37 = [v36 rankingItem];
      if (([v37 bundleIDType] & 0x10000000000) != 0 && v25 >= 0.5)
      {
        [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
        v38 = v45 = v36;
        v39 = [v38 rankingItem];
        [v39 topicalityScore];
        v41 = v40;

        if (v41 > 0.0)
        {
          goto LABEL_25;
        }

        v42 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
        v43 = [v42 rankingItem];
        [v43 setTopicalityScore:0.5];

        v36 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v3];
        v37 = [v36 rankingItem];
        LODWORD(v44) = 0.5;
        [v37 setKeywordMatchScore:v44];
      }

LABEL_25:
      v4 = &unk_1ECB9F000;
LABEL_26:

LABEL_27:
LABEL_28:

      goto LABEL_29;
    }

    v20 = 0;
    v48 = &stru_1F556FE60;
    goto LABEL_14;
  }

LABEL_30:
}

void __84__SSRankingManager_nominateServerTopHitForSection_queryString_language_currentTime___block_invoke_2(void *a1, void *a2)
{
  v16 = a2;
  if (!objc_msgSend_count(v16))
  {
LABEL_10:
    (*(a1[5] + 16))();
    dispatch_group_leave(*(*(a1[8] + 8) + 40));
    v4 = v16;
    goto LABEL_11;
  }

  v3 = objc_msgSend_count(v16) == *(*(a1[6] + 8) + 24);
  v4 = v16;
  if (v3)
  {
    v5 = objc_opt_new();
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = objc_msgSend_count(v16);
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [v16 objectAtIndexedSubscript:i];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = *(*(a1[7] + 8) + 40);
            v13 = a1[4];
            v14 = v11;
            v15 = [v13 objectAtIndexedSubscript:i];
            [v12 setObject:v14 forKey:v15];
          }
        }
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)makeTopHitSectionUsingSections:(id)sections withItemRanker:(id)ranker sectionHeader:(id)header shortcutResult:(id)result isBullseyeNonCommittedSearch:(BOOL)search isBullseyeCommittedSearch:(BOOL)committedSearch parsecEnabled:(BOOL)enabled maxNumAppsInTopHitSection:(unint64_t)self0
{
  committedSearchCopy = committedSearch;
  searchCopy = search;
  v348 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  rankerCopy = ranker;
  headerCopy = header;
  resultCopy = result;
  v240 = +[SSRankingManager getLegacyTophitSection];
  v13 = [v240 containsObject:@"none"];
  v243 = [v240 containsObject:@"nocontact"];
  v228 = [v240 containsObject:@"noshortcut"];
  v253 = [v240 containsObject:@"noappnonexactmatch"];
  v252 = [v240 containsObject:@"nophotos"];
  if (committedSearchCopy && (v13 & 1) != 0)
  {
    v14 = 0;
    goto LABEL_367;
  }

  v331 = 0;
  v332 = &v331;
  v333 = 0x3032000000;
  v334 = __Block_byref_object_copy__1;
  v335 = __Block_byref_object_dispose__1;
  v336 = objc_opt_new();
  v325 = 0;
  v326 = &v325;
  v327 = 0x3032000000;
  v328 = __Block_byref_object_copy__1;
  v329 = __Block_byref_object_dispose__1;
  v330 = 0;
  [v332[5] setBundleIdentifier:@"com.apple.spotlight.tophits"];
  [v332[5] setTitle:headerCopy];
  [v332[5] setMaxInitiallyVisibleResults:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __190__SSRankingManager_makeTopHitSectionUsingSections_withItemRanker_sectionHeader_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection___block_invoke;
  aBlock[3] = &unk_1E8595958;
  aBlock[4] = &v325;
  aBlock[5] = &v331;
  v239 = _Block_copy(aBlock);
  identifier = [resultCopy identifier];
  if (!identifier)
  {
    goto LABEL_29;
  }

  v16 = [resultCopy type] == 3;

  if (!v16)
  {
    goto LABEL_29;
  }

  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  obj = sectionsCopy;
  v17 = [obj countByEnumeratingWithState:&v320 objects:v347 count:16];
  if (!v17)
  {

LABEL_28:
    resultCopy = 0;
    goto LABEL_29;
  }

  v296 = 0;
  obj_8 = *v321;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v321 != obj_8)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v320 + 1) + 8 * i);
      if ([v19 domain] == 1)
      {
        v318 = 0u;
        v319 = 0u;
        v316 = 0u;
        v317 = 0u;
        resultSet = [v19 resultSet];
        v21 = [resultSet countByEnumeratingWithState:&v316 objects:v346 count:16];
        if (v21)
        {
          v22 = *v317;
          while (2)
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v317 != v22)
              {
                objc_enumerationMutation(resultSet);
              }

              v24 = *(*(&v316 + 1) + 8 * j);
              identifier2 = [v24 identifier];
              identifier3 = [resultCopy identifier];
              v27 = [identifier2 isEqualToString:identifier3];

              if (v27)
              {
                v28 = v24;

                v296 = 1;
                resultCopy = v28;
                goto LABEL_22;
              }
            }

            v21 = [resultSet countByEnumeratingWithState:&v316 objects:v346 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }
    }

    v17 = [obj countByEnumeratingWithState:&v320 objects:v347 count:16];
  }

  while (v17);

  if ((v296 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v289 = sectionsCopy;
  v29 = [v289 countByEnumeratingWithState:&v312 objects:v345 count:16];
  v247 = v29 != 0;
  v30 = 0;
  if (v29)
  {
    v31 = *v313;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v313 != v31)
        {
          objc_enumerationMutation(v289);
        }

        v33 = *(*(&v312 + 1) + 8 * k);
        bundleIdentifier = [v33 bundleIdentifier];
        v35 = [bundleIdentifier isEqualToString:@"com.apple.MobileAddressBook"];

        if (v35)
        {
          v36 = v33;

          v30 = v36;
        }
      }

      v29 = [v289 countByEnumeratingWithState:&v312 objects:v345 count:16];
    }

    while (v29);

    if (!v30)
    {
      v247 = 0;
      v39 = -3.4028e38;
      goto LABEL_48;
    }

    results = [v30 results];
    v38 = 0;
    v39 = -3.4028e38;
    while (v38 < objc_msgSend_count(results))
    {
      v40 = [results objectAtIndex:v38];
      rankingItem = [v40 rankingItem];
      l2FeatureVector = [rankingItem L2FeatureVector];
      [l2FeatureVector scoreForFeature:165];
      v44 = v43;

      if (v44 == 0.0)
      {
        l2FeatureVector2 = [rankingItem L2FeatureVector];
        [l2FeatureVector2 originalL2Score];
        v47 = v46;

        if (v47 > v39)
        {
          v39 = v47;
        }
      }

      ++v38;
    }
  }

  else
  {
    v39 = -3.4028e38;
    results = v289;
  }

LABEL_48:
  v227 = v30;
  if (resultCopy)
  {
    v297 = 0;
    obja = 0uLL;
    v295 = 0;
    goto LABEL_70;
  }

  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v282 = v289;
  v48 = [v282 countByEnumeratingWithState:&v308 objects:v344 count:16];
  if (!v48)
  {
    v49 = 0;
    v297 = 0;
    obja = 0uLL;
    v295 = 0;
    resultCopy = 0;
    goto LABEL_69;
  }

  v286 = v48;
  v49 = 0;
  v297 = 0;
  obja = 0uLL;
  v295 = 0;
  resultCopy = 0;
  v284 = *v309;
  do
  {
    for (m = 0; m != v286; ++m)
    {
      if (*v309 != v284)
      {
        objc_enumerationMutation(v282);
      }

      v50 = *(*(&v308 + 1) + 8 * m);
      results2 = [v50 results];
      for (n = 0; n < objc_msgSend_count(results2); ++n)
      {
        v53 = [results2 objectAtIndex:n];
        rankingItem2 = [v53 rankingItem];
        if (![rankingItem2 hasShortCut])
        {
          goto LABEL_64;
        }

        v55 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0x52uLL);

        if (*(&obja + 1) && v55)
        {
          if ([*(&obja + 1) compare:v55] != -1)
          {
            goto LABEL_61;
          }
        }

        else if (obja != 0)
        {
LABEL_61:
          v49 = v55;
          goto LABEL_64;
        }

        v56 = v50;

        v57 = v53;
        rankingItem3 = [v57 rankingItem];

        v49 = v55;
        *&obja = v57;

        *(&obja + 1) = v49;
        v297 = rankingItem3;
        v295 = v56;
        resultCopy = obja;
LABEL_64:
      }
    }

    v286 = [v282 countByEnumeratingWithState:&v308 objects:v344 count:16];
  }

  while (v286);
LABEL_69:

LABEL_70:
  queryTermLength = [rankerCopy queryTermLength];
  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v251 = v289;
  v59 = [v251 countByEnumeratingWithState:&v304 objects:v343 count:16];
  if (v59)
  {
    v60 = 0;
    v229 = 0;
    v61 = 0;
    v271 = 0;
    v233 = 0;
    v234 = 0;
    v242 = 0;
    v237 = 0;
    v250 = 0;
    v256 = 0;
    v257 = v59;
    v258 = *v305;
    v274 = *MEMORY[0x1E6963B90];
    while (1)
    {
      v269 = 0;
      do
      {
        if (*v305 != v258)
        {
          objc_enumerationMutation(v251);
        }

        if (v60)
        {
          goto LABEL_309;
        }

        v62 = *(*(&v304 + 1) + 8 * v269);
        results3 = [v62 results];
        bundleIdentifier2 = [v62 bundleIdentifier];
        allowedTopHitSections = self->_allowedTopHitSections;
        v278 = v62;
        bundleIdentifier3 = [v62 bundleIdentifier];
        v277 = [(NSSet *)allowedTopHitSections containsObject:bundleIdentifier3];

        if (v277)
        {
          resultSet2 = [v278 resultSet];
          v302[0] = MEMORY[0x1E69E9820];
          v302[1] = 3221225472;
          v302[2] = __190__SSRankingManager_makeTopHitSectionUsingSections_withItemRanker_sectionHeader_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection___block_invoke_2;
          v302[3] = &unk_1E8595980;
          v303 = rankerCopy;
          v66 = [resultSet2 sortedArrayWithOptions:16 usingComparator:v302];

          bundleIdentifier4 = [v278 bundleIdentifier];
          v68 = [bundleIdentifier4 isEqualToString:@"com.apple.mobilesafari"];

          if (v68)
          {
            [SSRankingManager moveSafariTopHitsToTopOfSection:v278];
          }

          results3 = v66;
        }

        if ((SSSectionIsSyndicatedPhotos(bundleIdentifier2) & 1) == 0)
        {
          bundleIdentifier5 = [v278 bundleIdentifier];
          v283 = [bundleIdentifier5 isEqualToString:@"com.apple.application"];

          if (v283)
          {
            objc_msgSend_count(results3);
            v70 = 0;
            v268 = 0;
            v71 = 0;
          }

          else
          {
            bundleIdentifier6 = [v278 bundleIdentifier];
            v73 = [bundleIdentifier6 isEqualToString:@"com.apple.app-clips"];

            if (v73)
            {
              v268 = 0;
              v71 = 0;
              v70 = 1;
            }

            else
            {
              bundleIdentifier7 = [v278 bundleIdentifier];
              v75 = [bundleIdentifier7 isEqualToString:@"com.apple.Preferences"];

              if (v75)
              {
                v70 = 0;
                v71 = 0;
                v268 = 1;
              }

              else
              {
                bundleIdentifier8 = [v278 bundleIdentifier];
                if ([bundleIdentifier8 isEqualToString:@"com.apple.mobileslideshow"])
                {
                  v71 = 1;
                }

                else
                {
                  bundleIdentifier9 = [v278 bundleIdentifier];
                  v71 = [bundleIdentifier9 isEqualToString:@"com.apple.searchd.syndicatedPhotos"];
                }

                v70 = 0;
                v268 = 0;
              }
            }
          }

          v290 = 0;
          v255 = v283 | v70;
          v248 = v71 ^ 1;
          v266 = v71;
          v244 = v253 & v71 & v252 ^ 1;
          while (2)
          {
            if (v290 >= objc_msgSend_count(results3))
            {
              goto LABEL_81;
            }

            v78 = [results3 objectAtIndex:?];
            rankingItem4 = [v78 rankingItem];
            topHitReason = [rankingItem4 topHitReason];
            userActivityType = [v78 userActivityType];
            if (userActivityType)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (([userActivityType isEqualToString:v274] & 1) == 0)
                {
                  v285 = v61;
LABEL_294:

                  ++v290;
                  v61 = v285;
                  continue;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v80 = MEMORY[0x1E69E9C10];
                  v81 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
                  {
                    resultBundleId = [v78 resultBundleId];
                    *buf = 138412546;
                    v338 = userActivityType;
                    v339 = 2112;
                    v340 = resultBundleId;
                    _os_log_fault_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "result.userActivityType(%@) isKindOfClass NSArray class, result.resultBundleId(%@)", buf, 0x16u);

                    v80 = MEMORY[0x1E69E9C10];
                  }
                }
              }
            }

            break;
          }

          if (v283)
          {
            if ([rankingItem4 didMatchRankingDescriptor:@"kMDItemAlternateNameExactMatch"])
            {
              v280 = 1;
            }

            else
            {
              displayNameInitials = [rankingItem4 displayNameInitials];
              v280 = displayNameInitials != 0;
            }
          }

          else
          {
            v280 = 0;
          }

          if (resultCopy)
          {
            v83 = v78 == resultCopy;
          }

          else
          {
            v83 = 0;
          }

          v84 = v83;
          v281 = v84;
          if (v83)
          {
            [v78 setTopHit:{SSSetTopHitWithReasonString(2, v78, @"shortcutResult match", 1)}];
            v285 = SSCompactRankingAttrsGetValue([rankingItem4 attributes], 0x187uLL);

            if ([v78 forceNoTopHit])
            {
              [v78 setForceNoTopHit:0];
              [v78 setTopHit:{SSSetTopHitWithReasonString(1, v78, @"hasShortCut Safar edge case", 1)}];
            }
          }

          else
          {
            v285 = v61;
          }

          type = [v78 type];
          v86 = v283 ^ 1;
          if (type != 26)
          {
            v86 = 1;
          }

          if ((v86 & 1) == 0)
          {
            rankingItem5 = [v78 rankingItem];
            l2FeatureVector3 = [rankingItem5 L2FeatureVector];
            [l2FeatureVector3 originalL2Score];
            v90 = v89 == 0.0;

            if (v90)
            {
              goto LABEL_294;
            }
          }

          bundleIdentifier10 = [v278 bundleIdentifier];
          if ([bundleIdentifier10 isEqualToString:@"com.apple.dictionary"])
          {
            v92 = [v78 topHit] == 2;

            if ((v92 & (v277 | v281) & 1) == 0)
            {
              goto LABEL_294;
            }
          }

          else
          {

            if ((v277 | v281) != 1)
            {
              goto LABEL_294;
            }
          }

          if ([v78 topHit] == 0 && !v280 && (objc_msgSend(rankingItem4, "shouldHideUnderShowMore") & 1) != 0 || (v281 | objc_msgSend(v78, "forceNoTopHit") ^ 1) != 1)
          {
            goto LABEL_294;
          }

          rankingConfiguration = [(SSRankingManager *)self rankingConfiguration];
          [rankingConfiguration lock];

          v94 = PRSLogCategoryDefault();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            query = [(SSRankingManager *)self query];
            rankingConfiguration2 = [(SSRankingManager *)self rankingConfiguration];
            cepBlocklistSet = [rankingConfiguration2 cepBlocklistSet];
            [v78 applicationBundleIdentifier];
            v154 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412802;
            v338 = query;
            v339 = 2112;
            v340 = cepBlocklistSet;
            v341 = 2112;
            v342 = v154;
            _os_log_debug_impl(&dword_1D9F69000, v94, OS_LOG_TYPE_DEBUG, "query %@: blocklist %@, result app bundleid %@", buf, 0x20u);
          }

          applicationBundleIdentifier = [v78 applicationBundleIdentifier];
          if (applicationBundleIdentifier)
          {
            rankingConfiguration3 = [(SSRankingManager *)self rankingConfiguration];
            cepBlocklistSet2 = [rankingConfiguration3 cepBlocklistSet];
            if (cepBlocklistSet2)
            {
              rankingConfiguration4 = [(SSRankingManager *)self rankingConfiguration];
              cepBlocklistSet3 = [rankingConfiguration4 cepBlocklistSet];
              applicationBundleIdentifier2 = [v78 applicationBundleIdentifier];
              lowercaseString = [applicationBundleIdentifier2 lowercaseString];
              v102 = [cepBlocklistSet3 containsObject:lowercaseString];

              if (v102)
              {
                goto LABEL_294;
              }
            }

            else
            {
            }
          }

          rankingConfiguration5 = [(SSRankingManager *)self rankingConfiguration];
          [rankingConfiguration5 unlock];

          lastAccessDate = [rankingItem4 lastAccessDate];

          if ((v281 & (*(&obja + 1) != 0)) == 1 && lastAccessDate)
          {
            v271 = [*(&obja + 1) laterDate:lastAccessDate];
          }

          else
          {
            v271 = lastAccessDate;
          }

          bundleIDType = [rankingItem4 bundleIDType];
          bundleIDType2 = [rankingItem4 bundleIDType];
          if (([rankingItem4 bundleIDType] & 0x40000) != 0)
          {
            contentType = [v78 contentType];
            v263 = [contentType isEqualToString:@"com.apple.quicktime-movie"];
          }

          else
          {
            v263 = 0;
          }

          [rankerCopy currentTime];
          v107 = v106;
          [v271 timeIntervalSinceReferenceDate];
          if ((bundleIDType & 4) != 0)
          {
            if ((v108 <= 0.0 || v108 < v107 + -47304000.0) && ([rankerCopy wasItemCreatedWithinAWeek:rankingItem4] & 1) == 0)
            {
              goto LABEL_294;
            }

            if ([rankerCopy queryTermCount] == 1)
            {
              firstMatchedAltName = [rankingItem4 firstMatchedAltName];
              v110 = firstMatchedAltName == 0;

              if (v110 && (*[(PRSRankingItem *)rankingItem4 attrCountsPrefix]& 0x82) != 0 && (*[(PRSRankingItem *)rankingItem4 attrCountsPrefix]& 0xFFFFFFFFFFFFFF7DLL) == 0)
              {
                goto LABEL_294;
              }
            }
          }

          if ([rankingItem4 didMatchRankingDescriptor:@"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedPrefixMatch"])
          {
            v111 = 1;
          }

          else
          {
            bundleIdentifier11 = [v278 bundleIdentifier];
            if ([bundleIdentifier11 isEqualToString:@"com.apple.mobilesafari"] && objc_msgSend(v78, "topHit") >= 1)
            {
              v111 = [v78 forceNoTopHit] ^ 1;
            }

            else
            {
              v111 = 0;
            }
          }

          if ([rankingItem4 didMatchRankingDescriptor:@"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedWordMatch"])
          {
            displayNameFuzzySpecialInsertion = 1;
          }

          else
          {
            l2FeatureVector4 = [rankingItem4 L2FeatureVector];
            displayNameFuzzySpecialInsertion = [l2FeatureVector4 displayNameFuzzySpecialInsertion];
          }

          v270 = [rankingItem4 didMatchRankingDescriptor:@"kMDItemDisplayNameOrSubjectOrTitleExactMatch"];
          v267 = [rankingItem4 didMatchRankingDescriptor:@"kMDItemDisplayNameOrSubjectOrTitleTokenizedPrefixMatch"];
          v115 = [rankingItem4 didMatchRankingDescriptor:@"kMDItemAlternateNameExactMatch"];
          if (v283)
          {
            l2FeatureVector5 = [rankingItem4 L2FeatureVector];
            [l2FeatureVector5 scoreForFeature:2327];
            v118 = v117 != 0.0;

            l2FeatureVector6 = [rankingItem4 L2FeatureVector];
            [l2FeatureVector6 scoreForFeature:1614];
            v121 = v120;

            l2FeatureVector7 = [rankingItem4 L2FeatureVector];
            [l2FeatureVector7 scoreForFeature:189];
            v124 = v123;

            v125 = v124 != 2147500000.0 || queryTermLength > 4;
            v126 = v121 == 0.0 && v125;
            if ((v247 & v126) == 1)
            {
              l2FeatureVector8 = [rankingItem4 L2FeatureVector];
              [l2FeatureVector8 originalL2Score];
              v129 = v128 < v39;

              v126 = !v129;
            }

            l2FeatureVector9 = [rankingItem4 L2FeatureVector];
            [l2FeatureVector9 scoreForFeature:1621];
            v133 = v132;

            v134 = v133 == 0.0;
            l2FeatureVector10 = [rankingItem4 L2FeatureVector];
            [l2FeatureVector10 scoreForFeature:34];
            v137 = v136;

            v264 = v134 && v125;
            v130 = v137 != 1.0;
          }

          else
          {
            v118 = 0;
            v126 = 0;
            v264 = 0;
            v130 = 1;
          }

          v261 = v130;
          isAltNamePrefixMatchOnlyTopHitExcludedQuery = [rankerCopy isAltNamePrefixMatchOnlyTopHitExcludedQuery];
          if ((v111 | displayNameFuzzySpecialInsertion | v270 | v267))
          {
            v139 = 1;
          }

          else
          {
            v139 = (v115 | v118 | v126 | v280) & (isAltNamePrefixMatchOnlyTopHitExcludedQuery & searchCopy ^ 1);
          }

          if (v268)
          {
            if ([rankingItem4 topHitReason] == 15)
            {
              v139 = 1;
            }

            else
            {
              v139 = (v290 == 0) & v139;
            }
          }

          if (topHitReason == 16)
          {
            v140 = v266;
          }

          else
          {
            v140 = 0;
          }

          if ((([bundleIdentifier2 isEqualToString:@"com.apple.calculation"] & 1) != 0 || (objc_msgSend(bundleIdentifier2, "isEqualToString:", @"com.apple.conversion") & 1) != 0 || (objc_msgSend(bundleIdentifier2, "isEqualToString:", @"com.apple.worldclock") & 1) != 0 || objc_msgSend(bundleIdentifier2, "isEqualToString:", @"com.apple.datadetector.quick_actions")) && objc_msgSend(v78, "topHit") == 2)
          {
            results4 = [v332[5] results];
            v190 = results4 == 0;

            if (v190)
            {
              v191 = objc_opt_new();
              [v332[5] setResults:v191];
            }

            if ([v332[5] resultsCount])
            {
              [v332[5] removeResultsInRange:{0, objc_msgSend(v332[5], "resultsCount")}];
            }

            [v332[5] setRelatedSectionBundleIdentifier:bundleIdentifier2];
            [v332[5] addResults:v78 atIndex:0];
            v60 = 1;
            v229 = 1;
            goto LABEL_305;
          }

          resultsCount = [v332[5] resultsCount];
          maxInitiallyVisibleResults = [v332[5] maxInitiallyVisibleResults];
          v143 = v268 ^ 1;
          if (resultsCount < maxInitiallyVisibleResults)
          {
            v143 = 1;
          }

          if ((v143 & 1) == 0 && [rankingItem4 topHitReason] == 15)
          {
            results5 = [v332[5] results];
            v193 = results5 == 0;

            if (v193)
            {
              v194 = objc_opt_new();
              [v332[5] setResults:v194];
            }

            if ([v332[5] resultsCount])
            {
              [v332[5] removeResultsInRange:{0, objc_msgSend(v332[5], "resultsCount")}];
            }

            [v332[5] setRelatedSectionBundleIdentifier:bundleIdentifier2];
            [v332[5] addResults:v78 atIndex:0];
            v60 = 0;
LABEL_305:

            v61 = v285;
            goto LABEL_82;
          }

          displayNameInitialsPrefixMatchOnly = [rankingItem4 displayNameInitialsPrefixMatchOnly];
          displayNameInitialsFirstWordAndMoreMatchOnly = [rankingItem4 displayNameInitialsFirstWordAndMoreMatchOnly];
          resultsCount2 = [v332[5] resultsCount];
          v145 = v140 | v139;
          if (resultsCount2 >= [v332[5] maxInitiallyVisibleResults])
          {
            goto LABEL_231;
          }

          if ((bundleIDType & 4) == 0 || ([v78 contactIdentifier], v254 = objc_claimAutoreleasedReturnValue(), v270 & 1 | ((objc_msgSend(v254, "isEqualToString:", sMeContactIdentifier) & 1) == 0)))
          {
            if (v145 & 1) != 0 || ([v278 bundleIdentifier], v245 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v245, "isEqualToString:", @"com.apple.calculation")))
            {
              v146 = 0;
              v147 = 0;
              goto LABEL_190;
            }

            bundleIdentifier12 = [v278 bundleIdentifier];
            if ([bundleIdentifier12 isEqualToString:@"com.apple.conversion"])
            {
              v147 = 0;
              v146 = 1;
              goto LABEL_190;
            }

            bundleIdentifier13 = [v278 bundleIdentifier];
            if ([bundleIdentifier13 isEqualToString:@"com.apple.worldclock"])
            {
              v146 = 1;
              v147 = 1;
LABEL_190:
              v148 = 0;
              if ((committedSearchCopy & v243 & ((bundleIDType & 4) != 0)) != 0)
              {
                v149 = 0;
                goto LABEL_220;
              }

LABEL_205:
              if ((v283 & committedSearchCopy ^ 1 | v270 | v264))
              {
                v155 = 0;
                goto LABEL_212;
              }

              if ((((v261 | displayNameInitialsPrefixMatchOnly) | displayNameInitialsFirstWordAndMoreMatchOnly) & 1) != 0 || ([rankingItem4 displayNameInitials], (v231 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v155 = (v261 | displayNameInitialsPrefixMatchOnly | displayNameInitialsFirstWordAndMoreMatchOnly) ^ 1;
                if (v253)
                {
LABEL_223:
                  v149 = 0;
                  if ((v155 & 1) == 0)
                  {
                    goto LABEL_224;
                  }

LABEL_219:

                  if ((v148 & 1) == 0)
                  {
                    goto LABEL_220;
                  }

LABEL_225:

                  if ((v147 & 1) == 0)
                  {
                    goto LABEL_226;
                  }

LABEL_221:

                  if ((v146 & 1) == 0)
                  {
                    goto LABEL_228;
                  }

LABEL_227:

                  goto LABEL_228;
                }
              }

              else
              {
                v231 = 0;
                v155 = 1;
              }

LABEL_212:
              if (!(v283 & 1 | ((v281 & committedSearchCopy & 1) == 0) | (v228 ^ 1) & 1))
              {
                goto LABEL_223;
              }

              v149 = 1;
              if (committedSearchCopy && (bundleIDType2 & 0x40000) != 0)
              {
                if (topHitReason == 16)
                {
                  v149 = v252 ^ 1;
                }

                else
                {
                  v149 = 1;
                }
              }

              if (v155)
              {
                goto LABEL_219;
              }

LABEL_224:
              if (v148)
              {
                goto LABEL_225;
              }

LABEL_220:
              if (v147)
              {
                goto LABEL_221;
              }

LABEL_226:
              if (v146)
              {
                goto LABEL_227;
              }

LABEL_228:
              if (v145)
              {
                if ((bundleIDType & 4) != 0)
                {
                  goto LABEL_230;
                }

LABEL_242:
                if (v149)
                {
                  goto LABEL_243;
                }
              }

              else
              {

                if (((bundleIDType >> 2) & 1) == 0)
                {
                  goto LABEL_242;
                }

LABEL_230:

                if (v149)
                {
LABEL_243:
                  objc_storeStrong(v326 + 5, v278);
                  bundleIdentifier14 = [v278 bundleIdentifier];
                  [v332[5] setRelatedSectionBundleIdentifier:bundleIdentifier14];

                  [v332[5] addResults:v78];
                  if ((bundleIDType & 4) == 0)
                  {
                    v237 |= v111 & v283;
                    v250 |= v111;
                    LODWORD(v234) = displayNameFuzzySpecialInsertion & v283 | v234;
                    v242 |= v270 & v283;
                    HIDWORD(v233) |= v280 & v283;
                    LODWORD(v233) = v267 & v283 | v233;
                  }

                  goto LABEL_294;
                }
              }

LABEL_231:
              resultSet3 = [v332[5] resultSet];
              firstObject = [resultSet3 firstObject];
              sectionBundleIdentifier = [firstObject sectionBundleIdentifier];

              if ([sectionBundleIdentifier isEqualToString:@"com.apple.calculation"] & 1) != 0 || (objc_msgSend(sectionBundleIdentifier, "isEqualToString:", @"com.apple.conversion") & 1) != 0 || (objc_msgSend(sectionBundleIdentifier, "isEqualToString:", @"com.apple.worldclock"))
              {
                v159 = 1;
              }

              else
              {
                v159 = [sectionBundleIdentifier isEqualToString:@"com.apple.datadetector.quick_actions"];
              }

              l2FeatureVector11 = [rankingItem4 L2FeatureVector];
              [l2FeatureVector11 originalL2Score];
              v162 = v161;

              v163 = PRSLogCategoryDefault();
              if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
              {
                query2 = [(SSRankingManager *)self query];
                applicationBundleIdentifier3 = [v78 applicationBundleIdentifier];
                v174 = applicationBundleIdentifier3;
                if (!applicationBundleIdentifier3)
                {
                  sectionBundleIdentifier2 = [v78 sectionBundleIdentifier];
                  v174 = sectionBundleIdentifier2;
                }

                *buf = 138412802;
                v338 = query2;
                v339 = 2112;
                v340 = v174;
                v341 = 2048;
                v342 = v162;
                _os_log_debug_impl(&dword_1D9F69000, v163, OS_LOG_TYPE_DEBUG, "query %@: Top Hit score for result %@ %f", buf, 0x20u);
                if (!applicationBundleIdentifier3)
                {
                }
              }

              results6 = [v332[5] results];
              v165 = objc_msgSend_count(results6);

              if (!v165)
              {
                goto LABEL_293;
              }

              v166 = [v332[5] resultsAtIndex:0];
              rankingItem6 = [v166 rankingItem];
              if (v159)
              {
                goto LABEL_263;
              }

              if (v255)
              {
                goto LABEL_239;
              }

              if ((v248 | v263))
              {
                goto LABEL_263;
              }

              sectionBundleIdentifier3 = [v78 sectionBundleIdentifier];
              v232 = sectionBundleIdentifier3;
              if (sectionBundleIdentifier != sectionBundleIdentifier3)
              {

                goto LABEL_263;
              }

LABEL_239:
              v168 = v283 & v145 & committedSearchCopy ^ 1 | v270;
              if ((v168 | v264))
              {
                v169 = v168 ^ 1 | v145;
              }

              else if ((v261 | displayNameInitialsPrefixMatchOnly | displayNameInitialsFirstWordAndMoreMatchOnly))
              {
                v169 = v244;
              }

              else
              {
                displayNameInitials2 = [rankingItem4 displayNameInitials];
                v176 = displayNameInitials2 != 0;

                v169 = v176 & v253 & v266 & v252 ^ 1;
              }

              if ((v255 & 1) == 0)
              {
              }

              if ((v169 & 1) == 0)
              {
LABEL_263:
                l2FeatureVector12 = [rankingItem6 L2FeatureVector];
                [l2FeatureVector12 originalL2Score];
                v182 = v162 <= v181;

                if (!(v182 | v256 & 1 | ((bundleIDType & 4) == 0) | v250 & 1))
                {
                  if (v270)
                  {
                    v239[2](v239, v78, v278);
                  }

                  v256 = 0;
                }

                goto LABEL_292;
              }

              if (!v166 || ([rankingItem6 bundleIDType] & 0x100) != 0)
              {
                v179 = 0;
              }

              else
              {
                l2FeatureVector13 = [rankingItem6 L2FeatureVector];
                [l2FeatureVector13 originalL2Score];
                v179 = v162 < v178;
              }

              if (!(v242 & 1 | ((v270 & 1) == 0)) && !v179)
              {
                v239[2](v239, v78, v278);
                v242 = 1;
                goto LABEL_289;
              }

              v183 = v242 | v237 | v179;
              if (((v111 ^ 1 | v183) & 1) == 0)
              {
                v239[2](v239, v78, v278);
                v242 = 0;
                v237 = 1;
                goto LABEL_289;
              }

              if (((v111 ^ 1 | v234 | v183) & 1) == 0)
              {
                v239[2](v239, v78, v278);
                v242 = 0;
                v237 = 0;
                LODWORD(v234) = 1;
                goto LABEL_289;
              }

              if (((!v280 | HIDWORD(v233) | v234 | v237 | v242 | v179) & 1) == 0)
              {
                v239[2](v239, v78, v278);
                v242 = 0;
                v237 = 0;
                HIDWORD(v233) = 1;
                LODWORD(v234) = 0;
                goto LABEL_289;
              }

              if (((v267 ^ 1 | v233 | v237 | v234 | HIDWORD(v233) | v242 | v179) & 1) == 0)
              {
                v239[2](v239, v78, v278);
                LODWORD(v234) = 0;
                v242 = 0;
                v237 = 0;
                v233 = 1;
                goto LABEL_289;
              }

              sectionBundleIdentifier4 = [v78 sectionBundleIdentifier];
              v185 = sectionBundleIdentifier4;
              if (sectionBundleIdentifier == sectionBundleIdentifier4)
              {
              }

              else
              {
                if (![sectionBundleIdentifier isEqualToString:@"com.apple.application"])
                {

                  goto LABEL_286;
                }

                sectionBundleIdentifier5 = [v78 sectionBundleIdentifier];
                v187 = [sectionBundleIdentifier5 isEqualToString:@"com.apple.app-clips"];

                if (!v187)
                {
LABEL_286:
                  if (searchCopy && objc_msgSend_count(results3) >= 2)
                  {
                    v239[2](v239, v78, v278);
                  }

LABEL_289:
                  v188 = HIDWORD(v234);
                  if (!v283)
                  {
                    v188 = v266 | HIDWORD(v234);
                  }

                  HIDWORD(v234) = v188;
                  v256 |= v283;
LABEL_292:

LABEL_293:
                  goto LABEL_294;
                }
              }

              [v332[5] addResults:v78];
              goto LABEL_289;
            }

            bundleIdentifier15 = [v278 bundleIdentifier];
            if ([bundleIdentifier15 isEqualToString:@"com.apple.datadetector.quick_actions"])
            {
              if ((committedSearchCopy & v243 & (bundleIDType >> 2) & 1) != 1)
              {
                v148 = 1;
                v147 = 1;
                v146 = 1;
                goto LABEL_205;
              }
            }

            else
            {

              if (((bundleIDType >> 2) & 1) == 0)
              {
                goto LABEL_231;
              }
            }
          }

          goto LABEL_231;
        }

LABEL_81:
        v60 = 0;
LABEL_82:

        ++v269;
      }

      while (v269 != v257);
      v195 = [v251 countByEnumeratingWithState:&v304 objects:v343 count:16];
      v257 = v195;
      if (!v195)
      {
        goto LABEL_309;
      }
    }
  }

  v229 = 0;
  v61 = 0;
  v271 = 0;
  BYTE4(v234) = 0;
  v256 = 0;
LABEL_309:

  if ((v256 | BYTE4(v234)))
  {
    sectionCopy = 8;
  }

  else
  {
    sectionCopy = 1;
  }

  if (section)
  {
    sectionCopy = section;
  }

  v291 = sectionCopy;
  results7 = [v332[5] results];
  v288 = objc_msgSend_count(results7);
  if (obja)
  {
    v198 = MEMORY[0x1E695DF00];
    [rankerCopy currentTime];
    v294 = [v198 dateWithTimeIntervalSinceReferenceDate:?];
    v199 = objc_alloc(MEMORY[0x1E695DEE8]);
    v200 = [v199 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v201 = 0;
    v202 = -1;
    v203 = -1;
    while (v201 < objc_msgSend_count(results7))
    {
      v204 = [results7 objectAtIndex:v201];
      v205 = v204;
      if (v204 == obja)
      {
        v203 = v201;
      }

      else if (v202 < 0)
      {
        rankingItem7 = [v204 rankingItem];
        v207 = SSCompactRankingAttrsGetValue([rankingItem7 attributes], 0x20uLL);
        if (!v207 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ((v208 = [v200 isDate:v207 inSameDayAsDate:v294], *(&obja + 1)) ? (v209 = v208) : (v209 = 0), v209 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || objc_msgSend(*(&obja + 1), "compare:", v207) != -1))
        {
          v202 = v201;
        }
      }

      ++v201;
    }
  }

  else
  {
    v202 = -1;
    v203 = -1;
  }

  resultSet4 = [v332[5] resultSet];
  firstObject2 = [resultSet4 firstObject];
  sectionBundleIdentifier6 = [firstObject2 sectionBundleIdentifier];

  if (obja)
  {
    if (v288)
    {
      if ((v202 & 0x8000000000000000) == 0 && v202 < v291 && ([sectionBundleIdentifier6 isEqualToString:@"com.apple.calculation"] & 1) == 0 && (objc_msgSend(sectionBundleIdentifier6, "isEqualToString:", @"com.apple.conversion") & 1) == 0 && (objc_msgSend(sectionBundleIdentifier6, "isEqualToString:", @"com.apple.worldclock") & 1) == 0 && (objc_msgSend(sectionBundleIdentifier6, "isEqualToString:", @"com.apple.datadetector.quick_actions") & 1) == 0 && ((objc_msgSend(sectionBundleIdentifier6, "isEqualToString:", @"com.apple.application") & 1) != 0 || objc_msgSend(sectionBundleIdentifier6, "isEqualToString:", @"com.apple.app-clips")))
      {
        sectionBundleIdentifier7 = [obja sectionBundleIdentifier];
        if ([sectionBundleIdentifier7 isEqualToString:@"com.apple.application"])
        {
          v214 = 0;
          v215 = 1;
        }

        else
        {
          v225 = [sectionBundleIdentifier7 isEqualToString:@"com.apple.application"];
          if (v202)
          {
            v215 = v225;
          }

          else
          {
            v215 = 1;
          }

          v214 = (v202 == 0) & ~v225;
        }

        goto LABEL_346;
      }
    }

    else
    {
      v202 = 0;
      v214 = 0;
      v215 = 1;
LABEL_346:
      if (!v215 || v203 < 0 || v203 > v202)
      {
        if (v215 && (committedSearchCopy & v228 & 1) == 0)
        {
          [(NSMutableString *)self->_logValues insertString:@"Top Hit is a shortcut result\n" atIndex:0];
          if ((v203 & 0x8000000000000000) == 0)
          {
            resultSet5 = [v332[5] resultSet];
            [resultSet5 removeObject:obja];
          }

          [v332[5] addResults:obja atIndex:v202];
          [v297 setTopHitReason:17];
          if (v291 >= 1 && [v332[5] resultsCount] > v291)
          {
            [v332[5] removeResultsAtIndex:{objc_msgSend(v332[5], "resultsCount") - 1}];
          }

          if (v214)
          {
            [v332[5] removeResultsInRange:{1, objc_msgSend(v332[5], "resultsCount") - 1}];
          }

          if (v295 && !v202)
          {
            objc_storeStrong(v326 + 5, v295);
            bundleIdentifier16 = [v295 bundleIdentifier];
            [v332[5] setRelatedSectionBundleIdentifier:bundleIdentifier16];
          }

          sectionBundleIdentifier8 = [obja sectionBundleIdentifier];
          rankingConfiguration6 = [(SSRankingManager *)self rankingConfiguration];
          [rankingConfiguration6 setShortcutSectionBundleID:sectionBundleIdentifier8];

          v229 = 1;
        }
      }

      else
      {
        [v297 setTopHitReason:17];
        v229 |= v203 == 0;
      }
    }
  }

  [(SSRankingManager *)self applyTopHitRankingPolicyToSection:v332[5] topResultSection:v326[5] maxTopHitCount:v291 isShortcut:v229 & 1];
  results8 = [v332[5] results];

  for (ii = 0; ii < objc_msgSend_count(results8); ++ii)
  {
    v222 = [results8 objectAtIndex:ii];
    rankingItem8 = [v222 rankingItem];
    [rankingItem8 setBundleIDType:{objc_msgSend(rankingItem8, "bundleIDType") | 0x8000}];
  }

  v14 = v332[5];

  _Block_object_dispose(&v325, 8);
  _Block_object_dispose(&v331, 8);

LABEL_367:

  return v14;
}

+ (id)getLegacyTophitSection
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sLegacyTophitSection;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

void __190__SSRankingManager_makeTopHitSectionUsingSections_withItemRanker_sectionHeader_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v6 = [v5 bundleIdentifier];
  [*(*(*(a1 + 40) + 8) + 40) setRelatedSectionBundleIdentifier:v6];

  v7 = [*(*(*(a1 + 40) + 8) + 40) resultSet];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [v8 sectionBundleIdentifier];
    v10 = [v15 sectionBundleIdentifier];

    if (v9 != v10)
    {
      v11 = [v8 sectionBundleIdentifier];
      if ([v11 isEqualToString:@"com.apple.mobileslideshow"])
      {
      }

      else
      {
        v12 = [v8 sectionBundleIdentifier];
        v13 = [v12 isEqualToString:@"com.apple.searchd.syndicatedPhotos"];

        if ((v13 & 1) == 0)
        {
          v14 = [*(*(*(a1 + 40) + 8) + 40) resultSet];
          [v14 removeObjectAtIndex:0];
          goto LABEL_8;
        }
      }

      v14 = [*(*(*(a1 + 40) + 8) + 40) resultSet];
      [v14 removeAllObjects];
LABEL_8:
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) addResults:v15 atIndex:0];
}

uint64_t __190__SSRankingManager_makeTopHitSectionUsingSections_withItemRanker_sectionHeader_shortcutResult_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_parsecEnabled_maxNumAppsInTopHitSection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 rankingItem];
  if (v7 && (v8 = v7, [v5 rankingItem], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [v5 rankingItem];
    v11 = [v6 rankingItem];
    [*(a1 + 32) currentTime];
    v12 = -[v10 compare:v11 currentTime:?];
  }

  else
  {
    v13 = [v5 rankingItem];

    if (v13)
    {
      v12 = -1;
    }

    else
    {
      v14 = [v6 rankingItem];

      v12 = v14 != 0;
    }
  }

  return v12;
}

- (id)removeBlockListedSectionsForMapping:(id)mapping
{
  v23 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  rankingConfiguration = [(SSRankingManager *)self rankingConfiguration];
  [rankingConfiguration lock];

  rankingConfiguration2 = [(SSRankingManager *)self rankingConfiguration];
  cepBlocklistSet = [rankingConfiguration2 cepBlocklistSet];

  if (mappingCopy && cepBlocklistSet)
  {
    v8 = [mappingCopy mutableCopy];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [mappingCopy allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([cepBlocklistSet containsObject:v14])
          {
            [v8 removeObjectForKey:v14];
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    mappingCopy = v15;
  }

  rankingConfiguration3 = [(SSRankingManager *)self rankingConfiguration];
  [rankingConfiguration3 unlock];

  return mappingCopy;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    v3 = [v2 objectForKey:@"meContactIdentifier"];
    v4 = sMeContactIdentifier;
    sMeContactIdentifier = v3;

    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.parsec.web_suggest", @"com.apple.parsec.web_index", @"com.apple.parsec.bing", 0}];
    v6 = sSetOfSuggestedWebsitesBundleIDs;
    sSetOfSuggestedWebsitesBundleIDs = v5;

    v7 = sDefaultProbability;
    sDefaultProbability = &unk_1F55B6F58;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__SSRankingManager_initialize__block_invoke;
    block[3] = &unk_1E8595778;
    v11 = v2;
    v8 = initialize_once_token;
    v9 = v2;
    if (v8 != -1)
    {
      dispatch_once(&initialize_once_token, block);
    }

    isInternalDevice = os_variant_has_internal_diagnostics();
  }
}

void __30__SSRankingManager_initialize__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"marriott", @"hilton", @"intercontinental hotels", @"igh", @"accor hotels", @"ritz-carlton", @"ritz carlton", @"four seasons", @"shangri-la", @"shangri la", @"hyatt", @"jw marriott", @"hotel", @"resort", @"lodging", @"accommodation", @"reservation", @"suite", @"room", @"guest", @"booking", @"confirmation", @"check-in", @"check-out", @"check in", @"check out", 0}];
  v3 = sSetOfHotelReservationKeywords;
  sSetOfHotelReservationKeywords = v2;

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"delta", @"alaska", @"southwest", @"hawaiian", @"jetblue", @"united", @"american", @"spirit", @"frontier", @"emirates", @"qatar airways", @"singapore airlines", @"air canada", @"aeroflot", @"airport", @"airline", @"airlines", @"departure", @"arrival", @"boarding", @"boarding gate", @"terminal", @"check in", @"check-in", 0}];
  v5 = sSetOfFlightReservationKeywords;
  sSetOfFlightReservationKeywords = v4;

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"restaurant", @"reservation", @"reservations", @"dinning", @"dinner", @"lunch", @"brunch", @"breakfast", @"bistro", @"cafe", @"eatery", @"party of", @"table for", 0}];
  v7 = sSetOfRestaurantReservationKeywords;
  sSetOfRestaurantReservationKeywords = v6;

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ticket", @"tickets", @"reservation", @"confirmation", @"RSVP", @"booking", @"appointment", @"party of", @"event", @"venue", 0}];
  v9 = sSetOfOtherReservationKeywords;
  sSetOfOtherReservationKeywords = v8;

  v10 = [*(a1 + 32) objectForKey:@"SpotlightForSearchToolRegressionTest"];
  isSpotlightForSearchToolRegressionTest = v10 != 0;
}

- (SSRankingManager)initWithQuery:(id)query
{
  queryCopy = query;
  v15.receiver = self;
  v15.super_class = SSRankingManager;
  v6 = [(SSRankingManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, query);
    v8 = objc_opt_new();
    rankingConfiguration = v7->_rankingConfiguration;
    v7->_rankingConfiguration = v8;

    if (isInternalDevice == 1)
    {
      v10 = objc_opt_new();
    }

    else
    {
      v10 = 0;
    }

    logValues = v7->_logValues;
    v7->_logValues = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.application", @"com.apple.MobileAddressBook", @"com.apple.conversion", @"com.apple.calculation", @"com.apple.worldclock", @"com.apple.datadetector.quick_actions", @"com.apple.dictionary", @"com.apple.mobilesafari", @"com.apple.app-clips", 0}];
    allowedTopHitSections = v7->_allowedTopHitSections;
    v7->_allowedTopHitSections = v12;

    v7->_bullseyeRankingEnabled = 0;
  }

  return v7;
}

- (int64_t)compareDate:(id)date withDate:(id)withDate
{
  if (date && withDate)
  {
    withDateCopy = withDate;
    [date timeIntervalSinceNow];
    v7 = v6;
    [withDateCopy timeIntervalSinceNow];
    v9 = v8;

    if ((v7 <= 0.0 || v9 <= 0.0) && (v7 > 0.0 || v9 > 0.0))
    {
      goto LABEL_14;
    }

    v7 = fabs(v7);
    v9 = fabs(v9);
    if (v7 < v9)
    {
      return -1;
    }

    if (v7 <= v9)
    {
LABEL_14:
      if (v9 >= 0.0 || v7 <= 0.0)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 1;
    }
  }

  else if (date)
  {
    return -1;
  }

  else
  {
    return withDate != 0;
  }
}

+ (void)rankLocalBundlesUsingL3Score:(id)score sectionMapping:(id)mapping l3RankingScores:(id)scores
{
  scoreCopy = score;
  mappingCopy = mapping;
  scoresCopy = scores;
  if (objc_msgSend_count(scoreCopy))
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(scoreCopy)];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(scoreCopy)];
    if (objc_msgSend_count(scoreCopy))
    {
      v12 = 0;
      do
      {
        v13 = [scoreCopy objectAtIndexedSubscript:v12];
        rankingItem = [v13 rankingItem];
        [rankingItem keywordMatchScore];
        v16 = v15;

        if (v16 >= 0.0)
        {
          [v10 addObject:v13];
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          [v11 addObject:v17];
        }

        ++v12;
      }

      while (v12 < objc_msgSend_count(scoreCopy));
    }

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __80__SSRankingManager_rankLocalBundlesUsingL3Score_sectionMapping_l3RankingScores___block_invoke;
    v25 = &unk_1E85959A8;
    v26 = scoresCopy;
    v27 = mappingCopy;
    [v10 sortWithOptions:16 usingComparator:&v22];
    if (objc_msgSend_count(v10, v22, v23, v24, v25))
    {
      v18 = 0;
      do
      {
        v19 = [v11 objectAtIndexedSubscript:v18];
        unsignedIntegerValue = [v19 unsignedIntegerValue];
        v21 = [v10 objectAtIndexedSubscript:v18];
        [scoreCopy replaceObjectAtIndex:unsignedIntegerValue withObject:v21];

        ++v18;
      }

      while (v18 < objc_msgSend_count(v10));
    }
  }
}

uint64_t __80__SSRankingManager_rankLocalBundlesUsingL3Score_sectionMapping_l3RankingScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = compareBestLocalResultsWithRules(v5, v6, 0);
  if (!v7)
  {
    v8 = [v5 rankingItem];
    [v8 likelihood];
    v10 = v9;

    v29 = v10;
    v11 = [v6 rankingItem];
    [v11 likelihood];
    v13 = v12;

    v28 = v13;
    v14 = [v5 rankingItem];
    [v14 keywordMatchScore];
    v16 = v15;

    v17 = [v6 rankingItem];
    [v17 keywordMatchScore];
    v19 = v18;

    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22 = [v5 rankingItem];
    v23 = [v22 sectionBundleIdentifier];
    v24 = [v6 rankingItem];
    v25 = [v24 sectionBundleIdentifier];
    v7 = 1;
    LOWORD(v27) = 1;
    [SectionL3Scores getComparableL3Score:v21 sectionMapping:v20 bundleId1:v23 bundleId2:v25 score1:&v29 score2:&v28 usePommesScore:v27 useLegacyScore:?];

    if (v29 <= v28)
    {
      if (v28 <= v29)
      {
        if (v16 > v19)
        {
          v7 = 1;
          goto LABEL_9;
        }

        if (v19 <= v16)
        {
          v7 = 0;
          goto LABEL_9;
        }
      }

      v7 = -1;
    }
  }

LABEL_9:

  return -v7;
}

+ (id)rankLocalBundlesUsingOriginalL2ScoreAndRules:(id)rules sectionMapping:(id)mapping l3RankingScores:(id)scores
{
  rulesCopy = rules;
  mappingCopy = mapping;
  scoresCopy = scores;
  if (isInternalDevice == 1)
  {
    v10 = objc_opt_new();
  }

  else
  {
    v10 = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__SSRankingManager_rankLocalBundlesUsingOriginalL2ScoreAndRules_sectionMapping_l3RankingScores___block_invoke;
  v17[3] = &unk_1E8595898;
  v11 = v10;
  v18 = v11;
  v19 = scoresCopy;
  v20 = mappingCopy;
  v12 = mappingCopy;
  v13 = scoresCopy;
  [rulesCopy sortWithOptions:1 usingComparator:v17];
  v14 = v20;
  v15 = v11;

  return v11;
}

uint64_t __96__SSRankingManager_rankLocalBundlesUsingOriginalL2ScoreAndRules_sectionMapping_l3RankingScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = compareBestLocalResultsWithRules(v5, v6, *(a1 + 32));
  if (!v7)
  {
    v8 = [v5 rankingItem];
    v9 = [v8 L2FeatureVector];
    [v9 originalL2Score];
    v11 = v10;

    v26 = v11;
    v12 = [v6 rankingItem];
    v13 = [v12 L2FeatureVector];
    [v13 originalL2Score];
    v15 = v14;

    v25 = v15;
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = [v5 rankingItem];
    v19 = [v18 sectionBundleIdentifier];
    v20 = [v6 rankingItem];
    v21 = [v20 sectionBundleIdentifier];
    LOWORD(v24) = 256;
    [SectionL3Scores getComparableL3Score:v17 sectionMapping:v16 bundleId1:v19 bundleId2:v21 score1:&v26 score2:&v25 usePommesScore:v24 useLegacyScore:?];

    if (v26 <= v25)
    {
      if (v25 <= v26)
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
  }

  v22 = -v7;

  return v22;
}

+ (id)rankLocalBundlesUsingModelL3ScoreAndRules:(id)rules sectionMapping:(id)mapping l3RankingScores:(id)scores
{
  v94 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  mappingCopy = mapping;
  scoresCopy = scores;
  if (isInternalDevice == 1)
  {
    v10 = objc_opt_new();
  }

  else
  {
    v10 = 0;
  }

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __93__SSRankingManager_rankLocalBundlesUsingModelL3ScoreAndRules_sectionMapping_l3RankingScores___block_invoke;
  v87[3] = &unk_1E8595898;
  v77 = v10;
  v88 = v77;
  v80 = scoresCopy;
  v89 = v80;
  v76 = mappingCopy;
  v90 = v76;
  [rulesCopy sortWithOptions:1 usingComparator:v87];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = rulesCopy;
  v81 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
  if (v81)
  {
    v79 = *v84;
    do
    {
      v11 = 0;
      do
      {
        if (*v84 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v83 + 1) + 8 * v11);
        v13 = objc_opt_new();
        sectionBundleIdentifier = [v12 sectionBundleIdentifier];

        if (sectionBundleIdentifier)
        {
          sectionBundleIdentifier2 = [v12 sectionBundleIdentifier];
          [v13 setObject:sectionBundleIdentifier2 forKey:@"bundle_id"];
        }

        v82 = v11;
        identifier = [v12 identifier];

        if (identifier)
        {
          identifier2 = [v12 identifier];
          [v13 setObject:identifier2 forKey:@"identifier"];
        }

        title = [v12 title];
        text = [title text];

        if (text)
        {
          title2 = [v12 title];
          text2 = [title2 text];
          v22 = SSRedactString(text2, 1);
          [v13 setObject:v22 forKey:@"title"];
        }

        v23 = MEMORY[0x1E696AEC0];
        rankingItem = [v12 rankingItem];
        v25 = [v23 stringWithFormat:@"%i", objc_msgSend(rankingItem, "shouldHideUnderShowMore")];
        [v13 setObject:v25 forKey:@"should_hide_under_show_more"];

        rankingItem2 = [v12 rankingItem];
        l2FeatureVector = [rankingItem2 L2FeatureVector];

        if (l2FeatureVector)
        {
          v28 = MEMORY[0x1E696AEC0];
          rankingItem3 = [v12 rankingItem];
          l2FeatureVector2 = [rankingItem3 L2FeatureVector];
          [l2FeatureVector2 originalL2Score];
          v32 = [v28 stringWithFormat:@"%f", v31];
          [v13 setObject:v32 forKey:@"original_l2_score"];
        }

        v33 = MEMORY[0x1E696AEC0];
        rankingItem4 = [v12 rankingItem];
        [rankingItem4 likelihood];
        v36 = [v33 stringWithFormat:@"%f", v35];
        [v13 setObject:v36 forKey:@"likelihood"];

        v37 = MEMORY[0x1E696AEC0];
        rankingItem5 = [v12 rankingItem];
        [rankingItem5 keywordMatchScore];
        v40 = [v37 stringWithFormat:@"%f", v39];
        [v13 setObject:v40 forKey:@"topicality_score"];

        v41 = MEMORY[0x1E696AEC0];
        rankingItem6 = [v12 rankingItem];
        [rankingItem6 engagementScore];
        v44 = [v41 stringWithFormat:@"%f", v43];
        [v13 setObject:v44 forKey:@"engagement_score"];

        v45 = MEMORY[0x1E696AEC0];
        rankingItem7 = [v12 rankingItem];
        [rankingItem7 freshnessScore];
        v48 = [v45 stringWithFormat:@"%f", v47];
        [v13 setObject:v48 forKey:@"freshness_score"];

        rankingItem8 = [v12 rankingItem];
        sectionBundleIdentifier3 = [rankingItem8 sectionBundleIdentifier];

        if (!sectionBundleIdentifier3)
        {
          sectionBundleIdentifier3 = [v12 sectionBundleIdentifier];
        }

        v51 = [v80 objectForKey:sectionBundleIdentifier3];
        v52 = v51;
        if (v51)
        {
          v53 = MEMORY[0x1E696AEC0];
          [v51 iFunScore];
          v55 = [v53 stringWithFormat:@"%f", v54];
          [v13 setObject:v55 forKey:@"iFunScore"];

          v56 = 0;
          do
          {
            v57 = MEMORY[0x1E696AEC0];
            [v52 getL3Score:v56 isLegacy:0];
            v59 = [v57 stringWithFormat:@"%f", v58];
            v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"l3Score[%i]", v56];
            [v13 setObject:v59 forKey:v60];

            v61 = MEMORY[0x1E696AEC0];
            [v52 getL3Score:v56 isLegacy:1];
            v63 = [v61 stringWithFormat:@"%f", v62];
            v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"l3ScoreLegacy[%i]", v56];
            [v13 setObject:v63 forKey:v64];

            v56 = (v56 + 1);
          }

          while (v56 != 3);
          v65 = MEMORY[0x1E696AEC0];
          [v52 serverRelevanceScore];
          v67 = [v65 stringWithFormat:@"%f", v66];
          [v13 setObject:v67 forKey:@"serverRelevanceScore"];

          v68 = MEMORY[0x1E696AEC0];
          [v52 modelScore];
          v70 = [v68 stringWithFormat:@"%f", v69];
          [v13 setObject:v70 forKey:@"modelScore"];
        }

        v71 = SSGeneralLog();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = [SSRankingUtilities jsonStringFromDictionary:v13];
          *buf = 138412290;
          v92 = v72;
          _os_log_impl(&dword_1D9F69000, v71, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: local_bundles_model_results = %@", buf, 0xCu);
        }

        v11 = v82 + 1;
      }

      while (v82 + 1 != v81);
      v81 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
    }

    while (v81);
  }

  v73 = v90;
  v74 = v77;

  return v77;
}

uint64_t __93__SSRankingManager_rankLocalBundlesUsingModelL3ScoreAndRules_sectionMapping_l3RankingScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = compareBestLocalResultsWithRules(v5, v6, *(a1 + 32));
  if (!v7)
  {
    v8 = [v5 rankingItem];
    v9 = [v8 L2FeatureVector];
    [v9 originalL2Score];
    v11 = v10;

    v31 = v11;
    v12 = [v6 rankingItem];
    v13 = [v12 L2FeatureVector];
    [v13 originalL2Score];
    v15 = v14;

    v30 = v15;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = [v5 rankingItem];
    v19 = [v18 sectionBundleIdentifier];
    v20 = [v6 rankingItem];
    v21 = [v20 sectionBundleIdentifier];
    LOWORD(v29) = 256;
    [SectionL3Scores getComparableL3Score:v16 sectionMapping:v17 bundleId1:v19 bundleId2:v21 score1:&v31 score2:&v30 usePommesScore:v29 useLegacyScore:?];

    v22 = *(a1 + 40);
    v23 = [v5 rankingItem];
    v24 = [v23 sectionBundleIdentifier];
    v25 = [v6 rankingItem];
    v26 = [v25 sectionBundleIdentifier];
    [SectionL3Scores getComparableModelL3Score:v22 bundleId1:v24 bundleId2:v26 score1:&v31 score2:&v30];

    if (v31 <= v30)
    {
      if (v30 <= v31)
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
  }

  v27 = -v7;

  return v27;
}

+ (id)rankLocalBundles:(id)bundles sectionMapping:(id)mapping l3RankingScores:(id)scores
{
  v72 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  mappingCopy = mapping;
  scoresCopy = scores;
  v10 = [SSRankingManager rankLocalBundlesUsingOriginalL2ScoreAndRules:bundlesCopy sectionMapping:mappingCopy l3RankingScores:scoresCopy];
  if (SSEnableSpotlightTopHitPersonalizedRanking(v10))
  {
    [SSRankingManager rankLocalBundlesUsingL3Score:bundlesCopy sectionMapping:mappingCopy l3RankingScores:scoresCopy];
  }

  if (isInternalDevice == 1)
  {
    v59 = v10;
    v60 = scoresCopy;
    v61 = mappingCopy;
    v64 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(bundlesCopy)];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v62 = bundlesCopy;
    obj = bundlesCopy;
    v11 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v66;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v66 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v65 + 1) + 8 * i);
          v16 = objc_opt_new();
          sectionBundleIdentifier = [v15 sectionBundleIdentifier];

          if (sectionBundleIdentifier)
          {
            sectionBundleIdentifier2 = [v15 sectionBundleIdentifier];
            [v16 setObject:sectionBundleIdentifier2 forKey:@"bundle_id"];
          }

          identifier = [v15 identifier];

          if (identifier)
          {
            identifier2 = [v15 identifier];
            [v16 setObject:identifier2 forKey:@"identifier"];
          }

          title = [v15 title];
          text = [title text];

          if (text)
          {
            title2 = [v15 title];
            text2 = [title2 text];
            v25 = SSRedactString(text2, 1);
            [v16 setObject:v25 forKey:@"title"];
          }

          v26 = MEMORY[0x1E696AEC0];
          rankingItem = [v15 rankingItem];
          v28 = [v26 stringWithFormat:@"%i", objc_msgSend(rankingItem, "shouldHideUnderShowMore")];
          [v16 setObject:v28 forKey:@"should_hide_under_show_more"];

          rankingItem2 = [v15 rankingItem];
          l2FeatureVector = [rankingItem2 L2FeatureVector];

          if (l2FeatureVector)
          {
            v31 = MEMORY[0x1E696AEC0];
            rankingItem3 = [v15 rankingItem];
            l2FeatureVector2 = [rankingItem3 L2FeatureVector];
            [l2FeatureVector2 originalL2Score];
            v35 = [v31 stringWithFormat:@"%f", v34];
            [v16 setObject:v35 forKey:@"original_l2_score"];
          }

          v36 = MEMORY[0x1E696AEC0];
          rankingItem4 = [v15 rankingItem];
          [rankingItem4 likelihood];
          v39 = [v36 stringWithFormat:@"%f", v38];
          [v16 setObject:v39 forKey:@"likelihood"];

          v40 = MEMORY[0x1E696AEC0];
          rankingItem5 = [v15 rankingItem];
          [rankingItem5 keywordMatchScore];
          v43 = [v40 stringWithFormat:@"%f", v42];
          [v16 setObject:v43 forKey:@"topicality_score"];

          v44 = MEMORY[0x1E696AEC0];
          rankingItem6 = [v15 rankingItem];
          [rankingItem6 engagementScore];
          v47 = [v44 stringWithFormat:@"%f", v46];
          [v16 setObject:v47 forKey:@"engagement_score"];

          v48 = MEMORY[0x1E696AEC0];
          rankingItem7 = [v15 rankingItem];
          [rankingItem7 freshnessScore];
          v51 = [v48 stringWithFormat:@"%f", v50];
          [v16 setObject:v51 forKey:@"freshness_score"];

          [v64 addObject:v16];
          v52 = SSGeneralLog();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = [SSRankingUtilities jsonStringFromDictionary:v16];
            *buf = 138412290;
            v70 = v53;
            _os_log_impl(&dword_1D9F69000, v52, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: local_bundles_rule_results = %@", buf, 0xCu);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v12);
    }

    v54 = SSGeneralLog();
    v10 = v59;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [SSRankingUtilities jsonStringFromDictionary:v59];
      *buf = 138412290;
      v70 = v55;
      _os_log_impl(&dword_1D9F69000, v54, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: local_bundles_rules = %@", buf, 0xCu);
    }

    v56 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [v56 setObject:v64 forKey:@"l3_local_bundles_results"];
    [v56 setObject:v59 forKey:@"l3_local_bundles_rules"];
    v57 = [SSRankingUtilities jsonStringFromDictionary:v56];

    mappingCopy = v61;
    bundlesCopy = v62;
    scoresCopy = v60;
  }

  else
  {
    v57 = &stru_1F556FE60;
  }

  return v57;
}

+ (void)logL3Results:(id)results l3Info:(id)info
{
  v90 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  infoCopy = info;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = resultsCopy;
  v80 = [resultsCopy countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (v80)
  {
    v76 = 0;
    v78 = *v82;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v82 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v81 + 1) + 8 * i);
        if ([v7 resultsCount])
        {
          v79 = v7;
          v8 = [v7 resultsAtIndex:0];
          v9 = objc_opt_new();
          sectionBundleIdentifier = [v8 sectionBundleIdentifier];

          if (sectionBundleIdentifier)
          {
            sectionBundleIdentifier2 = [v8 sectionBundleIdentifier];
            [v9 setObject:sectionBundleIdentifier2 forKey:@"bundle_id"];
          }

          identifier = [v8 identifier];

          if (identifier)
          {
            identifier2 = [v8 identifier];
            [v9 setObject:identifier2 forKey:@"identifier"];
          }

          title = [v8 title];
          text = [title text];

          if (text)
          {
            title2 = [v8 title];
            text2 = [title2 text];
            v18 = SSRedactString(text2, 1);
            [v9 setObject:v18 forKey:@"title"];
          }

          v19 = MEMORY[0x1E696AEC0];
          rankingItem = [v8 rankingItem];
          v21 = [v19 stringWithFormat:@"%i", objc_msgSend(rankingItem, "shouldHideUnderShowMore")];
          [v9 setObject:v21 forKey:@"should_hide_under_show_more"];

          rankingItem2 = [v8 rankingItem];
          l2FeatureVector = [rankingItem2 L2FeatureVector];

          if (l2FeatureVector)
          {
            v24 = MEMORY[0x1E696AEC0];
            rankingItem3 = [v8 rankingItem];
            l2FeatureVector2 = [rankingItem3 L2FeatureVector];
            [l2FeatureVector2 originalL2Score];
            v28 = [v24 stringWithFormat:@"%f", v27];
            [v9 setObject:v28 forKey:@"original_l2_score"];
          }

          v29 = MEMORY[0x1E696AEC0];
          [v8 l2score];
          v31 = [v29 stringWithFormat:@"%f", v30];
          [v9 setObject:v31 forKey:@"result_l2_score"];

          v32 = MEMORY[0x1E696AEC0];
          rankingItem4 = [v8 rankingItem];
          [rankingItem4 likelihood];
          v35 = [v32 stringWithFormat:@"%f", v34];
          [v9 setObject:v35 forKey:@"likelihood"];

          v36 = MEMORY[0x1E696AEC0];
          rankingItem5 = [v8 rankingItem];
          [rankingItem5 keywordMatchScore];
          v39 = [v36 stringWithFormat:@"%f", v38];
          [v9 setObject:v39 forKey:@"topicality_score"];

          v40 = MEMORY[0x1E696AEC0];
          rankingItem6 = [v8 rankingItem];
          [rankingItem6 engagementScore];
          v43 = [v40 stringWithFormat:@"%f", v42];
          [v9 setObject:v43 forKey:@"engagement_score"];

          v44 = MEMORY[0x1E696AEC0];
          rankingItem7 = [v8 rankingItem];
          [rankingItem7 freshnessScore];
          v47 = [v44 stringWithFormat:@"%f", v46];
          [v9 setObject:v47 forKey:@"freshness_score"];

          rankingItem8 = [v8 rankingItem];
          sectionBundleIdentifier3 = [rankingItem8 sectionBundleIdentifier];

          if (!sectionBundleIdentifier3)
          {
            sectionBundleIdentifier3 = [v8 sectionBundleIdentifier];
          }

          v50 = [infoCopy objectForKey:sectionBundleIdentifier3];
          v51 = v50;
          if (v50)
          {
            v52 = MEMORY[0x1E696AEC0];
            [v50 iFunScore];
            v54 = [v52 stringWithFormat:@"%f", v53];
            [v9 setObject:v54 forKey:@"iFunScore"];

            v55 = 0;
            do
            {
              v56 = MEMORY[0x1E696AEC0];
              [v51 getL3Score:v55 isLegacy:0];
              v58 = [v56 stringWithFormat:@"%f", v57];
              v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"l3Score[%i]", v55];
              [v9 setObject:v58 forKey:v59];

              v60 = MEMORY[0x1E696AEC0];
              [v51 getL3Score:v55 isLegacy:1];
              v62 = [v60 stringWithFormat:@"%f", v61];
              v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"l3ScoreLegacy[%i]", v55];
              [v9 setObject:v62 forKey:v63];

              v55 = (v55 + 1);
            }

            while (v55 != 3);
            v64 = MEMORY[0x1E696AEC0];
            [v51 serverRelevanceScore];
            v66 = [v64 stringWithFormat:@"%f", v65];
            [v9 setObject:v66 forKey:@"serverRelevanceScore"];

            v67 = MEMORY[0x1E696AEC0];
            [v51 modelScore];
            v69 = [v67 stringWithFormat:@"%f", v68];
            [v9 setObject:v69 forKey:@"modelScore"];

            v70 = MEMORY[0x1E696AEC0];
            resultSet = [v79 resultSet];
            v72 = [v70 stringWithFormat:@"%lu", objc_msgSend_count(resultSet)];
            [v9 setObject:v72 forKey:@"resultCount"];
          }

          v73 = SSGeneralLog();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = [SSRankingUtilities jsonStringFromDictionary:v9];
            *buf = 67109378;
            v86 = ++v76;
            v87 = 2112;
            v88 = v74;
            _os_log_impl(&dword_1D9F69000, v73, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] L3: all_bundles_results %i = %@", buf, 0x12u);
          }
        }
      }

      v80 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
    }

    while (v80);
  }
}

+ (id)getTopHitItems:(id)items
{
  v34 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = itemsCopy;
  obj = [itemsCopy allValues];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        results = [v8 results];
        v10 = objc_msgSend_count(results);

        if (v10)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          results2 = [v8 results];
          v12 = [results2 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(results2);
                }

                v16 = *(*(&v24 + 1) + 8 * j);
                rankingItem = [v16 rankingItem];
                bundleIDType = [rankingItem bundleIDType];

                if (bundleIDType < 0)
                {
                  rankingItem2 = [v16 rankingItem];
                  [v4 addObject:rankingItem2];
                }
              }

              v13 = [results2 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v13);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (void)fullPageRankingShouldHideUnderShowMore:(id)more item:(id)item bundleID:(id)d
{
  v40 = *MEMORY[0x1E69E9840];
  moreCopy = more;
  itemCopy = item;
  dCopy = d;
  [itemCopy topicalityScore];
  if (v10 <= -2.22044605e-16)
  {
    v12 = 1;
  }

  else
  {
    [itemCopy topicalityScore];
    v12 = v11 >= 2.22044605e-16;
  }

  [itemCopy engagementScore];
  if (v13 > 0.0)
  {
    exactMatchedLaunchString = 1;
  }

  else
  {
    recentSimilarIntentEngagementDates = [itemCopy recentSimilarIntentEngagementDates];
    if (objc_msgSend_count(recentSimilarIntentEngagementDates))
    {
      exactMatchedLaunchString = 1;
    }

    else
    {
      exactMatchedLaunchString = [itemCopy exactMatchedLaunchString];
    }
  }

  bundleIDType = [itemCopy bundleIDType];
  v17 = SSCompactRankingAttrsGetValue([itemCopy attributes], 7uLL);
  v18 = SSCompactRankingAttrsGetValue([itemCopy attributes], 0xCuLL);
  v19 = SSCompactRankingAttrsGetValue([itemCopy attributes], 4uLL);
  [itemCopy keywordMatchScore];
  if (v20 > 0.05 || SSSectionIsSyndicatedPhotos(dCopy) && ([itemCopy topicalityScore], v21 > 0.0500000007) || ((objc_msgSend(itemCopy, "matchedQUIntent") | (bundleIDType >> 8) | exactMatchedLaunchString) & 1) != 0)
  {
    if ([itemCopy shouldHideUnderShowMore])
    {
      v22 = SSGeneralLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v19;
        }

        if (v17)
        {
          v24 = v17;
        }

        else
        {
          v24 = v23;
        }

        v25 = SSRedactString(v24, 1);
        sectionBundleIdentifier = [itemCopy sectionBundleIdentifier];
        [itemCopy topicalityScore];
        v34 = 138412802;
        v35 = v25;
        v36 = 2112;
        v37 = sectionBundleIdentifier;
        v38 = 2048;
        v39 = v27;
        _os_log_impl(&dword_1D9F69000, v22, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][shouldHideUnderShowMore][unHide] result: %@ / bundle: %@ / topicality: %.06f", &v34, 0x20u);
      }

      v28 = 0;
      goto LABEL_24;
    }
  }

  else if ((SSResultTypeIsServer([moreCopy type]) & 1) == 0 && ((objc_msgSend(itemCopy, "isCCCD") | v12) & 1) == 0 && (objc_msgSend(itemCopy, "shouldHideUnderShowMore") & 1) == 0)
  {
    v22 = SSGeneralLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (v18)
      {
        v29 = v18;
      }

      else
      {
        v29 = v19;
      }

      if (v17)
      {
        v30 = v17;
      }

      else
      {
        v30 = v29;
      }

      v28 = 1;
      v31 = SSRedactString(v30, 1);
      sectionBundleIdentifier2 = [itemCopy sectionBundleIdentifier];
      [itemCopy topicalityScore];
      v34 = 138412802;
      v35 = v31;
      v36 = 2112;
      v37 = sectionBundleIdentifier2;
      v38 = 2048;
      v39 = v33;
      _os_log_impl(&dword_1D9F69000, v22, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][shouldHideUnderShowMore][Hide] result: %@ / bundle: %@ / topicality: %.06f", &v34, 0x20u);
    }

    else
    {
      v28 = 1;
    }

LABEL_24:

    [itemCopy setShouldHideUnderShowMore:v28];
  }
}

+ (void)parseWalletBoardingPass:(id)pass isSearchToolClient:(BOOL *)client
{
  v56 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  sectionBundleIdentifier = [passCopy sectionBundleIdentifier];
  v7 = [sectionBundleIdentifier isEqualToString:@"com.apple.Passbook"];

  if (v7)
  {
    rankingItem = [passCopy rankingItem];
    v9 = SSCompactRankingAttrsGetValue([rankingItem attributes], 0x118uLL);

    if (v9)
    {
      v53 = 0;
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:1 error:&v53];
      v11 = v53;
      if (v11)
      {
        v12 = SSGeneralLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          +[SSRankingManager parseWalletBoardingPass:isSearchToolClient:];
        }
      }

      v13 = [v10 objectForKeyedSubscript:@"ORIGIN CODE"];
      v14 = [v10 objectForKeyedSubscript:@"DESTINATION CODE"];
      if (v13 && v14)
      {
        v38 = v14;
        v39 = v13;
        rankingItem2 = [passCopy rankingItem];
        v16 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0xD6uLL);

        rankingItem3 = [passCopy rankingItem];
        v18 = SSCompactRankingAttrsGetValue([rankingItem3 attributes], 0xD7uLL);

        if (v16)
        {
          rankingItem4 = [passCopy rankingItem];
          [rankingItem4 setWalletBoardingPassBusinessName:v16];
        }

        clientCopy = client;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v18, client))
        {
          v20 = [v18 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            rankingItem5 = [passCopy rankingItem];
            [rankingItem5 setWalletBoardingPassDepartureDateTime:v20];
          }
        }

        v37 = v16;
        v40 = v11;
        v41 = v9;
        v42 = passCopy;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v44 = [&unk_1F55B7790 countByEnumeratingWithState:&v49 objects:v55 count:{16, clientCopy}];
        if (v44)
        {
          v43 = *v50;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v50 != v43)
              {
                objc_enumerationMutation(&unk_1F55B7790);
              }

              v23 = *(*(&v49 + 1) + 8 * i);
              v24 = [&unk_1F55B7790 objectForKeyedSubscript:v23];
              v25 = v24;
              if (v24)
              {
                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
                v26 = v24;
                v27 = [v26 countByEnumeratingWithState:&v45 objects:v54 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v46;
                  while (2)
                  {
                    for (j = 0; j != v28; ++j)
                    {
                      if (*v46 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v31 = [v10 objectForKeyedSubscript:*(*(&v45 + 1) + 8 * j)];
                      if (v31)
                      {
                        v32 = v31;
                        rankingItem6 = [v42 rankingItem];
                        [rankingItem6 setValue:v32 forKey:v23];

                        goto LABEL_32;
                      }
                    }

                    v28 = [v26 countByEnumeratingWithState:&v45 objects:v54 count:16];
                    if (v28)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_32:
              }
            }

            v44 = [&unk_1F55B7790 countByEnumeratingWithState:&v49 objects:v55 count:16];
          }

          while (v44);
        }

        v34 = SSGeneralLog();
        passCopy = v42;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [(SSRankingManager *)v42 parseWalletBoardingPass:v36 isSearchToolClient:v34];
        }

        v11 = v40;
        v9 = v41;
        v14 = v38;
        v13 = v39;
      }
    }
  }
}

- (id)rankSectionsUsingBundleIDToSectionMapping:(id)mapping withRanker:(id)ranker preferredBundleIds:(id)ids isScopedSearch:(BOOL)search queryId:(unint64_t)id isCJK:(BOOL)k isBullseyeNonCommittedSearch:(BOOL)committedSearch isBullseyeCommittedSearch:(BOOL)self0 isPeopleSearch:(BOOL)self1 queryContext:(id)self2
{
  v12 = MEMORY[0x1EEE9AC00](self, a2, mapping, ranker, ids, search, id, k);
  v706 = v13;
  v704 = v14;
  v16 = v15;
  v18 = v17;
  v658 = v12;
  v944[16] = *MEMORY[0x1E69E9840];
  v20 = v19;
  v672 = v18;
  v676 = v16;
  contextCopy = context;
  if (rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext__onceToken != -1)
  {
    [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:];
  }

  if (rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext__onceTokenL3 != -1)
  {
    [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:];
  }

  loaded = [l3modelManager loaded];
  if ((loaded & 1) == 0)
  {
    loaded = [l3modelManager loadModel];
  }

  v720 = PRSRankingSDEnabledFlagState(loaded, v22);
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v723 = v23;
  if (SPSpamDemotionDisabled_onceToken != -1)
  {
    SPSpamDemotionDisabled_cold_1();
  }

  v24 = SPSpamDemotionDisabled__spamDemotionDisabled;
  v912 = 0;
  v913 = &v912;
  v914 = 0x3032000000;
  v915 = __Block_byref_object_copy__1;
  v916 = __Block_byref_object_dispose__1;
  v917 = &stru_1F556FE60;
  v25 = SSEnableSpotlightTopHitPersonalizedRanking(v23);
  v26 = SSGeneralLog();
  v668 = v24;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v940) = 67109120;
    HIDWORD(v940) = v25;
    _os_log_impl(&dword_1D9F69000, v26, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] PersonalizedRankingEnabled=%i", &v940, 8u);
  }

  v665 = v25;

  context = objc_autoreleasePoolPush();
  rankingConfiguration = [v658 rankingConfiguration];
  v28 = objc_opt_new();
  parsecCategoryOrder = [rankingConfiguration parsecCategoryOrder];
  v724 = [parsecCategoryOrder mutableCopy];

  v728 = objc_opt_new();
  v30 = [v658 removeBlockListedSectionsForMapping:v20 withRankingConfiguration:rankingConfiguration];

  v911 = 0u;
  v910 = 0u;
  v909 = 0u;
  v908 = 0u;
  v31 = [v724 copy];
  v32 = [v31 countByEnumeratingWithState:&v908 objects:v944 count:16];
  if (v32)
  {
    v33 = *v909;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v909 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v908 + 1) + 8 * i);
        v36 = [v30 objectForKey:v35];
        v37 = v36;
        if (v36)
        {
          results = [v36 results];
          [v28 addObjectsFromArray:results];

          [rankingConfiguration engagementProbabilityForCategory:v35];
          if (v39 != -1.0)
          {
            v40 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
            [v728 addObject:v40];
          }
        }

        else
        {
          [v724 removeObject:v35];
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v908 objects:v944 count:16];
    }

    while (v32);
  }

  v41 = objc_opt_new();
  v906[0] = MEMORY[0x1E69E9820];
  v906[1] = 3221225472;
  v906[2] = __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_838;
  v906[3] = &unk_1E85959D0;
  v906[4] = v658;
  v694 = v41;
  v907 = v694;
  [v28 enumerateObjectsUsingBlock:v906];
  [v694 sortUsingComparator:&__block_literal_global_843];
  [v728 sortUsingComparator:&__block_literal_global_845];
  v42 = [v728 mutableCopy];
  v43 = [v728 mutableCopy];
  [rankingConfiguration engagementProbabilityForCategory:@"com.apple.other.search_appstore"];
  v45 = v44;
  [rankingConfiguration engagementProbabilityForCategory:@"com.apple.other.search_app_store"];
  v47 = v46;
  [rankingConfiguration engagementProbabilityForCategory:@"com.apple.other.search_web"];
  v49 = v48;
  [rankingConfiguration engagementProbabilityForCategory:@"com.apple.other.search_maps"];
  v51 = v50;
  v52 = -1.0;
  if (v45 == -1.0)
  {
    v623 = 0;
  }

  else
  {
    v623 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
    [v42 addObject:v623];
  }

  if (v47 == -1.0)
  {
    v622 = 0;
  }

  else
  {
    v622 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
    [v43 addObject:v622];
  }

  v53 = -1.0;
  if (v51 == -1.0)
  {
    v626 = 0;
  }

  else
  {
    v626 = [MEMORY[0x1E696AD98] numberWithDouble:v51];
    [v42 addObject:v626];
    [v43 addObject:v626];
  }

  if (v49 == -1.0)
  {
    v625 = 0;
  }

  else
  {
    v625 = [MEMORY[0x1E696AD98] numberWithDouble:v49];
    [v42 addObject:v625];
    [v43 addObject:v625];
  }

  [v42 sortUsingComparator:&__block_literal_global_847];
  [v43 sortUsingComparator:&__block_literal_global_849];
  v662 = objc_msgSend_count(v694);
  v659 = objc_msgSend_count(v728);
  v684 = objc_msgSend_count(v42);
  objc_msgSend_count(v43);
  v54 = v51 == -1.0;
  v55 = -1.0;
  if (!v54)
  {
    v55 = ([v42 indexOfObject:v626] + 1);
    v52 = (v55 + -1.0) / v684;
  }

  v54 = v45 == -1.0;
  v56 = -1.0;
  if (!v54)
  {
    v56 = ([v42 indexOfObject:v623] + 1);
    v53 = (v56 + -1.0) / v684;
  }

  v57 = -1.0;
  v58 = -1.0;
  if (v49 != -1.0)
  {
    v58 = ([v42 indexOfObject:v625] + 1);
    v57 = (v58 + -1.0) / v684;
  }

  obj = v43;
  if (objc_msgSend_count(v728))
  {
    v653 = [v728 objectAtIndexedSubscript:0];
  }

  else
  {
    v653 = &unk_1F55B3A20;
  }

  if (objc_msgSend_count(v728))
  {
    v651 = [v42 objectAtIndexedSubscript:0];
  }

  else
  {
    v651 = &unk_1F55B3A20;
  }

  v646 = objc_msgSend_count(v28);
  allKeys = [v30 allKeys];
  v59 = objc_msgSend_count(allKeys);
  v60 = v59;
  if (v59 % 7)
  {
    v61 = v59 / 7 + 1;
  }

  else
  {
    v61 = v59 / 7;
  }

  v62 = 6;
  v644 = (v720 & 2) != 0;
  while (v61 % rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext__core_count)
  {
    if (v59 % v62)
    {
      v61 = v59 / v62 + 1;
    }

    else
    {
      v61 = v59 / v62;
    }

    v538 = v62-- > 4;
    if (!v538)
    {
      v63 = 4;
      goto LABEL_57;
    }
  }

  v63 = v62 + 1;
LABEL_57:
  v699 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v59];
  v710 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v60];
  v718 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v60];
  v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v60];
  v721 = v60;
  v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v60];
  if (SSEnableSpotlightFullPageRanking(v65))
  {
    v619 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v60];
  }

  else
  {
    v619 = 0;
  }

  if (v60)
  {
    v66 = *MEMORY[0x1E695E738];
    do
    {
      [v64 addObject:v66];
      [v65 addObject:v66];
      [v718 addObject:v66];
      [v710 addObject:v66];
      [v699 addObject:v66];
      --v60;
    }

    while (v60);
  }

  v940 = 0;
  v941 = &v940;
  v942 = 0x2020000000;
  v943 = 0;
  v902 = 0;
  v903 = &v902;
  v904 = 0x2020000000;
  v905 = 0;
  v898 = 0;
  v899 = &v898;
  v900 = 0x2020000000;
  v901 = 0;
  v894 = 0;
  v895 = &v894;
  v896 = 0x2020000000;
  v897 = 0;
  v890 = 0;
  v891 = &v890;
  v892 = 0x2020000000;
  v893 = -1082130432;
  v886 = 0;
  v887 = &v886;
  v888 = 0x2020000000;
  v889 = 0;
  v882 = 0;
  v883 = &v882;
  v884 = 0x2020000000;
  v885 = 1325400064;
  v878 = 0;
  v879 = &v878;
  v880 = 0x2020000000;
  v881 = 0;
  v67 = [SSRankingManager getTopHitItems:v30];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_852;
  aBlock[3] = &unk_1E8595A18;
  bullseyeCommittedSearchCopy = bullseyeCommittedSearch;
  v603 = v676;
  v875 = v603;
  v617 = contextCopy;
  v876 = v617;
  v68 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_855;
  block[3] = &unk_1E8595A40;
  block[4] = v658;
  v860 = v63;
  v861 = v721;
  v611 = allKeys;
  v833 = v611;
  v615 = v30;
  v834 = v615;
  v618 = rankingConfiguration;
  v835 = v618;
  v616 = v672;
  v836 = v616;
  v642 = v64;
  v837 = v642;
  v852 = &v902;
  v853 = &v878;
  v612 = v68;
  v851 = v612;
  v614 = v67;
  v838 = v614;
  v872 = v668;
  v873 = v665;
  v643 = v65;
  v839 = v643;
  v854 = &v940;
  v855 = &v898;
  v856 = &v894;
  v605 = v728;
  v840 = v605;
  v607 = v42;
  v841 = v607;
  v608 = obj;
  v842 = v608;
  v690 = v724;
  v843 = v690;
  v862 = v659;
  v609 = v653;
  v844 = v609;
  v610 = v651;
  v845 = v610;
  v604 = v28;
  v846 = v604;
  v863 = v646;
  v864 = v684;
  v866 = v55;
  v867 = v52;
  v868 = v56;
  v869 = v53;
  v870 = v58;
  v871 = v57;
  v606 = v694;
  v847 = v606;
  v865 = v662;
  v652 = v710;
  v848 = v652;
  v650 = v718;
  v849 = v650;
  v648 = v699;
  v850 = v648;
  v857 = &v890;
  v858 = &v886;
  v859 = &v882;
  dispatch_apply(v61, 0, block);
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v637 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v646];
  v636 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v646];
  v632 = objc_opt_new();
  v631 = objc_opt_new();
  if (v721)
  {
    v70 = 0;
    v71 = *MEMORY[0x1E695E738];
    do
    {
      v72 = [v652 objectAtIndexedSubscript:v70];
      v73 = v72 == v71;

      if (!v73)
      {
        v74 = [v652 objectAtIndexedSubscript:v70];
        [v637 addObjectsFromArray:v74];
      }

      v75 = [v650 objectAtIndexedSubscript:v70];
      v76 = v75 == v71;

      if (!v76)
      {
        v77 = [v650 objectAtIndexedSubscript:v70];
        [v636 addObjectsFromArray:v77];
      }

      v78 = [v648 objectAtIndexedSubscript:v70];
      v79 = v78 == v71;

      if (!v79)
      {
        v80 = [v648 objectAtIndexedSubscript:v70];
        v831 = 0u;
        v830 = 0u;
        v829 = 0u;
        v828 = 0u;
        keyEnumerator = [v80 keyEnumerator];
        v82 = [keyEnumerator countByEnumeratingWithState:&v828 objects:v939 count:16];
        if (v82)
        {
          v83 = *v829;
          do
          {
            for (j = 0; j != v82; ++j)
            {
              if (*v829 != v83)
              {
                objc_enumerationMutation(keyEnumerator);
              }

              v85 = *(*(&v828 + 1) + 8 * j);
              v86 = [v80 objectForKey:v85];
              [strongToStrongObjectsMapTable setObject:v86 forKey:v85];
            }

            v82 = [keyEnumerator countByEnumeratingWithState:&v828 objects:v939 count:16];
          }

          while (v82);
        }
      }

      v87 = [v642 objectAtIndexedSubscript:v70];
      v88 = v87 == v71;

      if (v88)
      {
        [v632 addIndex:v70];
      }

      v89 = [v643 objectAtIndexedSubscript:v70];
      v90 = v89 == v71;

      if (v90)
      {
        [v631 addIndex:v70];
      }

      ++v70;
    }

    while (v70 != v721);
  }

  [v648 removeAllObjects];
  [v652 removeAllObjects];
  [v650 removeAllObjects];
  [v642 removeObjectsAtIndexes:v632];
  [v643 removeObjectsAtIndexes:v631];
  v602 = *(v658 + 8);
  if (v602)
  {
    goto LABEL_583;
  }

  v729 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:objc_msgSend_count(strongToStrongObjectsMapTable)];
  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v824 = 0u;
  keyEnumerator2 = [strongToStrongObjectsMapTable keyEnumerator];
  v92 = [keyEnumerator2 countByEnumeratingWithState:&v824 objects:v938 count:16];
  if (v92)
  {
    v93 = *v825;
    do
    {
      for (k = 0; k != v92; ++k)
      {
        if (*v825 != v93)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v95 = [strongToStrongObjectsMapTable objectForKey:*(*(&v824 + 1) + 8 * k)];
        maxScore = [v95 maxScore];
        [v729 addObject:maxScore];
      }

      v92 = [keyEnumerator2 countByEnumeratingWithState:&v824 objects:v938 count:16];
    }

    while (v92);
  }

  [v729 sortWithOptions:1 usingComparator:&__block_literal_global_876];
  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v820 = 0u;
  keyEnumerator3 = [strongToStrongObjectsMapTable keyEnumerator];
  v98 = [keyEnumerator3 countByEnumeratingWithState:&v820 objects:v937 count:16];
  if (v98)
  {
    v99 = *v821;
    do
    {
      for (m = 0; m != v98; ++m)
      {
        if (*v821 != v99)
        {
          objc_enumerationMutation(keyEnumerator3);
        }

        v101 = [strongToStrongObjectsMapTable objectForKey:*(*(&v820 + 1) + 8 * m)];
        maxScore2 = [v101 maxScore];
        v103 = [v729 indexOfObject:maxScore2];

        v104 = objc_msgSend_count(v729);
        v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v103 + 1];
        [v101 setMaxScoreAbsRank:v105];

        v104 = [MEMORY[0x1E696AD98] numberWithDouble:v103 / v104];
        [v101 setMaxScoreRelRank:v104];
      }

      v98 = [keyEnumerator3 countByEnumeratingWithState:&v820 objects:v937 count:16];
    }

    while (v98);
  }

  v816 = 0;
  v817 = &v816;
  v818 = 0x2020000000;
  v819 = 0;
  v812 = 0u;
  v813 = 0u;
  v814 = 0u;
  v815 = 0u;
  v107 = v643;
  v108 = [v107 countByEnumeratingWithState:&v812 objects:v936 count:16];
  if (v108)
  {
    v109 = *v813;
    do
    {
      for (n = 0; n != v108; ++n)
      {
        if (*v813 != v109)
        {
          objc_enumerationMutation(v107);
        }

        v111 = *(*(&v812 + 1) + 8 * n);
        rankingItem = [v111 rankingItem];
        if (rankingItem)
        {
          rankingItem2 = [v111 rankingItem];
          [rankingItem2 likelihood];
          v115 = v114 > 0.1;

          if (v115)
          {
            *(v817 + 24) = 1;
          }
        }
      }

      v108 = [v107 countByEnumeratingWithState:&v812 objects:v936 count:16];
    }

    while (v108);
  }

  v796[0] = MEMORY[0x1E69E9820];
  v796[1] = 3221225472;
  v796[2] = __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_3_877;
  v796[3] = &unk_1E8595A68;
  v797 = v637;
  v798 = strongToStrongObjectsMapTable;
  v630 = v616;
  v799 = v630;
  v811 = v644;
  v700 = v636;
  v800 = v700;
  v116 = v690;
  v801 = v116;
  v802 = v658;
  v803 = v642;
  rankingItem23 = v107;
  v804 = rankingItem23;
  v719 = v619;
  v805 = v719;
  v725 = v615;
  v806 = v725;
  v645 = v618;
  v807 = v645;
  v809 = &v816;
  v711 = v617;
  v808 = v711;
  v810 = &v912;
  dispatch_apply(3uLL, 0, v796);
  v628 = objc_opt_new();
  v722 = objc_opt_new();
  if (SPExperimentalScoringEnabled_onceToken != -1)
  {
    [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:];
  }

  v117 = SPExperimentalScoringEnabled__experimentalScoringEnabled;
  if (SPExperimentalScoringEnabled__experimentalScoringEnabled == 1)
  {
    v640 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(v116)];
  }

  else
  {
    v640 = 0;
  }

  for (ii = 0; ii < objc_msgSend_count(v700); ++ii)
  {
    v119 = [v700 objectAtIndexedSubscript:ii];
    sectionBundleIdentifier = [v119 sectionBundleIdentifier];

    if (sectionBundleIdentifier)
    {
      if ([v722 containsObject:sectionBundleIdentifier])
      {
        [v628 addIndex:ii];
      }

      else
      {
        [v722 addObject:sectionBundleIdentifier];
        if (v117)
        {
          [v640 addObject:sectionBundleIdentifier];
        }
      }
    }
  }

  [v700 removeObjectsAtIndexes:v628];
  v635 = objc_opt_new();
  v641 = objc_opt_new();
  for (jj = 0; jj < objc_msgSend_count(v116); ++jj)
  {
    v122 = [v116 objectAtIndex:jj];
    if (v122)
    {
      if ([v641 containsObject:v122])
      {
        [v635 addIndex:jj];
      }

      else
      {
        [v641 addObject:v122];
      }

      if ([v122 isEqualToString:@"com.apple.parsec.related_search"])
      {
        [v635 addIndex:jj];
      }

      else
      {
        [v641 addObject:v122];
      }
    }
  }

  [v116 removeObjectsAtIndexes:v635];
  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v792 = 0u;
  v123 = [v116 copy];
  v124 = [v123 countByEnumeratingWithState:&v792 objects:v935 count:16];
  if (v124)
  {
    v125 = *v793;
    do
    {
      for (kk = 0; kk != v124; ++kk)
      {
        if (*v793 != v125)
        {
          objc_enumerationMutation(v123);
        }

        v127 = *(*(&v792 + 1) + 8 * kk);
        v128 = objc_msgSend_count(v722);
        if (v128 != objc_msgSend_count(v116) && ([v722 containsObject:v127] & 1) == 0)
        {
          [v116 removeObject:v127];
        }
      }

      v124 = [v123 countByEnumeratingWithState:&v792 objects:v935 count:16];
    }

    while (v124);
  }

  v129 = objc_opt_new();
  for (mm = 0; mm < objc_msgSend_count(v700); ++mm)
  {
    v131 = [v700 objectAtIndexedSubscript:mm];
    sectionBundleIdentifier2 = [v131 sectionBundleIdentifier];

    if (sectionBundleIdentifier2 && ([v116 containsObject:sectionBundleIdentifier2] & 1) == 0)
    {
      [v129 addIndex:mm];
    }
  }

  [v700 removeObjectsAtIndexes:v129];
  if (!v117)
  {
    v624 = v129;
LABEL_155:
    v135 = v116;
    goto LABEL_161;
  }

  v624 = objc_opt_new();

  for (nn = 0; nn < objc_msgSend_count(v640); ++nn)
  {
    v134 = [v640 objectAtIndexedSubscript:nn];
    if (v134 && ([v116 containsObject:v134] & 1) == 0)
    {
      [v624 addIndex:nn];
    }
  }

  [v640 removeObjectsAtIndexes:v624];
  if (*(v941 + 24) == 1 && (v891[6] <= 10000.0 || *(v887 + 24) == 1 && v883[6] != 0.0))
  {
    goto LABEL_155;
  }

  v136 = v640;

  v135 = v136;
LABEL_161:
  v633 = v135;
  v638 = objc_msgSend_count(v135);
  v137 = objc_msgSend_count(rankingItem23);
  v601 = v137 + v638;
  v647 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
  v138 = objc_msgSend_count(rankingItem23);
  v629 = v137;
  if (v138)
  {
    v139 = [rankingItem23 objectAtIndexedSubscript:0];
    rankingItem3 = [v139 rankingItem];
    if (([rankingItem3 bundleIDType] & 0x8000) != 0)
    {
    }

    else
    {
      rankingItem4 = [v139 rankingItem];
      l2FeatureVector = [rankingItem4 L2FeatureVector];
      [l2FeatureVector originalL2Score];
      v144 = v143 != 0.0;

      if (!v144)
      {
        v627 = 0;
LABEL_168:

        goto LABEL_169;
      }
    }

    v627 = v139;
    goto LABEL_168;
  }

  v627 = 0;
LABEL_169:
  if (SSEnableSpotlightFullPageRanking(v138))
  {
    v791 = 0u;
    v790 = 0u;
    v789 = 0u;
    v788 = 0u;
    v145 = v700;
    v146 = [v145 countByEnumeratingWithState:&v788 objects:v934 count:16];
    if (v146)
    {
      LODWORD(v147) = 0;
      v148 = *v789;
      do
      {
        for (i1 = 0; i1 != v146; ++i1)
        {
          if (*v789 != v148)
          {
            objc_enumerationMutation(v145);
          }

          v150 = *(*(&v788 + 1) + 8 * i1);
          sectionBundleIdentifier3 = [v150 sectionBundleIdentifier];
          v152 = sectionBundleIdentifier3 == 0;

          v147 = (v147 + 1);
          if (!v152)
          {
            sectionBundleIdentifier4 = [v150 sectionBundleIdentifier];
            v154 = [v719 objectForKey:sectionBundleIdentifier4];

            if (!v154)
            {
              sectionBundleIdentifier5 = [v150 sectionBundleIdentifier];
              v156 = [v725 objectForKey:sectionBundleIdentifier5];

              if (v156)
              {
                v157 = objc_alloc_init(SectionL3Scores);
                [(SectionL3Scores *)v157 computeScore:v156 rankingConfig:v645 hasGoodLocalResult:*(v817 + 24) pos:v147 queryContext:v711];
                sectionBundleIdentifier6 = [v150 sectionBundleIdentifier];
                [v719 setObject:v157 forKeyedSubscript:sectionBundleIdentifier6];
              }
            }
          }
        }

        v146 = [v145 countByEnumeratingWithState:&v788 objects:v934 count:16];
      }

      while (v146);
    }

    if ([l3modelManager loaded])
    {
      v695 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:67];
      query = [v658 query];
      [v695 setObject:query forKeyedSubscript:@"query"];
      [v695 setObject:query forKeyedSubscript:@"prefix"];

      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      localeIdentifier = [currentLocale localeIdentifier];
      [v695 setObject:localeIdentifier forKeyedSubscript:@"locale"];

      *&v162 = v601;
      v163 = [MEMORY[0x1E696AD98] numberWithFloat:v162];
      [v695 setObject:v163 forKeyedSubscript:@"section_count"];

      *&v164 = v629;
      v165 = [MEMORY[0x1E696AD98] numberWithFloat:v164];
      [v695 setObject:v165 forKeyedSubscript:@"local_section_count"];

      *&v166 = v638;
      v167 = [MEMORY[0x1E696AD98] numberWithFloat:v166];
      [v695 setObject:v167 forKeyedSubscript:@"server_section_count"];

      v168 = 0.0;
      if (v627)
      {
        *&v168 = 1.0;
      }

      v169 = [MEMORY[0x1E696AD98] numberWithFloat:v168];
      [v695 setObject:v169 forKeyedSubscript:@"local_section_is_tophit"];

      v170 = MEMORY[0x1E696AD98];
      v171 = 0.0;
      if (!v627)
      {
        v172 = objc_msgSend_count(v614, 0.0);
        v171 = 0.0;
        if (v172)
        {
          *&v171 = 1.0;
        }
      }

      v173 = [v170 numberWithFloat:v171];
      [v695 setObject:v173 forKeyedSubscript:@"server_section_is_tophit"];

      iFunScores = [v645 iFunScores];
      localScore = [iFunScores localScore];

      if (localScore)
      {
        v176 = MEMORY[0x1E696AD98];
        iFunScores2 = [v645 iFunScores];
        localScore2 = [iFunScores2 localScore];
        [localScore2 floatValue];
        v179 = [v176 numberWithFloat:?];
        [v695 setObject:v179 forKeyedSubscript:@"local_ifun_score"];
      }

      iFunScores3 = [v645 iFunScores];
      serverScore = [iFunScores3 serverScore];

      if (serverScore)
      {
        v182 = MEMORY[0x1E696AD98];
        iFunScores4 = [v645 iFunScores];
        serverScore2 = [iFunScores4 serverScore];
        [serverScore2 floatValue];
        v185 = [v182 numberWithFloat:?];
        [v695 setObject:v185 forKeyedSubscript:@"server_ifun_score"];
      }

      v787 = 0u;
      v786 = 0u;
      v785 = 0u;
      v784 = 0u;
      obja = rankingItem23;
      v186 = [obja countByEnumeratingWithState:&v784 objects:v933 count:16];
      if (v186)
      {
        v187 = *v785;
        v712 = 0.0;
        v677 = -1000.0;
        v691 = -1000.0;
        v188 = 0.0;
        v673 = 0.0;
        v685 = 0.0;
        v680 = 0.0;
        do
        {
          for (i2 = 0; i2 != v186; ++i2)
          {
            if (*v785 != v187)
            {
              objc_enumerationMutation(obja);
            }

            v190 = *(*(&v784 + 1) + 8 * i2);
            sectionBundleIdentifier7 = [v190 sectionBundleIdentifier];
            v192 = sectionBundleIdentifier7 == 0;

            if (!v192)
            {
              sectionBundleIdentifier8 = [v190 sectionBundleIdentifier];
              v194 = [v719 objectForKey:sectionBundleIdentifier8];

              if (v194)
              {
                features = [v194 features];
                v196 = [features objectForKeyedSubscript:@"section_tophit_should_be_count"];
                [v196 floatValue];
                v198 = v197;

                features2 = [v194 features];
                v200 = [features2 objectForKeyedSubscript:@"section_tophit_must_be_count"];
                [v200 floatValue];
                v202 = v201;

                features3 = [v194 features];
                v204 = [features3 objectForKeyedSubscript:@"score_over_th_threshold_count"];
                [v204 floatValue];
                v206 = v205;

                features4 = [v194 features];
                v208 = [features4 objectForKeyedSubscript:@"max_likelihood"];
                [v208 floatValue];
                v210 = v209;

                if (v188 < v210)
                {
                  v188 = v210;
                }

                features5 = [v194 features];
                v212 = [features5 objectForKeyedSubscript:@"max_topicality"];
                [v212 floatValue];
                v214 = v213;

                v215 = v712;
                if (v712 < v214)
                {
                  v215 = v214;
                }

                v712 = v215;
                features6 = [v194 features];
                v217 = [features6 objectForKeyedSubscript:@"max_original_l2_score"];
                [v217 floatValue];
                v219 = v218;

                v220 = v691;
                if (v691 < v219)
                {
                  v220 = v219;
                }

                v691 = v220;
                features7 = [v194 features];
                v222 = [features7 objectForKeyedSubscript:@"max_l2_score"];
                [v222 floatValue];
                v224 = v223;

                v680 = v680 + v198;
                v685 = v685 + v202;
                v673 = v673 + v206;
                v225 = v677;
                if (v677 < v224)
                {
                  v225 = v224;
                }

                v677 = v225;
              }
            }
          }

          v186 = [obja countByEnumeratingWithState:&v784 objects:v933 count:16];
        }

        while (v186);
      }

      else
      {
        v712 = 0.0;
        v677 = -1000.0;
        v691 = -1000.0;
        v188 = 0.0;
        v673 = 0.0;
        v685 = 0.0;
        v680 = 0.0;
      }

      v783 = 0u;
      v782 = 0u;
      v781 = 0u;
      v780 = 0u;
      v653 = v145;
      v226 = [v653 countByEnumeratingWithState:&v780 objects:v932 count:16];
      if (v226)
      {
        v227 = *v781;
        v228 = -1000.0;
        v229 = 0.0;
        v663 = -1000.0;
        v230 = 0.0;
        v660 = 0.0;
        v669 = 0.0;
        v666 = 0.0;
        do
        {
          for (i3 = 0; i3 != v226; ++i3)
          {
            if (*v781 != v227)
            {
              objc_enumerationMutation(v653);
            }

            v232 = *(*(&v780 + 1) + 8 * i3);
            sectionBundleIdentifier9 = [v232 sectionBundleIdentifier];
            v234 = sectionBundleIdentifier9 == 0;

            if (!v234)
            {
              sectionBundleIdentifier10 = [v232 sectionBundleIdentifier];
              v236 = [v719 objectForKey:sectionBundleIdentifier10];

              if (v236)
              {
                features8 = [v236 features];
                v238 = [features8 objectForKeyedSubscript:@"section_tophit_should_be_count"];
                [v238 floatValue];
                v240 = v239;

                features9 = [v236 features];
                v242 = [features9 objectForKeyedSubscript:@"section_tophit_must_be_count"];
                [v242 floatValue];
                v244 = v243;

                features10 = [v236 features];
                v246 = [features10 objectForKeyedSubscript:@"score_over_th_threshold_count"];
                [v246 floatValue];
                v248 = v247;

                features11 = [v236 features];
                v250 = [features11 objectForKeyedSubscript:@"max_likelihood"];
                [v250 floatValue];
                v252 = v251;

                if (v230 < v252)
                {
                  v230 = v252;
                }

                features12 = [v236 features];
                v254 = [features12 objectForKeyedSubscript:@"max_topicality"];
                [v254 floatValue];
                v256 = v255;

                if (v229 < v256)
                {
                  v229 = v256;
                }

                features13 = [v236 features];
                v258 = [features13 objectForKeyedSubscript:@"max_original_l2_score"];
                [v258 floatValue];
                v260 = v259;

                if (v228 < v260)
                {
                  v228 = v260;
                }

                features14 = [v236 features];
                v262 = [features14 objectForKeyedSubscript:@"max_l2_score"];
                [v262 floatValue];
                v264 = v263;

                v666 = v666 + v240;
                v669 = v669 + v244;
                v660 = v660 + v248;
                v265 = v663;
                if (v663 < v264)
                {
                  v265 = v264;
                }

                v663 = v265;
              }
            }
          }

          v226 = [v653 countByEnumeratingWithState:&v780 objects:v932 count:16];
        }

        while (v226);
      }

      else
      {
        v229 = 0.0;
        v228 = -1000.0;
        v663 = -1000.0;
        v230 = 0.0;
        v660 = 0.0;
        v669 = 0.0;
        v666 = 0.0;
      }

      *&v266 = v680;
      v267 = [MEMORY[0x1E696AD98] numberWithFloat:v266];
      [v695 setObject:v267 forKeyedSubscript:@"local_tophit_should_be_count"];

      *&v268 = v666;
      v269 = [MEMORY[0x1E696AD98] numberWithFloat:v268];
      [v695 setObject:v269 forKeyedSubscript:@"server_tophit_should_be_count"];

      *&v270 = v685;
      v271 = [MEMORY[0x1E696AD98] numberWithFloat:v270];
      [v695 setObject:v271 forKeyedSubscript:@"local_tophit_must_be_count"];

      *&v272 = v669;
      v273 = [MEMORY[0x1E696AD98] numberWithFloat:v272];
      [v695 setObject:v273 forKeyedSubscript:@"server_tophit_must_be_count"];

      *&v274 = v673;
      v275 = [MEMORY[0x1E696AD98] numberWithFloat:v274];
      [v695 setObject:v275 forKeyedSubscript:@"local_score_over_th_threshold_count"];

      *&v276 = v660;
      v277 = [MEMORY[0x1E696AD98] numberWithFloat:v276];
      [v695 setObject:v277 forKeyedSubscript:@"server_score_over_th_threshold_count"];

      *&v278 = v188;
      v279 = [MEMORY[0x1E696AD98] numberWithFloat:v278];
      [v695 setObject:v279 forKeyedSubscript:@"local_max_likelihood"];

      *&v280 = v230;
      v281 = [MEMORY[0x1E696AD98] numberWithFloat:v280];
      [v695 setObject:v281 forKeyedSubscript:@"server_max_likelihood"];

      *&v282 = v712;
      v283 = [MEMORY[0x1E696AD98] numberWithFloat:v282];
      [v695 setObject:v283 forKeyedSubscript:@"local_max_topicality"];

      *&v284 = v229;
      v285 = [MEMORY[0x1E696AD98] numberWithFloat:v284];
      [v695 setObject:v285 forKeyedSubscript:@"server_max_topicality"];

      *&v286 = v691;
      v287 = [MEMORY[0x1E696AD98] numberWithFloat:v286];
      [v695 setObject:v287 forKeyedSubscript:@"local_max_original_l2_score"];

      *&v288 = v228;
      v289 = [MEMORY[0x1E696AD98] numberWithFloat:v288];
      [v695 setObject:v289 forKeyedSubscript:@"server_max_original_l2_score"];

      *&v290 = v677;
      v291 = [MEMORY[0x1E696AD98] numberWithFloat:v290];
      [v695 setObject:v291 forKeyedSubscript:@"local_max_l2_score"];

      *&v292 = v663;
      v293 = [MEMORY[0x1E696AD98] numberWithFloat:v292];
      [v695 setObject:v293 forKeyedSubscript:@"server_max_l2_score"];

      v294 = [MEMORY[0x1E695DF70] arrayWithCapacity:v601];
      v713 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v601];
      v779 = 0u;
      v778 = 0u;
      v777 = 0u;
      v776 = 0u;
      v692 = obja;
      v295 = [v692 countByEnumeratingWithState:&v776 objects:v931 count:16];
      if (v295)
      {
        v296 = *v777;
        do
        {
          for (i4 = 0; i4 != v295; ++i4)
          {
            if (*v777 != v296)
            {
              objc_enumerationMutation(v692);
            }

            v298 = *(*(&v776 + 1) + 8 * i4);
            sectionBundleIdentifier11 = [v298 sectionBundleIdentifier];
            v300 = sectionBundleIdentifier11 == 0;

            if (!v300)
            {
              sectionBundleIdentifier12 = [v298 sectionBundleIdentifier];
              v302 = [v719 objectForKey:sectionBundleIdentifier12];

              if (v302)
              {
                features15 = [v302 features];
                [features15 addEntriesFromDictionary:v695];

                v304 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:objc_msgSend_count(v294)];
                sectionBundleIdentifier13 = [v298 sectionBundleIdentifier];
                [v713 setObject:v304 forKeyedSubscript:sectionBundleIdentifier13];

                features16 = [v302 features];
                [v294 addObject:features16];
              }
            }
          }

          v295 = [v692 countByEnumeratingWithState:&v776 objects:v931 count:16];
        }

        while (v295);
      }

      v775 = 0u;
      v774 = 0u;
      v773 = 0u;
      v772 = 0u;
      v307 = v653;
      v308 = [v307 countByEnumeratingWithState:&v772 objects:v930 count:16];
      if (v308)
      {
        v309 = *v773;
        do
        {
          for (i5 = 0; i5 != v308; ++i5)
          {
            if (*v773 != v309)
            {
              objc_enumerationMutation(v307);
            }

            v311 = *(*(&v772 + 1) + 8 * i5);
            sectionBundleIdentifier14 = [v311 sectionBundleIdentifier];
            v313 = sectionBundleIdentifier14 == 0;

            if (!v313)
            {
              sectionBundleIdentifier15 = [v311 sectionBundleIdentifier];
              v315 = [v719 objectForKey:sectionBundleIdentifier15];

              if (v315)
              {
                features17 = [v315 features];
                [features17 addEntriesFromDictionary:v695];

                v317 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:objc_msgSend_count(v294)];
                sectionBundleIdentifier16 = [v311 sectionBundleIdentifier];
                [v713 setObject:v317 forKeyedSubscript:sectionBundleIdentifier16];

                features18 = [v315 features];
                [v294 addObject:features18];
              }
            }
          }

          v308 = [v307 countByEnumeratingWithState:&v772 objects:v930 count:16];
        }

        while (v308);
      }

      v686 = [l3modelManager predict:v294];
      if (v686 && (v320 = objc_msgSend_count(v686), v320 == objc_msgSend_count(v294)))
      {
        v771 = 0u;
        v770 = 0u;
        v769 = 0u;
        v768 = 0u;
        v681 = v692;
        v321 = [v681 countByEnumeratingWithState:&v768 objects:v929 count:16];
        if (v321)
        {
          v322 = *v769;
          do
          {
            for (i6 = 0; i6 != v321; ++i6)
            {
              if (*v769 != v322)
              {
                objc_enumerationMutation(v681);
              }

              v324 = *(*(&v768 + 1) + 8 * i6);
              sectionBundleIdentifier17 = [v324 sectionBundleIdentifier];
              v326 = sectionBundleIdentifier17 == 0;

              if (!v326)
              {
                sectionBundleIdentifier18 = [v324 sectionBundleIdentifier];
                v328 = [v719 objectForKey:sectionBundleIdentifier18];

                if (v328)
                {
                  sectionBundleIdentifier19 = [v324 sectionBundleIdentifier];
                  v330 = [v713 objectForKeyedSubscript:sectionBundleIdentifier19];
                  v331 = [v686 objectAtIndexedSubscript:{objc_msgSend(v330, "intValue")}];
                  [v331 floatValue];
                  [v328 setModelScore:?];
                }
              }
            }

            v321 = [v681 countByEnumeratingWithState:&v768 objects:v929 count:16];
          }

          while (v321);
        }

        v767 = 0u;
        v766 = 0u;
        v765 = 0u;
        v764 = 0u;
        v332 = v307;
        v333 = [v332 countByEnumeratingWithState:&v764 objects:v928 count:16];
        if (v333)
        {
          v334 = *v765;
          do
          {
            for (i7 = 0; i7 != v333; ++i7)
            {
              if (*v765 != v334)
              {
                objc_enumerationMutation(v332);
              }

              v336 = *(*(&v764 + 1) + 8 * i7);
              sectionBundleIdentifier20 = [v336 sectionBundleIdentifier];
              v338 = sectionBundleIdentifier20 == 0;

              if (!v338)
              {
                sectionBundleIdentifier21 = [v336 sectionBundleIdentifier];
                v340 = [v719 objectForKey:sectionBundleIdentifier21];

                if (v340)
                {
                  sectionBundleIdentifier22 = [v336 sectionBundleIdentifier];
                  v342 = [v713 objectForKeyedSubscript:sectionBundleIdentifier22];
                  v343 = [v686 objectAtIndexedSubscript:{objc_msgSend(v342, "intValue")}];
                  [v343 floatValue];
                  [v340 setModelScore:?];
                }
              }
            }

            v333 = [v332 countByEnumeratingWithState:&v764 objects:v928 count:16];
          }

          while (v333);
        }
      }

      else
      {
        v332 = SSGeneralLog();
        if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
        {
          [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:];
        }
      }

      v344 = [SSRankingManager rankLocalBundlesUsingModelL3ScoreAndRules:v692 sectionMapping:v725 l3RankingScores:v719];
    }
  }

  v714 = objc_opt_new();
  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v760 = 0u;
  v345 = rankingItem23;
  v346 = [v345 countByEnumeratingWithState:&v760 objects:v927 count:16];
  if (v346)
  {
    v347 = *v761;
    do
    {
      for (i8 = 0; i8 != v346; ++i8)
      {
        if (*v761 != v347)
        {
          objc_enumerationMutation(v345);
        }

        v349 = *(*(&v760 + 1) + 8 * i8);
        if (objc_opt_respondsToSelector())
        {
          sectionBundleIdentifier23 = [v349 sectionBundleIdentifier];
          [v714 addObject:sectionBundleIdentifier23];
        }

        else
        {
          sectionBundleIdentifier23 = SSGeneralLog();
          if (os_log_type_enabled(sectionBundleIdentifier23, OS_LOG_TYPE_ERROR))
          {
            v351 = objc_opt_class();
            [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:v351 withRanker:v925 preferredBundleIds:&v926 isScopedSearch:sectionBundleIdentifier23 queryId:? isCJK:? isBullseyeNonCommittedSearch:? isBullseyeCommittedSearch:? isPeopleSearch:? queryContext:?];
          }
        }
      }

      v346 = [v345 countByEnumeratingWithState:&v760 objects:v927 count:16];
    }

    while (v346);
  }

  if (v629)
  {
    v687 = 0;
    v670 = 0;
    v674 = 0;
    v352 = 0;
    v682 = 0;
    while (1)
    {
      v353 = objc_msgSend_count(v700);
      v354 = v638;
      if (v638 >= v353)
      {
        v354 = v353;
      }

      if (v674 >= v354)
      {
        goto LABEL_421;
      }

      v696 = [v345 objectAtIndexedSubscript:v687];
      v693 = [v700 objectAtIndexedSubscript:v674];
      rankingItem5 = [v696 rankingItem];
      l2FeatureVector2 = [rankingItem5 L2FeatureVector];

      [l2FeatureVector2 originalL2Score];
      v759 = v356;
      [v693 l2score];
      v758 = v357;
      rankingItem6 = [v696 rankingItem];
      sectionBundleIdentifier24 = [rankingItem6 sectionBundleIdentifier];
      sectionBundleIdentifier25 = [v693 sectionBundleIdentifier];
      LOWORD(v595) = 257;
      [SectionL3Scores getComparableL3Score:v719 sectionMapping:v725 bundleId1:sectionBundleIdentifier24 bundleId2:sectionBundleIdentifier25 score1:&v759 score2:&v758 usePommesScore:v595 useLegacyScore:?];

      rankingItem7 = [v696 rankingItem];
      sectionBundleIdentifier26 = [rankingItem7 sectionBundleIdentifier];
      sectionBundleIdentifier27 = [v693 sectionBundleIdentifier];
      [SectionL3Scores getComparableModelL3Score:v719 bundleId1:sectionBundleIdentifier26 bundleId2:sectionBundleIdentifier27 score1:&v759 score2:&v758];

      if (*(v903 + 24) == 1 && *(v899 + 24) == 1)
      {
        rankingItem8 = [v696 rankingItem];
        l2FeatureVector3 = [rankingItem8 L2FeatureVector];
        [l2FeatureVector3 scoreForFeature:31];
        v368 = v367;

        rankingItem9 = [v693 rankingItem];
        sectionBundleIdentifier28 = [rankingItem9 sectionBundleIdentifier];
        LOBYTE(l2FeatureVector3) = [sectionBundleIdentifier28 isEqualToString:@"com.apple.parsec.weather"];

        v371 = l2FeatureVector3 & (v368 == 1.0);
      }

      else
      {
        v371 = 0;
      }

      if (v682)
      {
        v682 = 1;
      }

      else
      {
        if (*(v879 + 24) != 1 || *(v895 + 24) != 1)
        {
          goto LABEL_314;
        }

        rankingItem10 = [v696 rankingItem];
        if ([rankingItem10 photosMatch])
        {
          photosExactMatch = 1;
        }

        else
        {
          rankingItem11 = [v696 rankingItem];
          photosExactMatch = [rankingItem11 photosExactMatch];
        }

        rankingItem12 = [v693 rankingItem];
        sectionBundleIdentifier29 = [rankingItem12 sectionBundleIdentifier];
        v682 = [sectionBundleIdentifier29 isEqualToString:@"com.apple.parsec.web_images"];

        if ((photosExactMatch & 1) == 0)
        {
          sectionBundleIdentifier30 = [v696 sectionBundleIdentifier];
          IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(sectionBundleIdentifier30);

          if (!IsSyndicatedPhotos || ([v696 rankingItem], v379 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v379, "L2FeatureVector"), v380 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v380, "scoreForFeature:", 1928), v382 = v381 == 1.0, v380, v379, !v382))
          {
LABEL_314:
            v682 = 0;
          }
        }
      }

      *&v364 = v758;
      v383 = v758 > v759;
      rankingItem13 = [v696 rankingItem];
      v385 = (v383 | v371) & (v682 ^ 1);
      if (([rankingItem13 bundleIDType] & 4) != 0)
      {
        rankingItem14 = [v696 rankingItem];
        isPerfectMatch = [rankingItem14 isPerfectMatch];

        v385 &= isPerfectMatch ^ 1;
      }

      else
      {
      }

      rankingItem15 = [v696 rankingItem];
      l2FeatureVector4 = [rankingItem15 L2FeatureVector];
      if (l2FeatureVector4)
      {
        rankingItem16 = [v696 rankingItem];
        l2FeatureVector5 = [rankingItem16 L2FeatureVector];
        [l2FeatureVector5 scoreForFeature:3234];
        v393 = v392 == 0.0;

        v385 &= v393;
      }

      else
      {
      }

      rankingItem17 = [v696 rankingItem];
      if ([rankingItem17 shouldHideUnderShowMore])
      {
        rankingItem18 = [v693 rankingItem];
        shouldHideUnderShowMore = [rankingItem18 shouldHideUnderShowMore];

        if (!shouldHideUnderShowMore)
        {
          v385 = 1;
          goto LABEL_328;
        }
      }

      else
      {
      }

      rankingItem19 = [v696 rankingItem];
      if ([rankingItem19 shouldHideUnderShowMore])
      {
      }

      else
      {
        rankingItem20 = [v693 rankingItem];
        shouldHideUnderShowMore2 = [rankingItem20 shouldHideUnderShowMore];

        if (shouldHideUnderShowMore2)
        {
          goto LABEL_365;
        }
      }

LABEL_328:
      if ((v385 & 1) != 0 && v627)
      {
        rankingItem21 = [v627 rankingItem];
        bundleIDType = [rankingItem21 bundleIDType];

        if ((bundleIDType & 4) != 0)
        {
          rankingItem22 = [v696 rankingItem];
          bundleIDType2 = [rankingItem22 bundleIDType];
          if ((bundleIDType2 & 8) != 0 || ([v696 rankingItem], v653 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v653, "bundleIDType") & 0x20) != 0))
          {
            v661 = 0;
            v664 = 0;
            v404 = 0;
            v405 = 0;
            v406 = 0;
            v407 = 0;
          }

          else
          {
            rankingItem23 = [v696 rankingItem];
            if (([rankingItem23 bundleIDType] & 0x100000) != 0)
            {
              v664 = 0;
              v404 = 0;
              v405 = 0;
              v406 = 0;
              v407 = 0;
              v661 = 1;
            }

            else
            {
              rankingItem24 = [v696 rankingItem];
              if (([rankingItem24 bundleIDType] & 2) != 0)
              {
                v404 = 0;
                v405 = 0;
                v406 = 0;
                v407 = 0;
                v661 = 1;
                v664 = 1;
              }

              else
              {
                rankingItem25 = [v696 rankingItem];
                if (([rankingItem25 bundleIDType] & 0x40) != 0)
                {
                  v405 = 0;
                  v406 = 0;
                  v407 = 0;
                  v661 = 1;
                  v664 = 1;
                  v404 = 1;
                }

                else
                {
                  rankingItem26 = [v696 rankingItem];
                  if (([rankingItem26 bundleIDType] & 0x40000) != 0)
                  {
                    v406 = 0;
                    v407 = 0;
                    v661 = 1;
                    v664 = 1;
                    v404 = 1;
                    v405 = 1;
                  }

                  else
                  {
                    rankingItem27 = [v696 rankingItem];
                    if (([rankingItem27 bundleIDType] & 0x2000000) != 0)
                    {
                      v407 = 0;
                      v661 = 1;
                      v664 = 1;
                      v404 = 1;
                      v405 = 1;
                      v406 = 1;
                    }

                    else
                    {
                      rankingItem28 = [v696 rankingItem];
                      if (([rankingItem28 bundleIDType] & 0x4000000) == 0)
                      {

                        v385 = 1;
                        v403 = v653;
                        goto LABEL_398;
                      }

                      v661 = 1;
                      v664 = 1;
                      v404 = 1;
                      v405 = 1;
                      v406 = 1;
                      v407 = 1;
                    }
                  }
                }
              }
            }
          }

          rankingItem29 = [v696 rankingItem];
          shouldHideUnderShowMore3 = [rankingItem29 shouldHideUnderShowMore];

          if (v407)
          {

            if ((v406 & 1) == 0)
            {
              goto LABEL_343;
            }

LABEL_350:

            if ((v405 & 1) == 0)
            {
              goto LABEL_351;
            }

LABEL_344:

            if ((v404 & 1) == 0)
            {
              goto LABEL_345;
            }

LABEL_352:

            if ((v664 & 1) == 0)
            {
              goto LABEL_353;
            }

LABEL_346:

            if ((v661 & 1) == 0)
            {
              goto LABEL_347;
            }

LABEL_354:

            if ((bundleIDType2 & 8) != 0)
            {
              goto LABEL_355;
            }

LABEL_348:
          }

          else
          {
            if (v406)
            {
              goto LABEL_350;
            }

LABEL_343:
            if (v405)
            {
              goto LABEL_344;
            }

LABEL_351:
            if (v404)
            {
              goto LABEL_352;
            }

LABEL_345:
            if (v664)
            {
              goto LABEL_346;
            }

LABEL_353:
            if (v661)
            {
              goto LABEL_354;
            }

LABEL_347:
            if ((bundleIDType2 & 8) == 0)
            {
              goto LABEL_348;
            }

LABEL_355:
          }

          if ((shouldHideUnderShowMore3 & 1) == 0)
          {
            sectionBundleIdentifier31 = [v693 sectionBundleIdentifier];

            if (sectionBundleIdentifier31)
            {
              sectionBundleIdentifier32 = [v696 sectionBundleIdentifier];
              rankingItem30 = [v696 rankingItem];
              if (([rankingItem30 bundleIDType] & 0x2000000) != 0)
              {
              }

              else
              {
                rankingItem31 = [v696 rankingItem];
                v414 = ([rankingItem31 bundleIDType] & 0x40000) == 0;

                if (v414)
                {
                  v415 = sectionBundleIdentifier32;
LABEL_372:
                  rankingItem22 = v415;
                  [v645 engagementProbabilityForCategory:?];
                  v420 = v419;
                  sectionBundleIdentifier33 = [v693 sectionBundleIdentifier];
                  [v645 engagementProbabilityForCategory:sectionBundleIdentifier33];
                  v423 = v422;

                  v385 = 0;
                  if (v423 <= 0.00001 || v420 >= v423)
                  {
                    goto LABEL_399;
                  }

                  rankingItem32 = [v627 rankingItem];
                  v403 = SSCompactRankingAttrsGetValue([rankingItem32 attributes], 7uLL);

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_397;
                  }

                  rankingItem33 = [v696 rankingItem];
                  if (([rankingItem33 bundleIDType] & 8) == 0)
                  {
                    rankingItem34 = [v696 rankingItem];
                    if (([rankingItem34 bundleIDType] & 0x100000) == 0)
                    {
                      rankingItem35 = [v696 rankingItem];
                      v428 = ([rankingItem35 bundleIDType] & 0x4000000) == 0;

                      if (v428)
                      {
                        rankingItem36 = [v696 rankingItem];
                        if (([rankingItem36 bundleIDType] & 0x40000) != 0)
                        {
                        }

                        else
                        {
                          rankingItem37 = [v696 rankingItem];
                          v431 = ([rankingItem37 bundleIDType] & 0x2000000) == 0;

                          if (v431)
                          {
                            rankingItem38 = [v696 rankingItem];
                            if (([rankingItem38 bundleIDType] & 0x20) != 0)
                            {
                            }

                            else
                            {
                              rankingItem39 = [v696 rankingItem];
                              v434 = ([rankingItem39 bundleIDType] & 0x40) == 0;

                              if (v434)
                              {
                                rankingItem40 = [v696 rankingItem];
                                bundleIDType3 = [rankingItem40 bundleIDType];

                                if ((bundleIDType3 & 2) == 0)
                                {
                                  goto LABEL_397;
                                }

                                rankingItem41 = [v696 rankingItem];
                                v438 = SSCompactRankingAttrsGetValue([rankingItem41 attributes], 7uLL);

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
LABEL_416:
                                  v445 = [v438 containsString:v403];

                                  if (v445)
                                  {
LABEL_410:
                                    v385 = 0;
LABEL_398:

LABEL_399:
                                    goto LABEL_362;
                                  }

LABEL_397:
                                  v385 = 1;
                                  goto LABEL_398;
                                }

LABEL_396:

                                goto LABEL_397;
                              }
                            }

                            rankingItem42 = [v696 rankingItem];
                            v438 = SSCompactRankingAttrsGetValue([rankingItem42 attributes], 0xCuLL);

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              goto LABEL_416;
                            }

                            goto LABEL_396;
                          }
                        }

                        rankingItem43 = [v696 rankingItem];
                        v438 = SSCompactRankingAttrsGetValue([rankingItem43 attributes], 0x81uLL);

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          for (i9 = 0; i9 < objc_msgSend_count(v438); ++i9)
                          {
                            v441 = [v438 objectAtIndex:i9];
                            objc_opt_class();
                            if (objc_opt_isKindOfClass() & 1) != 0 && ([v403 isEqualToString:v441])
                            {
                              goto LABEL_409;
                            }
                          }
                        }

                        goto LABEL_396;
                      }

LABEL_390:
                      rankingItem44 = [v696 rankingItem];
                      v438 = SSCompactRankingAttrsGetValue([rankingItem44 attributes], 5uLL);

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        for (i10 = 0; i10 < objc_msgSend_count(v438); ++i10)
                        {
                          v441 = [v438 objectAtIndex:i10];
                          objc_opt_class();
                          if (objc_opt_isKindOfClass() & 1) != 0 && ([v403 isEqualToString:v441])
                          {
LABEL_409:

                            goto LABEL_410;
                          }
                        }
                      }

                      goto LABEL_396;
                    }
                  }

                  goto LABEL_390;
                }
              }

              v418 = @"com.apple.mobileslideshow";

              v415 = v418;
              goto LABEL_372;
            }
          }
        }

        v385 = 1;
      }

LABEL_362:
      if ((v385 & 1) == 0 || v352 >= v638)
      {
LABEL_365:
        if (v670 < objc_msgSend_count(v714))
        {
          v417 = [v714 objectAtIndexedSubscript:?];
          [v647 addObject:v417];

          ++v670;
        }

        ++v687;
        goto LABEL_368;
      }

      v416 = [v633 objectAtIndexedSubscript:v352];
      [v647 addObject:v416];

      ++v352;
      ++v674;
LABEL_368:

      if (v687 >= v629)
      {
        goto LABEL_421;
      }
    }
  }

  v670 = 0;
  v352 = 0;
LABEL_421:
  if (v352 < v638)
  {
    do
    {
      v446 = [v633 objectAtIndexedSubscript:v352];
      [v647 addObject:v446];

      ++v352;
    }

    while (v638 != v352);
  }

  for (i11 = v670; i11 < objc_msgSend_count(v714); ++i11)
  {
    v448 = [v714 objectAtIndexedSubscript:i11];
    [v647 addObject:v448];
  }

  v757 = 0u;
  v755 = 0u;
  v756 = 0u;
  v754 = 0u;
  objectEnumerator = [v647 objectEnumerator];
  v450 = [objectEnumerator countByEnumeratingWithState:&v754 objects:v924 count:16];
  if (v450)
  {
    v451 = *v755;
    do
    {
      for (i12 = 0; i12 != v450; ++i12)
      {
        if (*v755 != v451)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v453 = [v725 objectForKeyedSubscript:*(*(&v754 + 1) + 8 * i12)];
        if (v453)
        {
          [v723 addObject:v453];
        }

        if ([v453 domain] != 2 && (v704 & 1) == 0)
        {
          bundleIdentifier = [v453 bundleIdentifier];
          if (([bundleIdentifier isEqualToString:@"com.apple.application"] & v706) == 1)
          {
          }

          else
          {
            bundleIdentifier2 = [v453 bundleIdentifier];
            v456 = SSSectionIsSyndicatedPhotos(bundleIdentifier2);

            if ((v456 & 1) == 0)
            {
              [v658 refineSectionShowingVisibleResultsWithBetterTextMatches:v453];
            }
          }
        }
      }

      v450 = [objectEnumerator countByEnumeratingWithState:&v754 objects:v924 count:16];
    }

    while (v450);
  }

  v752 = 0u;
  v753 = 0u;
  v750 = 0u;
  v751 = 0u;
  v690 = v633;
  v457 = [v690 countByEnumeratingWithState:&v750 objects:v923 count:16];
  if (v457)
  {
    v458 = *v751;
    v459 = 1;
    do
    {
      for (i13 = 0; i13 != v457; ++i13)
      {
        if (*v751 != v458)
        {
          objc_enumerationMutation(v690);
        }

        v461 = [v725 objectForKey:*(*(&v750 + 1) + 8 * i13)];
        v462 = v461;
        if (v461)
        {
          results2 = [v461 results];
          firstObject = [results2 firstObject];

          if (v459)
          {
            if ([firstObject placement] == 3 && objc_msgSend(firstObject, "topHit") == 2)
            {
              firstObject2 = [v723 firstObject];
              results3 = [firstObject2 results];
              firstObject3 = [results3 firstObject];

              domain = [firstObject2 domain];
              v459 = domain == 2;
              if (domain == 2)
              {
                sectionBundleIdentifier34 = [firstObject3 sectionBundleIdentifier];
                sectionBundleIdentifier35 = [firstObject sectionBundleIdentifier];
                [sectionBundleIdentifier34 isEqualToString:sectionBundleIdentifier35];

                goto LABEL_469;
              }

              if (SPRankingTopHitMustBeOverrideMinScore_onceToken != -1)
              {
                [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:];
              }

              v469 = *&SPRankingTopHitMustBeOverrideMinScore__topHitMustBeOverrideMinScore;
              rankingItem45 = [firstObject3 rankingItem];
              if (([rankingItem45 bundleIDType] & 0x100) != 0)
              {
                l2FeatureVector6 = [rankingItem45 L2FeatureVector];
                [l2FeatureVector6 scoreForFeature:1];
                v476 = v475;

                l2FeatureVector7 = [rankingItem45 L2FeatureVector];
                [l2FeatureVector7 scoreForFeature:41];
                v479 = v478;

                queryTermLength = [v630 queryTermLength];
                if (queryTermLength > +[PRSRankingItemRanker spellCorrectedAppMinQueryLen]&& v476 == 1.0 && v479 == 0.0)
                {
                  if (SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore_onceToken != -1)
                  {
                    [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:];
                  }

                  v473 = &SPRankingTopHitMustBeOverrideMinSpellCorrectedAppScore__topHitMustBeOverrideMinSpellCorrectedAppScore;
LABEL_467:
                  v469 = *v473;
                }
              }

              else
              {
                sectionBundleIdentifier36 = [firstObject sectionBundleIdentifier];
                v472 = [sectionBundleIdentifier36 isEqualToString:@"com.apple.DocumentsApp"];

                if (v472)
                {
                  if (SPRankingTopHitMustBeOverrideMinFileScore_onceToken != -1)
                  {
                    [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:];
                  }

                  v473 = &SPRankingTopHitMustBeOverrideMinFileScore__topHitMustBeOverrideMinFileScore;
                  goto LABEL_467;
                }
              }

              l2FeatureVector8 = [rankingItem45 L2FeatureVector];
              [l2FeatureVector8 originalL2Score];
              v483 = v482;

              [v723 removeObject:v462];
              [v723 insertObject:v462 atIndex:v483 > v469];
LABEL_469:
            }

            else
            {
              v459 = 1;
            }
          }

          else
          {
            v459 = 0;
          }

          if ([firstObject placement] == 2)
          {
            [v723 removeObject:v462];
            [v723 addObject:v462];
          }
        }
      }

      v457 = [v690 countByEnumeratingWithState:&v750 objects:v923 count:16];
    }

    while (v457);
  }

  v748 = 0u;
  v749 = 0u;
  v746 = 0u;
  v747 = 0u;
  v675 = v714;
  v484 = [v675 countByEnumeratingWithState:&v746 objects:v922 count:16];
  if (!v484)
  {

    v671 = 0;
    v639 = 0;
    v654 = 0;
    v621 = 0;
    v485 = 0;
    goto LABEL_571;
  }

  v671 = 0;
  v639 = 0;
  v654 = 0;
  v621 = 0;
  v485 = 0;
  v634 = 0;
  v683 = *v747;
  objb = *MEMORY[0x1E6963C60];
  do
  {
    v708 = 0;
    v688 = v484;
    v702 = v634;
    v634 += v484;
    do
    {
      if (*v747 != v683)
      {
        objc_enumerationMutation(v675);
      }

      v486 = *(*(&v746 + 1) + 8 * v708);
      v487 = [v725 objectForKey:v486];
      v488 = v487;
      if (v487)
      {
        results4 = [v487 results];
        firstObject4 = [results4 firstObject];

        rankingItem46 = [firstObject4 rankingItem];
        if ([firstObject4 placement] == 1 || rankingItem46 && objc_msgSend(rankingItem46, "topHitReason") == 16)
        {
          [v723 removeObject:v488];
          [v723 insertObject:v488 atIndex:0];
        }

        else if ([firstObject4 placement] == 2)
        {
          [firstObject4 setPlacement:0];
          [v723 removeObject:v488];
          [v723 addObject:v488];
        }

        if (peopleSearch)
        {
          if ([v486 isEqualToString:@"com.apple.people.findMy"])
          {
            resultSet2 = v671;
            v671 = v488;
            goto LABEL_519;
          }

          if ([v486 isEqualToString:@"com.apple.people.screenTimeRequest"])
          {
LABEL_506:
            v508 = [firstObject4 valueForAttribute:objb withType:objc_opt_class()];
            unsignedIntValue = [v508 unsignedIntValue];

            if (unsignedIntValue == 1)
            {
              resultSet2 = v654;
              v654 = v488;
              goto LABEL_519;
            }

LABEL_520:
            if ((v704 & 1) == 0 && [v486 isEqualToString:@"com.apple.shortcuts"])
            {
              resultSet = [v488 resultSet];
              v744 = 0u;
              v745 = 0u;
              v742 = 0u;
              v743 = 0u;
              v520 = resultSet;
              v521 = [v520 countByEnumeratingWithState:&v742 objects:v921 count:16];
              if (v521)
              {
                v522 = *v743;
                do
                {
                  v523 = 0;
                  do
                  {
                    if (*v743 != v522)
                    {
                      objc_enumerationMutation(v520);
                    }

                    rankingItem47 = [*(*(&v742 + 1) + 8 * v523) rankingItem];
                    l2FeatureVector9 = [rankingItem47 L2FeatureVector];
                    [l2FeatureVector9 scoreForFeature:130];
                    v527 = v526;

                    l2FeatureVector10 = [rankingItem47 L2FeatureVector];
                    [l2FeatureVector10 scoreForFeature:77];
                    v530 = v529;

                    l2FeatureVector11 = [rankingItem47 L2FeatureVector];
                    [l2FeatureVector11 scoreForFeature:165];
                    v533 = v532;

                    l2FeatureVector12 = [rankingItem47 L2FeatureVector];
                    [l2FeatureVector12 scoreForFeature:165];
                    v536 = v535;

                    if ((v533 != 0.0 || v530 <= 0.75) && ((v537 = v527, v536 == 1.0) ? (v538 = v537 <= 0.33) : (v538 = 1), !v538 ? (v539 = v530 <= 1.0) : (v539 = 1), v539 ? (v540 = v527 < 0.5) : (v540 = 0), v540))
                    {
                      l2FeatureVector13 = [rankingItem47 L2FeatureVector];
                      [l2FeatureVector13 scoreForFeature:154];
                      v546 = v545;

                      l2FeatureVector14 = [rankingItem47 L2FeatureVector];
                      [l2FeatureVector14 scoreForFeature:89];
                      v549 = v548;

                      l2FeatureVector15 = [rankingItem47 L2FeatureVector];
                      [l2FeatureVector15 scoreForFeature:189];
                      v552 = v551;

                      l2FeatureVector16 = [rankingItem47 L2FeatureVector];
                      [l2FeatureVector16 scoreForFeature:189];
                      v555 = v554;

                      if (v552 == 0.0 && v549 > 0.75 || (v555 == 1.0 ? (v557 = v546 <= 0.33) : (v557 = 1), !v557 ? (v558 = v549 <= 1.0) : (v558 = 1), !v558 || v546 >= 0.5))
                      {
                        v556 = v488;

                        [rankingItem47 setShouldHideUnderShowMore:0];
                        [rankingItem47 setShouldHideUnderShowMoreIfNotTophit:0];
                        v485 = v556;
                      }
                    }

                    else
                    {
                      v541 = v488;

                      v542 = SSCompactRankingAttrsGetValue([rankingItem47 attributes], 0xA6uLL);
                      v543 = v542;
                      if (!v542 || [v542 integerValue] != 1)
                      {
                        [rankingItem47 setTopHitReason:19];
                      }

                      v485 = v541;
                    }

                    ++v523;
                  }

                  while (v521 != v523);
                  v559 = [v520 countByEnumeratingWithState:&v742 objects:v921 count:16];
                  v521 = v559;
                }

                while (v559);
              }
            }

            goto LABEL_561;
          }

          if (![v486 isEqualToString:@"com.apple.people.askToBuyRequest"])
          {
            goto LABEL_520;
          }

LABEL_509:
          v510 = [firstObject4 valueForAttribute:objb withType:objc_opt_class()];
          unsignedIntValue2 = [v510 unsignedIntValue];

          if (unsignedIntValue2 != 1)
          {
            goto LABEL_520;
          }

          resultSet2 = v639;
          v639 = v488;
LABEL_519:

          goto LABEL_520;
        }

        if ([v486 isEqualToString:@"com.apple.people.findMy"] && objc_msgSend(v488, "resultsCount") == 1)
        {
          resultSet2 = [v488 resultSet];
          firstObject5 = [resultSet2 firstObject];
          rankingItem48 = [firstObject5 rankingItem];
          l2FeatureVector17 = [rankingItem48 L2FeatureVector];
          if (!l2FeatureVector17)
          {
            goto LABEL_495;
          }

          rankingItem49 = [firstObject5 rankingItem];
          l2FeatureVector18 = [rankingItem49 L2FeatureVector];
          [l2FeatureVector18 scoreForFeature:137];
          v497 = v496;

          if (v497 != 2147500000.0)
          {
            rankingItem48 = v671;
            v671 = v488;
LABEL_495:
          }

          goto LABEL_519;
        }

        if ([v486 isEqualToString:@"com.apple.people.askToBuyRequest"])
        {
          resultSet2 = [firstObject4 rankingItem];
          l2FeatureVector19 = [resultSet2 L2FeatureVector];
          if (!l2FeatureVector19)
          {
            goto LABEL_519;
          }

          rankingItem50 = [firstObject4 rankingItem];
          l2FeatureVector20 = [rankingItem50 L2FeatureVector];
          [l2FeatureVector20 scoreForFeature:137];
          v502 = v501;

          if (v502 == 2147500000.0)
          {
            goto LABEL_520;
          }

          goto LABEL_509;
        }

        if ([v486 isEqualToString:@"com.apple.people.screenTimeRequest"])
        {
          resultSet2 = [firstObject4 rankingItem];
          l2FeatureVector21 = [resultSet2 L2FeatureVector];
          if (!l2FeatureVector21)
          {
            goto LABEL_519;
          }

          rankingItem51 = [firstObject4 rankingItem];
          l2FeatureVector22 = [rankingItem51 L2FeatureVector];
          [l2FeatureVector22 scoreForFeature:137];
          v507 = v506;

          if (v507 != 2147500000.0)
          {
            goto LABEL_506;
          }

          goto LABEL_520;
        }

        if (![v486 isEqualToString:@"com.apple.MobileAddressBook"] || objc_msgSend(v488, "resultsCount") != 1 || v702)
        {
          goto LABEL_520;
        }

        resultSet2 = [v488 resultSet];
        firstObject6 = [resultSet2 firstObject];
        rankingItem52 = [firstObject6 rankingItem];
        l2FeatureVector23 = [rankingItem52 L2FeatureVector];
        if (l2FeatureVector23)
        {
          rankingItem53 = [firstObject6 rankingItem];
          l2FeatureVector24 = [rankingItem53 L2FeatureVector];
          [l2FeatureVector24 scoreForFeature:131];
          v518 = v517;

          if (v518 != 2147500000.0)
          {
            rankingItem52 = v621;
            v621 = v488;
            goto LABEL_517;
          }
        }

        else
        {
LABEL_517:
        }

        goto LABEL_519;
      }

LABEL_561:

      ++v702;
      v708 = v708 + 1;
    }

    while (v708 != v688);
    v484 = [v675 countByEnumeratingWithState:&v746 objects:v922 count:16];
  }

  while (v484);

  if (peopleSearch)
  {
    if (v639)
    {
      [v723 removeObject:v639];
      [v723 insertObject:v639 atIndex:0];
    }

    if (v654)
    {
      [v723 removeObject:v654];
      [v723 insertObject:v654 atIndex:0];
    }

    if (v671)
    {
      [v723 removeObject:?];
      v560 = 0;
      goto LABEL_598;
    }

LABEL_599:
    v671 = 0;
  }

  else if (v621)
  {
    if (v639)
    {
      [v723 removeObject:v639];
      [v723 insertObject:v639 atIndex:1];
    }

    if (v654)
    {
      [v723 removeObject:v654];
      [v723 insertObject:v654 atIndex:1];
    }

    if (!v671)
    {
      goto LABEL_599;
    }

    [v723 removeObject:?];
    v560 = 1;
LABEL_598:
    [v723 insertObject:v671 atIndex:v560];
  }

  else
  {
    v621 = 0;
  }

  if ((v704 & 1) == 0 && v485)
  {
    [v645 maxEngagementProbability];
    v575 = v574;
    [v645 engagementProbabilityForCategory:@"com.apple.other:search_preferences"];
    v577 = v576;
    v740 = 0u;
    v741 = 0u;
    v738 = 0u;
    v739 = 0u;
    v709 = v723;
    v703 = [v709 countByEnumeratingWithState:&v738 objects:v920 count:16];
    if (v703)
    {
      v727 = 0;
      v705 = *v739;
      while (2)
      {
        for (i14 = 0; i14 != v703; i14 = i14 + 1)
        {
          if (*v739 != v705)
          {
            objc_enumerationMutation(v709);
          }

          v578 = *(*(&v738 + 1) + 8 * i14);
          bundleIdentifier3 = [v578 bundleIdentifier];
          if ([bundleIdentifier3 isEqualToString:@"com.apple.shortcuts"])
          {
            goto LABEL_641;
          }

          [v645 engagementProbabilityForCategory:bundleIdentifier3];
          if (v575 != -1.0 && (v580 == v575 || v575 == v577 && [bundleIdentifier3 isEqualToString:@"com.apple.Preferences"]))
          {
LABEL_634:
            v594 = v727 + 1;
          }

          else
          {
            if (v727 || ([bundleIdentifier3 isEqualToString:@"com.apple.application"] & 1) == 0 && (objc_msgSend(bundleIdentifier3, "isEqualToString:", @"com.apple.app-clips") & 1) == 0 && (objc_msgSend(bundleIdentifier3, "isEqualToString:", @"com.apple.MobileAddressBook") & 1) == 0 && (objc_msgSend(bundleIdentifier3, "isEqualToString:", @"com.apple.mobilesafari") & 1) == 0)
            {
              if (([bundleIdentifier3 hasPrefix:@"com.apple.parsec."] & 1) == 0)
              {
                resultSet3 = [v578 resultSet];
                firstObject7 = [resultSet3 firstObject];
                rankingItem54 = [firstObject7 rankingItem];
                v689 = firstObject7;
                if ([rankingItem54 shouldHideUnderShowMore])
                {
                  goto LABEL_639;
                }

                rankingItem55 = [firstObject7 rankingItem];
                shouldHideUnderShowMoreIfNotTophit = [rankingItem55 shouldHideUnderShowMoreIfNotTophit];

                if ((shouldHideUnderShowMoreIfNotTophit & 1) == 0)
                {
                  v736 = 0u;
                  v737 = 0u;
                  v734 = 0u;
                  v735 = 0u;
                  rankingItem54 = resultSet3;
                  v585 = [rankingItem54 countByEnumeratingWithState:&v734 objects:v919 count:16];
                  if (v585)
                  {
                    v586 = *v735;
                    while (2)
                    {
                      for (i15 = 0; i15 != v585; ++i15)
                      {
                        if (*v735 != v586)
                        {
                          objc_enumerationMutation(rankingItem54);
                        }

                        rankingItem56 = [*(*(&v734 + 1) + 8 * i15) rankingItem];
                        if ([rankingItem56 shouldHideUnderShowMore] & 1) != 0 || (objc_msgSend(rankingItem56, "shouldHideUnderShowMoreIfNotTophit"))
                        {

                          goto LABEL_639;
                        }

                        interestingDate = [rankingItem56 interestingDate];
                        [v630 currentTime];
                        v591 = v590;
                        [interestingDate timeIntervalSinceReferenceDate];
                        v593 = v592 - v591 > -2592000.0;

                        if (v593)
                        {

                          goto LABEL_634;
                        }
                      }

                      v585 = [rankingItem54 countByEnumeratingWithState:&v734 objects:v919 count:16];
                      if (v585)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_639:
                }
              }

LABEL_641:

              goto LABEL_643;
            }

            v594 = 1;
          }

          v727 = v594;
        }

        v703 = [v709 countByEnumeratingWithState:&v738 objects:v920 count:16];
        if (v703)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v727 = 0;
    }

LABEL_643:

    if (v727 < objc_msgSend_count(v709))
    {
      [v709 removeObject:v485];
      [v709 insertObject:v485 atIndex:v727];
    }
  }

LABEL_571:
  if ([v630 isNLSearch])
  {
    v726 = [v723 mutableCopy];
    v561 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(v723)];
    v732 = 0u;
    v733 = 0u;
    v730 = 0u;
    v731 = 0u;
    v716 = v723;
    v562 = [v716 countByEnumeratingWithState:&v730 objects:v918 count:16];
    if (v562)
    {
      v563 = *v731;
      do
      {
        for (i16 = 0; i16 != v562; ++i16)
        {
          if (*v731 != v563)
          {
            objc_enumerationMutation(v716);
          }

          v565 = *(*(&v730 + 1) + 8 * i16);
          results5 = [v565 results];
          firstObject8 = [results5 firstObject];

          rankingItem57 = [firstObject8 rankingItem];
          l2FeatureVector25 = [rankingItem57 L2FeatureVector];
          [l2FeatureVector25 scoreForFeature:2390];
          v571 = v570;

          if (v571 == 1.0)
          {
            [v561 addObject:v565];
            [v726 removeObject:v565];
          }
        }

        v562 = [v716 countByEnumeratingWithState:&v730 objects:v918 count:16];
      }

      while (v562);
    }

    [v561 addObjectsFromArray:v726];
    v723 = [v561 copy];
  }

  [SSRankingManager logL3Results:v723 l3Info:v719];

  _Block_object_dispose(&v816, 8);
LABEL_583:

  _Block_object_dispose(&v878, 8);
  _Block_object_dispose(&v882, 8);
  _Block_object_dispose(&v886, 8);
  _Block_object_dispose(&v890, 8);
  _Block_object_dispose(&v894, 8);
  _Block_object_dispose(&v898, 8);
  _Block_object_dispose(&v902, 8);
  _Block_object_dispose(&v940, 8);

  objc_autoreleasePoolPop(context);
  if (v602)
  {
    v572 = 0;
  }

  else
  {
    if (isInternalDevice == 1)
    {
      [*(v658 + 24) appendFormat:@"\n----------------L3 Ranking Info----------------\n%@\n----------------L3 Ranking Info End----------------\n\n\n", v913[5]];
    }

    v572 = v723;
  }

  _Block_object_dispose(&v912, 8);

  return v572;
}

uint64_t __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke(uint64_t a1, uint64_t a2)
{
  result = get_thread_count(a1, a2);
  rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext__core_count = result;
  return result;
}

uint64_t __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_2()
{
  l3modelManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_838(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 rankingScore];
  [v3 roundedValueForScore:?];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v4 addObject:v5];
}

void __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_852(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 rankingItem];
  v14 = [v13 L2FeatureVector];

  if (v14)
  {
    v15 = [v10 rankingItem];
    *buf = [v15 isAssociatedWithTophitContactsFromItems:v12];

    v40 = 3234;
    v16 = [v10 rankingItem];
    v17 = [v16 L2FeatureVector];
    [v17 setScores:buf forFeatures:&v40 count:1];
  }

  if (([v9 bundleIDType] & 0x104) != 0)
  {
    [v9 keywordMatchScore];
    if (v18 > 0.05)
    {
      [v9 likelihood];
      if (v19 > 0.0500000007)
      {
        [v9 setShouldHideUnderShowMore:0];
      }
    }
  }

  v20 = [v9 L2FeatureVector];
  if (v20)
  {
    v21 = v20;
    v22 = [v9 L2FeatureVector];
    [v22 scoreForFeature:3234];
    v24 = v23;

    if (v24 != 0.0)
    {
      [v9 setShouldHideUnderShowMore:0];
    }
  }

  v25 = [v9 bundleIDType];
  if ((v25 & 8) != 0)
  {
    v25 = [v9 freshnessScore];
    if (v26 < 2.22044605e-16)
    {
      v25 = [v9 setShouldHideUnderShowMore:1];
    }
  }

  if (*(a1 + 48) == 1)
  {
    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = [v9 sectionBundleIdentifier];
      v29 = [v27 containsObject:v28];

      if (v29)
      {
        v30 = 0;
LABEL_20:
        v25 = [v9 setShouldHideUnderShowMore:v30];
        goto LABEL_21;
      }
    }

    v25 = [v9 bundleIDType];
    if ((v25 & 0x8000) == 0)
    {
      v25 = [v9 shouldHideUnderShowMoreIfNotTophit];
      if (v25)
      {
        v30 = 1;
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (SSEnableSpotlightFullPageRanking(v25))
  {
    if ([*(a1 + 40) isSearchToolClient])
    {
      goto LABEL_31;
    }

    if (([v9 bundleIDType] & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    if ([v9 isLocalTopHitCandidate])
    {
      goto LABEL_31;
    }

    if ([v11 isEqualToString:@"com.apple.spotlight.tophits"])
    {
      goto LABEL_31;
    }

    [v9 topicalityScore];
    if (v31 >= 0.7)
    {
      goto LABEL_31;
    }

    [v9 engagementScore];
    if (v32 > 0.0)
    {
      goto LABEL_31;
    }

    v33 = [v9 recentSimilarIntentEngagementDates];
    if (objc_msgSend_count(v33))
    {

LABEL_31:
      [SSRankingManager fullPageRankingShouldHideUnderShowMore:v10 item:v9 bundleID:v11];
      goto LABEL_32;
    }

    v34 = [v9 exactMatchedLaunchString];

    if (v34)
    {
      goto LABEL_31;
    }

    v35 = SSCompactRankingAttrsGetValue([v9 attributes], 7uLL);
    v36 = SSCompactRankingAttrsGetValue([v9 attributes], 0xCuLL);
    v37 = SSGeneralLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      if (v35)
      {
        v38 = v35;
      }

      else
      {
        v38 = v36;
      }

      v39 = SSRedactString(v38, 1);
      *buf = 5.7779e-34;
      v42 = v39;
      _os_log_impl(&dword_1D9F69000, v37, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][shouldHideUnderShowMore] shortcut: %@ due to lack of topicality/engagement", buf, 0xCu);
    }

    [v9 setShouldHideUnderShowMore:1];
  }

LABEL_32:
  if ([v9 shouldHideUnderShowMore] && objc_msgSend(v10, "topHit") >= 1)
  {
    [v10 setTopHit:{SSSetTopHitWithReasonString(0, v10, @"Demote due to shouldHideUnderShowMore", 1)}];
  }
}

void __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_855(uint64_t a1, uint64_t a2)
{
  v277 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v4 = *(a1 + 256);
    v5 = v4 * a2;
    v6 = v4 * a2 + v4;
    if (v6 >= *(a1 + 264))
    {
      v6 = *(a1 + 264);
    }

    v231 = v6;
    if (v5 < v6)
    {
      v242 = (a1 + 308);
      v229 = a1 + 232;
      v228 = a1 + 248;
      v227 = 0.1;
      v7 = -1.0;
      v8 = -1.0;
      __asm { FMOV            V0.2S, #-1.0 }

      v238 = _D0;
      __asm { FMOV            V0.4S, #-1.0 }

      v237 = _Q0;
      v258 = a1;
      while (1)
      {
        v14 = [*(a1 + 40) objectAtIndexedSubscript:{v5, *&v227}];
        v15 = [*(a1 + 48) objectForKey:v14];
        v247 = v14;
        if ([v15 domain] == 2)
        {
          break;
        }

        v16 = [v15 resultSet];
        if (objc_msgSend_count(v16))
        {
          v252 = [v16 objectAtIndexedSubscript:0];
          v17 = [v15 results];
          v18 = [v17 objectAtIndexedSubscript:0];
          v19 = [v18 sectionBundleIdentifier];
          v20 = [v19 lowercaseString];

          v246 = v20;
          [*(a1 + 56) engagementProbabilityForCategory:v20];
          v248 = v16;
          v233 = v5;
          v235 = v15;
          if (v21 != v7)
          {
            v22 = v21;
            v23 = [@"com.apple.Preferences" lowercaseString];
            v24 = [v20 isEqualToString:v23];

            if (v24)
            {
              v25 = 1;
              v26 = 368;
            }

            else
            {
              v146 = [@"com.apple.app-clips" lowercaseString];
              v147 = [v20 isEqualToString:v146];

              if (v147)
              {
                v25 = 1;
                v26 = 369;
              }

              else
              {
                v148 = [@"com.apple.tips" lowercaseString];
                v149 = [v20 isEqualToString:v148];

                if (v149)
                {
                  v25 = 1;
                  v26 = 371;
                }

                else
                {
                  v150 = [v20 hasPrefix:@"com.apple."];
                  if (v150)
                  {
                    v26 = 3235;
                  }

                  else
                  {
                    v26 = 370;
                  }

                  v25 = v150 ^ 1;
                }
              }
            }

            v151 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(v16)];
            v267 = 0u;
            v268 = 0u;
            v269 = 0u;
            v270 = 0u;
            v152 = v16;
            v153 = [v152 countByEnumeratingWithState:&v267 objects:v276 count:16];
            if (v153)
            {
              v154 = v153;
              v155 = *v268;
              do
              {
                for (i = 0; i != v154; ++i)
                {
                  if (*v268 != v155)
                  {
                    objc_enumerationMutation(v152);
                  }

                  v157 = [*(*(&v267 + 1) + 8 * i) rankingItem];
                  v158 = [v157 L2FeatureVector];

                  if (v158)
                  {
                    v271[0] = 367;
                    *v272 = LODWORD(v22);
                    if (v25)
                    {
                      HIWORD(v271[0]) = v26;
                      *&v272[4] = v22;
                      [v158 setScores:v272 forFeatures:v271 count:2];
                      [v151 addObject:v158];
                    }

                    else
                    {
                      [v158 setScores:v272 forFeatures:v271 count:1];
                    }
                  }
                }

                v154 = [v152 countByEnumeratingWithState:&v267 objects:v276 count:16];
              }

              while (v154);
            }

            if (v25)
            {
              v159 = [*(v258 + 64) computeScoresForVectors:v151];
              if (v159)
              {
                free(v159);
              }
            }

            a1 = v258;
            v5 = v233;
            v14 = v247;
            v16 = v248;
          }

          v160 = v252;
          v161 = [v252 rankingItem];
          if (v161)
          {
            v162 = v161;
            v163 = [v252 rankingItem];
            v164 = [v163 shouldHideUnderShowMore];
          }

          else
          {
            v164 = 1;
          }

          v165 = [v16 objectAtIndexedSubscript:0];
          [*(a1 + 72) setObject:v165 atIndexedSubscript:v5];

          v166 = [v252 rankingItem];
          v167 = [v166 L2FeatureVector];
          if (v167)
          {
            v168 = [v252 rankingItem];
            v169 = [v168 L2FeatureVector];
            [v169 originalL2Score];
            v171 = v170;

            v160 = v252;
          }

          else
          {
            v171 = -3.4028e38;
          }

          v172 = objc_msgSend_count(v16);
          v173 = [v160 rankingItem];
          v174 = [v173 bundleIDType];

          if (!v172)
          {
            [*(a1 + 88) setObject:v160 atIndexedSubscript:v5];
            goto LABEL_165;
          }

          v175 = [v16 objectAtIndexedSubscript:0];
          v176 = [v175 rankingItem];
          v177 = v176;
          if ((*(*(*(a1 + 192) + 8) + 24) & 1) == 0 && ([v176 bundleIDType] & 0x400) != 0)
          {
            v178 = [v177 L2FeatureVector];
            [v178 scoreForFeature:31];
            v180 = v179;

            a1 = v258;
            _ZF = v180 == 1.0;
            v7 = -1.0;
            if (_ZF)
            {
              *(*(*(v258 + 192) + 8) + 24) = 1;
            }
          }

          if ((*(*(*(a1 + 200) + 8) + 24) & 1) == 0 && SSSectionIsSyndicatedPhotos(v14))
          {
            v181 = [v175 rankingItem];
            if ([v181 photosMatch])
            {
              goto LABEL_134;
            }

            v182 = [v175 rankingItem];
            if ([v182 photosExactMatch])
            {

              v14 = v247;
LABEL_134:

              a1 = v258;
LABEL_135:
              *(*(*(a1 + 200) + 8) + 24) = 1;
            }

            else
            {
              v223 = [v175 rankingItem];
              v224 = [v223 L2FeatureVector];
              [v224 scoreForFeature:1928];
              v226 = v225;

              v16 = v248;
              _ZF = v226 == 1.0;
              v7 = -1.0;
              a1 = v258;
              v14 = v247;
              if (_ZF)
              {
                goto LABEL_135;
              }
            }
          }

          (*(*(a1 + 184) + 16))();

          if (v172 == 1)
          {
LABEL_137:
            v5 = v233;
            [*(a1 + 88) setObject:v252 atIndexedSubscript:v233];
            if (*(a1 + 328))
            {
              v183 = 0;
LABEL_163:
              v199 = [v14 isEqualToString:@"com.apple.Preferences"];
              v200 = v199;
              if ((v183 & 1) == 0 && !v199)
              {
LABEL_165:
                v15 = v235;
                goto LABEL_195;
              }
            }

            else
            {
              if ([v14 hasPrefix:@"com.apple."])
              {
                v183 = [v14 isEqualToString:@"com.apple.CoreSuggestions"];
                goto LABEL_163;
              }

              v200 = [v14 isEqualToString:@"com.apple.Preferences"];
              v183 = 1;
            }

            v201 = [v16 objectAtIndexedSubscript:0];
            v202 = [v201 rankingItem];
            [*(a1 + 56) engagementProbabilityForCategory:v14];
            v204 = v203;
            if (v183)
            {
              v205 = v203;
              v206 = [v202 L2FeatureVector];
              [v206 scoreForFeature:1961];
              v208 = v207;

              v209 = [v202 L2FeatureVector];
              [v209 scoreForFeature:1955];

              v210 = [v202 L2FeatureVector];
              [v210 scoreForFeature:2084];
              v212 = v211;

              v213 = [v14 isEqualToString:@"com.apple.CoreSuggestions"];
              v214 = 0.01;
              if (v213)
              {
                v214 = 0.05;
              }

              _ZF = v214 <= v205 || v204 == -1.0;
              v216 = !_ZF;
              if (v212 == -1.0)
              {
                v15 = v235;
              }

              else
              {
                v15 = v235;
                if (v208 != -1.0)
                {
                  v217 = v212 <= v227;
                  if (v208 <= 5.0)
                  {
                    v217 = 1;
                  }

                  v216 &= v217;
                }
              }

              if (([v202 hasPolicyMultipleTermsPhraseMatch] & 1) == 0 && (objc_msgSend(v202, "hasPolicyMultipleTermsNearMatch") & 1) == 0 && (objc_msgSend(v202, "hasPolicySingleTermPhraseMatch") & 1) == 0 && ((v216 ^ 1) & 1) == 0)
              {
                [v201 setPlacement:2];
                v222 = SSSetTopHitWithReasonString(0, v201, @"Demote due to SFResultPlacementBottom", 1);
LABEL_193:
                [v201 setTopHit:v222];
              }
            }

            else
            {
              v218 = v200 & ~*(a1 + 329);
              v15 = v235;
              if ((v218 & 1) != 0 && v203 != -1.0)
              {
                [*(a1 + 56) maxEngagementProbability];
                v220 = v219;
                [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other:search_preferences"];
                if (v220 != -1.0 && (v204 == v220 || v221 == v220))
                {
                  [v202 setTopHitReason:15];
                  [v201 setPlacement:1];
                  v222 = SSSetTopHitWithReasonType(1, v201, 15, 1, 0);
                  goto LABEL_193;
                }
              }
            }

            v7 = -1.0;
            goto LABEL_195;
          }

          v184 = (v174 >> 15) & 1;
          v185 = 1;
          while (2)
          {
            v186 = [v16 objectAtIndex:v185];
            v187 = [v186 rankingItem];
            v188 = [v187 L2FeatureVector];
            if (v188)
            {
              v189 = [v186 rankingItem];
              v190 = [v189 L2FeatureVector];
              [v190 originalL2Score];
              v192 = v191;

              v14 = v247;
            }

            else
            {
              v192 = -3.4028e38;
            }

            v193 = [v186 rankingItem];
            v184 += ([v193 bundleIDType] >> 15) & 1;
            if (v192 > v171)
            {
              goto LABEL_148;
            }

            v194 = [v252 rankingItem];
            if (([v194 bundleIDType] & 0x8000) == 0)
            {
              v16 = v248;
              goto LABEL_153;
            }

            v195 = [v186 rankingItem];
            v196 = [v195 bundleIDType];

            v14 = v247;
            if (v196 < 0)
            {
              v7 = -1.0;
              v16 = v248;
            }

            else
            {
LABEL_148:
              v197 = [v235 maxInitiallyVisibleResults];
              if (v197)
              {
                v198 = v197;
              }

              else
              {
                v198 = v172;
              }

              v16 = v248;
              if ((v164 & 1) != 0 || ([v193 shouldHideUnderShowMore] & 1) == 0 && v185 < v198 + v184)
              {
                v194 = v252;
                v252 = v186;
                v171 = v192;
LABEL_153:
              }

              v7 = -1.0;
            }

            a1 = v258;
            (*(*(v258 + 184) + 16))();

            if (v172 == ++v185)
            {
              goto LABEL_137;
            }

            continue;
          }
        }

LABEL_196:

        if (++v5 == v231)
        {
          goto LABEL_200;
        }
      }

      if ((*(*(*(a1 + 208) + 8) + 24) & 1) != 0 || ![v14 isEqualToString:@"com.apple.parsec.itunes.iosSoftware"])
      {
        v244 = 0;
      }

      else
      {
        v244 = 1;
        *(*(*(a1 + 208) + 8) + 24) = 1;
      }

      if ((*(*(*(a1 + 216) + 8) + 24) & 1) == 0 && [v14 isEqualToString:@"com.apple.parsec.weather"])
      {
        *(*(*(a1 + 216) + 8) + 24) = 1;
      }

      if ((*(*(*(a1 + 224) + 8) + 24) & 1) == 0 && [v14 isEqualToString:@"com.apple.parsec.web_images"])
      {
        *(*(*(a1 + 224) + 8) + 24) = 1;
      }

      v27 = [v15 results];
      v28 = objc_msgSend_count(v27);

      v249 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v28];
      v236 = v15;
      v29 = [v15 results];
      v246 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v28];
      v251 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      [*(a1 + 56) engagementProbabilityForCategory:v14];
      v31 = *&v30;
      if (*&v30 != v7)
      {
        v32 = *(a1 + 96);
        v33 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
        v254 = ([v32 indexOfObject:v33] + 1);

        v34 = *(a1 + 104);
        *&v35 = v31;
        v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
        *&v239 = [v34 indexOfObject:v36] + 1;

        v37 = *(a1 + 112);
        *&v38 = v31;
        v39 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
        v40 = [v37 indexOfObject:v39] + 1;

        v241 = v40;
      }

      v257 = objc_opt_new();
      v41 = objc_opt_new();
      v42 = [*(a1 + 120) indexOfObject:v14] + 1;
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:(v42 + v8) / objc_msgSend_count(*(a1 + 120))];
      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:objc_msgSend_count(v29)];
      [v41 setNumResults:v44];

      v253 = v42;
      v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
      [v41 setOriginalOrderAbsRank:v45];

      v245 = v43;
      [v41 setOriginalOrderRelRank:v43];
      *&v46 = v31;
      v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
      [v41 setCep:v47];

      v48 = 0x1E696A000uLL;
      if (v31 == -1.0)
      {
        [v41 setMaxCEPAbsRank:&unk_1F55B6CB8];
        [v41 setMaxCEPRelRank:&unk_1F55B6CB8];
        [v41 setCepMaxRatio:&unk_1F55B6CB8];
        [v41 setCepAllMaxRatio:&unk_1F55B6CB8];
      }

      else
      {
        v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v254];
        [v41 setMaxCEPAbsRank:v49];

        v50 = [MEMORY[0x1E696AD98] numberWithDouble:(v254 + v8) / *(a1 + 272)];
        [v41 setMaxCEPRelRank:v50];

        v51 = MEMORY[0x1E696AD98];
        [*(a1 + 128) doubleValue];
        v53 = [v51 numberWithDouble:v31 / v52];
        [v41 setCepMaxRatio:v53];

        v54 = MEMORY[0x1E696AD98];
        [*(a1 + 136) doubleValue];
        v56 = [v54 numberWithDouble:v31 / v55];
        [v41 setCepAllMaxRatio:v56];
      }

      v232 = v41;
      v234 = v5;
      [v251 setObject:v41 forKey:v14];
      v265 = 0u;
      v266 = 0u;
      v263 = 0u;
      v264 = 0u;
      obj = v29;
      v57 = [obj countByEnumeratingWithState:&v263 objects:v275 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v264;
        v60 = -1.0;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v264 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v62 = *(*(&v263 + 1) + 8 * j);
            [v62 rankingScore];
            [*(a1 + 32) roundedValueForScore:?];
            v64 = v63;
            v65 = [*(v48 + 3480) numberWithDouble:?];
            [v257 addObject:v65];

            if (v64 > v60)
            {
              v60 = v64;
            }

            v66 = [v62 sectionBundleIdentifier];
            if (v66)
            {
              v67 = [v251 objectForKey:v66];
              if (v67)
              {
                v68 = MEMORY[0x1E696AD98];
                v69 = [v62 blockId];
                v70 = [v67 blockIdValue];
                v71 = [v70 unsignedLongLongValue];

                a1 = v258;
                if (v69 <= v71)
                {
                  v72 = v71;
                }

                else
                {
                  v72 = v69;
                }

                v73 = [v68 numberWithUnsignedLongLong:v72];
                [v67 setBlockIdValue:v73];

                v48 = 0x1E696A000;
              }
            }
          }

          v58 = [obj countByEnumeratingWithState:&v263 objects:v275 count:16];
        }

        while (v58);
      }

      else
      {
        v60 = -1.0;
      }

      [v257 sortUsingComparator:&__block_literal_global_871];
      v74 = [*(v48 + 3480) numberWithDouble:v60];
      [v232 setMaxScore:v74];

      v75 = objc_msgSend_count(v257);
      v259 = 0u;
      v260 = 0u;
      v261 = 0u;
      v262 = 0u;
      v76 = obj;
      v7 = -1.0;
      v16 = v249;
      v252 = v76;
      v250 = [v76 countByEnumeratingWithState:&v259 objects:v274 count:16];
      if (v250)
      {
        v243 = *v260;
        v77 = v254;
        v240 = *&v239;
        v78 = v254 + -1.0;
        v79 = -1.0;
        v239 = *&v239 + -1.0;
        do
        {
          for (k = 0; k != v250; ++k)
          {
            if (*v260 != v243)
            {
              objc_enumerationMutation(v252);
            }

            v81 = *(*(&v259 + 1) + 8 * k);
            v82 = [v81 rankingItem];
            if (!v82)
            {
              v83 = [PRSRankingItem alloc];
              v84 = [v81 sectionBundleIdentifier];
              v82 = [(PRSRankingItem *)v83 initForParsecResultWithBundleID:v84];

              [v81 setRankingItem:v82];
            }

            v254 = [v82 L2FeatureVector];
            v85 = [v81 sectionBundleIdentifier];
            if (v85)
            {
              v86 = [v251 objectForKey:v85];
              v88 = v86;
              if (v86)
              {
                v89 = [v86 blockIdValue];

                if (v89)
                {
                  v87 = [v81 blockId];
                  v90 = v81;
                  goto LABEL_56;
                }

                [v81 setFeedbackBlockId:?];
                [v88 setBlockIdValue:&unk_1F55B6CB8];
              }

              else
              {
                v90 = v81;
LABEL_56:
                [v90 setFeedbackBlockId:v87];
              }
            }

            obja = v82;
            memset(v273, 0, sizeof(v273));
            memset(&v272[4], 0, 48);
            memset(&v271[4] + 2, 0, 238);
            *(v271 + 2) = 0u;
            LOWORD(v271[0]) = 366;
            *v272 = v31;
            [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other.search_maps"];
            HIWORD(v271[0]) = 402;
            *&v272[4] = v91;
            [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other.search_app_store"];
            LOWORD(v271[1]) = 403;
            *&v272[8] = v92;
            [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other.search_appstore"];
            HIWORD(v271[1]) = 404;
            *&v272[12] = v93;
            [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.other.search_web"];
            v271[2] = 24379797;
            *&v272[16] = v94;
            *&v272[20] = 1065353216;
            v95 = [*(a1 + 144) indexOfObject:v81];
            LOWORD(v271[3]) = 373;
            v96 = ((v95 + 1) + v79) / *(a1 + 280);
            *(&v271[3] + 2) = 24576374;
            *&v272[24] = (v95 + 1);
            *&v272[28] = v96;
            if (v31 == v7)
            {
              *(&v271[4] + 2) = 24707448;
              HIWORD(v271[5]) = 379;
              v100 = &v272[48];
              v99 = &v271[6];
              v101 = 12;
              *&v272[32] = v237;
            }

            else
            {
              v97 = v78 / *(a1 + 272);
              *&v272[32] = v77;
              *&v272[36] = v97;
              *&v272[40] = v240;
              *&v272[44] = v241;
              v98 = v239 / *(a1 + 288);
              *(&v271[4] + 2) = 0x17B0179017A0178;
              *&v272[48] = v98;
              v100 = v273;
              v99 = &v271[6] + 1;
              v101 = 13;
            }

            v102 = *(a1 + 304);
            *v99 = 380;
            *v100 = v102;
            *(v271 + 2 * v101 + 2) = 0x180017F017E017DLL;
            *&v272[4 * v101 + 4] = *v242;
            v103 = *(a1 + 324);
            *(&v271[2] + v101 + 1) = 385;
            v104 = v101 + 6;
            *&v272[4 * v101 + 20] = v103;
            v105 = *(v258 + 32);
            [v81 rankingScore];
            [v105 roundedValueForScore:?];
            v107 = v106;
            *(v271 + v104) = 386;
            *&v106 = v106;
            v108 = v101 + 7;
            *&v272[4 * v104] = LODWORD(v106);
            v109 = *(v258 + 152);
            v110 = [MEMORY[0x1E696AD98] numberWithDouble:v107];
            v111 = [v109 indexOfObject:v110] + 1;

            *(v271 + v108) = 387;
            *&v272[4 * v108] = v111;
            v112 = (v111 + -1.0) / *(v258 + 296);
            *(&v271[4] + v101) = 388;
            v113 = v101 + 9;
            *&v272[4 * v101 + 32] = v112;
            v114 = [MEMORY[0x1E696AD98] numberWithDouble:v107];
            v115 = [v257 indexOfObject:v114] + 1;

            *(v271 + v113) = 389;
            *&v272[4 * v113] = v115;
            v79 = -1.0;
            *(&v271[5] + v101) = 390;
            v116 = (v115 + -1.0) / v75;
            *&v272[4 * v101 + 40] = v116;
            v117 = *(v258 + 280);
            *(&v271[5] + v101 + 1) = 396;
            v118 = v101 + 12;
            *&v272[4 * v101 + 44] = v117;
            v119 = objc_msgSend_count(v252);
            *(v271 + v118) = 399;
            *&v272[4 * v118] = v119;
            *(&v271[6] + v101 + 1) = 1776;
            v120 = v101 + 14;
            *&v272[4 * v101 + 52] = v253;
            [v245 floatValue];
            *(v271 + v120) = 1777;
            v121 = v101 + 15;
            *&v272[4 * v120] = v122;
            [*(v258 + 128) floatValue];
            *(v271 + v121) = 1778;
            v123 = v101 | 0x10;
            *&v272[4 * v121] = v124;
            a1 = v258;
            [*(v258 + 136) floatValue];
            *(v271 + v123) = 1780;
            v125 = v101 + 17;
            *&v272[4 * v123] = v126;
            v7 = -1.0;
            if (v31 == -1.0)
            {
              *(v271 + v125) = 1779;
              *(&v271[9] + v101) = 1781;
              *&v272[4 * v125] = v238;
              *(&v271[9] + v101 + 1) = 1980;
              v130 = -1.0;
              *&v272[4 * v101 + 76] = -1082130432;
            }

            else
            {
              [*(v258 + 128) floatValue];
              *(v271 + v125) = 1779;
              v128 = v101 | 0x12;
              *&v272[4 * v125] = v31 / v127;
              [*(v258 + 136) floatValue];
              *(v271 + v128) = 1781;
              *&v272[4 * v128] = v31 / v129;
              a1 = v258;
              *(&v271[9] + v101 + 1) = 1980;
              *&v272[4 * v101 + 76] = v77;
              v130 = v78 / *(v258 + 272);
            }

            v16 = v249;
            *(&v271[10] + v101) = 1981;
            *&v272[4 * v101 + 80] = v130;
            v131 = v101 + 21;
            if (v244)
            {
              [*(a1 + 56) numAppsDeduped];
              *(v271 + v131) = 2317;
              v132 = v101 + 22;
              *&v272[4 * v131] = v133;
              [*(a1 + 56) engagementProbabilityForCategory:@"com.apple.application"];
              if (v134 == -1.0)
              {
                v131 = v101 + 22;
              }

              else
              {
                *(v271 + v132) = 2318;
                v131 = v101 + 23;
                *&v272[4 * v132] = v134;
                if (v31 != -1.0 && v134 != 0.0)
                {
                  *(v271 + v131) = 2319;
                  *&v272[4 * v131] = v31 / v134;
                  v131 = v101 + 24;
                }
              }
            }

            [v254 setScores:v272 forFeatures:v271 count:v131];
            [v254 setBundleID:v247];
            [v246 addObject:v254];
            [v249 addObject:v81];
          }

          v76 = v252;
          v250 = [v252 countByEnumeratingWithState:&v259 objects:v274 count:16];
        }

        while (v250);
      }

      v5 = v234;
      if (objc_msgSend_count(v246))
      {
        [*(a1 + 160) setObject:v246 atIndexedSubscript:v234];
        [*(a1 + 168) setObject:v16 atIndexedSubscript:v234];
      }

      v8 = -1.0;
      v14 = v247;
      v15 = v236;
      if (objc_msgSend_count(v251))
      {
        [*(a1 + 176) setObject:v251 atIndexedSubscript:v234];
      }

      [*(a1 + 64) prepareParsecResults:v252 inBundle:v247];
      if ([v247 isEqualToString:@"com.apple.parsec.itunes.iosSoftware"])
      {
        v135 = *(*(a1 + 208) + 8);
        if ((*(v135 + 24) & 1) == 0)
        {
          *(v135 + 24) = 1;
        }

        if (!objc_msgSend_count(v252))
        {
          goto LABEL_93;
        }

        v136 = [v252 firstObject];
        v137 = [v136 rankingItem];
        v138 = v137;
        if (!v137 || ([v137 L2FeatureVector], (v139 = objc_claimAutoreleasedReturnValue()) == 0))
        {
LABEL_92:

LABEL_93:
LABEL_195:

          goto LABEL_196;
        }

        v140 = v139;
        [v139 scoreForFeature:2304];
        v142 = v229;
      }

      else
      {
        if (![v247 isEqualToString:@"com.apple.parsec.tv.tvShow"])
        {
          goto LABEL_93;
        }

        v143 = *(*(a1 + 240) + 8);
        if ((*(v143 + 24) & 1) == 0)
        {
          *(v143 + 24) = 1;
        }

        if (!objc_msgSend_count(v252))
        {
          goto LABEL_93;
        }

        v136 = [v252 firstObject];
        v144 = [v136 rankingItem];
        v138 = v144;
        if (!v144)
        {
          goto LABEL_92;
        }

        v145 = [v144 L2FeatureVector];
        if (!v145)
        {
          goto LABEL_92;
        }

        v140 = v145;
        [v145 scoreForFeature:2312];
        v142 = v228;
      }

      *(*(*v142 + 8) + 24) = v141;

      goto LABEL_92;
    }
  }

LABEL_200:
  objc_autoreleasePoolPop(context);
}

void __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_3_877(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if (SSEnableSpotlightFullPageRanking(a1))
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v15 = *(a1 + 88);
      v16 = [v15 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v16)
      {
        v17 = *v58;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v58 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v57 + 1) + 8 * i);
            v20 = [v19 rankingItem];
            v21 = [v20 sectionBundleIdentifier];
            v22 = v21 == 0;

            if (!v22)
            {
              v23 = *(a1 + 96);
              v24 = [v19 rankingItem];
              v25 = [v24 sectionBundleIdentifier];
              v26 = [v23 objectForKey:v25];

              if (!v26)
              {
                v27 = *(a1 + 104);
                v28 = [v19 rankingItem];
                v29 = [v28 sectionBundleIdentifier];
                v30 = [v27 objectForKey:v29];

                if (v30)
                {
                  v31 = objc_alloc_init(SectionL3Scores);
                  if ([(SectionL3Scores *)v31 computeScore:v30 rankingConfig:*(a1 + 112) hasGoodLocalResult:*(*(*(a1 + 128) + 8) + 24) pos:0 queryContext:*(a1 + 120)])
                  {
                    *(*(*(a1 + 128) + 8) + 24) = 1;
                  }

                  v32 = *(a1 + 96);
                  v33 = [v19 rankingItem];
                  v34 = [v33 sectionBundleIdentifier];
                  [v32 setObject:v31 forKeyedSubscript:v34];
                }
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v57 objects:v61 count:16];
        }

        while (v16);
      }
    }

    v35 = [SSRankingManager rankLocalBundles:*(a1 + 88) sectionMapping:*(a1 + 104) l3RankingScores:*(a1 + 96), v57];
    v36 = *(*(a1 + 136) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;
  }

  else if (a2 == 1)
  {
    [*(a1 + 80) sortWithOptions:1 usingComparator:&__block_literal_global_883];
  }

  else if (!a2 && objc_msgSend_count(*(a1 + 32)))
  {
    for (j = 0; ; ++j)
    {
      v4 = objc_msgSend_count(*(a1 + 32));
      v5 = *(a1 + 32);
      if (j >= v4)
      {
        break;
      }

      v6 = [v5 objectAtIndexedSubscript:j];
      v7 = *(a1 + 40);
      v8 = [v6 bundleID];
      v9 = [v7 objectForKey:v8];

      v63 = 0;
      v64 = 0;
      v62 = 0;
      v10 = [v9 maxScoreAbsRank];
      [v10 floatValue];
      LODWORD(v63) = v11;

      LOWORD(v62) = 1650;
      v12 = [v9 maxScoreRelRank];
      [v12 floatValue];
      HIDWORD(v63) = v13;

      WORD1(v62) = 1651;
      if ([*(a1 + 48) hasParsecPolicyPhraseMatch])
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      *&v64 = v14;
      WORD2(v62) = 2089;
      [v6 setScores:&v63 forFeatures:&v62 count:3];
    }

    if (objc_msgSend_count(v5))
    {
      if (*(a1 + 144) == 1)
      {
        v52 = PRSModelManagerAssociatedObjectKeyForType(0);
        for (k = 0; k < objc_msgSend_count(*(a1 + 32)); ++k)
        {
          v54 = [*(a1 + 32) objectAtIndexedSubscript:k];
          v55 = [*(a1 + 56) objectAtIndexedSubscript:k];
          v56 = [v55 rankingItem];

          objc_setAssociatedObject(v54, v52, v56, 1);
        }
      }

      v38 = [*(a1 + 48) computeScoresForVectors:*(a1 + 32) withBundleFeatures:*(a1 + 40)];
      if (v38)
      {
        for (m = 0; m < objc_msgSend_count(*(a1 + 32)); ++m)
        {
          v40 = [*(a1 + 32) objectAtIndexedSubscript:m];
          [v40 originalL2Score];
          v42 = v41;
          v43 = [*(a1 + 56) objectAtIndexedSubscript:m];
          LODWORD(v44) = v42;
          [v43 setL2score:v44];

          v45 = *(a1 + 64);
          v46 = [*(a1 + 56) objectAtIndexedSubscript:m];
          v47 = [v46 sectionBundleIdentifier];
          v48 = [v45 indexOfObject:v47];
          v49 = [*(a1 + 56) objectAtIndexedSubscript:m];
          [v49 setScore:{v48, 0}];
        }

        if (SPBlockGroupingEnabled_onceToken != -1)
        {
          __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_3_877_cold_1();
        }

        if (SPBlockGroupingEnabled__blockGroupingEnabled)
        {
          [*(a1 + 72) updateServerScoresUsingBlockOrder:*(a1 + 56) bundleFeatures:*(a1 + 40)];
        }

        free(v38);
      }
    }

    [*(a1 + 56) sortWithOptions:17 usingComparator:&__block_literal_global_880];
    for (n = 0; n < objc_msgSend_count(*(a1 + 32)); ++n)
    {
      v51 = [*(a1 + 56) objectAtIndexedSubscript:n];
      [v51 setScore:{0, 0}];
    }
  }
}

uint64_t __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_4_878(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 score];
  v6 = *&v5;
  v7 = [v4 score];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  v12 = -1;
  if (v6 >= *&v10)
  {
    v12 = 0;
  }

  if (v6 <= *&v10)
  {
    return v12;
  }

  else
  {
    return 1;
  }
}

uint64_t __204__SSRankingManager_rankSectionsUsingBundleIDToSectionMapping_withRanker_preferredBundleIds_isScopedSearch_queryId_isCJK_isBullseyeNonCommittedSearch_isBullseyeCommittedSearch_isPeopleSearch_queryContext___block_invoke_5_881(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rankingItem];
  v6 = [v5 L2FeatureVector];
  [v6 originalL2Score];
  v8 = v7;

  v9 = [v4 rankingItem];

  v10 = [v9 L2FeatureVector];
  [v10 originalL2Score];
  v12 = v11;

  if (v8 <= v12)
  {
    return v12 > v8;
  }

  else
  {
    return -1;
  }
}

+ (void)determineTopHitsForSafariSection:(id)section forQuery:(id)query
{
  v25[2] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  queryCopy = query;
  v25[0] = 0;
  v25[1] = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  resultSet = [sectionCopy resultSet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SSRankingManager_determineTopHitsForSafariSection_forQuery___block_invoke;
  v13[3] = &unk_1E8595A90;
  v8 = queryCopy;
  v14 = v8;
  v15 = &v19;
  v16 = v24;
  v17 = &v23;
  v18 = v25;
  [resultSet enumerateObjectsUsingBlock:v13];

  if (v20[3])
  {
    v9 = 0;
    do
    {
      v10 = v25[v9];
      [v10 setTopHit:{SSSetTopHitWithReasonString(1, v10, @"determineTopHitsForSafariSection", 1)}];
      [v10 setForceNoTopHit:0];
      [v10 setIsSafariTopHit:1];
      rankingItem = [v10 rankingItem];
      [rankingItem setIsSafariTopHit:1];

      rankingItem2 = [v10 rankingItem];
      [rankingItem2 setTopHitReason:12];

      ++v9;
    }

    while (v9 < v20[3]);
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __62__SSRankingManager_determineTopHitsForSafariSection_forQuery___block_invoke(void *a1, void *a2)
{
  v24 = a2;
  [v24 setTopHit:0];
  [v24 setForceNoTopHit:1];
  [v24 setIsSafariTopHit:0];
  v3 = [v24 rankingItem];
  [v3 setIsSafariTopHit:0];

  if ([v24 isSafariTopHitForQuery:a1[4]])
  {
    v4 = [v24 rankingItem];
    v5 = SSCompactRankingAttrsGetValue([v4 attributes], 9uLL);

    if (v5)
    {
      v6 = [v24 contentURL];
      v7 = [v6 length];

      v8 = [v24 contentType];
      v9 = [v8 isEqualToString:@"com.apple.safari.bookmark"];

      v10 = a1[5];
      if (*(*(v10 + 8) + 24))
      {
        v11 = 0;
        v12 = 0;
        v13 = v24;
        do
        {
          v14 = a1[6];
          v15 = a1[7];
          v16 = *(v14 + 8 * v11);
          v17 = *(v15 + v11);
          if (v7 >= v16)
          {
            v18 = *(v15 + v11);
          }

          else
          {
            v18 = 0;
          }

          if ((v9 & 1) != 0 && !v18 || v7 < v16 && (*(v15 + v11) & 1) == 0)
          {
            *(v14 + 8 * v11) = v7;
            *(v15 + v11) = v9 & 1;
            v19 = a1[8];
            v20 = *(v19 + 8 * v11);
            *(v19 + 8 * v11) = v13;
            v10 = a1[5];
            v12 = 1;
            v9 = v17;
            v7 = v16;
            v13 = v20;
          }

          ++v11;
          v21 = *(*(v10 + 8) + 24);
        }

        while (v11 < v21);
        if (v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = 0;
        v13 = v24;
      }

      if (v21 <= 1)
      {
        v22 = a1[7];
        *(a1[6] + 8 * v21) = v7;
        *(v22 + *(*(a1[5] + 8) + 24)) = v9 & 1;
        *(a1[8] + 8 * (*(*(a1[5] + 8) + 24))++) = v13;
      }
    }

LABEL_19:
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)refineSectionShowingVisibleResultsWithBetterTextMatches:(id)matches
{
  v26 = *MEMORY[0x1E69E9840];
  matchesCopy = matches;
  resultSet = [matchesCopy resultSet];
  v5 = objc_msgSend_count(resultSet);

  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  resultSet2 = [matchesCopy resultSet];
  array = [resultSet2 array];

  if (!v5)
  {
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = [array objectAtIndexedSubscript:v10];
    rankingItem = [v11 rankingItem];
    v13 = v10 + 1;
    if (![rankingItem shouldHideUnderShowMore])
    {
      v9 = v10 + 1;
    }

    ++v10;
  }

  while (v6 != v13);
  if (!v9)
  {
LABEL_10:
    results = [matchesCopy results];
    v15 = objc_msgSend_count(results);

    if (v15)
    {
      [matchesCopy setIsInitiallyHidden:1];
      v16 = SSGeneralLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [matchesCopy bundleIdentifier];
        results2 = [matchesCopy results];
        v22 = 138412546;
        v23 = bundleIdentifier;
        v24 = 2048;
        v25 = objc_msgSend_count(results2);
        _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Marking section %@ (%lu result(s)) for isInitiallyHidden - all shouldHideUnderShowMore", &v22, 0x16u);
      }

      goto LABEL_20;
    }

    v9 = 0;
  }

  results3 = [matchesCopy results];
  v20 = objc_msgSend_count(results3);

  if (v20)
  {
    if (v9 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v9;
    }

    [matchesCopy setMaxInitiallyVisibleResults:v21];
  }

LABEL_20:
}

- (id)applyTopSectionPolicy:(id)policy withTopHitSection:(id)section isPeopleSearch:(BOOL)search queryKind:(unint64_t)kind correction:(id)correction queryLength:(unint64_t)length ranker:(id)ranker
{
  searchCopy = search;
  v148 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  sectionCopy = section;
  correctionCopy = correction;
  rankerCopy = ranker;
  v14 = (kind == 4 || kind == 1) && objc_msgSend_count(policyCopy) > 1;
  v15 = sectionCopy;
  v16 = [policyCopy objectAtIndexedSubscript:v14];
  bundleIdentifier = [v16 bundleIdentifier];
  v18 = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

  v109 = v18;
  if (objc_msgSend_count(policyCopy) < 3)
  {
    v21 = 0;
  }

  else
  {
    v19 = [policyCopy objectAtIndexedSubscript:v14 + v18];
    bundleIdentifier2 = [v19 bundleIdentifier];
    v21 = [bundleIdentifier2 isEqualToString:@"com.apple.application"];
  }

  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = __Block_byref_object_copy__1;
  v141 = __Block_byref_object_dispose__1;
  v142 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__SSRankingManager_applyTopSectionPolicy_withTopHitSection_isPeopleSearch_queryKind_correction_queryLength_ranker___block_invoke;
  aBlock[3] = &unk_1E8595AB8;
  v134 = &v137;
  v135 = v14;
  v136 = v21;
  v22 = policyCopy;
  v133 = v22;
  v111 = _Block_copy(aBlock);
  v100 = +[SSRankingManager getLegacyTophitSection];
  v23 = [v100 containsObject:@"none"];
  v24 = kind - 9;
  if (objc_msgSend_count(v22))
  {
    results = [v15 results];
    if (results)
    {
      results2 = [v15 results];
      v27 = objc_msgSend_count(results2) == 0;

      if (!v27)
      {
        results3 = [v15 results];
        v97 = [results3 objectAtIndexedSubscript:0];

        sectionBundleIdentifier = [v97 sectionBundleIdentifier];
        v29 = [v22 mutableCopy];
        v30 = v138[5];
        v138[5] = v29;

        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        obj = v22;
        v31 = [obj countByEnumeratingWithState:&v128 objects:v147 count:16];
        v32 = v109;
        if (!v31)
        {
          goto LABEL_47;
        }

        v107 = *v129;
        v106 = (v24 < 0xFFFFFFFFFFFFFFFCLL) | v23 ^ 1;
        kindCopy = kind;
        while (1)
        {
          v33 = 0;
          v108 = v31;
          do
          {
            if (*v129 != v107)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v128 + 1) + 8 * v33);
            if ([v34 pinToTop] && objc_msgSend(v34, "resultsCount"))
            {
              v111[2](v111, v34, v32, 0);
              goto LABEL_45;
            }

            bundleIdentifier3 = [v34 bundleIdentifier];
            if (([bundleIdentifier3 isEqualToString:@"com.apple.application"] & v106) == 1)
            {
              v36 = [v34 resultsCount] == 0;

              if (v36)
              {
                goto LABEL_25;
              }

              results4 = [v34 results];
              v38 = [results4 objectAtIndexedSubscript:0];
              bundleIdentifier3 = [v38 rankingItem];

              l2FeatureVector = [bundleIdentifier3 L2FeatureVector];
              [l2FeatureVector scoreForFeature:1];
              v41 = v40;

              l2FeatureVector2 = [bundleIdentifier3 L2FeatureVector];
              [l2FeatureVector2 scoreForFeature:41];
              v44 = v43;

              if (+[PRSRankingItemRanker spellCorrectedAppMinQueryLen]< length && v41 == 1.0 && v44 == 0.0)
              {
                goto LABEL_43;
              }
            }

LABEL_25:
            bundleIdentifier4 = [v34 bundleIdentifier];
            v46 = [bundleIdentifier4 isEqualToString:@"com.apple.application"];
            if (kind == 4)
            {
              v47 = 0;
            }

            else
            {
              v47 = v46;
            }

            v32 = v109;
            if ((v47 & 1) == 0)
            {
              bundleIdentifier3 = [v34 bundleIdentifier];
              if ([bundleIdentifier3 isEqualToString:sectionBundleIdentifier])
              {
                v48 = [v34 resultsCount] == 0;

                v32 = v109;
                if (v48)
                {
                  goto LABEL_45;
                }

                results5 = [v34 results];
                bundleIdentifier3 = [results5 objectAtIndexedSubscript:0];

                rankingItem = [bundleIdentifier3 rankingItem];
                shouldHideUnderShowMore = [rankingItem shouldHideUnderShowMore];

                if (shouldHideUnderShowMore)
                {
                  results6 = [v15 results];
                  v54 = [results6 copy];

                  v126 = 0u;
                  v127 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v55 = v54;
                  v56 = [v55 countByEnumeratingWithState:&v124 objects:v146 count:16];
                  if (v56)
                  {
                    LODWORD(v57) = 0;
                    v58 = *v125;
                    do
                    {
                      v59 = 0;
                      v57 = v57;
                      do
                      {
                        if (*v125 != v58)
                        {
                          objc_enumerationMutation(v55);
                        }

                        v60 = *(*(&v124 + 1) + 8 * v59);
                        [v34 addResults:v60 atIndex:v57];
                        [v15 removeResults:v60];
                        ++v59;
                        ++v57;
                      }

                      while (v56 != v59);
                      v56 = [v55 countByEnumeratingWithState:&v124 objects:v146 count:16];
                    }

                    while (v56);
                  }

                  kind = kindCopy;
                  if (v109)
                  {
                    [v138[5] removeObject:v15];
                  }

                  v111[2](v111, v34, 0, 1);
                }

                else if ((SSEnableSpotlightFullPageRanking(v52) & 1) == 0)
                {
LABEL_43:
                  v111[2](v111, v34, v109, 0);
                }
              }

              v32 = v109;
            }

LABEL_45:
            ++v33;
          }

          while (v33 != v108);
          v31 = [obj countByEnumeratingWithState:&v128 objects:v147 count:16];
          if (!v31)
          {
LABEL_47:

            v22 = v138[5];
            goto LABEL_80;
          }
        }
      }
    }
  }

  if (objc_msgSend_count(v22))
  {
    v61 = [v22 mutableCopy];
    v62 = v138[5];
    v138[5] = v61;

    if (v24 >= 0xFFFFFFFFFFFFFFFCLL && (v23 & 1) != 0)
    {
      v78 = v138[5];

      v22 = v78;
LABEL_68:
      v79 = [v22 mutableCopy];
      v80 = v138[5];
      v138[5] = v79;

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v81 = v22;
      v82 = [v81 countByEnumeratingWithState:&v116 objects:v144 count:16];
      if (v82)
      {
        v83 = *v117;
        while (2)
        {
          for (i = 0; i != v82; ++i)
          {
            if (*v117 != v83)
            {
              objc_enumerationMutation(v81);
            }

            v85 = *(*(&v116 + 1) + 8 * i);
            if ([v85 pinToTop] && objc_msgSend(v85, "resultsCount"))
            {
              v111[2](v111, v85, 0, 0);
              goto LABEL_79;
            }
          }

          v82 = [v81 countByEnumeratingWithState:&v116 objects:v144 count:16];
          if (v82)
          {
            continue;
          }

          break;
        }
      }

LABEL_79:
      v97 = v81;

      v22 = v138[5];
LABEL_80:

      goto LABEL_81;
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v110 = v22;
    v63 = [v110 countByEnumeratingWithState:&v120 objects:v145 count:16];
    if (v63)
    {
      v64 = *v121;
LABEL_52:
      v65 = 0;
      while (1)
      {
        if (*v121 != v64)
        {
          objc_enumerationMutation(v110);
        }

        v66 = *(*(&v120 + 1) + 8 * v65);
        bundleIdentifier5 = [v66 bundleIdentifier];
        if (![bundleIdentifier5 isEqualToString:@"com.apple.application"])
        {
          goto LABEL_61;
        }

        v68 = [v66 resultsCount] == 0;

        if (!v68)
        {
          break;
        }

LABEL_62:
        if (v63 == ++v65)
        {
          v63 = [v110 countByEnumeratingWithState:&v120 objects:v145 count:16];
          if (v63)
          {
            goto LABEL_52;
          }

          goto LABEL_64;
        }
      }

      results7 = [v66 results];
      v70 = [results7 objectAtIndexedSubscript:0];
      bundleIdentifier5 = [v70 rankingItem];

      l2FeatureVector3 = [bundleIdentifier5 L2FeatureVector];
      [l2FeatureVector3 scoreForFeature:1];
      v73 = v72;

      l2FeatureVector4 = [bundleIdentifier5 L2FeatureVector];
      [l2FeatureVector4 scoreForFeature:41];
      v76 = v75;

      if (+[PRSRankingItemRanker spellCorrectedAppMinQueryLen](PRSRankingItemRanker, "spellCorrectedAppMinQueryLen") < length && v73 == 1.0 && v76 == 0.0 && ([rankerCopy isSpellCorrectPrefixMatchOnlyTopHitExcludedQuery] & 1) == 0)
      {
        v111[2](v111, v66, v109, 0);

        v77 = 1;
        goto LABEL_67;
      }

LABEL_61:

      goto LABEL_62;
    }

LABEL_64:
    v77 = 0;
LABEL_67:

    v22 = v138[5];
    if ((v77 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

LABEL_81:
  if (searchCopy)
  {
    v86 = [v22 mutableCopy];
    v87 = v138[5];
    v138[5] = v86;

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v88 = v22;
    v89 = [v88 countByEnumeratingWithState:&v112 objects:v143 count:16];
    if (v89)
    {
      v90 = *v113;
      do
      {
        for (j = 0; j != v89; ++j)
        {
          if (*v113 != v90)
          {
            objc_enumerationMutation(v88);
          }

          v92 = *(*(&v112 + 1) + 8 * j);
          bundleIdentifier6 = [v92 bundleIdentifier];
          v94 = [bundleIdentifier6 isEqualToString:@"com.apple.MobileAddressBook"];

          if (v94)
          {
            v111[2](v111, v92, 0, 0);
          }
        }

        v89 = [v88 countByEnumeratingWithState:&v112 objects:v143 count:16];
      }

      while (v89);
    }

    v22 = v138[5];
  }

  v95 = v22;

  _Block_object_dispose(&v137, 8);

  return v95;
}

void __115__SSRankingManager_applyTopSectionPolicy_withTopHitSection_isPeopleSearch_queryKind_correction_queryLength_ranker___block_invoke(uint64_t a1, void *a2, int a3, char a4)
{
  v14 = a2;
  [*(*(*(a1 + 40) + 8) + 40) removeObject:?];
  v7 = *(a1 + 48) + a3;
  if ((a4 & 1) == 0 && *(a1 + 52) == 1 && objc_msgSend_count(*(a1 + 32)) >= 4)
  {
    v8 = [v14 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.application"];

    if ((v9 & 1) == 0)
    {
      v7 = *(a1 + 48) + 2;
    }
  }

  if (v7)
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:v7];
    v11 = [v10 bundleIdentifier];
    v12 = [v11 isEqualToString:@"com.apple.searchd.suggestions"];

    v13 = v7 + (v12 & 1);
  }

  else
  {
    v13 = 0;
  }

  [*(*(*(a1 + 40) + 8) + 40) insertObject:v14 atIndex:v13];
}

- (void)updateServerScoresUsingBlockOrder:(id)order bundleFeatures:(id)features
{
  v64 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  featuresCopy = features;
  if (!self->_isCancelled)
  {
    v8 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v42 = orderCopy;
    v9 = orderCopy;
    v10 = [v9 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v57;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v56 + 1) + 8 * i);
          sectionBundleIdentifier = [v14 sectionBundleIdentifier];
          v16 = [featuresCopy objectForKey:sectionBundleIdentifier];

          if (v16)
          {
            blockIdValue = [v16 blockIdValue];

            if (blockIdValue)
            {
              blockIdValue2 = [v16 blockIdValue];
              v19 = [v8 objectForKey:blockIdValue2];

              if (!v19)
              {
                v19 = objc_opt_new();
              }

              [v19 addObject:v14];
              blockIdValue3 = [v16 blockIdValue];
              [v8 setObject:v19 forKey:blockIdValue3];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v11);
    }

    if (objc_msgSend_count(v8))
    {
      v41 = featuresCopy;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = [v8 allKeys];
      v21 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v53;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v53 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = [v8 objectForKey:*(*(&v52 + 1) + 8 * j)];
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v26 = [v25 countByEnumeratingWithState:&v48 objects:v61 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = 0;
              v29 = *v49;
              v30 = 0.0;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v49 != v29)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v32 = *(*(&v48 + 1) + 8 * k);
                  [v32 l2score];
                  [v32 l2score];
                  v30 = v30 + v33;
                  ++v28;
                }

                v27 = [v25 countByEnumeratingWithState:&v48 objects:v61 count:16];
              }

              while (v27);
              v34 = v30 / v28;
            }

            else
            {
              v34 = NAN;
            }

            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v35 = v25;
            v36 = [v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (v36)
            {
              v38 = v36;
              v39 = *v45;
              do
              {
                for (m = 0; m != v38; ++m)
                {
                  if (*v45 != v39)
                  {
                    objc_enumerationMutation(v35);
                  }

                  *&v37 = v34;
                  [*(*(&v44 + 1) + 8 * m) setL2score:v37];
                }

                v38 = [v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
              }

              while (v38);
            }
          }

          v22 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
        }

        while (v22);
      }

      featuresCopy = v41;
    }

    orderCopy = v42;
  }
}

+ (void)extractThresholdABValues:(id)values forLanguage:(id)language
{
  v62 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  languageCopy = language;
  v8 = 0x1E695D000uLL;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  os_unfair_lock_lock(&_MergedGlobals);
  v10 = sLastLanguage;
  if (!languageCopy)
  {
    sLastLanguage = 0;

    os_unfair_lock_unlock(&_MergedGlobals);
    goto LABEL_5;
  }

  if ([sLastLanguage isEqualToString:languageCopy])
  {
    os_unfair_lock_unlock(&_MergedGlobals);
    goto LABEL_48;
  }

  objc_storeStrong(&sLastLanguage, language);
  os_unfair_lock_unlock(&_MergedGlobals);
  localeIdentifier = [currentLocale localeIdentifier];
  if (!localeIdentifier || ([currentLocale localeIdentifier], v4 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(languageCopy, "isEqualToString:", v4)))
  {
    languageCode = [currentLocale languageCode];
    if (languageCode)
    {
      v34 = languageCode;
      languageCode2 = [currentLocale languageCode];
      v36 = [languageCopy isEqualToString:languageCode2];

      if (localeIdentifier)
      {
      }

      v8 = 0x1E695D000;
      if (v36)
      {
        goto LABEL_37;
      }
    }

    else if (localeIdentifier)
    {
    }

    v40 = [valuesCopy objectForKey:languageCopy];
    if (v40)
    {
      v22 = v40;
      goto LABEL_47;
    }

    goto LABEL_37;
  }

LABEL_37:
  v41 = [languageCopy length];
  if (v41 >= 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = v41;
  }

  v43 = [languageCopy substringToIndex:v42];

  v44 = [valuesCopy objectForKey:v43];
  if (v44)
  {
    v22 = v44;
    languageCopy = v43;
    goto LABEL_47;
  }

  languageCopy = v43;
LABEL_5:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    localeIdentifier2 = [currentLocale localeIdentifier];
    _deviceLanguage = [*(v8 + 3928) _deviceLanguage];
    languageCode3 = [currentLocale languageCode];
    scriptCode = [currentLocale scriptCode];
    [currentLocale countryCode];
    v16 = v15 = v8;
    *v55 = 138413314;
    *&v55[4] = localeIdentifier2;
    *&v55[12] = 2112;
    *&v55[14] = _deviceLanguage;
    v56 = 2112;
    v57 = languageCode3;
    v58 = 2112;
    v59 = scriptCode;
    v60 = 2112;
    v61 = v16;
    _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Looking for thresholds for %@/%@/%@/%@/%@", v55, 0x34u);

    v8 = v15;
  }

  if (!languageCopy)
  {
    os_unfair_lock_lock(&_MergedGlobals);
    languageCode4 = [currentLocale languageCode];
    v18 = sLastLanguage;
    sLastLanguage = languageCode4;

    os_unfair_lock_unlock(&_MergedGlobals);
  }

  localeIdentifier3 = [currentLocale localeIdentifier];
  if (localeIdentifier3)
  {
    v20 = localeIdentifier3;
    localeIdentifier4 = [currentLocale localeIdentifier];
    v22 = [valuesCopy objectForKey:localeIdentifier4];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localeIdentifier5 = [currentLocale localeIdentifier];
        *v55 = 138412290;
        *&v55[4] = localeIdentifier5;
        v24 = MEMORY[0x1E69E9C10];
        v25 = "Using thresholds for identifier %@";
        goto LABEL_46;
      }

LABEL_47:
      v47 = [SSCompactValueArray decodeFromDictionary:v22 nesting:1, *v55, *&v55[8]];
      os_unfair_lock_lock(&_MergedGlobals);
      v48 = qword_1EDBEA770;
      qword_1EDBEA770 = v47;
      v49 = v47;

      os_unfair_lock_unlock(&_MergedGlobals);
      goto LABEL_48;
    }
  }

  _deviceLanguage2 = [*(v8 + 3928) _deviceLanguage];
  if (_deviceLanguage2)
  {
    v28 = _deviceLanguage2;
    _deviceLanguage3 = [*(v8 + 3928) _deviceLanguage];
    v22 = [valuesCopy objectForKey:_deviceLanguage3];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localeIdentifier5 = [*(v8 + 3928) _deviceLanguage];
        *v55 = 138412290;
        *&v55[4] = localeIdentifier5;
        v24 = MEMORY[0x1E69E9C10];
        v25 = "Using thresholds for system locale %@";
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  languageCode5 = [currentLocale languageCode];
  if (languageCode5)
  {
    v31 = languageCode5;
    languageCode6 = [currentLocale languageCode];
    v22 = [valuesCopy objectForKey:languageCode6];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localeIdentifier5 = [currentLocale languageCode];
        *v55 = 138412290;
        *&v55[4] = localeIdentifier5;
        v24 = MEMORY[0x1E69E9C10];
        v25 = "Using thresholds for language %@";
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  scriptCode2 = [currentLocale scriptCode];
  if (scriptCode2)
  {
    v38 = scriptCode2;
    scriptCode3 = [currentLocale scriptCode];
    v22 = [valuesCopy objectForKey:scriptCode3];

    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localeIdentifier5 = [currentLocale scriptCode];
        *v55 = 138412290;
        *&v55[4] = localeIdentifier5;
        v24 = MEMORY[0x1E69E9C10];
        v25 = "Using thresholds for script %@";
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  countryCode = [currentLocale countryCode];
  v22 = [valuesCopy objectForKey:countryCode];

  v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (!v46)
    {
      goto LABEL_47;
    }

    localeIdentifier5 = [currentLocale countryCode];
    *v55 = 138412290;
    *&v55[4] = localeIdentifier5;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "Using thresholds for country %@";
LABEL_46:
    _os_log_impl(&dword_1D9F69000, v24, OS_LOG_TYPE_DEFAULT, v25, v55, 0xCu);

    goto LABEL_47;
  }

  if (v46)
  {
    localeIdentifier6 = [currentLocale localeIdentifier];
    _deviceLanguage4 = [*(v8 + 3928) _deviceLanguage];
    languageCode7 = [currentLocale languageCode];
    scriptCode4 = [currentLocale scriptCode];
    countryCode2 = [currentLocale countryCode];
    *v55 = 138413314;
    *&v55[4] = localeIdentifier6;
    *&v55[12] = 2112;
    *&v55[14] = _deviceLanguage4;
    v56 = 2112;
    v57 = languageCode7;
    v58 = 2112;
    v59 = scriptCode4;
    v60 = 2112;
    v61 = countryCode2;
    _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no locale specific thresholds for %@/%@/%@/%@/%@", v55, 0x34u);
  }

LABEL_48:
}

+ (void)prepareTopHitsParametersForLanguage:(id)language
{
  languageCopy = language;
  os_unfair_lock_lock(&_MergedGlobals);
  v5 = [sAllTopHitThresholds copy];
  os_unfair_lock_unlock(&_MergedGlobals);
  [self extractThresholdABValues:v5 forLanguage:languageCopy];
}

+ (void)reloadTopHitsParametersFromTrial
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = SSDefaultsGetResources(self);
  v4 = [v3 filePathForKey:@"TopHitsThreshold"];

  v6 = SSDefaultsGetResources(v5);
  v7 = [v6 filePathForKey:@"TopHitsContinuationThresholds"];

  v9 = SSDefaultsGetResources(v8);
  v10 = [v9 filePathForKey:@"TopHitsFilterSectionsBundleIds"];

  v11 = SSValuesFromPlistWithPath(v4);
  v12 = SSValuesFromPlistWithPath(v7);
  v13 = [v12 objectForKey:@"thresholds"];
  v45 = v10;
  v14 = SSValuesFromPlistWithPath(v10);
  v15 = [v14 objectForKey:@"forbiddenSecondSections"];
  v16 = [v14 objectForKey:@"poorSecondSections"];
  if (objc_msgSend_count(v11))
  {
    v42 = v12;
    v44 = v4;
    os_unfair_lock_lock(&_MergedGlobals);
    v17 = [v11 objectForKey:@"iOS"];
    v18 = sAllTopHitThresholds;
    sAllTopHitThresholds = v17;

    v19 = [sAllTopHitThresholds copy];
    os_unfair_lock_unlock(&_MergedGlobals);
    [self extractThresholdABValues:v19 forLanguage:0];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v21 = [v19 objectForKey:@"default"];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    v43 = v7;
    if (v21)
    {
      if (v22)
      {
        [currentLocale localeIdentifier];
        v23 = v40 = v11;
        [MEMORY[0x1E695DF58] _deviceLanguage];
        v24 = v38 = v13;
        [currentLocale languageCode];
        v25 = v37 = v15;
        scriptCode = [currentLocale scriptCode];
        countryCode = [currentLocale countryCode];
        *buf = 138413314;
        v47 = v23;
        v48 = 2112;
        v49 = v24;
        v50 = 2112;
        v51 = v25;
        v52 = 2112;
        v53 = scriptCode;
        v54 = 2112;
        v55 = countryCode;
        _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Getting fallback thresholds for %@/%@/%@/%@/%@", buf, 0x34u);

        v15 = v37;
        v11 = v40;

        v13 = v38;
      }
    }

    else
    {
      if (v22)
      {
        localeIdentifier = [currentLocale localeIdentifier];
        _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
        languageCode = [currentLocale languageCode];
        scriptCode2 = [currentLocale scriptCode];
        [currentLocale countryCode];
        *buf = 138413314;
        v47 = localeIdentifier;
        v48 = 2112;
        v49 = _deviceLanguage;
        v50 = 2112;
        v51 = languageCode;
        v52 = 2112;
        v53 = scriptCode2;
        v55 = v54 = 2112;
        v30 = v55;
        _os_log_impl(&dword_1D9F69000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error found no fallback thresholds for %@/%@/%@/%@/%@", buf, 0x34u);
      }

      v21 = &unk_1F55B7808;
    }

    v31 = [SSCompactValueArray decodeFromDictionary:v21 nesting:1];
    os_unfair_lock_lock(&_MergedGlobals);
    v32 = sFallbackTopHitsThreshold;
    sFallbackTopHitsThreshold = v31;

    os_unfair_lock_unlock(&_MergedGlobals);
    v7 = v43;
    v4 = v44;
    v12 = v42;
  }

  if (objc_msgSend_count(v13))
  {
    os_unfair_lock_lock(&_MergedGlobals);
    objc_storeStrong(&sTopHitsContinuationThreshold, v13);
    os_unfair_lock_unlock(&_MergedGlobals);
  }

  if (objc_msgSend_count(v15))
  {
    os_unfair_lock_lock(&_MergedGlobals);
    v33 = [MEMORY[0x1E695DFD8] setWithArray:v15];
    v34 = sForbiddenSecondSections;
    sForbiddenSecondSections = v33;

    os_unfair_lock_unlock(&_MergedGlobals);
  }

  if (objc_msgSend_count(v16))
  {
    os_unfair_lock_lock(&_MergedGlobals);
    v35 = [MEMORY[0x1E695DFD8] setWithArray:v16];
    v36 = sPoorSecondSections;
    sPoorSecondSections = v35;

    os_unfair_lock_unlock(&_MergedGlobals);
  }
}

+ (void)reloadCommittedSearchParametersFromTrial
{
  v2 = SSDefaultsGetResources(self);
  v3 = [v2 filePathForKey:@"CommittedSearchDemotions"];

  v4 = SSValuesFromPlistWithPath(v3);
  obj = [v4 objectForKey:@"demoteNonExactMatchBundle"];
  v5 = [v4 objectForKey:@"legacyTophitSection"];
  if (objc_msgSend_count(obj))
  {
    os_unfair_lock_lock(&_MergedGlobals);
    objc_storeStrong(&sDemoteNonExactMatchBundle, obj);
    os_unfair_lock_unlock(&_MergedGlobals);
  }

  if (objc_msgSend_count(v5))
  {
    os_unfair_lock_lock(&_MergedGlobals);
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v7 = sLegacyTophitSection;
    sLegacyTophitSection = v6;

    os_unfair_lock_unlock(&_MergedGlobals);
  }
}

+ (id)getForbiddenSecondSections
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sForbiddenSecondSections;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

+ (id)getPoorSecondSections
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sPoorSecondSections;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

+ (id)getDemoteNonExactMatchBundle
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v0 = sDemoteNonExactMatchBundle;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v0;
}

+ (id)getTopHitsThresholdsForBundleId:(unint64_t)id queryLength:(unint64_t)length queryTermCount:(char)count getFallback:
{
  v8 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  if (count)
  {
    v9 = sFallbackTopHitsThreshold;
  }

  else
  {
    v9 = qword_1EDBEA770;
    if (!qword_1EDBEA770)
    {
      os_unfair_lock_unlock(&_MergedGlobals);
      v10 = 0;
LABEL_4:
      v11 = 0;
      goto LABEL_5;
    }
  }

  v10 = getTrialDictionaryForLengthAndTermCount(v9, id, length);
  os_unfair_lock_unlock(&_MergedGlobals);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [v10 objectForKey:v8];
LABEL_5:

  return v11;
}

+ (id)getTopHitsContinuationThresholds
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals);
  v1 = sTopHitsContinuationThreshold;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v1;
}

+ (void)reloadSuggestionsRankingThresholds
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = SSDefaultsGetResources(self);
  v3 = [v2 filePathForKey:@"SuggestionsRankingThresholds"];

  if ([v3 length])
  {
    v4 = SSValuesFromPlistWithPath(v3);
    v5 = [v4 objectForKey:@"rankingparameters"];
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = MEMORY[0x1E696AD98];
          [*(*(&v16 + 1) + 8 * v11) doubleValue];
          v13 = [v12 numberWithDouble:?];
          [array addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if (objc_msgSend_count(array))
    {
      v14 = array;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_lock(&_MergedGlobals);
  v15 = sSuggestionsRankingThresholds;
  sSuggestionsRankingThresholds = v14;

  os_unfair_lock_unlock(&_MergedGlobals);
}

+ (id)keyForIntervalType:(int64_t)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_1E8595B78[type];
  }
}

+ (uint64_t)getRecencyIntervalForBundleId:(uint64_t)id intervalType:(unint64_t)type indexRequired:
{
  v6 = a2;
  objc_opt_self();
  v7 = [objc_opt_class() keyForIntervalType:id];
  if (v7)
  {
    pthread_rwlock_rdlock(&sIntervalsLock);
    v8 = [sRecencyThresholds objectForKey:v7];
    pthread_rwlock_unlock(&sIntervalsLock);
    if (v8)
    {
      v9 = [v8 objectForKey:v6];
      if (v9)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (type == -1 || (isKindOfClass & 1) == 0 || objc_msgSend_count(v9) <= type)
        {
          v11 = v9;
        }

        else
        {
          v11 = [v9 objectAtIndex:type];
        }
      }

      else
      {
        v11 = [v8 objectForKey:@"default"];
      }

      v13 = v11;
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (uint64_t)getRecencyIntervalForBundleType:(uint64_t)type intervalType:(unint64_t)intervalType indexRequired:
{
  v6 = a2;
  objc_opt_self();
  v7 = [objc_opt_class() keyForIntervalType:type];
  if (v7)
  {
    pthread_rwlock_rdlock(&sIntervalsLock);
    v8 = [sRecencyThresholds objectForKey:v7];
    pthread_rwlock_unlock(&sIntervalsLock);
    if (v8)
    {
      stringValue = [v6 stringValue];
      v10 = [v8 objectForKey:stringValue];

      if (v10)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (intervalType == -1 || (isKindOfClass & 1) == 0 || objc_msgSend_count(v10) <= intervalType)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v10 objectAtIndex:intervalType];
        }
      }

      else
      {
        v12 = [v8 objectForKey:@"default"];
      }

      v14 = v12;
      integerValue = [v12 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (void)reloadRecencyThresholds
{
  v2 = SSDefaultsGetResources(self);
  v6 = [v2 filePathForKey:@"RecencyIntervals"];

  if ([v6 length])
  {
    v3 = SSValuesFromPlistWithPath(v6);
    pthread_rwlock_wrlock(&sIntervalsLock);
    v4 = [v3 objectForKey:@"iOS"];
    v5 = sRecencyThresholds;
    sRecencyThresholds = v4;

    if (!sRecencyThresholds)
    {
      objc_storeStrong(&sRecencyThresholds, v3);
    }

    pthread_rwlock_unlock(&sIntervalsLock);
  }

  MEMORY[0x1EEE66BB8]();
}

+ (uint64_t)isKeywordsHidingEnabledForLanguage:(uint64_t)language
{
  v2 = a2;
  objc_opt_self();
  pthread_rwlock_rdlock(&sLocaleSpecificMatchingLock);
  v3 = [sLocaleSpecificMatchingKeywordsHiding objectForKey:v2];

  if (v3)
  {
    pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
LABEL_4:
    v4 = v3;
    bOOLValue = [v4 BOOLValue];

    return bOOLValue;
  }

  v3 = [sLocaleSpecificMatchingKeywordsHiding objectForKey:@"default"];
  pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
  if (v3)
  {
    goto LABEL_4;
  }

  return 1;
}

+ (uint64_t)getMinMisspellingLengthForLanguage:(uint64_t)language
{
  v2 = a2;
  objc_opt_self();
  pthread_rwlock_rdlock(&sLocaleSpecificMatchingLock);
  v3 = [sLocaleSpecificMatchingMinMisspellingLength objectForKey:v2];

  if (v3)
  {
    pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
LABEL_4:
    v4 = v3;
    integerValue = [v4 integerValue];

    return integerValue;
  }

  v3 = [sLocaleSpecificMatchingMinMisspellingLength objectForKey:@"default"];
  pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
  if (v3)
  {
    goto LABEL_4;
  }

  return 4;
}

+ (void)reloadLocaleSpecificMatchingParameters
{
  v2 = SSDefaultsGetResources(self);
  v10 = [v2 filePathForKey:@"LocaleSpecificMatching"];

  if ([v10 length])
  {
    v3 = SSValuesFromPlistWithPath(v10);
    pthread_rwlock_wrlock(&sLocaleSpecificMatchingLock);
    v4 = [v3 objectForKey:@"keywords_hiding"];
    v5 = [v4 objectForKey:@"iOS"];
    v6 = sLocaleSpecificMatchingKeywordsHiding;
    sLocaleSpecificMatchingKeywordsHiding = v5;

    if (!sLocaleSpecificMatchingKeywordsHiding)
    {
      objc_storeStrong(&sLocaleSpecificMatchingKeywordsHiding, v4);
    }

    v7 = [v3 objectForKey:@"min_misspelling_length"];
    v8 = [v7 objectForKey:@"iOS"];
    v9 = sLocaleSpecificMatchingMinMisspellingLength;
    sLocaleSpecificMatchingMinMisspellingLength = v8;

    if (!sLocaleSpecificMatchingMinMisspellingLength)
    {
      objc_storeStrong(&sLocaleSpecificMatchingMinMisspellingLength, v7);
    }

    pthread_rwlock_unlock(&sLocaleSpecificMatchingLock);
  }

  MEMORY[0x1EEE66BB8]();
}

+ (id)getSuggestionsRankingThresholds
{
  os_unfair_lock_lock(&_MergedGlobals);
  v2 = sSuggestionsRankingThresholds;
  os_unfair_lock_unlock(&_MergedGlobals);

  return v2;
}

+ (void)reloadRankingParametersFromTrial
{
  [objc_opt_class() reloadTopHitsParametersFromTrial];
  [objc_opt_class() reloadCommittedSearchParametersFromTrial];
  [objc_opt_class() reloadSuggestionsRankingThresholds];
  [objc_opt_class() reloadRecencyThresholds];
  v2 = objc_opt_class();

  [v2 reloadLocaleSpecificMatchingParameters];
}

- (id)CEPValuesForTTR
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  rankingConfiguration = [(SSRankingManager *)self rankingConfiguration];
  [rankingConfiguration lock];

  rankingConfiguration2 = [(SSRankingManager *)self rankingConfiguration];
  queryDependentCategoryProbabilities = [rankingConfiguration2 queryDependentCategoryProbabilities];

  if (objc_msgSend_count(queryDependentCategoryProbabilities))
  {
    selfCopy = self;
    [(__CFString *)v3 appendFormat:@"Got %lu CEP values from response: \n", objc_msgSend_count(queryDependentCategoryProbabilities)];
    v7 = [queryDependentCategoryProbabilities keysSortedByValueUsingSelector:sel_compare_];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          lowercaseString = [v12 lowercaseString];
          v14 = [queryDependentCategoryProbabilities objectForKey:lowercaseString];

          if (v14)
          {
            [(__CFString *)v3 appendFormat:@"%@\t:%@\n", v12, v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    [(__CFString *)v3 appendFormat:@"\n"];

    self = selfCopy;
  }

  rankingConfiguration3 = [(SSRankingManager *)self rankingConfiguration];
  [rankingConfiguration3 unlock];

  if ([(__CFString *)v3 length])
  {
    v16 = v3;
  }

  else
  {
    v16 = &stru_1F556FE60;
  }

  v17 = v16;

  return v16;
}

- (void)addCEPValuesForTTR
{
  if (self->_logValues)
  {
    rankingConfiguration = [(SSRankingManager *)self rankingConfiguration];
    queryDependentCategoryProbabilities = [rankingConfiguration queryDependentCategoryProbabilities];
    v5 = objc_msgSend_count(queryDependentCategoryProbabilities);

    if (v5)
    {
      logValues = self->_logValues;
      cEPValuesForTTR = [(SSRankingManager *)self CEPValuesForTTR];
      [(NSMutableString *)logValues appendString:cEPValuesForTTR];
    }
  }
}

- (void)finalizeLog
{
  if (isInternalDevice == 1)
  {
    v4 = SSDefaultsGetResources([(SSRankingManager *)self addCEPValuesForTTR]);
    getTTRLogs = [v4 getTTRLogs];

    v5 = getTTRLogs;
    if (getTTRLogs)
    {
      [(NSMutableString *)self->_logValues appendString:getTTRLogs];
      v5 = getTTRLogs;
    }
  }
}

- (void)sendTTRLogsWithSections:(id)sections queryContext:(id)context isCommittedSearch:(BOOL)search parsecCameLaterThanSRT:(BOOL)t
{
  tCopy = t;
  searchCopy = search;
  v166 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  contextCopy = context;
  queryKind = [contextCopy queryKind];
  logValues = self->_logValues;
  query = [(SSRankingManager *)self query];
  [(NSMutableString *)logValues appendFormat:@"Query: %@\n", query];

  v137 = searchCopy;
  [(NSMutableString *)self->_logValues appendFormat:@"Committed search: %d\n", searchCopy];
  selfCopy = self;
  v141 = queryKind;
  [(NSMutableString *)self->_logValues appendFormat:@"Query kind: %lu\n", queryKind];
  v138 = tCopy;
  if (tCopy)
  {
    [(NSMutableString *)self->_logValues appendString:@"\nParsec came later than timeout\n"];
  }

  isSearchToolClient = [contextCopy isSearchToolClient];
  v14 = objc_opt_new();
  string = [MEMORY[0x1E696AD60] string];
  string2 = [MEMORY[0x1E696AD60] string];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = sectionsCopy;
  v135 = string2;
  v133 = [obj countByEnumeratingWithState:&v156 objects:v165 count:16];
  v139 = v14;
  if (v133)
  {
    LODWORD(v143) = 0;
    v151 = 1;
    v132 = *v157;
    do
    {
      v16 = 0;
      do
      {
        if (*v157 != v132)
        {
          objc_enumerationMutation(obj);
        }

        v134 = v16;
        v17 = *(*(&v156 + 1) + 8 * v16);
        v18 = selfCopy->_logValues;
        bundleIdentifier = [v17 bundleIdentifier];
        v143 = (v143 + 1);
        [(NSMutableString *)v18 appendFormat:@"Section %d bundleID:%@\n", v143, bundleIdentifier];

        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v149 = v17;
        resultSet = [v17 resultSet];
        v20 = [resultSet countByEnumeratingWithState:&v152 objects:v164 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v153;
          v142 = *v153;
          do
          {
            v23 = 0;
            v144 = v21;
            do
            {
              if (*v153 != v22)
              {
                objc_enumerationMutation(resultSet);
              }

              v24 = *(*(&v152 + 1) + 8 * v23);
              if (([v14 containsObject:v24] & 1) == 0)
              {
                [v14 addObject:v24];
                rankingItem = [v24 rankingItem];
                hasShortCut = [rankingItem hasShortCut];
                l2FeatureVector = [rankingItem L2FeatureVector];
                v27 = objc_opt_new();
                identifier = [v24 identifier];
                bundleIdentifier2 = [v149 bundleIdentifier];
                v30 = SSRedactSuggestionIdentifier(identifier, bundleIdentifier2);
                [v27 setObject:v30 forKeyedSubscript:@"identifier"];

                v151 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v151];
                [v27 setObject:v151 forKeyedSubscript:@"ResultPosition"];

                title = [v24 title];
                text = [title text];

                v34 = MEMORY[0x1E696AEC0];
                v148 = text;
                v35 = SSRedactStringClient(text, 1, isSearchToolClient);
                v36 = [v34 stringWithFormat:@"%@", v35];
                [v27 setObject:v36 forKeyedSubscript:@"ResultTitle"];

                v37 = MEMORY[0x1E696AEC0];
                applicationBundleIdentifier = [v24 applicationBundleIdentifier];
                v39 = applicationBundleIdentifier;
                if (!applicationBundleIdentifier)
                {
                  resultBundleId = [v24 resultBundleId];
                  v39 = resultBundleId;
                }

                v40 = [v37 stringWithFormat:@"%@", v39];
                [v27 setObject:v40 forKeyedSubscript:@"ResultBundle"];

                if (!applicationBundleIdentifier)
                {
                }

                v41 = MEMORY[0x1E696AEC0];
                [l2FeatureVector originalL2Score];
                v43 = [v41 stringWithFormat:@"%.3f", v42];
                [v27 setObject:v43 forKeyedSubscript:@"originalL2"];

                v44 = MEMORY[0x1E696AEC0];
                [l2FeatureVector experimentalScore];
                v46 = [v44 stringWithFormat:@"%.3f", v45];
                [v27 setObject:v46 forKeyedSubscript:@"experimentalScore"];

                v47 = MEMORY[0x1E696AEC0];
                [rankingItem rawScore];
                v49 = [v47 stringWithFormat:@"%.3f", v48];
                [v27 setObject:v49 forKeyedSubscript:@"rawScore"];

                v50 = MEMORY[0x1E696AEC0];
                [rankingItem score];
                v52 = [v50 stringWithFormat:@"%.3f", v51];
                [v27 setObject:v52 forKeyedSubscript:@"score"];

                v53 = MEMORY[0x1E696AEC0];
                [v24 l2score];
                v55 = [v53 stringWithFormat:@"%.3f", v54];
                [v27 setObject:v55 forKeyedSubscript:@"L2score"];

                v56 = MEMORY[0x1E696AEC0];
                [l2FeatureVector scoreForFeature:386];
                v58 = [v56 stringWithFormat:@"%.3f", v57];
                [v27 setObject:v58 forKeyedSubscript:@"parsecEnumScore"];

                v59 = MEMORY[0x1E696AEC0];
                [l2FeatureVector withinBundleScore];
                v61 = [v59 stringWithFormat:@"%.3f", v60];
                [v27 setObject:v61 forKeyedSubscript:@"L2VectorWithinBundleScore"];

                v62 = MEMORY[0x1E696AEC0];
                [rankingItem withinBundleScore];
                v64 = [v62 stringWithFormat:@"%.3f", v63];
                [v27 setObject:v64 forKeyedSubscript:@"withinBundleScore"];

                v65 = MEMORY[0x1E696AEC0];
                [l2FeatureVector scoreForFeature:366];
                v67 = [v65 stringWithFormat:@"%.6f", v66];
                [v27 setObject:v67 forKeyedSubscript:@"cep"];

                v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v24, "topHit")];
                [v27 setObject:v68 forKeyedSubscript:@"topHit"];

                v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v24, "blockId")];
                [v27 setObject:v69 forKeyedSubscript:@"blockId"];

                v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v24, "isSafariTopHit")];
                [v27 setObject:v70 forKeyedSubscript:@"safariTophit"];

                v147 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", hasShortCut];
                [v27 setObject:v147 forKeyedSubscript:@"hasShortcut"];

                v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v24, "isFuzzyMatch")];
                [v27 setObject:v72 forKeyedSubscript:@"isFuzzyMatch"];

                v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v24, "shouldUseCompactDisplay")];
                [v27 setObject:v73 forKeyedSubscript:@"shouldUseCompactDisplay"];

                v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v24, "usesCompactDisplay")];
                [v27 setObject:v74 forKeyedSubscript:@"usesCompactDisplay"];

                v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(rankingItem, "shouldHideUnderShowMore")];
                [v27 setObject:v75 forKeyedSubscript:@"shouldHideUnderShowMore"];

                v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(rankingItem, "photosMatch")];
                [v27 setObject:v76 forKeyedSubscript:@"photosMatch"];

                v77 = MEMORY[0x1E696AEC0];
                [rankingItem keywordMatchScore];
                v79 = [v77 stringWithFormat:@"%.3f", v78];
                [v27 setObject:v79 forKeyedSubscript:@"topicality"];

                v80 = MEMORY[0x1E696AEC0];
                [rankingItem engagementScore];
                v82 = [v80 stringWithFormat:@"%.3f", v81];
                [v27 setObject:v82 forKeyedSubscript:@"engagement"];

                v83 = MEMORY[0x1E696AEC0];
                [rankingItem freshnessScore];
                v85 = [v83 stringWithFormat:@"%.3f", v84];
                [v27 setObject:v85 forKeyedSubscript:@"freshness"];

                v86 = MEMORY[0x1E696AEC0];
                [rankingItem likelihood];
                v88 = [v86 stringWithFormat:@"%.3f", v87];
                [v27 setObject:v88 forKeyedSubscript:@"likelihood"];

                v89 = MEMORY[0x1E696AEC0];
                [rankingItem l2Score];
                v91 = [v89 stringWithFormat:@"%.3f", v90];
                [v27 setObject:v91 forKeyedSubscript:@"PommesL2score"];

                v92 = MEMORY[0x1E696AEC0];
                [rankingItem pommesL1Score];
                v94 = [v92 stringWithFormat:@"%.3f", v93];
                [v27 setObject:v94 forKeyedSubscript:@"PommesL1score"];

                v95 = MEMORY[0x1E696AEC0];
                [rankingItem embeddingSimilarity];
                v97 = [v95 stringWithFormat:@"%.3f", v96];
                [v27 setObject:v97 forKeyedSubscript:@"embeddingSimilarity"];

                if (SSResultTypeIsLocalSuggestion([v24 type]))
                {
                  v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v24, "type")];
                  [v27 setObject:v98 forKeyedSubscript:@"type"];

                  v99 = MEMORY[0x1E696AEC0];
                  [v24 rankingScore];
                  v100 = [v99 stringWithFormat:@"%f", v100];
                  [v27 setObject:v100 forKeyedSubscript:@"compositeScore"];
                }

                v102 = [SSRankingUtilities jsonStringFromDictionary:v27 isSearchToolClient:isSearchToolClient];
                [string appendString:v102];

                [string appendString:@"\n\n"];
                [(NSMutableString *)selfCopy->_logValues appendString:string];
                [string setString:&stru_1F556FE60];
                v138 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v138];
                [v27 setObject:v138 forKeyedSubscript:@"parsecCameLaterThanSRT"];

                v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v137];
                [v27 setObject:v137 forKeyedSubscript:@"isCommittedSearch"];

                v141 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v141];
                [v27 setObject:v141 forKeyedSubscript:@"queryKind"];

                v106 = MEMORY[0x1E696AEC0];
                bundleIdentifier3 = [v149 bundleIdentifier];
                v107 = [v106 stringWithFormat:@"%d %@", v143, bundleIdentifier3];
                [v27 setObject:v107 forKeyedSubscript:@"Section"];

                v109 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v24, "coreSpotlightIndexUsed")];
                [v27 setObject:v109 forKeyedSubscript:@"coreSpotlightIndexUsed"];

                v110 = SSGeneralLog();
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
                {
                  query2 = [(SSRankingManager *)selfCopy query];
                  v112 = SSRedactStringClient(query2, 0, isSearchToolClient);
                  v113 = [SSRankingUtilities jsonStringFromDictionary:v27 isSearchToolClient:isSearchToolClient];
                  *buf = 138412546;
                  v161 = v112;
                  v162 = 2112;
                  v163 = v113;
                  _os_log_impl(&dword_1D9F69000, v110, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] FinalResults: query=%@ %@", buf, 0x16u);
                }

                if (isSpotlightForSearchToolRegressionTest == 1)
                {
                  v114 = [v27 objectForKeyedSubscript:@"identifier"];
                  [v135 appendFormat:@"%@, ", v114];
                }

                v151 = (v151 + 1);

                v14 = v139;
                v22 = v142;
                v21 = v144;
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = [resultSet countByEnumeratingWithState:&v152 objects:v164 count:16];
          }

          while (v21);
        }

        v16 = v134 + 1;
        string2 = v135;
      }

      while (v134 + 1 != v133);
      v133 = [obj countByEnumeratingWithState:&v156 objects:v165 count:16];
    }

    while (v133);
  }

  if (isSpotlightForSearchToolRegressionTest == 1)
  {
    v115 = SSGeneralLog();
    if ([string2 length])
    {
      v116 = 0;
      v117 = 0;
      do
      {
        v118 = os_signpost_id_generate(v115);
        v119 = [string2 length];
        if ((v119 + v116) >= 0x3E8)
        {
          v120 = 1000;
        }

        else
        {
          v120 = v119 + v116;
        }

        v121 = [string2 substringWithRange:{v117, v120}];
        v122 = v115;
        v123 = v122;
        if (v118 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v122))
        {
          uTF8String = [v121 UTF8String];
          *buf = 136315138;
          v161 = uTF8String;
          _os_signpost_emit_with_name_impl(&dword_1D9F69000, v123, OS_SIGNPOST_EVENT, v118, "FinalResult", "%s", buf, 0xCu);
        }

        v117 += 1000;
        string2 = v135;
        v116 -= 1000;
      }

      while (v117 < [v135 length]);
    }

    v14 = v139;
  }

  if (selfCopy->_logValues)
  {
    if (objc_msgSend_count(obj))
    {
      v125 = sLastQueryString;
      if (!sLastQueryString || ([contextCopy searchString], v126 = objc_claimAutoreleasedReturnValue(), v127 = objc_msgSend(v125, "isEqualToString:", v126), v126, (v127 & 1) == 0))
      {
        searchString = [contextCopy searchString];
        v129 = sLastQueryString;
        sLastQueryString = searchString;
      }
    }
  }

  if (v141 && objc_msgSend_count(obj))
  {
    [(SSRankingManager *)selfCopy finalizeLog];
  }
}

+ (void)fillRankingPosition:(id)position
{
  positionCopy = position;
  if (objc_msgSend_count(positionCopy))
  {
    v3 = 0;
    LODWORD(v4) = 0;
    do
    {
      v5 = [positionCopy objectAtIndexedSubscript:v3];
      resultSet = [v5 resultSet];
      v7 = objc_msgSend_count(resultSet);

      v4 = (v4 + 1);
      if (v7)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          resultSet2 = [v5 resultSet];
          v11 = [resultSet2 objectAtIndexedSubscript:v8];

          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
          [v11 setIndexOfSectionWhenRanked:v12];

          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
          [v11 setIndexOfResultInSectionWhenRanked:v13];

          v8 = v9;
          resultSet3 = [v5 resultSet];
          v15 = objc_msgSend_count(resultSet3);

          v16 = v15 > v9;
          v9 = (v9 + 1);
        }

        while (v16);
      }

      v17 = objc_msgSend_count(positionCopy);
      v3 = v4;
    }

    while (v17 > v4);
  }
}

+ (id)processSearchToolFinalResults:(id)results queryContext:(id)context
{
  v70 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  contextCopy = context;
  v7 = SSSearchToolRankingLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SearchToolRanking", "Begin", buf, 2u);
  }

  v49 = v10;
  v50 = v8 - 1;
  if (processSearchToolFinalResults_queryContext__onceToken != -1)
  {
    +[SSRankingManager processSearchToolFinalResults:queryContext:];
  }

  v11 = SSGeneralLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    isAppEntitySearch = [contextCopy isAppEntitySearch];
    *buf = 67109120;
    LODWORD(v66) = isAppEntitySearch;
    _os_log_impl(&dword_1D9F69000, v11, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] isAppEntitySearch=%d", buf, 8u);
  }

  spid = v8;

  v51 = contextCopy;
  isSearchToolClient = [contextCopy isSearchToolClient];
  v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(resultsCopy)];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v14 = resultsCopy;
  v15 = [v14 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v15)
  {
    v16 = v15;
    v46 = isSearchToolClient;
    obj = v14;
    v17 = 0;
    v18 = *v62;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        [v20 setIsInitiallyHidden:0];
        resultSet = [v20 resultSet];
        [v20 setMaxInitiallyVisibleResults:objc_msgSend_count(resultSet)];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        resultSet2 = [v20 resultSet];
        v23 = [resultSet2 countByEnumeratingWithState:&v57 objects:v68 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v58;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v58 != v25)
              {
                objc_enumerationMutation(resultSet2);
              }

              rankingItem = [*(*(&v57 + 1) + 8 * j) rankingItem];
              [rankingItem setShouldHideUnderShowMore:0];
            }

            v24 = [resultSet2 countByEnumeratingWithState:&v57 objects:v68 count:16];
          }

          while (v24);
        }

        if (v17)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          resultSet3 = [v20 resultSet];
          v29 = [resultSet3 countByEnumeratingWithState:&v53 objects:v67 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v54;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v54 != v31)
                {
                  objc_enumerationMutation(resultSet3);
                }

                v33 = *(*(&v53 + 1) + 8 * k);
                resultSet4 = [v17 resultSet];
                [resultSet4 addObject:v33];

                [v17 setMaxInitiallyVisibleResults:{objc_msgSend(v17, "maxInitiallyVisibleResults") + 1}];
              }

              v30 = [resultSet3 countByEnumeratingWithState:&v53 objects:v67 count:16];
            }

            while (v30);
          }
        }

        else
        {
          v17 = v20;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v16);
    v35 = obj;

    isSearchToolClient = v46;
    if (v17)
    {
      v36 = v51;
      [SSRankingManager searchToolRanker:v17 queryContext:v51 searchToolBundles:processSearchToolFinalResults_queryContext__SEARCHTOOL_BUNDLES];
      [v17 setBundleIdentifier:@"com.apple.spotlight.tophits"];
      [v17 setTitle:@"Top Hit"];
      [v17 setGroupId:&unk_1F55B39D8];
      resultSet5 = [v17 resultSet];
      [v17 setMaxInitiallyVisibleResults:objc_msgSend_count(resultSet5)];

      v38 = v48;
      [v48 addObject:v17];
      v39 = v50;
      goto LABEL_38;
    }
  }

  else
  {

    v35 = v14;
  }

  v40 = SSGeneralLog();
  v39 = v50;
  v36 = v51;
  v38 = v48;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    searchString = [v51 searchString];
    v42 = SSRedactStringClient(searchString, 1, isSearchToolClient);
    *buf = 138412290;
    v66 = v42;
    _os_log_impl(&dword_1D9F69000, v40, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ No results to rank", buf, 0xCu);
  }

  v17 = 0;
LABEL_38:
  v43 = v49;
  v44 = v43;
  if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9F69000, v44, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SearchToolRanking", "End", buf, 2u);
  }

  return v38;
}

void __63__SSRankingManager_processSearchToolFinalResults_queryContext___block_invoke()
{
  v4[27] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.DocumentsApp";
  v4[1] = @"com.apple.journal";
  v4[2] = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
  v4[3] = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  v4[4] = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  v4[5] = @"com.apple.mobilemail";
  v4[6] = @"com.apple.mobilecal";
  v4[7] = @"com.apple.MobileSMS";
  v4[8] = @"com.apple.reminders";
  v4[9] = @"com.apple.spotlight.events";
  v4[10] = @"com.apple.Passbook";
  v4[11] = @"com.apple.mobilenotes";
  v4[12] = @"com.apple.Music";
  v4[13] = @"com.apple.Keynote";
  v4[14] = @"com.apple.Pages";
  v4[15] = @"com.apple.searchd.syndicatedLinks";
  v4[16] = @"com.apple.searchd.syndicatedPhotos";
  v4[17] = @"com.apple.searchd.syndicatedPhotos.MobileSMS";
  v4[18] = @"com.apple.searchd.syndicatedPhotos.mobilenotes";
  v4[19] = @"com.apple.searchd.syndicatedPhotos.mobileslideshow";
  v4[20] = @"com.apple.mobileslideshow";
  v4[21] = @"com.apple.MobileAddressBook";
  v4[22] = @"com.apple.mobilesafari";
  v4[23] = @"com.apple.VoiceMemos";
  v4[24] = @"com.apple.mobilephone";
  v4[25] = @"com.apple.freeform";
  v4[26] = @"com.apple.iBooks";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:27];
  v2 = [v0 setWithArray:v1];
  v3 = processSearchToolFinalResults_queryContext__SEARCHTOOL_BUNDLES;
  processSearchToolFinalResults_queryContext__SEARCHTOOL_BUNDLES = v2;
}

+ (void)searchToolDeduplicateResults:(id)results
{
  v92 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v81 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v76 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v79 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (objc_msgSend_count(resultsCopy))
  {
    v77 = 0;
    v6 = 0;
    v75 = resultsCopy;
    v82 = v4;
    v80 = v5;
    while (1)
    {
      v7 = [resultsCopy objectAtIndexedSubscript:v6];
      rankingItem = [v7 rankingItem];

      if (rankingItem)
      {
        break;
      }

LABEL_68:

      if (++v6 >= objc_msgSend_count(resultsCopy))
      {
        goto LABEL_69;
      }
    }

    rankingItem2 = [v7 rankingItem];
    v10 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0xE6uLL);

    rankingItem3 = [v7 rankingItem];
    v12 = SSCompactRankingAttrsGetValue([rankingItem3 attributes], 0xE7uLL);

    rankingItem4 = [v7 rankingItem];
    v14 = SSCompactRankingAttrsGetValue([rankingItem4 attributes], 0x117uLL);

    rankingItem5 = [v7 rankingItem];
    v84 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 0x111uLL);

    v85 = v14;
    if (v10)
    {
      if ([v5 containsObject:v10])
      {
        v16 = SSGeneralLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          rankingItem6 = [v7 rankingItem];
          identifier = [rankingItem6 identifier];
          *buf = 138412546;
          v87 = identifier;
          v88 = 2112;
          v89 = v10;
          _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] result %@ with com_apple_mail_messageID=%@", buf, 0x16u);

          v14 = v85;
        }

        v19 = 1;
        if (!v12)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

      [v5 addObject:v10];
    }

    v19 = 0;
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (![v4 containsObject:v12])
    {
      [v4 addObject:v12];
      if (!v14)
      {
LABEL_18:
        rankingItem7 = [v7 rankingItem];
        identifier2 = [rankingItem7 identifier];
        v83 = v10;
        if (identifier2)
        {
          v25 = identifier2;
          rankingItem8 = [v7 rankingItem];
          if (([rankingItem8 bundleIDType] & 8) != 0)
          {
            rankingItem9 = [v7 rankingItem];
            identifier3 = [rankingItem9 identifier];
            v29 = [v81 containsObject:identifier3];

            resultsCopy = v75;
            v14 = v85;
            if (!v29)
            {
              goto LABEL_28;
            }

            rankingItem7 = SSGeneralLog();
            if (os_log_type_enabled(rankingItem7, OS_LOG_TYPE_DEFAULT))
            {
              rankingItem10 = [v7 rankingItem];
              identifier4 = [rankingItem10 identifier];
              *buf = 138412290;
              v87 = identifier4;
              _os_log_impl(&dword_1D9F69000, rankingItem7, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] result %@ with eventMessageIdentifier", buf, 0xCu);
            }

            v19 = 1;
          }

          else
          {

            v14 = v85;
          }
        }

LABEL_28:
        rankingItem11 = [v7 rankingItem];
        bundleIDType = [rankingItem11 bundleIDType];

        if (bundleIDType < 0)
        {
          rankingItem12 = [v7 rankingItem];
          v35 = SSCompactRankingAttrsGetValue([rankingItem12 attributes], 0xDuLL);

          v4 = v82;
          if ([v35 length])
          {
            if ([v76 containsObject:v35])
            {
              v36 = SSGeneralLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                rankingItem13 = [v7 rankingItem];
                identifier5 = [rankingItem13 identifier];
                *buf = 138412290;
                v87 = identifier5;
                _os_log_impl(&dword_1D9F69000, v36, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] result %@ with MDItemContentURL", buf, 0xCu);

                v14 = v85;
              }

              v19 = 1;
            }

            else
            {
              [v76 addObject:v35];
            }
          }
        }

        else
        {
          v4 = v82;
        }

        rankingItem14 = [v7 rankingItem];
        bundleIDType2 = [rankingItem14 bundleIDType];

        if ((bundleIDType2 & 2) != 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v84 length])
            {
              if ((v77 & 1) != 0 && [v84 isEqualToString:@"FolderEntity"])
              {
                v41 = SSGeneralLog();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1D9F69000, v41, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] removing FolderEntity (from notes bundle) as NoteEntity is present at a higher rank.", buf, 2u);
                }

                v19 = 1;
                v42 = 1;
              }

              else
              {
                v42 = [v84 isEqualToString:@"NoteEntity"] | v77;
              }

              v77 = v42;
            }
          }
        }

        rankingItem15 = [v7 rankingItem];
        bundleIDType3 = [rankingItem15 bundleIDType];

        if ((bundleIDType3 & 0x20000000000000) == 0)
        {
          if (!v19)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        rankingItem16 = [v7 rankingItem];
        domainIdentifier = [rankingItem16 domainIdentifier];

        if ([domainIdentifier length])
        {
          rankingItem17 = [v7 rankingItem];
          eventSourceBundleIdentifier = [rankingItem17 eventSourceBundleIdentifier];
          v49 = [eventSourceBundleIdentifier isEqualToString:@"com.apple.mobilemail"];

          if (v49)
          {
            v50 = [dictionary objectForKeyedSubscript:domainIdentifier];

            if (!v50)
            {
              indexSet = [MEMORY[0x1E696AD50] indexSet];
              [dictionary setObject:indexSet forKeyedSubscript:domainIdentifier];
            }

            v52 = [dictionary objectForKeyedSubscript:domainIdentifier];
            [v52 addIndex:v6];

            v53 = [dictionary2 objectForKeyedSubscript:domainIdentifier];

            if (v53)
            {
              v54 = SSGeneralLog();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v73 = [dictionary2 objectForKeyedSubscript:domainIdentifier];
                v55 = objc_msgSend_count(v73);
                rankingItem18 = [v7 rankingItem];
                domainIdentifier2 = [rankingItem18 domainIdentifier];
                rankingItem19 = [v7 rankingItem];
                identifier6 = [rankingItem19 identifier];
                *buf = 134218498;
                v87 = v55;
                v88 = 2112;
                v89 = domainIdentifier2;
                v90 = 2112;
                v91 = identifier6;
                _os_log_impl(&dword_1D9F69000, v54, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] %lu events from SearchIndexer with domainIdentifier %@ in favor of Mail result with identifier %@", buf, 0x20u);

                v4 = v82;
                resultsCopy = v75;
              }

              v59 = [dictionary2 objectForKeyedSubscript:domainIdentifier];
              [v79 addIndexes:v59];
            }
          }

          else
          {
            rankingItem20 = [v7 rankingItem];
            eventSourceBundleIdentifier2 = [rankingItem20 eventSourceBundleIdentifier];
            v62 = [eventSourceBundleIdentifier2 isEqualToString:@"com.apple.email.SearchIndexer"];

            if (v62)
            {
              v63 = [dictionary2 objectForKeyedSubscript:domainIdentifier];

              if (!v63)
              {
                indexSet2 = [MEMORY[0x1E696AD50] indexSet];
                [dictionary2 setObject:indexSet2 forKeyedSubscript:domainIdentifier];
              }

              v65 = [dictionary2 objectForKeyedSubscript:domainIdentifier];
              [v65 addIndex:v6];

              v66 = [dictionary objectForKeyedSubscript:domainIdentifier];

              if (v66)
              {
                v67 = SSGeneralLog();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  rankingItem21 = [v7 rankingItem];
                  identifier7 = [rankingItem21 identifier];
                  rankingItem22 = [v7 rankingItem];
                  domainIdentifier3 = [rankingItem22 domainIdentifier];
                  *buf = 138412546;
                  v87 = identifier7;
                  v88 = 2112;
                  v89 = domainIdentifier3;
                  _os_log_impl(&dword_1D9F69000, v67, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] event from SearchIndexer with identifier %@ in favor of Mail result with domainIdentifier %@", buf, 0x16u);

                  resultsCopy = v75;
                  v4 = v82;
                }

                v14 = v85;
                goto LABEL_66;
              }
            }
          }
        }

        v14 = v85;
        if ((v19 & 1) == 0)
        {
LABEL_67:

          v5 = v80;
          goto LABEL_68;
        }

LABEL_66:
        [v79 addIndex:v6];
        goto LABEL_67;
      }

LABEL_17:
      [v81 addObject:v14];
      goto LABEL_18;
    }

    v20 = SSGeneralLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      rankingItem23 = [v7 rankingItem];
      identifier8 = [rankingItem23 identifier];
      *buf = 138412546;
      v87 = identifier8;
      v88 = 2112;
      v89 = v12;
      _os_log_impl(&dword_1D9F69000, v20, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Dedupe] result %@ with com_apple_mail_message_id_header=%@", buf, 0x16u);

      v14 = v85;
    }

    v19 = 1;
LABEL_16:
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_69:
  if (objc_msgSend_count(v79))
  {
    [resultsCopy removeObjectsAtIndexes:v79];
  }
}

+ (id)getArrivalLocationStringFromResult:(id)result
{
  resultCopy = result;
  rankingItem = [resultCopy rankingItem];
  v5 = SSCompactRankingAttrsGetValue([rankingItem attributes], 0xF1uLL);

  rankingItem2 = [resultCopy rankingItem];
  v7 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0xF2uLL);

  rankingItem3 = [resultCopy rankingItem];
  v9 = SSCompactRankingAttrsGetValue([rankingItem3 attributes], 0xFAuLL);

  rankingItem4 = [resultCopy rankingItem];
  v11 = SSCompactRankingAttrsGetValue([rankingItem4 attributes], 0xFBuLL);

  rankingItem5 = [resultCopy rankingItem];
  v13 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 0xFCuLL);

  rankingItem6 = [resultCopy rankingItem];
  v15 = SSCompactRankingAttrsGetValue([rankingItem6 attributes], 0xFDuLL);

  rankingItem7 = [resultCopy rankingItem];
  v17 = SSCompactRankingAttrsGetValue([rankingItem7 attributes], 0x10DuLL);

  rankingItem8 = [resultCopy rankingItem];

  v19 = SSCompactRankingAttrsGetValue([rankingItem8 attributes], 0x10EuLL);

  v20 = &stru_1F556FE60;
  if (v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = &stru_1F556FE60;
  }

  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = &stru_1F556FE60;
  }

  if (v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = &stru_1F556FE60;
  }

  if (v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = &stru_1F556FE60;
  }

  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v25 = &stru_1F556FE60;
  }

  if (v15)
  {
    v26 = v15;
  }

  else
  {
    v26 = &stru_1F556FE60;
  }

  if (v17)
  {
    v27 = v17;
  }

  else
  {
    v27 = &stru_1F556FE60;
  }

  if (v19)
  {
    v20 = v19;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ %@ %@ %@ %@ %@", v21, v22, v23, v24, v25, v26, v27, v20];

  return v28;
}

+ (id)getDepartureLocationStringFromResult:(id)result
{
  resultCopy = result;
  rankingItem = [resultCopy rankingItem];
  v5 = SSCompactRankingAttrsGetValue([rankingItem attributes], 0xF3uLL);

  rankingItem2 = [resultCopy rankingItem];
  v7 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0xF4uLL);

  rankingItem3 = [resultCopy rankingItem];
  v9 = SSCompactRankingAttrsGetValue([rankingItem3 attributes], 0xFEuLL);

  rankingItem4 = [resultCopy rankingItem];
  v11 = SSCompactRankingAttrsGetValue([rankingItem4 attributes], 0xFFuLL);

  rankingItem5 = [resultCopy rankingItem];
  v13 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 0x100uLL);

  rankingItem6 = [resultCopy rankingItem];
  v15 = SSCompactRankingAttrsGetValue([rankingItem6 attributes], 0x101uLL);

  rankingItem7 = [resultCopy rankingItem];
  v17 = SSCompactRankingAttrsGetValue([rankingItem7 attributes], 0x10BuLL);

  rankingItem8 = [resultCopy rankingItem];

  v19 = SSCompactRankingAttrsGetValue([rankingItem8 attributes], 0x10CuLL);

  v20 = &stru_1F556FE60;
  if (v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = &stru_1F556FE60;
  }

  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = &stru_1F556FE60;
  }

  if (v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = &stru_1F556FE60;
  }

  if (v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = &stru_1F556FE60;
  }

  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v25 = &stru_1F556FE60;
  }

  if (v15)
  {
    v26 = v15;
  }

  else
  {
    v26 = &stru_1F556FE60;
  }

  if (v17)
  {
    v27 = v17;
  }

  else
  {
    v27 = &stru_1F556FE60;
  }

  if (v19)
  {
    v20 = v19;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ %@ %@ %@ %@ %@", v21, v22, v23, v24, v25, v26, v27, v20];

  return v28;
}

+ (id)getLocationStringFromResult:(id)result
{
  resultCopy = result;
  rankingItem = [resultCopy rankingItem];
  v6 = SSCompactRankingAttrsGetValue([rankingItem attributes], 0xD2uLL);

  rankingItem2 = [resultCopy rankingItem];
  v8 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0xCuLL);

  v9 = [self getArrivalLocationStringFromResult:resultCopy];
  v10 = [self getDepartureLocationStringFromResult:resultCopy];

  v11 = &stru_1F556FE60;
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = &stru_1F556FE60;
  }

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = &stru_1F556FE60;
  }

  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = &stru_1F556FE60;
  }

  if (v10)
  {
    v11 = v10;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ %@", v12, v13, v14, v11];

  return v15;
}

+ (BOOL)searchToolShouldFilterEventBeforeRanking:(id)ranking queryContext:(id)context matchQUIntent:(BOOL)intent searchToolBundles:(id)bundles useLLMQU:(BOOL)u hasEventTypeFromQU:(BOOL)qU
{
  v278 = *MEMORY[0x1E69E9840];
  rankingCopy = ranking;
  contextCopy = context;
  isSearchToolClient = [contextCopy isSearchToolClient];
  rankingItem = [rankingCopy rankingItem];
  v14 = SSCompactRankingAttrsGetValue([rankingItem attributes], 0xE8uLL);

  getEventIntentFallbackTokens = [self getEventIntentFallbackTokens];
  v260[0] = MEMORY[0x1E69E9820];
  v260[1] = 3221225472;
  v260[2] = __134__SSRankingManager_searchToolShouldFilterEventBeforeRanking_queryContext_matchQUIntent_searchToolBundles_useLLMQU_hasEventTypeFromQU___block_invoke;
  v260[3] = &unk_1E8595AE0;
  v16 = contextCopy;
  v261 = v16;
  v17 = [getEventIntentFallbackTokens indexOfObjectPassingTest:v260];
  v251 = v16;
  if (!qU && v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = SSGeneralLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      searchString = [v16 searchString];
      v19 = 1;
      v20 = SSRedactStringClient(searchString, 1, isSearchToolClient);
      title = [rankingCopy title];
      text = [title text];
      v21 = SSRedactStringClient(text, 1, isSearchToolClient);
      rankingItem2 = [rankingCopy rankingItem];
      identifier = [rankingItem2 identifier];
      SSRedactStringClient(identifier, 1, isSearchToolClient);
      v23 = v22 = getEventIntentFallbackTokens;
      rankingItem3 = [rankingCopy rankingItem];
      SSCompactRankingAttrsGetValue([rankingItem3 attributes], 1uLL);
      v25 = v223 = rankingCopy;
      v26 = SSRedactStringClient(v25, 1, isSearchToolClient);
      *buf = 138413314;
      v265 = v20;
      v266 = 2112;
      v267 = v14;
      v268 = 2112;
      v269 = v21;
      v270 = 2112;
      v271 = v23;
      v272 = 2112;
      v273 = v26;
      _os_log_impl(&dword_1D9F69000, v18, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ due to no eventTypeFromQU or fallbackIntent", buf, 0x34u);

      getEventIntentFallbackTokens = v22;
      rankingCopy = v223;

LABEL_140:
      goto LABEL_141;
    }

    goto LABEL_139;
  }

  if (([v16 llmQUIntentType] & 0x20000) == 0)
  {
    rankingItem4 = [rankingCopy rankingItem];
    detectedEventType = [rankingItem4 detectedEventType];
    v29 = [v251 llmQUIntentType] & detectedEventType;

    if (!v29)
    {
      v18 = SSGeneralLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        searchString2 = [v251 searchString];
        v231 = SSRedactStringClient(searchString2, 1, isSearchToolClient);
        title2 = [rankingCopy title];
        text2 = [title2 text];
        v226 = SSRedactStringClient(text2, 1, isSearchToolClient);
        rankingItem5 = [rankingCopy rankingItem];
        identifier2 = [rankingItem5 identifier];
        v190 = SSRedactStringClient(identifier2, 1, isSearchToolClient);
        rankingItem6 = [rankingCopy rankingItem];
        v192 = SSCompactRankingAttrsGetValue([rankingItem6 attributes], 1uLL);
        SSRedactStringClient(v192, 1, isSearchToolClient);
        v193 = v221 = getEventIntentFallbackTokens;
        *buf = 138413314;
        v265 = v231;
        v266 = 2112;
        v267 = v14;
        v268 = 2112;
        v269 = v226;
        v270 = 2112;
        v271 = v190;
        v272 = 2112;
        v273 = v193;
        _os_log_impl(&dword_1D9F69000, v18, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ due to no match with QU predicted Intent", buf, 0x34u);

        getEventIntentFallbackTokens = v221;
        v19 = 1;
        goto LABEL_140;
      }

LABEL_139:
      v19 = 1;
      goto LABEL_140;
    }
  }

  arrivalLocationFromQU = [v251 arrivalLocationFromQU];
  if (arrivalLocationFromQU)
  {
    v31 = arrivalLocationFromQU;
    arrivalLocationFromQU2 = [v251 arrivalLocationFromQU];
    v33 = [arrivalLocationFromQU2 length];

    if (v33)
    {
      v18 = [self getArrivalLocationStringFromResult:rankingCopy];
      arrivalLocationFromQU3 = [v251 arrivalLocationFromQU];
      v35 = [v18 localizedCaseInsensitiveContainsString:arrivalLocationFromQU3];

      if ((v35 & 1) == 0)
      {
        v173 = SSGeneralLog();
        if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_138;
        }

        searchString3 = [v251 searchString];
        v210 = SSRedactStringClient(searchString3, 1, isSearchToolClient);
        title3 = [rankingCopy title];
        text3 = [title3 text];
        v174 = SSRedactStringClient(text3, 1, isSearchToolClient);
        rankingItem7 = [rankingCopy rankingItem];
        identifier3 = [rankingItem7 identifier];
        v175 = SSRedactStringClient(identifier3, 1, isSearchToolClient);
        rankingItem8 = [rankingCopy rankingItem];
        SSCompactRankingAttrsGetValue([rankingItem8 attributes], 1uLL);
        v176 = v225 = rankingCopy;
        SSRedactStringClient(v176, 1, isSearchToolClient);
        v177 = v217 = v14;
        [v251 arrivalLocationFromQU];
        v178 = v220 = getEventIntentFallbackTokens;
        v179 = SSRedactStringClient(v178, 1, isSearchToolClient);
        v180 = SSRedactStringClient(v18, 1, isSearchToolClient);
        *buf = 138413826;
        v265 = v210;
        v266 = 2112;
        v267 = v217;
        v268 = 2112;
        v269 = v174;
        v270 = 2112;
        v271 = v175;
        v272 = 2112;
        v273 = v177;
        v274 = 2112;
        v275 = v179;
        v276 = 2112;
        v277 = v180;
        v181 = "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ as arrivalLocationFromQU=%@ does not match arrivalLocationsText=%@";
        goto LABEL_134;
      }
    }
  }

  departureLocationFromQU = [v251 departureLocationFromQU];
  if (departureLocationFromQU)
  {
    v37 = departureLocationFromQU;
    departureLocationFromQU2 = [v251 departureLocationFromQU];
    v39 = [departureLocationFromQU2 length];

    if (v39)
    {
      v18 = [self getDepartureLocationStringFromResult:rankingCopy];
      departureLocationFromQU3 = [v251 departureLocationFromQU];
      v41 = [v18 localizedCaseInsensitiveContainsString:departureLocationFromQU3];

      if (v41)
      {

        goto LABEL_15;
      }

      v173 = SSGeneralLog();
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_138;
      }

      searchString3 = [v251 searchString];
      v210 = SSRedactStringClient(searchString3, 1, isSearchToolClient);
      title3 = [rankingCopy title];
      text3 = [title3 text];
      v174 = SSRedactStringClient(text3, 1, isSearchToolClient);
      rankingItem7 = [rankingCopy rankingItem];
      identifier3 = [rankingItem7 identifier];
      v175 = SSRedactStringClient(identifier3, 1, isSearchToolClient);
      rankingItem8 = [rankingCopy rankingItem];
      SSCompactRankingAttrsGetValue([rankingItem8 attributes], 1uLL);
      v176 = v225 = rankingCopy;
      SSRedactStringClient(v176, 1, isSearchToolClient);
      v177 = v217 = v14;
      [v251 departureLocationFromQU];
      v178 = v220 = getEventIntentFallbackTokens;
      v179 = SSRedactStringClient(v178, 1, isSearchToolClient);
      v180 = SSRedactStringClient(v18, 1, isSearchToolClient);
      *buf = 138413826;
      v265 = v210;
      v266 = 2112;
      v267 = v217;
      v268 = 2112;
      v269 = v174;
      v270 = 2112;
      v271 = v175;
      v272 = 2112;
      v273 = v177;
      v274 = 2112;
      v275 = v179;
      v276 = 2112;
      v277 = v180;
      v181 = "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ as departureLocationFromQU=%@ does not match departureLocationsText=%@";
LABEL_134:
      _os_log_impl(&dword_1D9F69000, v173, OS_LOG_TYPE_DEFAULT, v181, buf, 0x48u);

      getEventIntentFallbackTokens = v220;
      rankingCopy = v225;

      v14 = v217;
      v194 = v210;
LABEL_137:

      goto LABEL_138;
    }
  }

LABEL_15:
  locationFromQU = [v251 locationFromQU];
  if (locationFromQU)
  {
    v43 = locationFromQU;
    locationFromQU2 = [v251 locationFromQU];
    v45 = [locationFromQU2 length];

    if (v45)
    {
      v18 = [self getLocationStringFromResult:rankingCopy];
      locationFromQU3 = [v251 locationFromQU];
      v47 = [v18 localizedCaseInsensitiveContainsString:locationFromQU3];

      if (v47)
      {

        goto LABEL_19;
      }

      v173 = SSGeneralLog();
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        searchString4 = [v251 searchString];
        v250 = SSRedactStringClient(searchString4, 1, isSearchToolClient);
        title4 = [rankingCopy title];
        text4 = [title4 text];
        v209 = SSRedactStringClient(text4, 1, isSearchToolClient);
        rankingItem9 = [rankingCopy rankingItem];
        identifier4 = [rankingItem9 identifier];
        v195 = SSRedactStringClient(identifier4, 1, isSearchToolClient);
        [rankingCopy rankingItem];
        v212 = v227 = rankingCopy;
        v196 = SSCompactRankingAttrsGetValue([v212 attributes], 1uLL);
        SSRedactStringClient(v196, 1, isSearchToolClient);
        v197 = v218 = v14;
        v198 = SSRedactStringClient(v18, 1, isSearchToolClient);
        [v251 locationFromQU];
        v200 = v199 = getEventIntentFallbackTokens;
        v201 = SSRedactStringClient(v200, 1, isSearchToolClient);
        *buf = 138413826;
        v265 = v250;
        v266 = 2112;
        v267 = v218;
        v268 = 2112;
        v269 = v209;
        v270 = 2112;
        v271 = v195;
        v272 = 2112;
        v273 = v197;
        v274 = 2112;
        v275 = v198;
        v202 = v198;
        v276 = 2112;
        v277 = v201;
        _os_log_impl(&dword_1D9F69000, v173, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ as locationTextFromItem=%@ does not contain locationFromQU=%@", buf, 0x48u);

        getEventIntentFallbackTokens = v199;
        rankingCopy = v227;

        v14 = v218;
        v194 = v250;
        goto LABEL_137;
      }

LABEL_138:

      goto LABEL_139;
    }
  }

LABEL_19:
  parsedArgSearchTermsFromQU = [v251 parsedArgSearchTermsFromQU];
  v49 = objc_msgSend_count(parsedArgSearchTermsFromQU);

  if (v49)
  {
    v50 = [MEMORY[0x1E695DFA8] set];
    rankingItem10 = [rankingCopy rankingItem];
    v52 = SSCompactRankingAttrsGetValue([rankingItem10 attributes], 0xEAuLL);
    v53 = v52;
    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = &stru_1F556FE60;
    }

    [v50 addObject:v54];

    rankingItem11 = [rankingCopy rankingItem];
    v56 = SSCompactRankingAttrsGetValue([rankingItem11 attributes], 0xEDuLL);
    v57 = v56;
    if (v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = &stru_1F556FE60;
    }

    [v50 addObject:v58];

    rankingItem12 = [rankingCopy rankingItem];
    v60 = SSCompactRankingAttrsGetValue([rankingItem12 attributes], 0xF3uLL);
    v61 = v60;
    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = &stru_1F556FE60;
    }

    [v50 addObject:v62];

    rankingItem13 = [rankingCopy rankingItem];
    v64 = SSCompactRankingAttrsGetValue([rankingItem13 attributes], 0xF4uLL);
    v65 = v64;
    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = &stru_1F556FE60;
    }

    [v50 addObject:v66];

    rankingItem14 = [rankingCopy rankingItem];
    v68 = SSCompactRankingAttrsGetValue([rankingItem14 attributes], 0xF1uLL);
    v69 = v68;
    if (v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = &stru_1F556FE60;
    }

    [v50 addObject:v70];

    rankingItem15 = [rankingCopy rankingItem];
    v72 = SSCompactRankingAttrsGetValue([rankingItem15 attributes], 0xF2uLL);
    v73 = v72;
    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = &stru_1F556FE60;
    }

    [v50 addObject:v74];

    rankingItem16 = [rankingCopy rankingItem];
    v76 = SSCompactRankingAttrsGetValue([rankingItem16 attributes], 0xFEuLL);
    v77 = v76;
    if (v76)
    {
      v78 = v76;
    }

    else
    {
      v78 = &stru_1F556FE60;
    }

    [v50 addObject:v78];

    rankingItem17 = [rankingCopy rankingItem];
    v80 = SSCompactRankingAttrsGetValue([rankingItem17 attributes], 0xFAuLL);
    v81 = v80;
    if (v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = &stru_1F556FE60;
    }

    [v50 addObject:v82];

    rankingItem18 = [rankingCopy rankingItem];
    v84 = SSCompactRankingAttrsGetValue([rankingItem18 attributes], 0xFBuLL);
    v85 = v84;
    if (v84)
    {
      v86 = v84;
    }

    else
    {
      v86 = &stru_1F556FE60;
    }

    [v50 addObject:v86];

    rankingItem19 = [rankingCopy rankingItem];
    v88 = SSCompactRankingAttrsGetValue([rankingItem19 attributes], 0xFDuLL);
    v89 = v88;
    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = &stru_1F556FE60;
    }

    [v50 addObject:v90];

    rankingItem20 = [rankingCopy rankingItem];
    v92 = SSCompactRankingAttrsGetValue([rankingItem20 attributes], 0xF5uLL);
    v93 = v92;
    if (v92)
    {
      v94 = v92;
    }

    else
    {
      v94 = &stru_1F556FE60;
    }

    [v50 addObject:v94];

    rankingItem21 = [rankingCopy rankingItem];
    v96 = SSCompactRankingAttrsGetValue([rankingItem21 attributes], 0x103uLL);
    v97 = v96;
    if (v96)
    {
      v98 = v96;
    }

    else
    {
      v98 = &stru_1F556FE60;
    }

    [v50 addObject:v98];

    rankingItem22 = [rankingCopy rankingItem];
    v100 = SSCompactRankingAttrsGetValue([rankingItem22 attributes], 0xD2uLL);
    v101 = v100;
    if (v100)
    {
      v102 = v100;
    }

    else
    {
      v102 = &stru_1F556FE60;
    }

    [v50 addObject:v102];

    rankingItem23 = [rankingCopy rankingItem];
    v104 = SSCompactRankingAttrsGetValue([rankingItem23 attributes], 0x109uLL);
    v105 = v104;
    if (v104)
    {
      v106 = v104;
    }

    else
    {
      v106 = &stru_1F556FE60;
    }

    [v50 addObject:v106];

    rankingItem24 = [rankingCopy rankingItem];
    v108 = SSCompactRankingAttrsGetValue([rankingItem24 attributes], 0x129uLL);
    v109 = v108;
    if (v108)
    {
      v110 = v108;
    }

    else
    {
      v110 = &stru_1F556FE60;
    }

    [v50 addObject:v110];

    rankingItem25 = [rankingCopy rankingItem];
    v112 = SSCompactRankingAttrsGetValue([rankingItem25 attributes], 0x12DuLL);
    v113 = v112;
    if (v112)
    {
      v114 = v112;
    }

    else
    {
      v114 = &stru_1F556FE60;
    }

    [v50 addObject:v114];

    rankingItem26 = [rankingCopy rankingItem];
    v116 = SSCompactRankingAttrsGetValue([rankingItem26 attributes], 0x12EuLL);
    v117 = v116;
    if (v116)
    {
      v118 = v116;
    }

    else
    {
      v118 = &stru_1F556FE60;
    }

    [v50 addObject:v118];

    rankingItem27 = [rankingCopy rankingItem];
    v120 = SSCompactRankingAttrsGetValue([rankingItem27 attributes], 0x10BuLL);
    v121 = v120;
    if (v120)
    {
      v122 = v120;
    }

    else
    {
      v122 = &stru_1F556FE60;
    }

    [v50 addObject:v122];

    rankingItem28 = [rankingCopy rankingItem];
    v124 = SSCompactRankingAttrsGetValue([rankingItem28 attributes], 0x10CuLL);
    v125 = v124;
    if (v124)
    {
      v126 = v124;
    }

    else
    {
      v126 = &stru_1F556FE60;
    }

    [v50 addObject:v126];

    rankingItem29 = [rankingCopy rankingItem];
    v128 = SSCompactRankingAttrsGetValue([rankingItem29 attributes], 0x10DuLL);
    v129 = v128;
    if (v128)
    {
      v130 = v128;
    }

    else
    {
      v130 = &stru_1F556FE60;
    }

    [v50 addObject:v130];

    rankingItem30 = [rankingCopy rankingItem];
    v132 = SSCompactRankingAttrsGetValue([rankingItem30 attributes], 0x10EuLL);
    v133 = v132;
    if (v132)
    {
      v134 = v132;
    }

    else
    {
      v134 = &stru_1F556FE60;
    }

    [v50 addObject:v134];

    rankingItem31 = [rankingCopy rankingItem];
    v136 = SSCompactRankingAttrsGetValue([rankingItem31 attributes], 0xCuLL);
    v137 = v136;
    if (v136)
    {
      v138 = v136;
    }

    else
    {
      v138 = &stru_1F556FE60;
    }

    [v50 addObject:v138];

    rankingItem32 = [rankingCopy rankingItem];
    v140 = SSCompactRankingAttrsGetValue([rankingItem32 attributes], 0xE8uLL);
    v141 = v140;
    if (v140)
    {
      v142 = v140;
    }

    else
    {
      v142 = &stru_1F556FE60;
    }

    [v50 addObject:v142];

    rankingItem33 = [rankingCopy rankingItem];
    v144 = SSCompactRankingAttrsGetValue([rankingItem33 attributes], 0x11AuLL);
    v145 = v144;
    if (v144)
    {
      v146 = v144;
    }

    else
    {
      v146 = &stru_1F556FE60;
    }

    [v50 addObject:v146];

    rankingItem34 = [rankingCopy rankingItem];
    v148 = SSCompactRankingAttrsGetValue([rankingItem34 attributes], 0x108uLL);
    v149 = v148;
    if (v148)
    {
      v150 = v148;
    }

    else
    {
      v150 = &stru_1F556FE60;
    }

    [v50 addObject:v150];

    rankingItem35 = [rankingCopy rankingItem];
    v152 = SSCompactRankingAttrsGetValue([rankingItem35 attributes], 0x151uLL);
    v153 = v152;
    if (v152)
    {
      v154 = v152;
    }

    else
    {
      v154 = &stru_1F556FE60;
    }

    [v50 addObject:v154];

    v224 = rankingCopy;
    rankingItem36 = [rankingCopy rankingItem];
    v156 = SSCompactRankingAttrsGetValue([rankingItem36 attributes], 0xF6uLL);

    if (v156)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v157 = [v156 componentsJoinedByString:{@", "}];
        [v50 addObject:v157];
      }
    }

    v213 = v156;
    v219 = getEventIntentFallbackTokens;
    v158 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v256 = 0u;
    v257 = 0u;
    v258 = 0u;
    v259 = 0u;
    v18 = v50;
    v159 = [v18 countByEnumeratingWithState:&v256 objects:v263 count:16];
    if (v159)
    {
      v160 = v159;
      v161 = *v257;
      do
      {
        for (i = 0; i != v160; ++i)
        {
          if (*v257 != v161)
          {
            objc_enumerationMutation(v18);
          }

          [v158 appendFormat:@"%@ ", *(*(&v256 + 1) + 8 * i)];
        }

        v160 = [v18 countByEnumeratingWithState:&v256 objects:v263 count:16];
      }

      while (v160);
    }

    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    parsedArgSearchTermsFromQU2 = [v251 parsedArgSearchTermsFromQU];
    v246 = [parsedArgSearchTermsFromQU2 countByEnumeratingWithState:&v252 objects:v262 count:16];
    if (v246)
    {
      v164 = *v253;
      v234 = parsedArgSearchTermsFromQU2;
      while (2)
      {
        v165 = 0;
        do
        {
          if (*v253 != v164)
          {
            objc_enumerationMutation(parsedArgSearchTermsFromQU2);
          }

          v166 = isOptionalSearchTermForPreExtractionFilter_onceToken;
          v167 = *(*(&v252 + 1) + 8 * v165);
          if (v166 != -1)
          {
            +[SSRankingManager searchToolShouldFilterEventBeforeRanking:queryContext:matchQUIntent:searchToolBundles:useLLMQU:hasEventTypeFromQU:];
          }

          v168 = [isOptionalSearchTermForPreExtractionFilter_OptionalSearchTerms containsObject:v167];

          if (v168)
          {
            v169 = SSGeneralLog();
            if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
            {
              searchString5 = [v251 searchString];
              v170 = SSRedactStringClient(searchString5, 1, isSearchToolClient);
              v171 = SSRedactStringClient(v167, 1, isSearchToolClient);
              *buf = 138412546;
              v265 = v170;
              v172 = v170;
              v266 = 2112;
              v267 = v171;
              _os_log_impl(&dword_1D9F69000, v169, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, skipped filtering event due to optional search term =%@", buf, 0x16u);

              parsedArgSearchTermsFromQU2 = v234;
            }
          }

          else if (([v158 localizedCaseInsensitiveContainsString:v167] & 1) == 0)
          {
            v182 = SSGeneralLog();
            if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
            {
              searchString6 = [v251 searchString];
              v205 = SSRedactStringClient(searchString6, 1, isSearchToolClient);
              title5 = [v224 title];
              text5 = [title5 text];
              v248 = SSRedactStringClient(text5, 1, isSearchToolClient);
              rankingItem37 = [v224 rankingItem];
              identifier5 = [rankingItem37 identifier];
              v183 = SSRedactStringClient(identifier5, 1, isSearchToolClient);
              rankingItem38 = [v224 rankingItem];
              v184 = SSCompactRankingAttrsGetValue([rankingItem38 attributes], 1uLL);
              v185 = SSRedactStringClient(v184, 1, isSearchToolClient);
              v186 = SSRedactStringClient(v158, 1, isSearchToolClient);
              v187 = SSRedactStringClient(v167, 1, isSearchToolClient);
              *buf = 138413826;
              v265 = v205;
              v266 = 2112;
              v267 = v14;
              v268 = 2112;
              v269 = v248;
              v270 = 2112;
              v271 = v183;
              v272 = 2112;
              v273 = v185;
              v274 = 2112;
              v275 = v186;
              v276 = 2112;
              v277 = v187;
              _os_log_impl(&dword_1D9F69000, v182, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [personal answers] for query=%@, filtered eventType=%@ with title=%@ identifier=%@ MDItemIdentifier=%@ as concantenatedTextFromItem=%@ does not contain parsedArgSearchTermFromQU=%@", buf, 0x48u);

              parsedArgSearchTermsFromQU2 = v234;
            }

            v19 = 1;
            rankingCopy = v224;
            goto LABEL_129;
          }

          ++v165;
        }

        while (v246 != v165);
        v246 = [parsedArgSearchTermsFromQU2 countByEnumeratingWithState:&v252 objects:v262 count:16];
        if (v246)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
    rankingCopy = v224;
LABEL_129:
    getEventIntentFallbackTokens = v219;
    goto LABEL_140;
  }

  v19 = 0;
LABEL_141:

  return v19;
}

uint64_t __134__SSRankingManager_searchToolShouldFilterEventBeforeRanking_queryContext_matchQUIntent_searchToolBundles_useLLMQU_hasEventTypeFromQU___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 searchString];
  v5 = [v4 localizedCaseInsensitiveContainsString:v3];

  return v5;
}

+ (BOOL)searchToolShouldFilterWalletResultBeforeRanking:(id)ranking queryContext:(id)context
{
  v48 = *MEMORY[0x1E69E9840];
  rankingCopy = ranking;
  contextCopy = context;
  isSearchToolClient = [contextCopy isSearchToolClient];
  if ([contextCopy earliestTokenFromQU])
  {
    rankingItem = [rankingCopy rankingItem];
    if ([rankingItem cardExpirationDateToNowInSeconds])
    {
      rankingItem2 = [rankingCopy rankingItem];
      cardExpirationDateToNowInSeconds = [rankingItem2 cardExpirationDateToNowInSeconds];

      if (cardExpirationDateToNowInSeconds >= 1)
      {
        rankingItem3 = [rankingCopy rankingItem];
        v12 = SSCompactRankingAttrsGetValue([rankingItem3 attributes], 0x13BuLL);

        v13 = SSGeneralLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          log = [contextCopy searchString];
          v14 = SSRedactStringClient(log, 1, isSearchToolClient);
          title = [rankingCopy title];
          text = [title text];
          v15 = SSRedactStringClient(text, 1, isSearchToolClient);
          rankingItem4 = [rankingCopy rankingItem];
          identifier = [rankingItem4 identifier];
          v16 = SSRedactStringClient(identifier, 1, isSearchToolClient);
          rankingItem5 = [rankingCopy rankingItem];
          v18 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 1uLL);
          v19 = SSRedactStringClient(v18, 1, isSearchToolClient);
          *buf = 138413314;
          v39 = v14;
          v40 = 2112;
          v41 = v15;
          v42 = 2112;
          v43 = v16;
          v44 = 2112;
          v45 = v19;
          v46 = 2112;
          v47 = v12;
          _os_log_impl(&dword_1D9F69000, v13, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Pre-filtering] [Wallet] for future-seeking query=%@, filtered wallet item with title=%@ identifier=%@ MDItemIdentifier=%@ due to expiration date = %@ in the past", buf, 0x34u);

LABEL_12:
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  rankingItem6 = [rankingCopy rankingItem];
  v12 = SSCompactRankingAttrsGetValue([rankingItem6 attributes], 0x153uLL);

  if (!v12 || ([contextCopy isCardEventSearch] & 1) == 0 && !objc_msgSend(contextCopy, "earliestTokenFromQU"))
  {
    v26 = 0;
    goto LABEL_15;
  }

  v13 = SSGeneralLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    searchString = [contextCopy searchString];
    v14 = SSRedactStringClient(searchString, 1, isSearchToolClient);
    title2 = [rankingCopy title];
    text2 = [title2 text];
    v15 = SSRedactStringClient(text2, 1, isSearchToolClient);
    rankingItem7 = [rankingCopy rankingItem];
    identifier2 = [rankingItem7 identifier];
    SSRedactStringClient(identifier2, 1, isSearchToolClient);
    v22 = loga = v13;
    rankingItem8 = [rankingCopy rankingItem];
    v24 = SSCompactRankingAttrsGetValue([rankingItem8 attributes], 1uLL);
    v25 = SSRedactStringClient(v24, 1, isSearchToolClient);
    *buf = 138413058;
    v39 = v14;
    v40 = 2112;
    v41 = v15;
    v42 = 2112;
    v43 = v22;
    v44 = 2112;
    v45 = v25;
    _os_log_impl(&dword_1D9F69000, loga, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Pre-filtering] [Wallet] for future-seeking or card event query=%@, filtered wallet item with title=%@ identifier=%@ MDItemIdentifier=%@ due to non-null transaction type", buf, 0x2Au);

    v13 = loga;
    goto LABEL_12;
  }

LABEL_13:

  v26 = 1;
LABEL_15:

  return v26;
}

+ (BOOL)searchToolShouldFilterResultBeforeRanking:(id)ranking queryContext:(id)context matchQUIntent:(BOOL)intent intentAndResultWithStartDueDate:(BOOL)date searchToolBundles:(id)bundles useLLMQU:(BOOL)u
{
  uCopy = u;
  intentCopy = intent;
  v205 = *MEMORY[0x1E69E9840];
  rankingCopy = ranking;
  contextCopy = context;
  bundlesCopy = bundles;
  isSearchToolClient = [contextCopy isSearchToolClient];
  v181 = 0x20000;
  v15 = [contextCopy llmQUIntentType] & 0x207FC000;
  rankingItem = [rankingCopy rankingItem];
  sectionBundleIdentifier = [rankingItem sectionBundleIdentifier];
  v176 = @"com.apple.spotlight.events";
  v193 = bundlesCopy;
  v194 = rankingCopy;
  log = uCopy;
  v171 = v15;
  if (![sectionBundleIdentifier isEqualToString:?])
  {
    v19 = contextCopy;

LABEL_5:
    v23 = v194;
    rankingItem2 = [v194 rankingItem];
    sectionBundleIdentifier2 = [rankingItem2 sectionBundleIdentifier];
    if ([sectionBundleIdentifier2 isEqualToString:@"com.apple.Passbook"])
    {
      v22 = v19;
      sectionBundleIdentifier = [SSRankingManager searchToolShouldFilterWalletResultBeforeRanking:v194 queryContext:v19];

      if (sectionBundleIdentifier)
      {
        v21 = 1;
        bundlesCopy = v193;
        goto LABEL_100;
      }
    }

    else
    {

      v22 = v19;
    }

    rankingItem3 = [v194 rankingItem];
    IsWalletBoardingPass = SSSectionIsWalletBoardingPass(rankingItem3);

    if (IsWalletBoardingPass)
    {
      rankingItem3 = [v194 rankingItem];
      walletBoardingPassDepartureDateTime = [rankingItem3 walletBoardingPassDepartureDateTime];

      if (walletBoardingPassDepartureDateTime)
      {
        rankingItem3 = [v194 rankingItem];
        walletBoardingPassDepartureDateTime2 = [rankingItem3 walletBoardingPassDepartureDateTime];
        [walletBoardingPassDepartureDateTime2 timeIntervalSinceReferenceDate];
        v31 = v30;

        if ([v22 earliestTokenFromQU])
        {
          [v22 currentTime];
          if (v32 > v31)
          {
            rankingItem9 = SSGeneralLog();
            if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEFAULT))
            {
              searchString = [v22 searchString];
              v34 = SSRedactStringClient(searchString, 1, isSearchToolClient);
              [v22 currentTime];
              v36 = v35;
              title = [v194 title];
              text = [title text];
              v37 = SSRedactStringClient(text, 1, isSearchToolClient);
              rankingItem4 = [v194 rankingItem];
              [rankingItem4 identifier];
              v38 = loga = rankingItem9;
              v39 = SSRedactStringClient(v38, 1, isSearchToolClient);
              rankingItem5 = [v194 rankingItem];
              v41 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 1uLL);
              v42 = SSRedactStringClient(v41, 1, isSearchToolClient);
              [v194 rankingItem];
              v44 = v43 = v22;
              walletBoardingPassDepartureDateTime3 = [v44 walletBoardingPassDepartureDateTime];
              *buf = 138413570;
              v196 = v34;
              v197 = 2048;
              v198 = v36;
              v199 = 2112;
              *v200 = v37;
              *&v200[8] = 2112;
              *&v200[10] = v39;
              *&v200[18] = 2112;
              *&v200[20] = v42;
              *&v200[28] = 2112;
              *&v200[30] = walletBoardingPassDepartureDateTime3;
              v46 = "[SpotlightRanking] [SearchTool] [Pre-filtering] [Wallet] for future-seeking query=%@ at queryTime=%f, filtered event with title=%@ identifier=%@ MDItemIdentifier=%@ walletBoardingPassDepartureDateTime=%@ as the result is in the past";
LABEL_19:
              _os_log_impl(&dword_1D9F69000, loga, OS_LOG_TYPE_DEFAULT, v46, buf, 0x3Eu);

              v22 = v43;
              rankingItem9 = loga;

              goto LABEL_98;
            }

            goto LABEL_98;
          }
        }

        if ([v22 latestTokenFromQU])
        {
          [v22 currentTime];
          if (v47 < v31)
          {
            rankingItem9 = SSGeneralLog();
            if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEFAULT))
            {
              searchString = [v22 searchString];
              v34 = SSRedactStringClient(searchString, 1, isSearchToolClient);
              [v22 currentTime];
              v49 = v48;
              title = [v194 title];
              text = [title text];
              v37 = SSRedactStringClient(text, 1, isSearchToolClient);
              rankingItem4 = [v194 rankingItem];
              [rankingItem4 identifier];
              v38 = loga = rankingItem9;
              v39 = SSRedactStringClient(v38, 1, isSearchToolClient);
              rankingItem5 = [v194 rankingItem];
              v41 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 1uLL);
              v42 = SSRedactStringClient(v41, 1, isSearchToolClient);
              [v194 rankingItem];
              v44 = v43 = v22;
              walletBoardingPassDepartureDateTime3 = [v44 walletBoardingPassDepartureDateTime];
              *buf = 138413570;
              v196 = v34;
              v197 = 2048;
              v198 = v49;
              v199 = 2112;
              *v200 = v37;
              *&v200[8] = 2112;
              *&v200[10] = v39;
              *&v200[18] = 2112;
              *&v200[20] = v42;
              *&v200[28] = 2112;
              *&v200[30] = walletBoardingPassDepartureDateTime3;
              v46 = "[SpotlightRanking] [SearchTool] [Pre-filtering] [Wallet] for past-seeking query=%@ at queryTime=%f, filtered with title=%@ identifier=%@ MDItemIdentifier=%@ walletBoardingPassDepartureDateTime=%@ as the result is in the future";
              goto LABEL_19;
            }

LABEL_98:
            bundlesCopy = v193;
            goto LABEL_99;
          }
        }
      }
    }

    v192 = v22;
    if (![v22 earliestTokenFromQU] || (objc_msgSend(v194, "rankingItem"), rankingItem3 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(rankingItem3, "bundleIDType") & 0x2000003E060806, rankingItem3, v50))
    {
LABEL_22:
      rankingItem6 = [v194 rankingItem];
      sectionBundleIdentifier3 = [rankingItem6 sectionBundleIdentifier];
      v53 = [sectionBundleIdentifier3 isEqualToString:@"com.apple.mobilecal"];
      if (v53)
      {
        v54 = 0;
      }

      else
      {
        sectionBundleIdentifier = [v194 rankingItem];
        rankingItem3 = [sectionBundleIdentifier sectionBundleIdentifier];
        if ([rankingItem3 isEqualToString:@"com.apple.reminders"])
        {
          v54 = 0;
        }

        else
        {
          rankingItem7 = [v194 rankingItem];
          sectionBundleIdentifier4 = [rankingItem7 sectionBundleIdentifier];
          if (([(__CFString *)sectionBundleIdentifier4 isEqualToString:@"com.apple.spotlight.events"]& 1) == 0)
          {

            v22 = v192;
            goto LABEL_62;
          }

          v176 = sectionBundleIdentifier4;
          v181 = rankingItem7;
          v54 = 1;
        }
      }

      earliestTokenFromQU = [v192 earliestTokenFromQU];
      if (earliestTokenFromQU)
      {
        rankingItem8 = [v194 rankingItem];
        if ([rankingItem8 startDueDateToNowInSeconds] < 0)
        {

          v63 = 1;
          if ((v54 & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        if (([v192 latestTokenFromQU] & 1) == 0)
        {
          v63 = 0;
          goto LABEL_55;
        }

        v171 = rankingItem8;
      }

      else if (![v192 latestTokenFromQU])
      {
        v63 = 0;
        if (!v54)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      [v194 rankingItem];
      v59 = rankingItem6;
      v60 = rankingItem3;
      v62 = v61 = sectionBundleIdentifier;
      v63 = [v62 startDueDateToNowInSeconds] > 0;

      sectionBundleIdentifier = v61;
      rankingItem3 = v60;
      rankingItem6 = v59;
      v23 = v194;
      rankingItem8 = v171;
      if (!earliestTokenFromQU)
      {
        if (!v54)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

LABEL_55:

      if ((v54 & 1) == 0)
      {
LABEL_36:
        if (v53)
        {

          v22 = v192;
          if (!v63)
          {
LABEL_62:
            rankingItem9 = [v23 rankingItem];
            sectionBundleIdentifier5 = [rankingItem9 sectionBundleIdentifier];
            bundlesCopy = v193;
            if ([sectionBundleIdentifier5 isEqualToString:@"com.apple.mobilephone"])
            {
              llmQUIntentType = [v22 llmQUIntentType];
              v95 = ([v22 inferredLlmQUIntentType] | llmQUIntentType) & 0x800100;

              v96 = log;
              if (v95)
              {
                if (log)
                {
LABEL_65:
                  v97 = [v192 llmQUIntentType] & 0x3C00;
                  goto LABEL_69;
                }

LABEL_68:
                v97 = [v192 intentFromQU] == 5;
LABEL_69:
                v98 = v97 == 0;
                rankingItem10 = [v194 rankingItem];
                sectionBundleIdentifier6 = [rankingItem10 sectionBundleIdentifier];
                if ((SSSectionIsSyndicatedPhotos(sectionBundleIdentifier6) & 1) == 0)
                {
                  rankingItem11 = [v194 rankingItem];
                  sectionBundleIdentifier7 = [rankingItem11 sectionBundleIdentifier];
                  if (([sectionBundleIdentifier7 isEqualToString:@"com.apple.MobileAddressBook"] & 1) == 0)
                  {
                    rankingItem12 = [v194 rankingItem];
                    retrievalType = [rankingItem12 retrievalType];
                    if (([retrievalType intValue] & 2) != 0)
                    {
                      v105 = flt_1DA0D52D0[v98];
                      rankingItem13 = [v194 rankingItem];
                      [rankingItem13 embeddingSimilarity];
                      if (v107 < v105)
                      {
                        rankingItem14 = [v194 rankingItem];
                        [rankingItem14 pommesL1Score];
                        v110 = v109;

                        bundlesCopy = v193;
                        if (v110 < 0.05)
                        {
                          rankingItem9 = SSGeneralLog();
                          v22 = v192;
                          if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEBUG))
                          {
                            queryIdent = [v192 queryIdent];
                            rankingItem15 = [v194 rankingItem];
                            sectionBundleIdentifier8 = [rankingItem15 sectionBundleIdentifier];
                            searchString2 = [v192 searchString];
                            v112 = SSRedactStringClient(searchString2, 1, isSearchToolClient);
                            rankingItem16 = [v194 rankingItem];
                            retrievalType2 = [rankingItem16 retrievalType];
                            intValue = [retrievalType2 intValue];
                            rankingItem17 = [v194 rankingItem];
                            identifier = [rankingItem17 identifier];
                            title2 = [v194 title];
                            text2 = [title2 text];
                            SSRedactStringClient(text2, 1, isSearchToolClient);
                            v117 = logc = rankingItem9;
                            rankingItem18 = [v194 rankingItem];
                            [rankingItem18 embeddingSimilarity];
                            v120 = v119;
                            rankingItem19 = [v194 rankingItem];
                            [rankingItem19 pommesL1Score];
                            *buf = 134220290;
                            v196 = queryIdent;
                            v197 = 2112;
                            v198 = sectionBundleIdentifier8;
                            v199 = 2112;
                            *v200 = v112;
                            *&v200[8] = 1024;
                            *&v200[10] = intValue;
                            *&v200[14] = 2112;
                            *&v200[16] = identifier;
                            *&v200[24] = 2112;
                            *&v200[26] = v117;
                            *&v200[34] = 2048;
                            *&v200[36] = v120;
                            *&v200[44] = 2048;
                            *&v200[46] = v105;
                            v201 = 2048;
                            v202 = v122;
                            v203 = 2048;
                            v204 = 0x3FA99999A0000000;
                            _os_log_debug_impl(&dword_1D9F69000, logc, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Pre-filtering] qid=[%llu][bundle=%@][query=%@][type=%d][id=%@] filter result (%@) for low embeddingSimilarity=%0.2f (< %.2f) and low pommesL1Score=%0.2f (< %.2f)", buf, 0x62u);

                            v22 = v192;
                            rankingItem9 = logc;
                            bundlesCopy = v193;
LABEL_103:

                            goto LABEL_99;
                          }

                          goto LABEL_99;
                        }

LABEL_89:
                        v22 = v192;
                        if (([v192 llmQUIntentType] & 0x100) != 0 || (objc_msgSend(v192, "inferredLlmQUIntentType") & 0x100) != 0 || (objc_msgSend(v192, "isAppEntitySearch") & 1) != 0 || (objc_msgSend(v194, "rankingItem"), v139 = objc_claimAutoreleasedReturnValue(), v140 = objc_msgSend(v139, "bundleIDType"), v139, (v140 & 4) == 0))
                        {
                          v21 = 0;
                          goto LABEL_100;
                        }

                        rankingItem9 = SSGeneralLog();
                        if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEFAULT))
                        {
                          queryIdent2 = [v192 queryIdent];
                          searchString3 = [v192 searchString];
                          v112 = SSRedactStringClient(searchString3, 1, isSearchToolClient);
                          rankingItem20 = [v194 rankingItem];
                          displayName = [rankingItem20 displayName];
                          v148 = SSRedactStringClient(displayName, 1, isSearchToolClient);
                          *buf = 134218498;
                          v196 = queryIdent2;
                          v197 = 2112;
                          v198 = v112;
                          v199 = 2112;
                          *v200 = v148;
                          _os_log_impl(&dword_1D9F69000, rankingItem9, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Pre-filtering] qid=[%llu] query=[%@] filter contact result [%@] for non contact intent", buf, 0x20u);

                          v22 = v192;
                          goto LABEL_103;
                        }

LABEL_99:

                        v21 = 1;
                        goto LABEL_100;
                      }
                    }
                  }
                }

                goto LABEL_89;
              }

              rankingItem21 = [v194 rankingItem];
              rankingItem9 = SSCompactRankingAttrsGetValue([rankingItem21 attributes], 0);

              if (rankingItem9 && [rankingItem9 isEqualToString:@"kSpotlightItemTypeCall"])
              {
                v112 = SSGeneralLog();
                v22 = v192;
                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                {
                  queryIdent3 = [v192 queryIdent];
                  logd = [v192 searchString];
                  v125 = SSRedactStringClient(logd, 1, isSearchToolClient);
                  rankingItem22 = [v194 rankingItem];
                  displayName2 = [rankingItem22 displayName];
                  v128 = SSRedactStringClient(displayName2, 1, isSearchToolClient);
                  [v194 rankingItem];
                  v130 = v129 = rankingItem9;
                  identifier2 = [v130 identifier];
                  *buf = 134218754;
                  v196 = queryIdent3;
                  v197 = 2112;
                  v198 = v125;
                  v199 = 2112;
                  *v200 = v128;
                  *&v200[8] = 2112;
                  *&v200[10] = identifier2;
                  _os_log_impl(&dword_1D9F69000, v112, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Pre-filtering] qid=[%llu] query=[%@] filter phone call history [%@] identifier=%@ for non phone/contact intent", buf, 0x2Au);

                  rankingItem9 = v129;
                  v22 = v192;
                }

                goto LABEL_103;
              }
            }

            else
            {

              v96 = log;
            }

            if (v96)
            {
              goto LABEL_65;
            }

            goto LABEL_68;
          }
        }

        else
        {

          v22 = v192;
          if (!v63)
          {
            goto LABEL_62;
          }
        }

        rankingItem9 = SSGeneralLog();
        if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEFAULT))
        {
          queryIdent4 = [v22 queryIdent];
          searchString4 = [v22 searchString];
          v161 = SSRedactStringClient(searchString4, 1, isSearchToolClient);
          title3 = [v23 title];
          text3 = [title3 text];
          v64 = SSRedactStringClient(text3, 1, isSearchToolClient);
          rankingItem23 = [v23 rankingItem];
          sectionBundleIdentifier9 = [rankingItem23 sectionBundleIdentifier];
          rankingItem24 = [v23 rankingItem];
          identifier3 = [rankingItem24 identifier];
          SSRedactStringClient(identifier3, 1, isSearchToolClient);
          v68 = logb = rankingItem9;
          rankingItem25 = [v23 rankingItem];
          v70 = SSCompactRankingAttrsGetValue([rankingItem25 attributes], 1uLL);
          v71 = SSRedactStringClient(v70, 1, isSearchToolClient);
          rankingItem26 = [v23 rankingItem];
          *buf = 134219522;
          v196 = queryIdent4;
          v197 = 2112;
          v198 = v161;
          v199 = 2112;
          *v200 = v64;
          *&v200[8] = 2112;
          *&v200[10] = sectionBundleIdentifier9;
          *&v200[18] = 2112;
          *&v200[20] = v68;
          *&v200[28] = 2112;
          *&v200[30] = v71;
          *&v200[38] = 2048;
          *&v200[40] = [rankingItem26 startDueDateToNowInSeconds];
          _os_log_impl(&dword_1D9F69000, logb, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Pre-filtering] qid=[%llu] query=[%@] filter result [%@] bundle=%@ identifier=%@ MDItemIdentifier=%@ for next/last startDueDateToNowInSeconds=%ld", buf, 0x48u);

          v22 = v192;
          rankingItem9 = logb;
        }

        goto LABEL_98;
      }

LABEL_35:

      goto LABEL_36;
    }

    rankingItem27 = [v194 rankingItem];
    sectionBundleIdentifier10 = [rankingItem27 sectionBundleIdentifier];
    if (([sectionBundleIdentifier10 isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
    {
      rankingItem28 = [v194 rankingItem];
      sectionBundleIdentifier11 = [rankingItem28 sectionBundleIdentifier];
      if (([sectionBundleIdentifier11 isEqualToString:@"com.apple.email.SearchIndexer"] & 1) == 0)
      {
        rankingItem29 = [v194 rankingItem];
        sectionBundleIdentifier12 = [rankingItem29 sectionBundleIdentifier];
        v134 = [sectionBundleIdentifier12 isEqualToString:@"com.apple.MobileSMS"];

        if ((v134 & 1) == 0)
        {
          if (v171 && ([v194 rankingItem], v135 = objc_claimAutoreleasedReturnValue(), v136 = objc_msgSend(v135, "mostRecentTimeToQueryInMinutesForFreshness"), v137 = -1440 * futureEventFromQUGenericRecencyThreshold, v135, v136 < v137))
          {
            rankingItem9 = SSGeneralLog();
            if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEFAULT))
            {
              queryIdent5 = [v192 queryIdent];
              searchString5 = [v192 searchString];
              v155 = SSRedactStringClient(searchString5, 1, isSearchToolClient);
              v159 = futureEventFromQUGenericRecencyThreshold;
              title4 = [v194 title];
              text4 = [title4 text];
              v81 = SSRedactStringClient(text4, 1, isSearchToolClient);
              rankingItem30 = [v194 rankingItem];
              sectionBundleIdentifier13 = [rankingItem30 sectionBundleIdentifier];
              rankingItem31 = [v194 rankingItem];
              identifier4 = [rankingItem31 identifier];
              v82 = SSRedactStringClient(identifier4, 1, isSearchToolClient);
              rankingItem32 = [v194 rankingItem];
              v84 = SSCompactRankingAttrsGetValue([rankingItem32 attributes], 1uLL);
              v85 = SSRedactStringClient(v84, 1, isSearchToolClient);
              rankingItem33 = [v194 rankingItem];
              *buf = 134219778;
              v196 = queryIdent5;
              v197 = 2112;
              v88 = sectionBundleIdentifier13;
              v87 = v155;
              v198 = v155;
              v199 = 1024;
              *v200 = v159;
              v89 = v192;
              *&v200[4] = 2112;
              *&v200[6] = v81;
              *&v200[14] = 2112;
              *&v200[16] = sectionBundleIdentifier13;
              *&v200[24] = 2112;
              *&v200[26] = v82;
              *&v200[34] = 2112;
              *&v200[36] = v85;
              *&v200[44] = 2048;
              *&v200[46] = [rankingItem33 mostRecentTimeToQueryInMinutesForFreshness];
              v90 = "[SpotlightRanking] [SearchTool] [Pre-filtering] qid=[%llu] query=%@ filter %d-days-old results %@ bundle=%@ identifier=%@ MDItemIdentifier=%@ for event type and future intent mostRecentTimeToQueryInMinutesForFreshness=%ld";
              goto LABEL_60;
            }
          }

          else
          {
            rankingItem3 = [v194 rankingItem];
            mostRecentTimeToQueryInMinutesForFreshness = [rankingItem3 mostRecentTimeToQueryInMinutesForFreshness];
            sectionBundleIdentifier = (-1440 * futureFromQUGenericRecencyThreshold);

            if (mostRecentTimeToQueryInMinutesForFreshness >= sectionBundleIdentifier)
            {
              goto LABEL_22;
            }

            rankingItem9 = SSGeneralLog();
            if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEFAULT))
            {
              queryIdent6 = [v192 queryIdent];
              searchString5 = [v192 searchString];
              v156 = SSRedactStringClient(searchString5, 1, isSearchToolClient);
              v160 = futureFromQUGenericRecencyThreshold;
              title4 = [v194 title];
              text4 = [title4 text];
              v81 = SSRedactStringClient(text4, 1, isSearchToolClient);
              rankingItem30 = [v194 rankingItem];
              sectionBundleIdentifier14 = [rankingItem30 sectionBundleIdentifier];
              rankingItem31 = [v194 rankingItem];
              identifier4 = [rankingItem31 identifier];
              v82 = SSRedactStringClient(identifier4, 1, isSearchToolClient);
              rankingItem32 = [v194 rankingItem];
              v84 = SSCompactRankingAttrsGetValue([rankingItem32 attributes], 1uLL);
              v85 = SSRedactStringClient(v84, 1, isSearchToolClient);
              rankingItem33 = [v194 rankingItem];
              *buf = 134219778;
              v196 = queryIdent6;
              v197 = 2112;
              v88 = sectionBundleIdentifier14;
              v87 = v156;
              v198 = v156;
              v199 = 1024;
              *v200 = v160;
              v89 = v192;
              *&v200[4] = 2112;
              *&v200[6] = v81;
              *&v200[14] = 2112;
              *&v200[16] = sectionBundleIdentifier14;
              *&v200[24] = 2112;
              *&v200[26] = v82;
              *&v200[34] = 2112;
              *&v200[36] = v85;
              *&v200[44] = 2048;
              *&v200[46] = [rankingItem33 mostRecentTimeToQueryInMinutesForFreshness];
              v90 = "[SpotlightRanking] [SearchTool] [Pre-filtering] qid=[%llu] query=%@ filter %d-days-old results %@ bundle=%@ identifier=%@ MDItemIdentifier=%@ for future intent without event type mostRecentTimeToQueryInMinutesForFreshness=%ld";
              goto LABEL_60;
            }
          }

          goto LABEL_97;
        }

LABEL_48:
        if (v171 && ([v194 rankingItem], v77 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend(v77, "mostRecentTimeToQueryInMinutesForFreshness"), v79 = -1440 * futureEventFromQUMailAndMessagesRecencyThreshold, v77, v78 < v79))
        {
          rankingItem9 = SSGeneralLog();
          if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEFAULT))
          {
            queryIdent7 = [v192 queryIdent];
            searchString5 = [v192 searchString];
            v153 = SSRedactStringClient(searchString5, 1, isSearchToolClient);
            v157 = futureEventFromQUMailAndMessagesRecencyThreshold;
            title4 = [v194 title];
            text4 = [title4 text];
            v81 = SSRedactStringClient(text4, 1, isSearchToolClient);
            rankingItem30 = [v194 rankingItem];
            sectionBundleIdentifier15 = [rankingItem30 sectionBundleIdentifier];
            rankingItem31 = [v194 rankingItem];
            identifier4 = [rankingItem31 identifier];
            v82 = SSRedactStringClient(identifier4, 1, isSearchToolClient);
            rankingItem32 = [v194 rankingItem];
            v84 = SSCompactRankingAttrsGetValue([rankingItem32 attributes], 1uLL);
            v85 = SSRedactStringClient(v84, 1, isSearchToolClient);
            rankingItem33 = [v194 rankingItem];
            *buf = 134219778;
            v196 = queryIdent7;
            v197 = 2112;
            v88 = sectionBundleIdentifier15;
            v87 = v153;
            v198 = v153;
            v199 = 1024;
            *v200 = v157;
            v89 = v192;
            *&v200[4] = 2112;
            *&v200[6] = v81;
            *&v200[14] = 2112;
            *&v200[16] = sectionBundleIdentifier15;
            *&v200[24] = 2112;
            *&v200[26] = v82;
            *&v200[34] = 2112;
            *&v200[36] = v85;
            *&v200[44] = 2048;
            *&v200[46] = [rankingItem33 mostRecentTimeToQueryInMinutesForFreshness];
            v90 = "[SpotlightRanking] [SearchTool] [Pre-filtering] qid=[%llu] query=%@ filter %d-days-old Mail and Messages results %@ bundle=%@ identifier=%@ MDItemIdentifier=%@ for event type and future intent mostRecentTimeToQueryInMinutesForFreshness=%ld";
LABEL_60:
            _os_log_impl(&dword_1D9F69000, rankingItem9, OS_LOG_TYPE_DEFAULT, v90, buf, 0x4Eu);

            v22 = v89;
            goto LABEL_98;
          }
        }

        else
        {
          rankingItem3 = [v194 rankingItem];
          mostRecentTimeToQueryInMinutesForFreshness2 = [rankingItem3 mostRecentTimeToQueryInMinutesForFreshness];
          sectionBundleIdentifier = (-1440 * futureFromQUMailAndMessagesRecencyThreshold);

          if (mostRecentTimeToQueryInMinutesForFreshness2 >= sectionBundleIdentifier)
          {
            goto LABEL_22;
          }

          rankingItem9 = SSGeneralLog();
          if (os_log_type_enabled(rankingItem9, OS_LOG_TYPE_DEFAULT))
          {
            queryIdent8 = [v192 queryIdent];
            searchString5 = [v192 searchString];
            v154 = SSRedactStringClient(searchString5, 1, isSearchToolClient);
            v158 = futureFromQUMailAndMessagesRecencyThreshold;
            title4 = [v194 title];
            text4 = [title4 text];
            v81 = SSRedactStringClient(text4, 1, isSearchToolClient);
            rankingItem30 = [v194 rankingItem];
            sectionBundleIdentifier16 = [rankingItem30 sectionBundleIdentifier];
            rankingItem31 = [v194 rankingItem];
            identifier4 = [rankingItem31 identifier];
            v82 = SSRedactStringClient(identifier4, 1, isSearchToolClient);
            rankingItem32 = [v194 rankingItem];
            v84 = SSCompactRankingAttrsGetValue([rankingItem32 attributes], 1uLL);
            v85 = SSRedactStringClient(v84, 1, isSearchToolClient);
            rankingItem33 = [v194 rankingItem];
            *buf = 134219778;
            v196 = queryIdent8;
            v197 = 2112;
            v88 = sectionBundleIdentifier16;
            v87 = v154;
            v198 = v154;
            v199 = 1024;
            *v200 = v158;
            v89 = v192;
            *&v200[4] = 2112;
            *&v200[6] = v81;
            *&v200[14] = 2112;
            *&v200[16] = sectionBundleIdentifier16;
            *&v200[24] = 2112;
            *&v200[26] = v82;
            *&v200[34] = 2112;
            *&v200[36] = v85;
            *&v200[44] = 2048;
            *&v200[46] = [rankingItem33 mostRecentTimeToQueryInMinutesForFreshness];
            v90 = "[SpotlightRanking] [SearchTool] [Pre-filtering] qid=[%llu] query=%@ filter %d-month(s)-old Mail and Messages results %@ bundle=%@ identifier=%@ MDItemIdentifier=%@ for future intent without event type mostRecentTimeToQueryInMinutesForFreshness=%ld";
            goto LABEL_60;
          }
        }

LABEL_97:
        v22 = v192;
        goto LABEL_98;
      }
    }

    goto LABEL_48;
  }

  v18 = rankingCopy;
  v19 = contextCopy;
  v20 = [SSRankingManager searchToolShouldFilterEventBeforeRanking:v18 queryContext:contextCopy matchQUIntent:intentCopy searchToolBundles:bundlesCopy useLLMQU:uCopy hasEventTypeFromQU:v15 != 0];

  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = 1;
  v22 = contextCopy;
LABEL_100:

  return v21;
}

+ (float)computeThresholdWithScale:(float)scale bias:(float)bias cutoffOffset:(float)offset
{
  if (scale == 0.0)
  {
    return 3.4028e38;
  }

  else
  {
    return (offset - bias) / scale;
  }
}

+ (void)calculateLikelihoodForSearchTool:(id)tool queryContext:(id)context isQUInferredIntent:(id)intent isEventSearchIntent:(BOOL)searchIntent
{
  v201 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  contextCopy = context;
  intentCopy = intent;
  v144 = toolCopy;
  [toolCopy sortWithOptions:16 usingComparator:&__block_literal_global_1285];
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  parsedArgSearchTermsFromQU = [contextCopy parsedArgSearchTermsFromQU];
  v11 = [parsedArgSearchTermsFromQU countByEnumeratingWithState:&v178 objects:v200 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v179;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v179 != v14)
        {
          objc_enumerationMutation(parsedArgSearchTermsFromQU);
        }

        v16 = *(*(&v178 + 1) + 8 * i);
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v18 = [v16 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v174 objects:v199 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v175;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v175 != v22)
              {
                objc_enumerationMutation(v19);
              }

              if ([*(*(&v174 + 1) + 8 * j) length])
              {
                ++v13;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v174 objects:v199 count:16];
          }

          while (v21);
        }
      }

      v12 = [parsedArgSearchTermsFromQU countByEnumeratingWithState:&v178 objects:v200 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v135 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v24 = v144;
  v25 = [v24 countByEnumeratingWithState:&v170 objects:v198 count:16];
  obj = v24;
  if (!v25)
  {
    v136 = 0;
    v27 = 0;
    v128 = 0;
    goto LABEL_69;
  }

  v26 = v25;
  v136 = 0;
  v27 = 0;
  v128 = 0;
  v28 = *v171;
  v129 = *v171;
  do
  {
    v29 = 0;
    v132 = v26;
    do
    {
      if (*v171 != v28)
      {
        objc_enumerationMutation(obj);
      }

      rankingItem = [*(*(&v170 + 1) + 8 * v29) rankingItem];
      if (([rankingItem bundleIDType] & 4) != 0)
      {
        [rankingItem engagementScore];
        v51 = v50;
        [rankingItem freshnessScore];
        v53 = v52 * 0.8;
        [rankingItem topicalityScore];
        [rankingItem setLikelihood:v53 * v54 + v51 * 0.2];
        goto LABEL_63;
      }

      v140 = rankingItem;
      if (([contextCopy isLLMQUIntentEventSearch] & 1) == 0)
      {
        [rankingItem normalizedSparseScore];
        if (v31 > 1.0)
        {
          if (([rankingItem bundleIDType] & 0x100000) != 0 && (v32 = @"kMDItemSubject", (objc_msgSend(contextCopy, "llmQUIntentType") & 2) != 0) || (objc_msgSend(rankingItem, "bundleIDType") & 8) != 0 && (v32 = @"kMDItemTextContent", (objc_msgSend(contextCopy, "llmQUIntentType") & 8) != 0))
          {
            matchInfo = [rankingItem matchInfo];
            v34 = [matchInfo objectForKeyedSubscript:v32];

            if (v34)
            {
              v133 = v29;
              v168 = 0u;
              v169 = 0u;
              v166 = 0u;
              v167 = 0u;
              v142 = v34;
              v35 = [v142 countByEnumeratingWithState:&v166 objects:v197 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = 0;
                v145 = *v167;
                do
                {
                  for (k = 0; k != v36; ++k)
                  {
                    if (*v167 != v145)
                    {
                      objc_enumerationMutation(v142);
                    }

                    v39 = *(*(&v166 + 1) + 8 * k);
                    original = [v39 original];
                    v41 = [original length];

                    if (v41)
                    {
                      original2 = [v39 original];
                      whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                      v44 = [original2 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet2];

                      v164 = 0u;
                      v165 = 0u;
                      v162 = 0u;
                      v163 = 0u;
                      v45 = v44;
                      v46 = [v45 countByEnumeratingWithState:&v162 objects:v196 count:16];
                      if (v46)
                      {
                        v47 = v46;
                        v48 = *v163;
                        do
                        {
                          for (m = 0; m != v47; ++m)
                          {
                            if (*v163 != v48)
                            {
                              objc_enumerationMutation(v45);
                            }

                            if ([*(*(&v162 + 1) + 8 * m) length])
                            {
                              ++v37;
                            }
                          }

                          v47 = [v45 countByEnumeratingWithState:&v162 objects:v196 count:16];
                        }

                        while (v47);
                      }
                    }
                  }

                  v36 = [v142 countByEnumeratingWithState:&v166 objects:v197 count:16];
                }

                while (v36);
              }

              else
              {
                v37 = 0;
              }

              v55 = v37 < v13;
              v28 = v129;
              v26 = v132;
              v29 = v133;
              if (!v55)
              {
                if (!v128)
                {
                  rankingItem = v140;
                  v128 = [[Bucket alloc] initWithItem:v140 isPerfectScoreBucket:1];
                  goto LABEL_63;
                }

                if ([(Bucket *)v128 addOne:v140])
                {
                  rankingItem = v140;
                  goto LABEL_63;
                }
              }
            }
          }
        }
      }

      rankingItem = v140;
      sectionBundleIdentifier = [v140 sectionBundleIdentifier];
      v57 = [v135 objectForKeyedSubscript:sectionBundleIdentifier];

      if (v57)
      {
        lastObject = [v57 lastObject];

        if ([(Bucket *)lastObject addOne:v140])
        {
          v136 = lastObject;
        }

        else
        {
          v61 = v29;
          v62 = [[Bucket alloc] initWithItem:v140 isPerfectScoreBucket:0];

          v136 = v62;
          v63 = v62;
          v29 = v61;
          [v57 addObject:v63];
        }

        v27 = v57;
      }

      else
      {
        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v59 = [[Bucket alloc] initWithItem:v140 isPerfectScoreBucket:0];

        [v27 addObject:v59];
        sectionBundleIdentifier2 = [v140 sectionBundleIdentifier];
        [v135 setObject:v27 forKeyedSubscript:sectionBundleIdentifier2];

        v136 = v59;
      }

LABEL_63:

      v29 = v29 + 1;
    }

    while (v29 != v26);
    v64 = [obj countByEnumeratingWithState:&v170 objects:v198 count:16];
    v26 = v64;
  }

  while (v64);
LABEL_69:

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v65 = v135;
  allValues = [v135 allValues];
  v67 = [allValues countByEnumeratingWithState:&v158 objects:v195 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v159;
    do
    {
      for (n = 0; n != v68; ++n)
      {
        if (*v159 != v69)
        {
          objc_enumerationMutation(allValues);
        }

        v71 = *(*(&v158 + 1) + 8 * n);

        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v27 = v71;
        v72 = [v27 countByEnumeratingWithState:&v154 objects:v194 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v155;
          do
          {
            for (ii = 0; ii != v73; ++ii)
            {
              if (*v155 != v74)
              {
                objc_enumerationMutation(v27);
              }

              [*(*(&v154 + 1) + 8 * ii) calculateLikelihood:contextCopy];
            }

            v73 = [v27 countByEnumeratingWithState:&v154 objects:v194 count:16];
          }

          while (v73);
        }
      }

      v68 = [allValues countByEnumeratingWithState:&v158 objects:v195 count:16];
    }

    while (v68);
  }

  [(Bucket *)v128 calculateLikelihood:contextCopy];
  isSearchToolClient = [contextCopy isSearchToolClient];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v134 = obj;
  searchIntentCopy3 = searchIntent;
  v141 = [v134 countByEnumeratingWithState:&v150 objects:v193 count:16];
  if (v141)
  {
    obja = *v151;
    *&v77 = 138413314;
    v127 = v77;
    do
    {
      v78 = 0;
      do
      {
        if (*v151 != obja)
        {
          objc_enumerationMutation(v134);
        }

        v143 = v78;
        rankingItem2 = [*(*(&v150 + 1) + 8 * v78) rankingItem];
        sectionBundleIdentifier3 = [rankingItem2 sectionBundleIdentifier];
        v81 = [intentCopy objectForKeyedSubscript:sectionBundleIdentifier3];
        bOOLValue = [v81 BOOLValue];

        if (bOOLValue)
        {
          [rankingItem2 likelihood];
          [rankingItem2 setLikelihood:v83 + *&inferredAppEntityMatchBoosting];
          v84 = SSGeneralLog();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [rankingItem2 identifier];
            v86 = SSRedactStringClient(identifier, 1, isSearchToolClient);
            [rankingItem2 likelihood];
            *buf = 138412546;
            v183 = v86;
            v184 = 2048;
            v185 = v87;
            _os_log_impl(&dword_1D9F69000, v84, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Boosting] Boosted likelihood for inferred app entity match for item=%@ likelihhod=%0.2f", buf, 0x16u);
          }
        }

        if (searchIntentCopy3 || (v88 = [contextCopy llmQUIntentType], ((objc_msgSend(contextCopy, "inferredLlmQUIntentType") | v88) & 0x4000004) != 0))
        {
          if (([rankingItem2 bundleIDType] & 0x100000) != 0)
          {
            v89 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0x23uLL);
            v90 = extractStringFromArray(v89, 0);
            lowercaseString = [v90 lowercaseString];

            if (lowercaseString)
            {
              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v92 = emailUpdatesSenderList;
              v93 = [v92 countByEnumeratingWithState:&v146 objects:v192 count:16];
              if (v93)
              {
                v94 = v93;
                v95 = *v147;
                do
                {
                  for (jj = 0; jj != v94; ++jj)
                  {
                    if (*v147 != v95)
                    {
                      objc_enumerationMutation(v92);
                    }

                    if ([lowercaseString hasSuffix:*(*(&v146 + 1) + 8 * jj)])
                    {
                      [rankingItem2 likelihood];
                      [rankingItem2 setLikelihood:{fmax(v97 - *&emailUpdatesDemotion, 0.0)}];
                      v98 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 4uLL);
                      v99 = SSGeneralLog();
                      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                      {
                        identifier2 = [rankingItem2 identifier];
                        [rankingItem2 likelihood];
                        *buf = 138412802;
                        v183 = identifier2;
                        v184 = 2112;
                        v185 = v98;
                        v186 = 2048;
                        v187 = v101;
                        _os_log_impl(&dword_1D9F69000, v99, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Demotion] Demoted likelihood for email update item=%@ subject=[%@] likelihood=%0.2f", buf, 0x20u);
                      }
                    }
                  }

                  v94 = [v92 countByEnumeratingWithState:&v146 objects:v192 count:16];
                }

                while (v94);
              }

              searchIntentCopy3 = searchIntent;
              v65 = v135;
            }
          }
        }

        queryDateStringStartDate = [contextCopy queryDateStringStartDate];
        if (queryDateStringStartDate)
        {
          v103 = queryDateStringStartDate;
          queryDateStringEndDate = [contextCopy queryDateStringEndDate];
          if (!queryDateStringEndDate)
          {
            goto LABEL_134;
          }

          v105 = queryDateStringEndDate;
          v106 = [rankingItem2 bundleIDType] & 0x20000000000060;

          if (v106)
          {
            goto LABEL_135;
          }

          if (searchIntentCopy3)
          {
            v103 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0x11uLL);
            v107 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 0x12uLL);
            v108 = v107;
            if (v103 | v107)
            {
              if (v107)
              {
                queryDateStringStartDate2 = [contextCopy queryDateStringStartDate];
                if ([v108 compare:queryDateStringStartDate2] == -1)
                {

                  goto LABEL_130;
                }

                v129 = queryDateStringStartDate2;
                if (!v103)
                {
                  goto LABEL_132;
                }

LABEL_126:
                queryDateStringEndDate2 = [contextCopy queryDateStringEndDate];
                v122 = [v103 compare:queryDateStringEndDate2];

                queryDateStringStartDate2 = v129;
                if (v108)
                {
                }

                if (v122 == 1)
                {
LABEL_130:
                  [rankingItem2 setLikelihood:0.0];
                  v123 = SSGeneralLog();
                  v129 = v123;
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                  {
                    identifier3 = [rankingItem2 identifier];
                    queryDateStringStartDate3 = [contextCopy queryDateStringStartDate];
                    queryDateStringEndDate3 = [contextCopy queryDateStringEndDate];
                    *buf = v127;
                    v183 = identifier3;
                    v184 = 2112;
                    v185 = v103;
                    v186 = 2112;
                    v187 = v108;
                    v188 = 2112;
                    v189 = queryDateStringStartDate3;
                    v190 = 2112;
                    v191 = queryDateStringEndDate3;
                    _os_log_impl(&dword_1D9F69000, v123, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Demotion] Demoted item=%@ likelihood=0.0 pre-extraction startDate=%@ endDate=%@ is not within user specified time startDate=%@ endDate=%@", buf, 0x34u);
                  }

LABEL_132:

                  v129 = queryDateStringStartDate2;
                }
              }

              else if (v103)
              {
                goto LABEL_126;
              }
            }

            searchIntentCopy3 = searchIntent;
LABEL_134:

            goto LABEL_135;
          }

          creationDate = [rankingItem2 creationDate];
          if (!creationDate)
          {
            goto LABEL_135;
          }

          v111 = creationDate;
          creationDate2 = [rankingItem2 creationDate];
          queryDateStringStartDate4 = [contextCopy queryDateStringStartDate];
          if ([creationDate2 compare:queryDateStringStartDate4] == -1)
          {

LABEL_123:
            [rankingItem2 setLikelihood:0.0];
            v103 = SSGeneralLog();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              identifier4 = [rankingItem2 identifier];
              creationDate3 = [rankingItem2 creationDate];
              queryDateStringStartDate5 = [contextCopy queryDateStringStartDate];
              queryDateStringEndDate4 = [contextCopy queryDateStringEndDate];
              *buf = 138413058;
              v183 = identifier4;
              v184 = 2112;
              v185 = creationDate3;
              v186 = 2112;
              v187 = queryDateStringStartDate5;
              v188 = 2112;
              v189 = queryDateStringEndDate4;
              _os_log_impl(&dword_1D9F69000, v103, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Demotion] Demoted item=%@ likelihood=0.0 content creation date=%@ is not within user specified time startDate=%@ endDate=%@", buf, 0x2Au);
            }

            goto LABEL_134;
          }

          creationDate4 = [rankingItem2 creationDate];
          queryDateStringEndDate5 = [contextCopy queryDateStringEndDate];
          v116 = [creationDate4 compare:queryDateStringEndDate5];

          if (v116 == 1)
          {
            goto LABEL_123;
          }
        }

LABEL_135:

        v78 = v143 + 1;
      }

      while (v143 + 1 != v141);
      v141 = [v134 countByEnumeratingWithState:&v150 objects:v193 count:16];
    }

    while (v141);
  }
}

uint64_t __105__SSRankingManager_calculateLikelihoodForSearchTool_queryContext_isQUInferredIntent_isEventSearchIntent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rankingItem];
  [v6 topicalityScore];
  v8 = v7;
  v9 = [v5 rankingItem];
  [v9 topicalityScore];
  v11 = v10;

  if (v8 <= v11)
  {
    v13 = [v4 rankingItem];
    [v13 topicalityScore];
    v15 = v14;
    v16 = [v5 rankingItem];
    [v16 topicalityScore];
    v18 = v17;

    if (v15 < v18)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v19 = [v4 rankingItem];
    [v19 freshnessScore];
    v21 = v20;
    v22 = [v5 rankingItem];
    [v22 freshnessScore];
    v24 = v23;

    if (v21 <= v24)
    {
      v25 = [v4 rankingItem];
      [v25 freshnessScore];
      v27 = v26;
      v28 = [v5 rankingItem];
      [v28 freshnessScore];
      v12 = v27 < v29;

      goto LABEL_7;
    }
  }

  v12 = -1;
LABEL_7:

  return v12;
}

+ (id)getSearchToolL2ModelManager
{
  if (getSearchToolL2ModelManager_onceToken != -1)
  {
    +[SSRankingManager getSearchToolL2ModelManager];
  }

  v3 = getSearchToolL2ModelManager_searchToolL2ModelManager;

  return v3;
}

uint64_t __47__SSRankingManager_getSearchToolL2ModelManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = getSearchToolL2ModelManager_searchToolL2ModelManager;
  getSearchToolL2ModelManager_searchToolL2ModelManager = v0;

  v2 = getSearchToolL2ModelManager_searchToolL2ModelManager;

  return [v2 loadModel];
}

+ (void)searchToolFilterResultsAfterRanking:(id)ranking queryContext:(id)context
{
  v284 = *MEMORY[0x1E69E9840];
  rankingCopy = ranking;
  contextCopy = context;
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (SSEnableSearchToolAbsoluteThresholding(v10, v11) && ([contextCopy isAppEntitySearch] & 1) == 0)
  {
    v12 = ([contextCopy hasSearchTerm] & 1) != 0 || (objc_msgSend(contextCopy, "isLLMQUIntentEventSearch") & 1) != 0 || objc_msgSend(contextCopy, "llmQUIntentType") || objc_msgSend(contextCopy, "inferredLlmQUIntentType") != 0;
    v262 = v12;
  }

  else
  {
    v262 = 0;
  }

  isSearchToolClient = [contextCopy isSearchToolClient];
  v260 = contextCopy;
  v263 = v9;
  v247 = v10;
  if (![contextCopy isSingle])
  {
    goto LABEL_45;
  }

  parsedArgSearchTermsFromQU = [contextCopy parsedArgSearchTermsFromQU];
  v14 = objc_msgSend_count(parsedArgSearchTermsFromQU);
  if (v14)
  {
    v4 = [rankingCopy objectAtIndexedSubscript:0];
    rankingItem = [v4 rankingItem];
    if (([rankingItem bundleIDType] & 0x20) == 0)
    {

      goto LABEL_45;
    }
  }

  v15 = [rankingCopy objectAtIndexedSubscript:0];
  rankingItem2 = [v15 rankingItem];
  [rankingItem2 topicalityScore];
  if (v17 <= 0.999999881)
  {
    v18 = [rankingCopy objectAtIndexedSubscript:0];
    rankingItem3 = [v18 rankingItem];
    [rankingItem3 pommesL1Score];
    if (v20 <= 1.0)
    {
      if (objc_msgSend_count(rankingCopy) < 2)
      {
        v21 = 0;
      }

      else
      {
        v268 = [rankingCopy objectAtIndexedSubscript:0];
        rankingItem4 = [v268 rankingItem];
        [rankingItem4 topicalityScore];
        v23 = v22 * 0.5;
        v264 = [rankingCopy objectAtIndexedSubscript:1];
        [v264 rankingItem];
        v24 = v270 = v18;
        [v24 topicalityScore];
        v21 = v23 > v25;

        v18 = v270;
      }
    }

    else
    {
      v21 = 1;
    }

    if (v14)
    {
    }

    v9 = v263;
    v10 = v247;
    if (!v21)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (v14)
    {
    }

    v9 = v263;
    v10 = v247;
  }

  v26 = [rankingCopy objectAtIndexedSubscript:0];
  rankingItem5 = [v26 rankingItem];
  bundleIDType = [rankingItem5 bundleIDType];

  rankingItem6 = 0;
  if ((bundleIDType & 0x20) != 0)
  {
    v29 = [rankingCopy objectAtIndexedSubscript:0];
    rankingItem6 = [v29 rankingItem];
  }

  if (objc_msgSend_count(rankingCopy) < 2)
  {
    goto LABEL_44;
  }

  v30 = v10;
  v31 = 0;
  v32 = 2;
  v33 = 1;
  do
  {
    v34 = [rankingCopy objectAtIndexedSubscript:v33];
    rankingItem7 = [v34 rankingItem];

    if (rankingItem6)
    {
      v36 = [rankingCopy objectAtIndexedSubscript:v33];
      rankingItem8 = [v36 rankingItem];
      if (([rankingItem8 bundleIDType] & 0x20) != 0 && (objc_msgSend(rankingItem7, "rankedInLowerTier") & 1) == 0 && (v38 = objc_msgSend(rankingItem6, "startDueDateToNowInSeconds"), v38 == objc_msgSend(rankingItem7, "startDueDateToNowInSeconds")) && (objc_msgSend(rankingItem6, "likelihood"), v40 = v39, objc_msgSend(rankingItem7, "likelihood"), v40 <= v41 + 2.22044605e-16))
      {
        [rankingItem6 topicalityScore];
        v48 = v47;
        [rankingItem7 topicalityScore];
        v50 = v49 + 2.22044605e-16;

        if (v48 <= v50)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    [v263 addIndex:v33];
    v42 = SSGeneralLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      searchString = [v260 searchString];
      v45 = SSRedactStringClient(searchString, 1, isSearchToolClient);
      identifier = [rankingItem7 identifier];
      *buf = 138412546;
      v273 = v45;
      v274 = 2112;
      v275 = identifier;
      _os_log_debug_impl(&dword_1D9F69000, v42, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to singular condition", buf, 0x16u);
    }

    v31 = 1;
LABEL_38:

    v33 = v32;
    v43 = objc_msgSend_count(rankingCopy) > v32++;
  }

  while (v43);
  v51 = v260;
  v9 = v263;
  v10 = v30;
  if (v31)
  {
    [v30 addObject:@"singular"];
    goto LABEL_157;
  }

LABEL_44:

LABEL_45:
  rankingItem6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v52 = [rankingCopy objectAtIndexedSubscript:0];
  rankingItem9 = [v52 rankingItem];
  bundleIDType2 = [rankingItem9 bundleIDType];

  v259 = 0;
  if (SSEnableSearchToolL2Ranking(v55, v56))
  {
    v259 = +[SSRankingManager getSearchToolL2ModelManager];
  }

  if (objc_msgSend_count(rankingCopy))
  {
    v57 = 0;
    v267 = 0;
    v269 = 0;
    v265 = 0;
    v271 = 0;
    v58 = 1;
    while (1)
    {
      v59 = [rankingCopy objectAtIndexedSubscript:v57];
      rankingItem10 = [v59 rankingItem];
      if (([rankingItem10 bundleIDType] & 0x800) != 0 && !v267)
      {
        v61 = [rankingCopy objectAtIndexedSubscript:v57];
        rankingItem11 = [v61 rankingItem];
        v267 = [rankingItem11 searchTermsMatchTitle] == 2;
      }

      v63 = [rankingCopy objectAtIndexedSubscript:v57];
      rankingItem12 = [v63 rankingItem];
      if (([rankingItem12 bundleIDType] & 2) != 0 && !v269)
      {
        v65 = [rankingCopy objectAtIndexedSubscript:v57];
        rankingItem13 = [v65 rankingItem];
        v269 = [rankingItem13 searchTermsMatchTitle] < 2;
      }

      v67 = [rankingCopy objectAtIndexedSubscript:v57];
      rankingItem14 = [v67 rankingItem];
      if (([rankingItem14 bundleIDType] & 0x40) != 0 && !v271)
      {
        v69 = [rankingCopy objectAtIndexedSubscript:v57];
        rankingItem15 = [v69 rankingItem];
        v271 = [rankingItem15 searchTermsMatchTitle] < 2;
      }

      v71 = [rankingCopy objectAtIndexedSubscript:v57];
      rankingItem16 = [v71 rankingItem];
      v73 = v265;
      if (([rankingItem16 bundleIDType] & 0x1000000000000000) != 0 && !v265)
      {
        v74 = [rankingCopy objectAtIndexedSubscript:v57];
        rankingItem17 = [v74 rankingItem];
        v73 = [rankingItem17 searchTermsMatchTitle] < 2;
      }

      if (v269 && v267 && v73 && v271)
      {
        break;
      }

      v265 = v73;
      v57 = v58;
      v43 = objc_msgSend_count(rankingCopy) > v58++;
      if (!v43)
      {
        goto LABEL_63;
      }
    }

    LOBYTE(v271) = 1;
    LOBYTE(v265) = 1;
    LOBYTE(v269) = 1;
    LOBYTE(v267) = 1;
  }

  else
  {
    LOBYTE(v271) = 0;
    LOBYTE(v265) = 0;
    LOBYTE(v269) = 0;
    LOBYTE(v267) = 0;
  }

LABEL_63:
  if (!objc_msgSend_count(rankingCopy))
  {
    goto LABEL_156;
  }

  v77 = 0;
  v246 = 0;
  v255 = 0;
  v256 = 0;
  v252 = 0;
  v258 = 0;
  v261 = bundleIDType2 & 0x20000000000060;
  v78 = 1;
  *&v76 = 138413058;
  v245 = v76;
  v79 = v260;
  while (2)
  {
    if (!v262)
    {
      goto LABEL_91;
    }

    if (v259)
    {
      v80 = [rankingCopy objectAtIndexedSubscript:v77];
      rankingItem18 = [v80 rankingItem];
      [rankingItem18 searchToolL2Score];
      v83 = v82;

      if (v83 > 0.0)
      {
        v84 = [rankingCopy objectAtIndexedSubscript:v77];
        rankingItem19 = [v84 rankingItem];
        [v259 getThreshold:{objc_msgSend(rankingItem19, "bundleIDType")}];
        v87 = v86;

        if (v87 > 0.0)
        {
          v88 = [rankingCopy objectAtIndexedSubscript:v77];
          rankingItem20 = [v88 rankingItem];
          [rankingItem20 searchToolL2Score];
          v91 = v90;

          if (v87 > v91)
          {
            [v9 addIndex:v77];
            v92 = SSGeneralLog();
            if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
            {
              v246 = 1;
              goto LABEL_89;
            }

            searchString2 = [v79 searchString];
            v246 = 1;
            v180 = SSRedactStringClient(searchString2, 1, isSearchToolClient);
            v185 = [rankingCopy objectAtIndexedSubscript:v77];
            rankingItem21 = [v185 rankingItem];
            identifier2 = [rankingItem21 identifier];
            v188 = [rankingCopy objectAtIndexedSubscript:v77];
            rankingItem22 = [v188 rankingItem];
            [rankingItem22 searchToolL2Score];
            *buf = v245;
            v273 = v180;
            v274 = 2112;
            v275 = identifier2;
            v276 = 2048;
            v277 = v190;
            v278 = 2048;
            v279 = v87;
            _os_log_debug_impl(&dword_1D9F69000, v92, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to absolute threshold on L2. score=%f threshold=%f", buf, 0x2Au);

            v9 = v263;
            v79 = v260;

LABEL_139:
            goto LABEL_89;
          }
        }

        goto LABEL_91;
      }
    }

    v93 = [rankingCopy objectAtIndexedSubscript:{v77, v245}];
    rankingItem23 = [v93 rankingItem];
    sectionBundleIdentifier = [rankingItem23 sectionBundleIdentifier];
    IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(sectionBundleIdentifier);

    v97 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem24 = [v97 rankingItem];
    rankingItem27 = rankingItem24;
    if (IsSyndicatedPhotos)
    {
      [rankingItem24 topicalityScore];
      v101 = v100;
      v102 = inBundleAbsoluteThresholdForPhotos;
      goto LABEL_74;
    }

    sectionBundleIdentifier2 = [rankingItem24 sectionBundleIdentifier];
    v105 = [sectionBundleIdentifier2 isEqualToString:@"com.apple.DocumentsApp"];

    v106 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem25 = [v106 rankingItem];
    v108 = rankingItem25;
    if (!v105)
    {
      sectionBundleIdentifier3 = [rankingItem25 sectionBundleIdentifier];
      if ([sectionBundleIdentifier3 isEqualToString:@"com.apple.MobileSMS"])
      {
        v111 = [rankingCopy objectAtIndexedSubscript:v77];
        rankingItem26 = [v111 rankingItem];
        if ([rankingItem26 isPromotedSharedLink])
        {

LABEL_133:
          v97 = [rankingCopy objectAtIndexedSubscript:v77];
          rankingItem27 = [v97 rankingItem];
          [rankingItem27 topicalityScore];
          v101 = v158;
          v102 = inBundleAbsoluteThresholdForSharedLinkMatches;
LABEL_74:
          v103 = *&v102;

          goto LABEL_77;
        }

        v156 = [rankingCopy objectAtIndexedSubscript:v77];
        rankingItem28 = [v156 rankingItem];
        isInferredSharedLink = [rankingItem28 isInferredSharedLink];

        v9 = v263;
        if (isInferredSharedLink)
        {
          goto LABEL_133;
        }
      }

      else
      {
      }

      v113 = [rankingCopy objectAtIndexedSubscript:v77];
      rankingItem29 = [v113 rankingItem];
      sectionBundleIdentifier4 = [rankingItem29 sectionBundleIdentifier];
      if ([sectionBundleIdentifier4 isEqualToString:@"com.apple.MobileAddressBook"])
      {
      }

      else
      {
        v116 = [rankingCopy objectAtIndexedSubscript:v77];
        rankingItem30 = [v116 rankingItem];
        sectionBundleIdentifier5 = [rankingItem30 sectionBundleIdentifier];
        v119 = [sectionBundleIdentifier5 isEqualToString:@"com.apple.spotlight.events"];

        v9 = v263;
        if ((v119 & 1) == 0)
        {
          v97 = [rankingCopy objectAtIndexedSubscript:v77];
          rankingItem27 = [v97 rankingItem];
          [rankingItem27 topicalityScore];
          v101 = v184;
          v102 = acrossBundleAbsoluteThreshold;
          goto LABEL_74;
        }
      }

LABEL_86:
      if ((v258 & 1) == 0)
      {
        v258 = 0;
        v79 = v260;
        goto LABEL_91;
      }

      goto LABEL_87;
    }

    [rankingItem25 topicalityScore];
    v101 = v109;
    v103 = *&inBundleAbsoluteThresholdForFiles;

LABEL_77:
    if (v101 >= v103)
    {
      goto LABEL_86;
    }

    [v9 addIndex:v77];
LABEL_87:
    v92 = SSGeneralLog();
    v79 = v260;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      searchString3 = [v260 searchString];
      v258 = 1;
      v180 = SSRedactStringClient(searchString3, 1, isSearchToolClient);
      v181 = [rankingCopy objectAtIndexedSubscript:v77];
      rankingItem31 = [v181 rankingItem];
      identifier3 = [rankingItem31 identifier];
      *buf = 138412546;
      v273 = v180;
      v274 = 2112;
      v275 = identifier3;
      _os_log_debug_impl(&dword_1D9F69000, v92, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to absolute threshold", buf, 0x16u);

      v79 = v260;
      goto LABEL_139;
    }

    v258 = 1;
LABEL_89:

LABEL_91:
    v120 = [rankingCopy objectAtIndexedSubscript:{v77, v245}];
    rankingItem32 = [v120 rankingItem];
    if (([rankingItem32 bundleIDType] & 0x800) == 0 || !v267)
    {

      goto LABEL_96;
    }

    v122 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem33 = [v122 rankingItem];
    searchTermsMatchTitle = [rankingItem33 searchTermsMatchTitle];

    if (searchTermsMatchTitle != 2)
    {
      [v9 addIndex:v77];
      v120 = SSGeneralLog();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
        searchString4 = [v79 searchString];
        LOBYTE(v255) = 1;
        v160 = SSRedactStringClient(searchString4, 1, isSearchToolClient);
        v161 = [rankingCopy objectAtIndexedSubscript:v77];
        rankingItem34 = [v161 rankingItem];
        identifier4 = [rankingItem34 identifier];
        *buf = 138412546;
        v273 = v160;
        v274 = 2112;
        v275 = identifier4;
        _os_log_debug_impl(&dword_1D9F69000, v120, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to perfect match document availability.", buf, 0x16u);

        v79 = v260;
      }

      else
      {
        LOBYTE(v255) = 1;
      }

LABEL_96:
    }

    v125 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem35 = [v125 rankingItem];
    if (([rankingItem35 bundleIDType] & 2) == 0 || !v269)
    {

      goto LABEL_102;
    }

    v127 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem36 = [v127 rankingItem];
    searchTermsMatchTitle2 = [rankingItem36 searchTermsMatchTitle];

    if (searchTermsMatchTitle2 >= 2)
    {
      [v9 addIndex:v77];
      v125 = SSGeneralLog();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
      {
        searchString5 = [v79 searchString];
        BYTE4(v255) = 1;
        v165 = SSRedactStringClient(searchString5, 1, isSearchToolClient);
        v166 = [rankingCopy objectAtIndexedSubscript:v77];
        rankingItem37 = [v166 rankingItem];
        identifier5 = [rankingItem37 identifier];
        *buf = 138412546;
        v273 = v165;
        v274 = 2112;
        v275 = identifier5;
        _os_log_debug_impl(&dword_1D9F69000, v125, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to perfect title match note availability.", buf, 0x16u);

        v79 = v260;
      }

      else
      {
        BYTE4(v255) = 1;
      }

LABEL_102:
    }

    v130 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem38 = [v130 rankingItem];
    if (([rankingItem38 bundleIDType] & 0x1000000000000000) == 0 || !v265)
    {

      goto LABEL_108;
    }

    v132 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem39 = [v132 rankingItem];
    searchTermsMatchTitle3 = [rankingItem39 searchTermsMatchTitle];

    if (searchTermsMatchTitle3 >= 2)
    {
      [v9 addIndex:v77];
      v130 = SSGeneralLog();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
      {
        searchString6 = [v79 searchString];
        BYTE4(v256) = 1;
        v170 = SSRedactStringClient(searchString6, 1, isSearchToolClient);
        v171 = [rankingCopy objectAtIndexedSubscript:v77];
        rankingItem40 = [v171 rankingItem];
        identifier6 = [rankingItem40 identifier];
        *buf = 138412546;
        v273 = v170;
        v274 = 2112;
        v275 = identifier6;
        _os_log_debug_impl(&dword_1D9F69000, v130, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to perfect title match freeform availability.", buf, 0x16u);

        v79 = v260;
      }

      else
      {
        BYTE4(v256) = 1;
      }

LABEL_108:
    }

    v135 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem41 = [v135 rankingItem];
    if (([rankingItem41 bundleIDType] & 0x40) == 0 || !v271)
    {

      goto LABEL_114;
    }

    v137 = [rankingCopy objectAtIndexedSubscript:v77];
    rankingItem42 = [v137 rankingItem];
    searchTermsMatchTitle4 = [rankingItem42 searchTermsMatchTitle];

    if (searchTermsMatchTitle4 >= 2)
    {
      [v9 addIndex:v77];
      v135 = SSGeneralLog();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
      {
        searchString7 = [v79 searchString];
        LOBYTE(v256) = 1;
        v175 = SSRedactStringClient(searchString7, 1, isSearchToolClient);
        v176 = [rankingCopy objectAtIndexedSubscript:v77];
        rankingItem43 = [v176 rankingItem];
        identifier7 = [rankingItem43 identifier];
        *buf = 138412546;
        v273 = v175;
        v274 = 2112;
        v275 = identifier7;
        _os_log_debug_impl(&dword_1D9F69000, v135, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter result identifier=%@ due to perfect title match reminders availability.", buf, 0x16u);

        v79 = v260;
      }

      else
      {
        LOBYTE(v256) = 1;
      }

LABEL_114:
    }

    if (v261 && v78 != 1)
    {
      v140 = [rankingCopy objectAtIndexedSubscript:v77];
      rankingItem44 = [v140 rankingItem];

      v142 = SSCompactRankingAttrsGetValue([rankingItem44 attributes], 0x11uLL);
      if (v142)
      {
        if ([v79 earliestTokenFromQU] && (objc_msgSend(v142, "timeIntervalSinceReferenceDate"), v144 = v143, objc_msgSend(v79, "currentTime"), v144 < v145) || objc_msgSend(v79, "latestTokenFromQU") && (objc_msgSend(v142, "timeIntervalSinceReferenceDate"), v147 = v146, objc_msgSend(v79, "currentTime"), v147 > v148))
        {
          [v263 addIndex:v77];
          v149 = SSCompactRankingAttrsGetValue([rankingItem44 attributes], 7uLL);
          if (!v149)
          {
            v149 = SSCompactRankingAttrsGetValue([rankingItem44 attributes], 0xCuLL);
            if (!v149)
            {
              v149 = SSCompactRankingAttrsGetValue([rankingItem44 attributes], 4uLL);
              if (!v149)
              {
                v149 = SSCompactRankingAttrsGetValue([rankingItem44 attributes], 6uLL);
              }
            }
          }

          v150 = v149;
          v151 = SSGeneralLog();
          if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
          {
            queryIdent = [v260 queryIdent];
            searchString8 = [v260 searchString];
            v152 = SSRedactStringClient(searchString8, 1, isSearchToolClient);
            SSRedactStringClient(v150, 1, isSearchToolClient);
            v153 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            sectionBundleIdentifier6 = [rankingItem44 sectionBundleIdentifier];
            identifier8 = [rankingItem44 identifier];
            v155 = SSRedactStringClient(identifier8, 1, isSearchToolClient);
            *buf = 134219266;
            v273 = queryIdent;
            v274 = 2112;
            v275 = v152;
            v276 = 2112;
            v277 = v153;
            v278 = 2112;
            v279 = *&sectionBundleIdentifier6;
            v280 = 2112;
            v281 = v155;
            v282 = 2112;
            v283 = v142;
            _os_log_impl(&dword_1D9F69000, v151, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Post-filtering] qid=[%llu] query=[%@] filter based on pre-extraction date name=[%@] bundle=%@ identifier=%@ startDate=%@", buf, 0x3Eu);
          }

          v252 = 1;
          v79 = v260;
        }
      }

      v9 = v263;
    }

    v77 = v78;
    v43 = objc_msgSend_count(rankingCopy) > v78++;
    if (v43)
    {
      continue;
    }

    break;
  }

  v10 = v247;
  if (v258)
  {
    [v247 addObject:@"thresholding_by_absolute_value"];
  }

  if (v246)
  {
    [v247 addObject:@"thresholding_by_absolute_value_l2"];
  }

  if (v252)
  {
    [v247 addObject:@"filtering_by_pre_extraction_date"];
  }

  if (v255)
  {
    [v247 addObject:@"filtered_document_due_to_better_document_title_match"];
  }

  if ((v255 & 0x100000000) != 0)
  {
    [v247 addObject:@"filtered_note_due_to_better_note_title_match"];
  }

  if (v256)
  {
    [v247 addObject:@"filtered_reminder_due_to_better_reminder_title_match"];
  }

  if ((v256 & 0x100000000) != 0)
  {
    [v247 addObject:@"filtered_freeform_due_to_better_freeform_title_match"];
  }

LABEL_156:

  v51 = v260;
LABEL_157:

  queryUnderstandingOutput = [v51 queryUnderstandingOutput];
  v192 = [queryUnderstandingOutput objectForKeyedSubscript:@"embeddingScale"];

  queryUnderstandingOutput2 = [v51 queryUnderstandingOutput];
  v194 = [queryUnderstandingOutput2 objectForKeyedSubscript:@"embeddingBias"];

  if (!objc_msgSend_count(rankingCopy))
  {
    goto LABEL_165;
  }

  v195 = 0;
  while (2)
  {
    v196 = [rankingCopy objectAtIndexedSubscript:v195];
    rankingItem45 = [v196 rankingItem];
    sectionBundleIdentifier7 = [rankingItem45 sectionBundleIdentifier];
    v199 = SSSectionIsSyndicatedPhotos(sectionBundleIdentifier7);

    if (!v199)
    {
LABEL_164:
      if (++v195 >= objc_msgSend_count(rankingCopy))
      {
        goto LABEL_165;
      }

      continue;
    }

    break;
  }

  v200 = [rankingCopy objectAtIndexedSubscript:v195];
  rankingItem46 = [v200 rankingItem];
  [rankingItem46 pommesL1Score];
  if (v202 <= 10.0)
  {

    goto LABEL_164;
  }

  v203 = [rankingCopy objectAtIndexedSubscript:v195];
  rankingItem47 = [v203 rankingItem];
  [rankingItem47 pommesL1Score];
  v206 = v205;

  if (v206 >= 50.0)
  {
    goto LABEL_164;
  }

  [v192 floatValue];
  v214 = v213;
  [v194 floatValue];
  LODWORD(v216) = v215;
  LODWORD(v217) = 1060457624;
  LODWORD(v218) = v214;
  [SSRankingManager computeThresholdWithScale:v218 bias:v216 cutoffOffset:v217];
  v220 = v219;
  if (!objc_msgSend_count(rankingCopy))
  {
    goto LABEL_165;
  }

  v221 = 0;
  v222 = 0;
  while (2)
  {
    v223 = [rankingCopy objectAtIndexedSubscript:v221];
    rankingItem48 = [v223 rankingItem];
    sectionBundleIdentifier8 = [rankingItem48 sectionBundleIdentifier];
    v226 = SSSectionIsSyndicatedPhotos(sectionBundleIdentifier8);

    if (!v226)
    {
      goto LABEL_183;
    }

    v227 = [rankingCopy objectAtIndexedSubscript:v221];
    rankingItem49 = [v227 rankingItem];
    retrievalType = [rankingItem49 retrievalType];
    intValue = [retrievalType intValue];

    v231 = [rankingCopy objectAtIndexedSubscript:v221];
    rankingItem50 = [v231 rankingItem];
    v233 = rankingItem50;
    if (intValue == 2)
    {
      [rankingItem50 embeddingSimilarity];
      v235 = v234;

      goto LABEL_175;
    }

    retrievalType2 = [rankingItem50 retrievalType];
    intValue2 = [retrievalType2 intValue];

    v238 = [rankingCopy objectAtIndexedSubscript:v221];
    rankingItem51 = [v238 rankingItem];
    [rankingItem51 pommesL1Score];
    v241 = v240;
    if (intValue2 != 3)
    {

      if (v241 >= 10.0)
      {
        goto LABEL_183;
      }

      goto LABEL_181;
    }

    if (v240 >= 10.0)
    {

      goto LABEL_183;
    }

    v242 = [rankingCopy objectAtIndexedSubscript:v221];
    rankingItem52 = [v242 rankingItem];
    [rankingItem52 embeddingSimilarity];
    v235 = v244;

LABEL_175:
    if (v235 < v220)
    {
LABEL_181:
      [v263 addIndex:v221];
      v222 = 1;
    }

LABEL_183:
    if (++v221 < objc_msgSend_count(rankingCopy))
    {
      continue;
    }

    break;
  }

  if (v222)
  {
    [v10 addObject:@"exactMatchFilter"];
  }

LABEL_165:
  v207 = v260;
  if (objc_msgSend_count(v263))
  {
    v208 = SSGeneralLog();
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
    {
      searchString9 = [v260 searchString];
      v210 = SSRedactStringClient(searchString9, 1, [v260 isSearchToolClient]);
      v211 = objc_msgSend_count(v263);
      [v10 componentsJoinedByString:{@", "}];
      v212 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412802;
      v273 = v210;
      v274 = 2048;
      v275 = v211;
      v276 = 2112;
      v277 = v212;
      _os_log_impl(&dword_1D9F69000, v208, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Post-filtering] query=%@ filter %lu result for [%@]", buf, 0x20u);

      v207 = v260;
    }

    [rankingCopy removeObjectsAtIndexes:v263];
  }
}

+ (id)searchToolPopulateResultsForBiomeForTTRWithResult:(id)result queryContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  contextCopy = context;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = resultCopy;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v11 = 1;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (v11 > 0x14)
      {
        break;
      }

      rankingItem = [*(*(&v29 + 1) + 8 * v12) rankingItem];
      v14 = rankingItem;
      if (rankingItem)
      {
        serializeToDictForBiomeDonation = [rankingItem serializeToDictForBiomeDonation];
        if (objc_msgSend_count(serializeToDictForBiomeDonation))
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rank %lu", v11];
          [v6 setObject:serializeToDictForBiomeDonation forKey:v16];
          ++v11;
        }
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  queryUnderstandingOutput = [contextCopy queryUnderstandingOutput];
  v18 = [queryUnderstandingOutput objectForKey:@"kQPParseResultEcrGroundedOutput"];

  if (objc_msgSend_count(v18))
  {
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v18])
    {
      [v6 setObject:v18 forKey:@"kQPParseResultEcrGroundedOutput"];
    }

    else
    {
      v19 = SSGeneralLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[SSRankingManager searchToolPopulateResultsForBiomeForTTRWithResult:queryContext:];
      }
    }
  }

  v28 = 0;
  v20 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:&v28];
  v21 = v28;
  v22 = [v20 length];
  v23 = SSGeneralLog();
  v24 = v23;
  if (!v22 || v21)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[SSRankingManager searchToolPopulateResultsForBiomeForTTRWithResult:queryContext:];
    }

    v25 = 0;
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [SSRankingManager searchToolPopulateResultsForBiomeForTTRWithResult:contextCopy queryContext:?];
    }

    v25 = v20;
  }

  return v25;
}

+ (void)searchToolDonateResultsToBiomeForTTRWithData:(id)data forQuery:(id)query
{
  v5 = searchToolDonateResultsToBiomeForTTRWithData_forQuery__onceToken;
  queryCopy = query;
  dataCopy = data;
  if (v5 != -1)
  {
    +[SSRankingManager searchToolDonateResultsToBiomeForTTRWithData:forQuery:];
  }

  date = [MEMORY[0x1E695DF00] date];
  [searchToolDonateResultsToBiomeForTTRWithData_forQuery__ssSearchToolDonation donateSpotlightRankingItemsWithQuery:queryCopy data:dataCopy timestamp:date requestID:&stru_1F556FE60];
}

uint64_t __74__SSRankingManager_searchToolDonateResultsToBiomeForTTRWithData_forQuery___block_invoke()
{
  searchToolDonateResultsToBiomeForTTRWithData_forQuery__ssSearchToolDonation = objc_alloc_init(SSSearchToolDonation);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)searchToolSortResults:(id)results isQUIntent:(id)intent isQUInferredIntent:(id)inferredIntent queryContext:(id)context searchToolBundles:(id)bundles eventSearchIntent:(BOOL)searchIntent maxTopicalityPerBundle:(id)bundle preExtractionBoost:(BOOL)self0
{
  intentCopy = intent;
  inferredIntentCopy = inferredIntent;
  contextCopy = context;
  bundlesCopy = bundles;
  bundleCopy = bundle;
  resultsCopy = results;
  LOBYTE(results) = [contextCopy isSearchToolClient];
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke;
  v32[3] = &unk_1E8595B08;
  v33 = intentCopy;
  v34 = inferredIntentCopy;
  v22 = contextCopy;
  v35 = v22;
  v36 = bundlesCopy;
  searchIntentCopy = searchIntent;
  v37 = bundleCopy;
  v38 = v21;
  boostCopy = boost;
  resultsCopy2 = results;
  v23 = v21;
  v24 = bundleCopy;
  v25 = bundlesCopy;
  v26 = inferredIntentCopy;
  v27 = intentCopy;
  [resultsCopy sortWithOptions:16 usingComparator:v32];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_3;
  v29[3] = &unk_1E8595B30;
  v30 = v22;
  resultsCopy3 = results;
  v28 = v22;
  [v23 enumerateKeysAndObjectsUsingBlock:v29];
}

uint64_t __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v547[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 rankingItem];
  v7 = [v6 sectionBundleIdentifier];
  if (v7)
  {
    v8 = [v4 rankingItem];
    v9 = [v8 sectionBundleIdentifier];
  }

  else
  {
    v8 = [v4 resultBundleId];
    v9 = v8;
  }

  v10 = [v5 rankingItem];
  v11 = [v10 sectionBundleIdentifier];
  if (v11)
  {
    v12 = [v5 rankingItem];
    v13 = [v12 sectionBundleIdentifier];
  }

  else
  {
    v12 = [v5 resultBundleId];
    v13 = v12;
  }

  if (v9)
  {
    v14 = a1;
    v15 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v16 = [v15 BOOLValue];

    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    v14 = a1;
    if (v13)
    {
LABEL_9:
      v17 = [v14[4] objectForKeyedSubscript:v13];
      v18 = [v17 BOOLValue];

      if (v9)
      {
        goto LABEL_10;
      }

LABEL_14:
      v20 = 0;
      if (v13)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  v18 = 0;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_10:
  v19 = [v14[5] objectForKeyedSubscript:v9];
  v20 = [v19 BOOLValue];

  if (v13)
  {
LABEL_11:
    v21 = [v14[5] objectForKeyedSubscript:v13];
    v22 = [v21 BOOLValue];

    goto LABEL_16;
  }

LABEL_15:
  v22 = 0;
LABEL_16:
  v504 = [v14[6] llmQUIntentType];
  v23 = [v4 rankingItem];
  v502 = [v23 detectedEventType];

  v500 = [v14[6] llmQUIntentType];
  v24 = [v5 rankingItem];
  v498 = [v24 detectedEventType];

  v25 = [v4 rankingItem];
  v510 = [v25 isMailCategoryPromotions];

  v526 = v5;
  v26 = [v5 rankingItem];
  v507 = [v26 isMailCategoryPromotions];

  v518 = v9;
  v27 = [v9 isEqualToString:@"com.apple.MobileAddressBook"];
  v517 = v13;
  v28 = [v13 isEqualToString:@"com.apple.MobileAddressBook"];
  v29 = [v4 rankingItem];
  v30 = [v29 preExtractedCardType];
  if (v30)
  {
    v31 = [v4 rankingItem];
    v496 = [v31 cardExpirationDateToNowInSeconds] > 0;
  }

  else
  {
    v496 = 0;
  }

  v32 = [v526 rankingItem];
  v33 = [v32 preExtractedCardType];
  if (v33)
  {
    v34 = [v526 rankingItem];
    v494 = [v34 cardExpirationDateToNowInSeconds] > 0;
  }

  else
  {
    v494 = 0;
  }

  v35 = [v4 rankingItem];
  v36 = SSCompactRankingAttrsGetValue([v35 attributes], 7uLL);

  v37 = [v4 rankingItem];
  v38 = SSCompactRankingAttrsGetValue([v37 attributes], 0xCuLL);

  v39 = [v4 rankingItem];
  v524 = SSCompactRankingAttrsGetValue([v39 attributes], 4uLL);

  v40 = [v4 rankingItem];
  v523 = SSCompactRankingAttrsGetValue([v40 attributes], 6uLL);

  v41 = v36;
  v513 = v38;
  v514 = v36;
  if (v36 || (v41 = v38) != 0)
  {
    v516 = v41;
  }

  else
  {
    v55 = v524;
    if (!v524)
    {
      v55 = v523;
    }

    v56 = v55;
    v57 = &stru_1F556FE60;
    if (v56)
    {
      v57 = v56;
    }

    v516 = v57;
  }

  v42 = [v526 rankingItem];
  v43 = SSCompactRankingAttrsGetValue([v42 attributes], 7uLL);

  v44 = [v526 rankingItem];
  v525 = SSCompactRankingAttrsGetValue([v44 attributes], 0xCuLL);

  v45 = [v526 rankingItem];
  v522 = SSCompactRankingAttrsGetValue([v45 attributes], 4uLL);

  v46 = [v526 rankingItem];
  v521 = SSCompactRankingAttrsGetValue([v46 attributes], 6uLL);

  v47 = v43;
  v512 = v43;
  if (v43 || (v47 = v525) != 0)
  {
    v515 = v47;
  }

  else
  {
    v58 = v522;
    if (!v522)
    {
      v58 = v521;
    }

    v59 = v58;
    v60 = &stru_1F556FE60;
    if (v59)
    {
      v60 = v59;
    }

    v515 = v60;
  }

  v48 = [v4 rankingItem];
  if ([v48 isPromotedInstantAnswer])
  {
    v49 = [v526 rankingItem];
    v50 = [v49 isPromotedInstantAnswer];

    if (!v50)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v51 = [v4 rankingItem];
  if ([v51 isPromotedInstantAnswer])
  {
  }

  else
  {
    v52 = [v526 rankingItem];
    v53 = [v52 isPromotedInstantAnswer];

    if (v53)
    {
      goto LABEL_52;
    }
  }

  if (!(v18 & 1 | ((v16 & 1) == 0)))
  {
    goto LABEL_39;
  }

  if (!(v16 & 1 | ((v18 & 1) == 0)))
  {
    goto LABEL_52;
  }

  if (!(v22 & 1 | ((v20 & 1) == 0)) && v27 == 1)
  {
    goto LABEL_39;
  }

  if (!(v20 & 1 | ((v22 & 1) == 0)) && v28 == 1)
  {
LABEL_52:
    v54 = 1;
    goto LABEL_53;
  }

  v64 = a1;
  v65 = v526;
  v62 = v517;
  v61 = v518;
  if (([*(a1 + 48) isAppEntitySearch] & 1) == 0 && objc_msgSend(*(a1 + 56), "containsObject:", v518) && !objc_msgSend(*(a1 + 56), "containsObject:", v517))
  {
LABEL_299:
    v54 = -1;
    goto LABEL_54;
  }

  if ([*(a1 + 48) isAppEntitySearch] & 1) == 0 && (objc_msgSend(*(a1 + 56), "containsObject:", v518) & 1) == 0 && (objc_msgSend(*(a1 + 56), "containsObject:", v517))
  {
LABEL_84:
    v54 = 1;
    goto LABEL_54;
  }

  v66 = [v4 rankingItem];
  v67 = [v66 sectionBundleIdentifier];
  v68 = [v526 rankingItem];
  v69 = [v68 sectionBundleIdentifier];
  if (![v67 isEqualToString:v69])
  {

    goto LABEL_74;
  }

  v70 = [v4 rankingItem];
  v71 = [v70 sectionBundleIdentifier];
  if ([v71 isEqualToString:@"com.apple.mobilecal"])
  {
    goto LABEL_67;
  }

  v72 = [v4 rankingItem];
  v73 = [v72 sectionBundleIdentifier];
  if ([v73 isEqualToString:@"com.apple.reminders"])
  {
LABEL_66:

    v65 = v526;
LABEL_67:

    v62 = v517;
    v61 = v518;
    goto LABEL_68;
  }

  v490 = v70;
  v492 = v72;
  v74 = [v4 rankingItem];
  v75 = [v74 sectionBundleIdentifier];
  if ([v75 isEqualToString:@"com.apple.spotlight.events"])
  {

    v70 = v490;
    v72 = v492;
    goto LABEL_66;
  }

  v486 = v75;
  v488 = v74;
  v484 = [v4 rankingItem];
  v128 = [v484 sectionBundleIdentifier];
  v129 = [v128 isEqualToString:@"com.apple.mobilemail"];
  if ((v129 & 1) == 0)
  {
    v479 = [v4 rankingItem];
    v477 = [v479 sectionBundleIdentifier];
    if (![v477 isEqualToString:@"com.apple.MobileSMS"])
    {
      LOBYTE(v481) = 0;
      goto LABEL_289;
    }
  }

  if (([*(a1 + 48) llmQUIntentType] & 0xA) != 0)
  {
    v481 = [*(a1 + 48) hasSearchTerm] ^ 1;
    if (v129)
    {
      goto LABEL_290;
    }

LABEL_289:

    goto LABEL_290;
  }

  LOBYTE(v481) = 0;
  if ((v129 & 1) == 0)
  {
    goto LABEL_289;
  }

LABEL_290:

  v62 = v517;
  v61 = v518;
  v65 = v526;
  if ((v481 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_68:
  v76 = [v4 rankingItem];
  [v76 topicalityScore];
  v78 = v77;

  v79 = [v65 rankingItem];
  [v79 topicalityScore];
  v81 = v80;

  if (*(a1 + 80))
  {
    v82 = [v4 rankingItem];
    v83 = [v82 sectionBundleIdentifier];
    if ([v83 isEqualToString:@"com.apple.spotlight.events"])
    {
      v84 = [v65 rankingItem];
      v85 = [v84 sectionBundleIdentifier];
      v86 = [v85 isEqualToString:@"com.apple.spotlight.events"];

      v64 = a1;
      v87 = (v86 & 1) == 0;
      v65 = v526;
      if (!v87)
      {
        v78 = 10000.0;
        v81 = 9999.0;
      }
    }

    else
    {
    }
  }

  v101 = [v4 rankingItem];
  v102 = [v101 sectionBundleIdentifier];
  v103 = 0.5;
  if (([v102 isEqualToString:@"com.apple.spotlight.events"] & 1) == 0)
  {
    v104 = *(v64 + 64);
    v105 = [v4 rankingItem];
    v106 = [v105 sectionBundleIdentifier];
    v107 = [v104 objectForKeyedSubscript:v106];
    [v107 floatValue];
    v103 = v108 * 0.85;

    v64 = a1;
  }

  if ([*(v64 + 48) latestTokenFromQU])
  {
    v109 = [v4 rankingItem];
    if ([v109 startDueDateToNowInSeconds] < 0)
    {
      v120 = [v65 rankingItem];
      v121 = [v120 startDueDateToNowInSeconds];

      if (v121 >= 1)
      {
LABEL_296:
        v243 = v65;
LABEL_297:
        v96 = [v243 rankingItem];
        [v96 setRankedInLowerTier:1];
        goto LABEL_298;
      }
    }

    else
    {
    }

    v110 = [v4 rankingItem];
    if ([v110 startDueDateToNowInSeconds] <= 0)
    {
    }

    else
    {
      v111 = [v65 rankingItem];
      v112 = [v111 startDueDateToNowInSeconds];

      if (v112 < 0)
      {
        goto LABEL_380;
      }
    }

    v122 = [v4 rankingItem];
    if (([v122 bundleIDType] & 0x60) != 0)
    {
      v123 = [v4 rankingItem];
      if ([v123 searchTermsMatchTitle] < 3)
      {
        v124 = [v65 rankingItem];
        v125 = [v124 searchTermsMatchTitle];

        if (v125 >= 3 && v78 > v103)
        {
          v547[0] = @"[Promotion]";
          v547[1] = v516;
          v547[2] = @"Calender/Reminder matched title";
          v126 = MEMORY[0x1E695DEC8];
          v127 = v547;
LABEL_134:
          v140 = [v126 arrayWithObjects:v127 count:3];
          v141 = *(a1 + 72);
          v142 = [v4 rankingItem];
          v143 = [v142 identifier];
          [v141 setObject:v140 forKeyedSubscript:v143];

          goto LABEL_296;
        }

LABEL_137:
        v144 = [v4 rankingItem];
        if (([v144 bundleIDType] & 0x60) != 0)
        {
          v145 = [v4 rankingItem];
          if ([v145 searchTermsMatchTitle] > 2)
          {
            v146 = [v65 rankingItem];
            v147 = [v146 searchTermsMatchTitle];

            if (v147 <= 2 && v81 > v103)
            {
              v546[0] = @"[Promotion]";
              v546[1] = v515;
              v546[2] = @"Calender/Reminder matched title";
              v148 = MEMORY[0x1E695DEC8];
              v149 = v546;
LABEL_207:
              v189 = [v148 arrayWithObjects:v149 count:3];
              v190 = *(a1 + 72);
              v191 = v65;
LABEL_379:
              v303 = [v191 rankingItem];
              v304 = [v303 identifier];
              [v190 setObject:v189 forKeyedSubscript:v304];

              goto LABEL_380;
            }

            goto LABEL_144;
          }
        }

LABEL_144:
        v150 = [v4 rankingItem];
        if (([v150 bundleIDType] & 0x20) == 0)
        {
LABEL_151:

LABEL_152:
          v154 = [v4 rankingItem];
          if (([v154 bundleIDType] & 0x20) == 0)
          {
LABEL_157:

            goto LABEL_158;
          }

          v155 = [v4 rankingItem];
          if ([v155 isLLMQUPersonMatchedInRecipient])
          {
LABEL_156:

            goto LABEL_157;
          }

          v156 = [v4 rankingItem];
          if ([v156 isLLMQUPersonMatchedInAuthor])
          {

            goto LABEL_156;
          }

          v258 = [v526 rankingItem];
          if ([v258 isLLMQUPersonMatchedInRecipient])
          {
            v259 = v81 > v103;
          }

          else
          {
            v275 = [v526 rankingItem];
            v276 = [v275 isLLMQUPersonMatchedInAuthor];
            if (v81 > v103)
            {
              v259 = v276;
            }

            else
            {
              v259 = 0;
            }
          }

          if (!v259)
          {
LABEL_158:
            v157 = [v4 rankingItem];
            v158 = [v157 startDueDateToNowInSeconds];
            if (v158 >= 0)
            {
              v159 = v158;
            }

            else
            {
              v159 = -v158;
            }

            v65 = v526;
            v160 = [v526 rankingItem];
            v161 = [v160 startDueDateToNowInSeconds];
            if (v161 >= 0)
            {
              v162 = v161;
            }

            else
            {
              v162 = -v161;
            }

            if (v159 >= v162 || v78 <= v103)
            {
            }

            else
            {
              v163 = [*(a1 + 48) orderByTimeAscending];

              if ((v163 & 1) == 0)
              {
                goto LABEL_296;
              }
            }

            v164 = [v4 rankingItem];
            v165 = [v164 startDueDateToNowInSeconds];
            if (v165 >= 0)
            {
              v166 = v165;
            }

            else
            {
              v166 = -v165;
            }

            v167 = [v526 rankingItem];
            v168 = [v167 startDueDateToNowInSeconds];
            if (v168 >= 0)
            {
              v169 = v168;
            }

            else
            {
              v169 = -v168;
            }

            if (v166 <= v169 || v81 <= v103)
            {
            }

            else
            {
              v170 = [*(a1 + 48) orderByTimeAscending];

              if ((v170 & 1) == 0)
              {
                goto LABEL_380;
              }
            }

            v173 = [v4 rankingItem];
            v174 = [v173 startDueDateToNowInSeconds];
            v175 = [v526 rankingItem];
            if (v174 >= [v175 startDueDateToNowInSeconds] || v78 <= v103)
            {
            }

            else
            {
              v176 = [*(a1 + 48) orderByTimeAscending];

              if (v176)
              {
                goto LABEL_296;
              }
            }

            v66 = [v4 rankingItem];
            v179 = [v66 startDueDateToNowInSeconds];
            v67 = [v526 rankingItem];
            if (v179 > [v67 startDueDateToNowInSeconds])
            {
              v64 = a1;
              if (v81 > v103)
              {
                v180 = [*(a1 + 48) orderByTimeAscending];
                goto LABEL_312;
              }

              goto LABEL_74;
            }

            goto LABEL_314;
          }

          v544[0] = @"[Promotion]";
          v544[1] = v515;
          v544[2] = @"Calender/Reminder matched recipient/author";
          v277 = MEMORY[0x1E695DEC8];
          v278 = v544;
LABEL_378:
          v189 = [v277 arrayWithObjects:v278 count:3];
          v190 = *(a1 + 72);
          v191 = v526;
          goto LABEL_379;
        }

        v151 = [v4 rankingItem];
        v152 = [v151 isLLMQUPersonMatchedInRecipient];
        if ((v152 & 1) == 0)
        {
          v102 = [v4 rankingItem];
          if (![v102 isLLMQUPersonMatchedInAuthor])
          {
            goto LABEL_149;
          }
        }

        v153 = [v65 rankingItem];
        if ([v153 isLLMQUPersonMatchedInRecipient])
        {

          if (v152)
          {
LABEL_150:

            goto LABEL_151;
          }

LABEL_149:

          goto LABEL_150;
        }

        v192 = [v65 rankingItem];
        v193 = [v192 isLLMQUPersonMatchedInAuthor];
        if (v78 <= v103)
        {
          v194 = 1;
        }

        else
        {
          v194 = v193;
        }

        if ((v152 & 1) == 0)
        {
        }

        v195 = a1;
        if (v194)
        {
          goto LABEL_152;
        }

        v545[0] = @"[Promotion]";
        v545[1] = v516;
        v545[2] = @"Calender/Reminder matched recipient/author";
        v196 = MEMORY[0x1E695DEC8];
        v197 = v545;
LABEL_333:
        v268 = [v196 arrayWithObjects:v197 count:3];
        v269 = *(v195 + 72);
        v270 = [v4 rankingItem];
        v271 = [v270 identifier];
        [v269 setObject:v268 forKeyedSubscript:v271];

        v243 = v526;
        goto LABEL_297;
      }
    }

    goto LABEL_137;
  }

  v113 = [*(v64 + 48) earliestTokenFromQU];
  v114 = [v4 rankingItem];
  v115 = [v114 startDueDateToNowInSeconds];
  if (v113)
  {
    if (v115 <= 0)
    {
    }

    else
    {
      v116 = [v65 rankingItem];
      v117 = [v116 startDueDateToNowInSeconds];

      if (v117 < 0)
      {
        goto LABEL_296;
      }
    }

    v130 = [v4 rankingItem];
    if ([v130 startDueDateToNowInSeconds] < 0)
    {
      v171 = [v65 rankingItem];
      v172 = [v171 startDueDateToNowInSeconds];

      if (v172 >= 1)
      {
LABEL_380:
        v305 = [v4 rankingItem];
        v54 = 1;
        [v305 setRankedInLowerTier:1];

        goto LABEL_54;
      }
    }

    else
    {
    }

    v131 = [v4 rankingItem];
    if (([v131 bundleIDType] & 0x60) != 0)
    {
      v132 = [v4 rankingItem];
      if ([v132 searchTermsMatchTitle] < 3)
      {
        v133 = [v65 rankingItem];
        v134 = [v133 searchTermsMatchTitle];

        if (v134 >= 3 && v78 > v103)
        {
          v543[0] = @"[Promotion]";
          v543[1] = v516;
          v543[2] = @"Calender/Reminder matched title";
          v126 = MEMORY[0x1E695DEC8];
          v127 = v543;
          goto LABEL_134;
        }

LABEL_195:
        v181 = [v4 rankingItem];
        if (([v181 bundleIDType] & 0x60) != 0)
        {
          v182 = [v4 rankingItem];
          if ([v182 searchTermsMatchTitle] > 2)
          {
            v183 = [v65 rankingItem];
            v184 = [v183 searchTermsMatchTitle];

            if (v184 <= 2 && v81 > v103)
            {
              v542[0] = @"[Promotion]";
              v542[1] = v515;
              v542[2] = @"Calender/Reminder matched title";
              v148 = MEMORY[0x1E695DEC8];
              v149 = v542;
              goto LABEL_207;
            }

LABEL_217:
            v198 = [v4 rankingItem];
            if (([v198 bundleIDType] & 0x20) != 0)
            {
              v199 = [v4 rankingItem];
              v200 = [v199 isLLMQUPersonMatchedInRecipient];
              if ((v200 & 1) == 0)
              {
                v102 = [v4 rankingItem];
                if (![v102 isLLMQUPersonMatchedInAuthor])
                {
                  goto LABEL_222;
                }
              }

              v201 = [v65 rankingItem];
              if (([v201 isLLMQUPersonMatchedInRecipient] & 1) == 0)
              {
                v262 = [v65 rankingItem];
                v263 = [v262 isLLMQUPersonMatchedInAuthor];
                if (v78 <= v103)
                {
                  v264 = 1;
                }

                else
                {
                  v264 = v263;
                }

                if ((v200 & 1) == 0)
                {
                }

                v195 = a1;
                if ((v264 & 1) == 0)
                {
                  v541[0] = @"[Promotion]";
                  v541[1] = v516;
                  v541[2] = @"Calender/Reminder matched recipient/author";
                  v196 = MEMORY[0x1E695DEC8];
                  v197 = v541;
                  goto LABEL_333;
                }

LABEL_225:
                v202 = [v4 rankingItem];
                if (([v202 bundleIDType] & 0x20) != 0)
                {
                  v203 = [v4 rankingItem];
                  if (([v203 isLLMQUPersonMatchedInRecipient] & 1) == 0)
                  {
                    v204 = [v4 rankingItem];
                    if (![v204 isLLMQUPersonMatchedInAuthor])
                    {
                      v273 = [v526 rankingItem];
                      if ([v273 isLLMQUPersonMatchedInRecipient])
                      {
                        v274 = v81 > v103;
                      }

                      else
                      {
                        v299 = [v526 rankingItem];
                        v300 = [v299 isLLMQUPersonMatchedInAuthor];
                        if (v81 > v103)
                        {
                          v274 = v300;
                        }

                        else
                        {
                          v274 = 0;
                        }
                      }

                      if (v274)
                      {
                        v540[0] = @"[Promotion]";
                        v540[1] = v515;
                        v540[2] = @"Calender/Reminder matched recipient/author";
                        v277 = MEMORY[0x1E695DEC8];
                        v278 = v540;
                        goto LABEL_378;
                      }

LABEL_231:
                      v205 = [v4 rankingItem];
                      v206 = [v205 startDueDateToNowInSeconds];
                      if (v206 >= 0)
                      {
                        v207 = v206;
                      }

                      else
                      {
                        v207 = -v206;
                      }

                      v65 = v526;
                      v208 = [v526 rankingItem];
                      v209 = [v208 startDueDateToNowInSeconds];
                      if (v209 >= 0)
                      {
                        v210 = v209;
                      }

                      else
                      {
                        v210 = -v209;
                      }

                      if (v207 >= v210 || v78 <= v103)
                      {
                      }

                      else
                      {
                        v211 = [*(a1 + 48) orderByTimeDescending];

                        if ((v211 & 1) == 0)
                        {
                          goto LABEL_296;
                        }
                      }

                      v212 = [v4 rankingItem];
                      v213 = [v212 startDueDateToNowInSeconds];
                      if (v213 >= 0)
                      {
                        v214 = v213;
                      }

                      else
                      {
                        v214 = -v213;
                      }

                      v215 = [v526 rankingItem];
                      v216 = [v215 startDueDateToNowInSeconds];
                      if (v216 >= 0)
                      {
                        v217 = v216;
                      }

                      else
                      {
                        v217 = -v216;
                      }

                      if (v214 <= v217 || v81 <= v103)
                      {
                      }

                      else
                      {
                        v218 = [*(a1 + 48) orderByTimeDescending];

                        if ((v218 & 1) == 0)
                        {
                          goto LABEL_380;
                        }
                      }

                      v239 = [v4 rankingItem];
                      v240 = [v239 startDueDateToNowInSeconds];
                      v241 = [v526 rankingItem];
                      if (v240 <= [v241 startDueDateToNowInSeconds] || v78 <= v103)
                      {
                      }

                      else
                      {
                        v242 = [*(a1 + 48) orderByTimeDescending];

                        if (v242)
                        {
                          goto LABEL_296;
                        }
                      }

                      v66 = [v4 rankingItem];
                      v256 = [v66 startDueDateToNowInSeconds];
                      v67 = [v526 rankingItem];
                      if (v256 < [v67 startDueDateToNowInSeconds])
                      {
                        v64 = a1;
                        if (v81 > v103)
                        {
                          v180 = [*(a1 + 48) orderByTimeDescending];
LABEL_312:
                          v257 = v180;

                          if (v257)
                          {
                            goto LABEL_380;
                          }

                          goto LABEL_75;
                        }

LABEL_74:

                        goto LABEL_75;
                      }

LABEL_314:
                      v64 = a1;
                      goto LABEL_74;
                    }
                  }
                }

                goto LABEL_231;
              }

              if ((v200 & 1) == 0)
              {
LABEL_222:
              }
            }

            goto LABEL_225;
          }
        }

        goto LABEL_217;
      }
    }

    goto LABEL_195;
  }

  if (v115 <= 0)
  {
  }

  else
  {
    v118 = [v65 rankingItem];
    v119 = [v118 startDueDateToNowInSeconds];

    if (v119 < 0 && v78 > v103)
    {
      goto LABEL_296;
    }
  }

  v135 = [v4 rankingItem];
  if ([v135 startDueDateToNowInSeconds] < 0)
  {
    v177 = [v65 rankingItem];
    v178 = [v177 startDueDateToNowInSeconds];

    if (v178 >= 1 && v81 > v103)
    {
      goto LABEL_380;
    }
  }

  else
  {
  }

  v136 = [v4 rankingItem];
  if (([v136 bundleIDType] & 0x60) == 0)
  {
    goto LABEL_201;
  }

  v137 = [v4 rankingItem];
  if ([v137 searchTermsMatchTitle] >= 3)
  {

LABEL_201:
    goto LABEL_202;
  }

  v138 = [v65 rankingItem];
  v139 = [v138 searchTermsMatchTitle];

  if (v139 >= 3 && v78 > v103)
  {
    v539[0] = @"[Promotion]";
    v539[1] = v516;
    v539[2] = @"Calender/Reminder matched title";
    v126 = MEMORY[0x1E695DEC8];
    v127 = v539;
    goto LABEL_134;
  }

LABEL_202:
  v185 = [v4 rankingItem];
  if (([v185 bundleIDType] & 0x60) == 0)
  {
LABEL_255:

    goto LABEL_256;
  }

  v186 = [v4 rankingItem];
  if ([v186 searchTermsMatchTitle] <= 2)
  {

    goto LABEL_255;
  }

  v187 = [v65 rankingItem];
  v188 = [v187 searchTermsMatchTitle];

  if (v188 <= 2 && v81 > v103)
  {
    v538[0] = @"[Promotion]";
    v538[1] = v515;
    v538[2] = @"Calender/Reminder matched title";
    v148 = MEMORY[0x1E695DEC8];
    v149 = v538;
    goto LABEL_207;
  }

LABEL_256:
  v219 = [v4 rankingItem];
  if (([v219 bundleIDType] & 0x20) == 0)
  {
LABEL_263:

    goto LABEL_264;
  }

  v220 = [v4 rankingItem];
  v221 = [v220 isLLMQUPersonMatchedInRecipient];
  if ((v221 & 1) == 0)
  {
    v102 = [v4 rankingItem];
    if (![v102 isLLMQUPersonMatchedInAuthor])
    {
      goto LABEL_261;
    }
  }

  v222 = [v65 rankingItem];
  if ([v222 isLLMQUPersonMatchedInRecipient])
  {

    if (v221)
    {
LABEL_262:

      goto LABEL_263;
    }

LABEL_261:

    goto LABEL_262;
  }

  v265 = [v65 rankingItem];
  v266 = [v265 isLLMQUPersonMatchedInAuthor];
  if (v78 <= v103)
  {
    v267 = 1;
  }

  else
  {
    v267 = v266;
  }

  if ((v221 & 1) == 0)
  {
  }

  v195 = a1;
  if ((v267 & 1) == 0)
  {
    v537[0] = @"[Promotion]";
    v537[1] = v516;
    v537[2] = @"Calender/Reminder matched recipient/author";
    v196 = MEMORY[0x1E695DEC8];
    v197 = v537;
    goto LABEL_333;
  }

LABEL_264:
  v223 = [v4 rankingItem];
  if (([v223 bundleIDType] & 0x20) == 0)
  {
LABEL_269:

    goto LABEL_270;
  }

  v224 = [v4 rankingItem];
  if ([v224 isLLMQUPersonMatchedInRecipient])
  {
LABEL_268:

    goto LABEL_269;
  }

  v225 = [v4 rankingItem];
  if ([v225 isLLMQUPersonMatchedInAuthor])
  {

    goto LABEL_268;
  }

  v279 = [v526 rankingItem];
  if ([v279 isLLMQUPersonMatchedInRecipient])
  {
    v280 = v81 > v103;
  }

  else
  {
    v301 = [v526 rankingItem];
    v302 = [v301 isLLMQUPersonMatchedInAuthor];
    if (v81 > v103)
    {
      v280 = v302;
    }

    else
    {
      v280 = 0;
    }
  }

  if (v280)
  {
    v536[0] = @"[Promotion]";
    v536[1] = v515;
    v536[2] = @"Calender/Reminder matched recipient/author";
    v277 = MEMORY[0x1E695DEC8];
    v278 = v536;
    goto LABEL_378;
  }

LABEL_270:
  v226 = [v4 rankingItem];
  v227 = [v226 startDueDateToNowInSeconds];
  if (v227 >= 0)
  {
    v228 = v227;
  }

  else
  {
    v228 = -v227;
  }

  v65 = v526;
  v229 = [v526 rankingItem];
  v230 = [v229 startDueDateToNowInSeconds];
  if (v230 >= 0)
  {
    v231 = v230;
  }

  else
  {
    v231 = -v230;
  }

  if (v228 < v231 && v78 > v103)
  {
    goto LABEL_296;
  }

  v232 = [v4 rankingItem];
  v233 = [v232 startDueDateToNowInSeconds];
  if (v233 >= 0)
  {
    v234 = v233;
  }

  else
  {
    v234 = -v233;
  }

  v235 = [v526 rankingItem];
  v236 = [v235 startDueDateToNowInSeconds];
  if (v236 >= 0)
  {
    v237 = v236;
  }

  else
  {
    v237 = -v236;
  }

  v238 = v234 > v237;
  v64 = a1;
  if (v238 && v81 > v103)
  {
    goto LABEL_380;
  }

LABEL_75:
  if (!(v507 & 1 | ((v510 & 1) == 0)))
  {
    v535[0] = @"[Demotion]";
    v535[1] = v516;
    v535[2] = @"Email Label: Promotional";
    v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v535 count:3];
    v92 = *(v64 + 72);
    v93 = v4;
LABEL_83:
    v94 = [v93 rankingItem];
    v95 = [v94 identifier];
    [v92 setObject:v91 forKeyedSubscript:v95];

    goto LABEL_84;
  }

  if (!(v510 & 1 | ((v507 & 1) == 0)))
  {
    v534[0] = @"[Demotion]";
    v534[1] = v515;
    v534[2] = @"Email Label: Promotional";
    v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v534 count:3];
    v97 = *(v64 + 72);
    v98 = v65;
LABEL_87:
    v99 = [v98 rankingItem];
    v100 = [v99 identifier];
    [v97 setObject:v96 forKeyedSubscript:v100];

LABEL_298:
    goto LABEL_299;
  }

  if ([v61 isEqualToString:@"com.apple.spotlight.events"] && objc_msgSend(v62, "isEqualToString:", @"com.apple.spotlight.events"))
  {
    v88 = [v4 rankingItem];
    if ([v88 startDueDateToNowInSeconds] <= 0)
    {
    }

    else
    {
      v89 = [v65 rankingItem];
      v90 = [v89 startDueDateToNowInSeconds];

      if (v90 < 0)
      {
        goto LABEL_299;
      }
    }

    v244 = [v4 rankingItem];
    if ([v244 startDueDateToNowInSeconds] < 0)
    {
      v260 = [v65 rankingItem];
      v261 = [v260 startDueDateToNowInSeconds];

      if (v261 > 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
    }

    v245 = [v4 rankingItem];
    if ([v245 startDueDateToNowInSeconds] <= 0)
    {
    }

    else
    {
      v246 = [v65 rankingItem];
      v247 = [v246 startDueDateToNowInSeconds];

      if (v247 >= 1)
      {
        v248 = [v4 rankingItem];
        v249 = [v248 startDueDateToNowInSeconds];
        v250 = [v65 rankingItem];
        v251 = [v250 startDueDateToNowInSeconds];

        if (v249 > v251)
        {
          goto LABEL_84;
        }

        v252 = [v4 rankingItem];
        v253 = [v252 startDueDateToNowInSeconds];
        v254 = [v65 rankingItem];
        v255 = [v254 startDueDateToNowInSeconds];

        if (v253 < v255)
        {
          goto LABEL_299;
        }

        goto LABEL_348;
      }
    }

    v272 = [v4 rankingItem];
    if ([v272 startDueDateToNowInSeconds] < 0)
    {
      v281 = [v65 rankingItem];
      v282 = [v281 startDueDateToNowInSeconds];

      if (v282 < 0)
      {
        v420 = [v4 rankingItem];
        v421 = [v420 startDueDateToNowInSeconds];
        v422 = [v65 rankingItem];
        v423 = [v422 startDueDateToNowInSeconds];

        if (v421 > v423)
        {
          goto LABEL_39;
        }

        v424 = [v4 rankingItem];
        v425 = [v424 startDueDateToNowInSeconds];
        v65 = v526;
        v426 = [v526 rankingItem];
        v427 = [v426 startDueDateToNowInSeconds];

        v62 = v517;
        v61 = v518;
        if (v425 < v427)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
    }
  }

LABEL_348:
  v283 = a1;
  if (([*(a1 + 48) llmQUIntentType] & 0x207DC000) != 0)
  {
    v284 = [v4 rankingItem];
    v285 = [v284 sectionBundleIdentifier];
    if (SSSectionIsSyndicatedPhotos(v285))
    {
      v286 = [v65 rankingItem];
      v287 = [v286 bundleIDType] & 0x20000200100068;

      if (v287)
      {
        goto LABEL_84;
      }
    }

    else
    {
    }

    v288 = [v65 rankingItem];
    v289 = [v288 sectionBundleIdentifier];
    if (SSSectionIsSyndicatedPhotos(v289))
    {
      v290 = [v4 rankingItem];
      v291 = [v290 bundleIDType] & 0x20000200100068;

      v283 = a1;
      if (v291)
      {
        goto LABEL_299;
      }
    }

    else
    {

      v283 = a1;
    }
  }

  if (*(v283 + 81) == 1)
  {
    v292 = v498 & v500;
    if ((v502 & v504) != 0 && !v292)
    {
      goto LABEL_299;
    }

    if ((v502 & v504) == 0 && v292)
    {
      goto LABEL_84;
    }

    v293 = [*(a1 + 48) llmQUIntentType];
    if ((([*(a1 + 48) inferredLlmQUIntentType] | v293) & 0x4000004) != 0)
    {
      v294 = [v4 rankingItem];
      v295 = [v294 preExtractedCardType];
      if (v295)
      {
        v296 = v295;
        v297 = [v65 rankingItem];
        v298 = [v297 preExtractedCardType];

        if (!v298)
        {
          goto LABEL_299;
        }
      }

      else
      {
      }

      v306 = [v4 rankingItem];
      v307 = [v306 preExtractedCardType];
      if (v307)
      {
      }

      else
      {
        v418 = [v65 rankingItem];
        v419 = [v418 preExtractedCardType];

        if (v419)
        {
          goto LABEL_84;
        }
      }
    }
  }

  v308 = [v4 rankingItem];
  if ([v308 isPromotedSharedLink])
  {
    v309 = [v65 rankingItem];
    v310 = [v309 isPromotedSharedLink];

    if ((v310 & 1) == 0)
    {
      v533[0] = @"[Promotion] [Shared Link]";
      v533[1] = v516;
      v533[2] = @"shared link type and QU Inferred entity match";
      v311 = MEMORY[0x1E695DEC8];
      v312 = v533;
LABEL_395:
      v96 = [v311 arrayWithObjects:v312 count:3];
      v97 = *(a1 + 72);
      v98 = v4;
      goto LABEL_87;
    }
  }

  else
  {
  }

  v313 = [v4 rankingItem];
  if ([v313 isPromotedSharedLink])
  {
  }

  else
  {
    v314 = [v65 rankingItem];
    v315 = [v314 isPromotedSharedLink];

    if (v315)
    {
      v532[0] = @"[Promotion] [Shared Link]";
      v532[1] = v515;
      v532[2] = @"shared link type and QU Inferred entity match";
      v316 = MEMORY[0x1E695DEC8];
      v317 = v532;
LABEL_401:
      v91 = [v316 arrayWithObjects:v317 count:3];
      v92 = *(a1 + 72);
      v93 = v65;
      goto LABEL_83;
    }
  }

  v318 = [v4 rankingItem];
  if ([v318 isInferredSharedLink])
  {
    v319 = [v65 rankingItem];
    v320 = [v319 isInferredSharedLink];

    if ((v320 & 1) == 0)
    {
      v531[0] = @"[Promotion] [Shared Link]";
      v531[1] = v516;
      v531[2] = @"QU Inferred entity match";
      v311 = MEMORY[0x1E695DEC8];
      v312 = v531;
      goto LABEL_395;
    }
  }

  else
  {
  }

  v321 = [v4 rankingItem];
  if ([v321 isInferredSharedLink])
  {

    goto LABEL_402;
  }

  v322 = [v65 rankingItem];
  v323 = [v322 isInferredSharedLink];

  if (v323)
  {
    v530[0] = @"[Promotion] [Shared Link]";
    v530[1] = v515;
    v530[2] = @"QU Inferred entity match";
    v316 = MEMORY[0x1E695DEC8];
    v317 = v530;
    goto LABEL_401;
  }

LABEL_402:
  v324 = [v4 rankingItem];
  v325 = [v324 preExtractedCardType];
  if (!v325)
  {
LABEL_417:

    v333 = a1;
    goto LABEL_418;
  }

  v326 = v325;
  v327 = [v65 rankingItem];
  v328 = [v327 preExtractedCardType];
  if (!v328)
  {
LABEL_416:

    goto LABEL_417;
  }

  v329 = v328;
  v330 = [v4 rankingItem];
  if (![v330 cardExpirationDateToNowInSeconds])
  {

    goto LABEL_416;
  }

  v331 = [v65 rankingItem];
  v332 = [v331 cardExpirationDateToNowInSeconds];

  v333 = a1;
  if (v332)
  {
    v334 = [v4 rankingItem];
    v335 = SSCompactRankingAttrsGetValue([v334 attributes], 0x11CuLL);
    v336 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v335, v335);

    v337 = [v526 rankingItem];
    v338 = SSCompactRankingAttrsGetValue([v337 attributes], 0x11CuLL);
    v505 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v338, v338);

    v339 = [v4 rankingItem];
    v340 = SSCompactRankingAttrsGetValue([v339 attributes], 0x137uLL);
    v503 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v340, v340);

    v341 = [v526 rankingItem];
    v342 = SSCompactRankingAttrsGetValue([v341 attributes], 0x137uLL);
    v501 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v342, v342);

    v343 = [v4 rankingItem];
    v344 = SSCompactRankingAttrsGetValue([v343 attributes], 0x13CuLL);
    v485 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v344, v344);

    v345 = [v526 rankingItem];
    v346 = SSCompactRankingAttrsGetValue([v345 attributes], 0x13CuLL);
    v489 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v346, v346);

    v347 = [v4 rankingItem];
    v348 = SSCompactRankingAttrsGetValue([v347 attributes], 0x136uLL);
    v487 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v348, v348);

    v349 = [v526 rankingItem];
    v350 = SSCompactRankingAttrsGetValue([v349 attributes], 0x136uLL);
    v491 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v350, v350);

    v351 = [v4 rankingItem];
    v352 = SSCompactRankingAttrsGetValue([v351 attributes], 0x13EuLL);
    v499 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v352, v352);

    v353 = [v526 rankingItem];
    v354 = SSCompactRankingAttrsGetValue([v353 attributes], 0x13EuLL);
    v493 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v354, v354);

    v355 = [v4 rankingItem];
    v356 = SSCompactRankingAttrsGetValue([v355 attributes], 0x13DuLL);
    v511 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v356, v356);

    v357 = [v526 rankingItem];
    v358 = SSCompactRankingAttrsGetValue([v357 attributes], 0x13DuLL);
    v508 = __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(v358, v358);

    v359 = v336;
    if ([v336 length] && objc_msgSend(v336, "isEqualToString:", v505) && objc_msgSend(v503, "length") && objc_msgSend(v503, "isEqualToString:", v501) && objc_msgSend(v499, "length") && objc_msgSend(v499, "isEqualToString:", v493))
    {
      if ([v487 length] && (objc_msgSend(v487, "isEqualToString:", v491) & 1) != 0)
      {
        v360 = 1;
LABEL_476:
        if (([v359 isEqualToString:*MEMORY[0x1E6963A80]] & 1) != 0 || objc_msgSend(v359, "isEqualToString:", *MEMORY[0x1E6963A88]))
        {
          v54 = -1;
          v460 = 1;
          if (!v511 || !v508 || ([v511 isEqualToString:v508] & v360 & 1) == 0)
          {
LABEL_489:

            v62 = v517;
            v61 = v518;
            v333 = a1;
            if ((v460 & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_418;
          }
        }

        else if (!v360)
        {
LABEL_485:
          v54 = -1;
          v460 = 1;
          goto LABEL_489;
        }

        if (v496 || !v494)
        {
          if (v494 || !v496)
          {
            goto LABEL_485;
          }

          v528 = @"[Demotion]";
          v461 = &v528;
          v54 = 1;
          v462 = v516;
          v463 = v359;
          v464 = v503;
          v465 = v499;
          v466 = v485;
          v473 = v487;
          v482 = v526;
          v497 = v4;
        }

        else
        {
          v529 = @"[Demotion]";
          v54 = -1;
          v461 = &v529;
          v462 = v515;
          v463 = v505;
          v464 = v501;
          v465 = v493;
          v466 = v489;
          v473 = v491;
          v482 = v4;
          v497 = v526;
        }

        v461[1] = v462;
        v475 = MEMORY[0x1E696AEC0];
        v495 = SSRedactStringClient(v463, 1, *(a1 + 82));
        v480 = SSRedactStringClient(v464, 1, *(a1 + 82));
        v478 = SSRedactStringClient(v465, 1, *(a1 + 82));
        v476 = SSRedactStringClient(v466, 1, *(a1 + 82));
        v467 = SSRedactStringClient(v473, 1, *(a1 + 82));
        v483 = [v482 rankingItem];
        v474 = SSCompactRankingAttrsGetValue([v483 attributes], 0x13BuLL);
        v468 = [v475 stringWithFormat:@"Expired card (subType: %@, name: %@, country: %@, issued by: %@ or provided by: %@) demoted in favor of renewed card with expiry date: %@", v495, v480, v478, v476, v467, v474];
        v461[2] = v468;
        v469 = [MEMORY[0x1E695DEC8] arrayWithObjects:v461 count:3];
        v470 = *(a1 + 72);
        v471 = [v497 rankingItem];
        v472 = [v471 identifier];
        [v470 setObject:v469 forKeyedSubscript:v472];

        v460 = 0;
        goto LABEL_489;
      }

      if ([v485 length])
      {
        v360 = [v485 isEqualToString:v489];
        goto LABEL_476;
      }
    }

    v360 = 0;
    goto LABEL_476;
  }

LABEL_418:
  if (*(v333 + 80) != 1 || ![*(v333 + 48) hasPersonIsSelfTokenFromLLMQU])
  {
    goto LABEL_426;
  }

  v361 = [v4 rankingItem];
  v362 = [v361 sectionBundleIdentifier];
  if (![v362 isEqualToString:@"com.apple.mobilemail"])
  {
LABEL_425:

    goto LABEL_426;
  }

  v363 = [v526 rankingItem];
  v364 = [v363 sectionBundleIdentifier];
  if (![v364 isEqualToString:@"com.apple.mobilemail"])
  {
LABEL_424:

    v62 = v517;
    v61 = v518;
    goto LABEL_425;
  }

  v365 = [v4 rankingItem];
  if ([v365 hasPreExtractedCustomerNames])
  {

    goto LABEL_424;
  }

  v428 = [v526 rankingItem];
  v429 = [v428 hasPreExtractedCustomerNames];

  v62 = v517;
  v61 = v518;
  if (v429)
  {
    goto LABEL_426;
  }

  v430 = [v4 rankingItem];
  if ([v430 isMeCardEmailInPrimaryRecipients])
  {
    v431 = [v4 rankingItem];
    v432 = [v431 isMeCardEmailInAdditionalRecipients] ^ 1;
  }

  else
  {
    v432 = 0;
  }

  v433 = [v526 rankingItem];
  if ([v433 isMeCardEmailInPrimaryRecipients])
  {
    v434 = [v526 rankingItem];
    v435 = [v434 isMeCardEmailInAdditionalRecipients];
  }

  else
  {
    v435 = 1;
  }

  v436 = [v4 rankingItem];
  if ([v436 isMeCardEmailInAdditionalRecipients])
  {
    v437 = [v4 rankingItem];
    v438 = [v437 isMeCardEmailInPrimaryRecipients];
  }

  else
  {
    v438 = 1;
  }

  v439 = [v526 rankingItem];
  if (([v439 isMeCardEmailInAdditionalRecipients] & 1) == 0)
  {

    v62 = v517;
    v61 = v518;
    v442 = a1;
    if (((v435 | v438) & 1) == 0)
    {
      goto LABEL_457;
    }

LABEL_426:
    v366 = [v4 rankingItem];
    [v366 likelihood];
    v368 = v367;

    v369 = [v526 rankingItem];
    [v369 likelihood];
    v371 = v370;

    if (v368 > v371)
    {
      goto LABEL_299;
    }

    if (v368 >= v371)
    {
      v372 = [v4 rankingItem];
      [v372 topicalityScore];
      v374 = v373;

      v375 = [v526 rankingItem];
      [v375 topicalityScore];
      v377 = v376;

      if (v374 > v377)
      {
        goto LABEL_299;
      }

      if (v374 < v377)
      {
        goto LABEL_52;
      }

      v378 = [v4 rankingItem];
      [v378 pommesL1Score];
      v380 = v379;
      v381 = [v526 rankingItem];
      [v381 pommesL1Score];
      v383 = v382;

      if (v380 <= v383)
      {
        v384 = [v4 rankingItem];
        [v384 pommesL1Score];
        v386 = v385;
        v387 = [v526 rankingItem];
        [v387 pommesL1Score];
        v389 = v388;

        if (v386 < v389)
        {
          goto LABEL_52;
        }

        v390 = [v4 rankingItem];
        [v390 embeddingSimilarity];
        v392 = v391;
        v393 = [v526 rankingItem];
        [v393 embeddingSimilarity];
        v395 = v394;

        if (v392 <= v395)
        {
          v396 = [v4 rankingItem];
          [v396 embeddingSimilarity];
          v398 = v397;
          v399 = [v526 rankingItem];
          [v399 embeddingSimilarity];
          v401 = v400;

          if (v398 < v401)
          {
            goto LABEL_52;
          }

          v402 = [v4 rankingItem];
          [v402 freshnessScore];
          v404 = v403;
          v405 = [v526 rankingItem];
          [v405 freshnessScore];
          v407 = v406;

          if (v404 <= v407)
          {
            v408 = [v4 rankingItem];
            [v408 freshnessScore];
            v410 = v409;
            v411 = [v526 rankingItem];
            [v411 freshnessScore];
            v413 = v412;

            if (v410 >= v413)
            {
              v414 = [v4 rankingItem];
              v415 = [v414 identifier];
              v416 = [v526 rankingItem];
              v417 = [v416 identifier];
              v54 = [v415 compare:v417];

              goto LABEL_53;
            }

            goto LABEL_52;
          }
        }
      }

LABEL_39:
      v54 = -1;
LABEL_53:
      v62 = v517;
      v61 = v518;
      goto LABEL_54;
    }

    goto LABEL_84;
  }

  v440 = [v526 rankingItem];
  v441 = [v440 isMeCardEmailInPrimaryRecipients];

  v62 = v517;
  v61 = v518;
  v442 = a1;
  if (v441 & 1 | ((v432 & 1) == 0) && ((v435 | v438) & 1) != 0)
  {
    goto LABEL_426;
  }

LABEL_457:
  if (v432)
  {
    v443 = v526;
  }

  else
  {
    v443 = v4;
  }

  if (v432)
  {
    v444 = v515;
  }

  else
  {
    v444 = v516;
  }

  if (v432)
  {
    v445 = v4;
  }

  else
  {
    v445 = v526;
  }

  if (v432)
  {
    v54 = -1;
  }

  else
  {
    v54 = 1;
  }

  if (v432)
  {
    v446 = v516;
  }

  else
  {
    v446 = v515;
  }

  [v443 rankingItem];
  v448 = v447 = v442;
  v449 = [v448 identifier];

  v506 = v449;
  v450 = v444;
  v451 = [v445 rankingItem];
  v452 = [v451 identifier];

  v509 = v446;
  v527[0] = @"[Demotion]";
  v527[1] = v450;
  v520 = v450;
  v453 = MEMORY[0x1E696AEC0];
  v454 = SSRedactStringClient(v449, 1, *(v447 + 82));
  v455 = SSRedactStringClient(v450, 1, *(v447 + 82));
  v456 = SSRedactStringClient(v452, 1, *(v447 + 82));
  v457 = SSRedactStringClient(v509, 1, *(v447 + 82));
  v458 = [v453 stringWithFormat:@"MeCard email match in additionalRecipients in favor of item with match in primaryRecipients (demoted: %@|%@, promoted: %@|%@)", v454, v455, v456, v457];
  v527[2] = v458;
  v459 = [MEMORY[0x1E695DEC8] arrayWithObjects:v527 count:3];
  [*(v447 + 72) setObject:v459 forKeyedSubscript:v506];

  v62 = v517;
  v61 = v518;

LABEL_54:
  return v54;
}

id __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AB08];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

void __163__SSRankingManager_searchToolSortResults_isQUIntent_isQUInferredIntent_queryContext_searchToolBundles_eventSearchIntent_maxTopicalityPerBundle_preExtractionBoost___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_count(v6) == 3)
  {
    v7 = SSGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 objectAtIndexedSubscript:0];
      v9 = [*(a1 + 32) searchString];
      v10 = SSRedactStringClient(v9, 1, *(a1 + 40));
      v11 = SSRedactStringClient(v5, 1, *(a1 + 40));
      v12 = [v6 objectAtIndexedSubscript:1];
      v13 = [v6 objectAtIndexedSubscript:2];
      v14 = 138413314;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Sorting] %@ query=%@ identifier=%@ name=[%@] due to %@", &v14, 0x34u);
    }
  }
}

+ (void)searchToolExtractDocTextualFeature:(id)feature queryContext:(id)context title:(id)title subject:(id)subject displayName:(id)name searchTermsSet:(id)set
{
  v234 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  contextCopy = context;
  titleCopy = title;
  subjectCopy = subject;
  nameCopy = name;
  setCopy = set;
  if (searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__onceToken != -1)
  {
    +[SSRankingManager searchToolExtractDocTextualFeature:queryContext:title:subject:displayName:searchTermsSet:];
  }

  isSearchToolClient = [contextCopy isSearchToolClient];
  rankingItem = [featureCopy rankingItem];
  [rankingItem setSearchTermsMatchTitle:3];

  normalizedSearchTermsFromQU = [contextCopy normalizedSearchTermsFromQU];
  if (!objc_msgSend_count(normalizedSearchTermsFromQU))
  {

    goto LABEL_37;
  }

  rankingItem2 = [featureCopy rankingItem];
  [rankingItem2 normalizedSparseScore];
  v18 = v17;

  if (v18 <= 1.0)
  {
    goto LABEL_37;
  }

  rankingItem3 = [featureCopy rankingItem];
  bundleIDType = [rankingItem3 bundleIDType];

  if ((bundleIDType & 0x20) != 0)
  {
    v23 = titleCopy;
    goto LABEL_10;
  }

  rankingItem4 = [featureCopy rankingItem];
  bundleIDType2 = [rankingItem4 bundleIDType];

  if ((bundleIDType2 & 0x100000) == 0)
  {
    v23 = nameCopy;
LABEL_10:
    v24 = v23;
    goto LABEL_11;
  }

  v24 = subjectCopy;
  if (![v24 length])
  {
    v57 = nameCopy;

    v24 = v57;
  }

LABEL_11:
  if ([v24 length])
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger;
    objc_sync_enter(v26);
    [searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger setString:v24];
    v27 = searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger;
    string = [searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger string];
    v29 = [string length];
    v30 = *MEMORY[0x1E69779F0];
    v217[0] = MEMORY[0x1E69E9820];
    v217[1] = 3221225472;
    v217[2] = __109__SSRankingManager_searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet___block_invoke_2;
    v217[3] = &unk_1E8595B58;
    v31 = array;
    v218 = v31;
    [v27 enumerateTagsInRange:0 unit:v29 scheme:0 options:v30 usingBlock:{6, v217}];

    objc_sync_exit(v26);
    if (!objc_msgSend_count(v31))
    {
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v33 = [v24 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
      v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"length > 0"];
      v35 = [v33 filteredArrayUsingPredicate:v34];
      v36 = [v35 mutableCopy];

      v31 = v36;
    }

    v37 = [SSRankingUtilities loadOptionalKeywordsDictionaryFromAssetPlistType:1];
    llmQUIntentType = [contextCopy llmQUIntentType];
    if ((([contextCopy inferredLlmQUIntentType] | llmQUIntentType) & 0x20) != 0)
    {
      lastObject = [v31 lastObject];
      v40 = [v37 containsObject:lastObject];

      if (v40)
      {
        [v31 removeLastObject];
      }
    }

    if (objc_msgSend_count(v31))
    {
      v41 = 0;
      do
      {
        v42 = [v31 objectAtIndexedSubscript:v41];
        lowercaseString = [v42 lowercaseString];
        [v31 setObject:lowercaseString atIndexedSubscript:v41];

        ++v41;
      }

      while (v41 < objc_msgSend_count(v31));
    }

    v44 = objc_msgSend_count(v31);
    normalizedSearchTermsFromQU2 = [contextCopy normalizedSearchTermsFromQU];
    LODWORD(v44) = v44 == objc_msgSend_count(normalizedSearchTermsFromQU2);

    if (v44)
    {
      for (i = 0; i < objc_msgSend_count(v31); ++i)
      {
        normalizedSearchTermsFromQU3 = [contextCopy normalizedSearchTermsFromQU];
        v48 = [normalizedSearchTermsFromQU3 objectAtIndexedSubscript:i];
        v49 = [v31 objectAtIndexedSubscript:i];
        lowercaseString2 = [v49 lowercaseString];
        v51 = [v48 isEqualToString:lowercaseString2];

        if (!v51)
        {
          break;
        }
      }

      if (i == objc_msgSend_count(v31))
      {
        rankingItem5 = [featureCopy rankingItem];
        [rankingItem5 setSearchTermsMatchTitle:0];
      }
    }

    rankingItem6 = [featureCopy rankingItem];
    v54 = [rankingItem6 searchTermsMatchTitle] == 0;

    if (v54)
    {
      goto LABEL_35;
    }

    v55 = [MEMORY[0x1E695DFD8] setWithArray:v31];
    if ([setCopy isEqualToSet:v55])
    {
      v56 = 1;
    }

    else
    {
      if (![setCopy isSubsetOfSet:v55])
      {
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      v56 = 2;
    }

    rankingItem7 = [featureCopy rankingItem];
    [rankingItem7 setSearchTermsMatchTitle:v56];

    goto LABEL_34;
  }

LABEL_36:

LABEL_37:
  if (([contextCopy llmQUIntentType] & 0xA0020) == 0 && (objc_msgSend(contextCopy, "inferredLlmQUIntentType") & 0x20) == 0)
  {
    [contextCopy hasOneOnOneSearchTerm];
    v181 = 1;
    goto LABEL_64;
  }

  rankingItem8 = [featureCopy rankingItem];
  v181 = ([rankingItem8 bundleIDType] & 0x20) == 0;

  if (v181 | (([contextCopy hasOneOnOneSearchTerm] & 1) == 0))
  {
    goto LABEL_64;
  }

  if (![titleCopy length])
  {
    goto LABEL_62;
  }

  [SSRankingUtilities loadOptionalKeywordsDictionaryFromAssetPlistType:0];
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v60 = v214 = 0u;
  v61 = [v60 countByEnumeratingWithState:&v213 objects:v233 count:16];
  rankingItem10 = v60;
  if (!v61)
  {
    goto LABEL_61;
  }

  v63 = *v214;
  while (2)
  {
    for (j = 0; j != v61; ++j)
    {
      if (*v214 != v63)
      {
        objc_enumerationMutation(v60);
      }

      v65 = *(*(&v213 + 1) + 8 * j);
      if ([titleCopy localizedCaseInsensitiveContainsString:v65])
      {
        v66 = [titleCopy length];
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        v68 = [titleCopy rangeOfString:v65 options:129 range:0 locale:{v66, currentLocale}];
        v70 = v69;

        if (v68)
        {
          if (v68 == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }

          alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v72 = [alphanumericCharacterSet characterIsMember:{objc_msgSend(titleCopy, "characterAtIndex:", v68 - 1)}];
        }

        else
        {
          v72 = 0;
        }

        v73 = v68 + v70;
        if (v73 == [titleCopy length])
        {
          v74 = 0;
        }

        else
        {
          alphanumericCharacterSet2 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v74 = [alphanumericCharacterSet2 characterIsMember:{objc_msgSend(titleCopy, "characterAtIndex:", v73)}];
        }

        if (((v72 | v74) & 1) == 0)
        {
          v76 = SSGeneralLog();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            rankingItem9 = [featureCopy rankingItem];
            identifier = [rankingItem9 identifier];
            v79 = SSRedactStringClient(identifier, 1, isSearchToolClient);
            *buf = 138412290;
            v222 = v79;
            _os_log_impl(&dword_1D9F69000, v76, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Featurization] [Calendar] [PerfectMatch] Found one on one search term in the calendar item with id %@.", buf, 0xCu);
          }

          rankingItem10 = [featureCopy rankingItem];
          [rankingItem10 setSearchTermsMatchTitle:0];
          goto LABEL_61;
        }
      }
    }

    v61 = [v60 countByEnumeratingWithState:&v213 objects:v233 count:16];
    if (v61)
    {
      continue;
    }

    break;
  }

  rankingItem10 = v60;
LABEL_61:

LABEL_62:
  v181 = 0;
LABEL_64:
  rankingItem11 = [featureCopy rankingItem];
  sectionBundleIdentifier = [rankingItem11 sectionBundleIdentifier];
  v82 = [sectionBundleIdentifier isEqualToString:@"com.apple.mobilecal"];

  if (v82)
  {
    obj = [contextCopy personTokensFromLLMQU];
    if (!objc_msgSend_count(obj))
    {
      goto LABEL_100;
    }

    rankingItem12 = [featureCopy rankingItem];
    matchInfo = [rankingItem12 matchInfo];
    v85 = matchInfo == 0;

    if (v85)
    {
      v178 = 0;
      LOBYTE(v182) = 0;
      v186 = 0;
      goto LABEL_103;
    }

    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    rankingItem13 = [featureCopy rankingItem];
    obj = [rankingItem13 matchInfo];

    v194 = [obj countByEnumeratingWithState:&v209 objects:v232 count:16];
    if (!v194)
    {
LABEL_100:
      v178 = 0;
      LOBYTE(v182) = 0;
      v186 = 0;
      goto LABEL_101;
    }

    v178 = 0;
    v182 = 0;
    v186 = 0;
    v191 = *v210;
    v187 = *MEMORY[0x1E69649F8];
    v185 = *MEMORY[0x1E69649E0];
    v183 = *MEMORY[0x1E69648E8];
    v184 = *MEMORY[0x1E69649F0];
    v179 = *MEMORY[0x1E6963D18];
    v174 = *MEMORY[0x1E6963CE8];
    v173 = *MEMORY[0x1E6963D08];
    do
    {
      v87 = 0;
      do
      {
        if (*v210 != v191)
        {
          objc_enumerationMutation(obj);
        }

        v88 = *(*(&v209 + 1) + 8 * v87);
        if (v88)
        {
          v207 = 0u;
          v208 = 0u;
          v205 = 0u;
          v206 = 0u;
          rankingItem14 = [featureCopy rankingItem];
          matchInfo2 = [rankingItem14 matchInfo];
          v91 = [matchInfo2 objectForKeyedSubscript:v88];

          v92 = [v91 countByEnumeratingWithState:&v205 objects:v231 count:16];
          if (v92)
          {
            v93 = *v206;
            while (2)
            {
              for (k = 0; k != v92; ++k)
              {
                if (*v206 != v93)
                {
                  objc_enumerationMutation(v91);
                }

                v95 = *(*(&v205 + 1) + 8 * k);
                original = [v95 original];
                v97 = hasTrailingAsterisk(original);

                original2 = [v95 original];
                if (v97)
                {
                  original3 = [v95 original];
                  v100 = [original2 substringToIndex:{objc_msgSend(original3, "length") - 1}];

                  original2 = v100;
                }

                personTokensFromLLMQU = [contextCopy personTokensFromLLMQU];
                v102 = [personTokensFromLLMQU containsObject:original2];

                if (v102)
                {
                  if ([v88 isEqualToString:v187] & 1) != 0 || (objc_msgSend(v88, "isEqualToString:", v185) & 1) != 0 || (objc_msgSend(v88, "isEqualToString:", v184) & 1) != 0 || (objc_msgSend(v88, "isEqualToString:", v183))
                  {
                    v186 = 1;
                  }

                  else
                  {
                    if ([v88 isEqualToString:v179] & 1) != 0 || (objc_msgSend(v88, "isEqualToString:", v174))
                    {
                      v103 = 1;
                    }

                    else
                    {
                      v104 = [v88 isEqualToString:v173];
                      v178 |= v104 ^ 1;
                      v103 = v104 | v182;
                    }

                    v182 = v103;
                  }

                  goto LABEL_90;
                }
              }

              v92 = [v91 countByEnumeratingWithState:&v205 objects:v231 count:16];
              if (v92)
              {
                continue;
              }

              break;
            }
          }

LABEL_90:
        }

        ++v87;
      }

      while (v87 != v194);
      v105 = [obj countByEnumeratingWithState:&v209 objects:v232 count:16];
      v194 = v105;
    }

    while (v105);
LABEL_101:

LABEL_103:
    rankingItem15 = [featureCopy rankingItem];
    [rankingItem15 setIsLLMQUPersonMatchedInRecipient:v186 & 1];

    rankingItem16 = [featureCopy rankingItem];
    [rankingItem16 setIsLLMQUPersonMatchedInAuthor:v182 & 1];

    rankingItem17 = [featureCopy rankingItem];
    [rankingItem17 setIsLLMQUPersonMatchedInOther:v178 & 1];

    v109 = SSGeneralLog();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      rankingItem18 = [featureCopy rankingItem];
      identifier2 = [rankingItem18 identifier];
      v112 = SSRedactStringClient(identifier2, 1, isSearchToolClient);
      v113 = SSRedactStringClient(titleCopy, 1, isSearchToolClient);
      rankingItem19 = [featureCopy rankingItem];
      countRecipientByEmails = [rankingItem19 countRecipientByEmails];
      *buf = 138413570;
      v222 = v112;
      v223 = 2112;
      v224 = v113;
      v225 = 1024;
      *v226 = countRecipientByEmails;
      *&v226[4] = 1024;
      *&v226[6] = v186 & 1;
      v227 = 1024;
      v228 = v182 & 1;
      v229 = 1024;
      v230 = v178 & 1;
      _os_log_impl(&dword_1D9F69000, v109, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Featurization] [Calendar] ID:%@, title:%@, calendarEventRecipientsEmailAddresses: %d, personMatchInRecipient:%d, personMatchInAuthor:%d, personMatchOtherThanRecipient:%d.", buf, 0x2Eu);
    }
  }

  if (!(v181 | (([contextCopy hasOneOnOneSearchTerm] & 1) == 0)))
  {
    rankingItem20 = [featureCopy rankingItem];
    if ([rankingItem20 countRecipientByEmails]!= 1)
    {
      goto LABEL_114;
    }

    personTokensFromLLMQU2 = [contextCopy personTokensFromLLMQU];
    if (!objc_msgSend_count(personTokensFromLLMQU2))
    {
      goto LABEL_111;
    }

    rankingItem21 = [featureCopy rankingItem];
    if ([rankingItem21 isLLMQUPersonMatchedInRecipient])
    {

LABEL_111:
LABEL_112:
      rankingItem22 = [featureCopy rankingItem];
      [rankingItem22 setSearchTermsMatchTitle:0];

      rankingItem20 = SSGeneralLog();
      if (os_log_type_enabled(rankingItem20, OS_LOG_TYPE_DEFAULT))
      {
        rankingItem23 = [featureCopy rankingItem];
        identifier3 = [rankingItem23 identifier];
        v122 = SSRedactStringClient(identifier3, 1, isSearchToolClient);
        v123 = SSRedactStringClient(titleCopy, 1, isSearchToolClient);
        *buf = 138412546;
        v222 = v122;
        v223 = 2112;
        v224 = v123;
        _os_log_impl(&dword_1D9F69000, rankingItem20, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Featurization] [Calendar] [PerfectMatch] ID:%@, title:%@, Perfect match for one on one meeting queries with single recipient calendar item. Either no person token or person tokens matched in author/recipient.", buf, 0x16u);
      }

LABEL_114:
    }

    else
    {
      rankingItem24 = [featureCopy rankingItem];
      isLLMQUPersonMatchedInAuthor = [rankingItem24 isLLMQUPersonMatchedInAuthor];

      if (isLLMQUPersonMatchedInAuthor)
      {
        goto LABEL_112;
      }
    }
  }

  [SSRankingManager parseWalletBoardingPass:featureCopy isSearchToolClient:isSearchToolClient];
  rankingItem25 = [featureCopy rankingItem];
  bundleIDType3 = [rankingItem25 bundleIDType];

  if ((bundleIDType3 & 0x800) != 0)
  {
    rankingItem26 = [featureCopy rankingItem];
    [rankingItem26 keywordMatchScore];
    v128 = v127 > 1.0;

    if (v128)
    {
      rankingItem27 = [featureCopy rankingItem];
      [rankingItem27 setSearchTermsMatchTitle:2];

      v130 = SSGeneralLog();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
      {
        rankingItem28 = [featureCopy rankingItem];
        identifier4 = [rankingItem28 identifier];
        v165 = SSRedactStringClient(identifier4, 1, isSearchToolClient);
        v166 = SSRedactStringClient(titleCopy, 1, isSearchToolClient);
        *buf = 138412546;
        v222 = v165;
        v223 = 2112;
        v224 = v166;
        _os_log_debug_impl(&dword_1D9F69000, v130, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Featurization] [Files] ID:%@, title:%@ Marked document as AllSearchTermMatch due to perfect keyword match score.", buf, 0x16u);
      }
    }
  }

  rankingItem29 = [featureCopy rankingItem];
  v132 = SSCompactRankingAttrsGetValue([rankingItem29 attributes], 0xF6uLL);
  rankingItem30 = [featureCopy rankingItem];
  [rankingItem30 setHasPreExtractedCustomerNames:v132 != 0];

  rankingItem31 = [featureCopy rankingItem];
  [rankingItem31 setIsMeCardEmailInPrimaryRecipients:0];

  rankingItem32 = [featureCopy rankingItem];
  [rankingItem32 setIsMeCardEmailInAdditionalRecipients:0];

  queryUnderstandingOutput = [contextCopy queryUnderstandingOutput];
  v137 = [queryUnderstandingOutput objectForKeyedSubscript:@"kQPParseResultEcrGroundedOutput"];

  rankingItem33 = [featureCopy rankingItem];
  sectionBundleIdentifier2 = [rankingItem33 sectionBundleIdentifier];
  if (![sectionBundleIdentifier2 isEqualToString:@"com.apple.mobilemail"])
  {

    goto LABEL_125;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rankingItem33 = [v137 objectForKeyedSubscript:@"me"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v141 = [rankingItem33 objectForKeyedSubscript:@"personEmails"];
      goto LABEL_126;
    }

LABEL_125:
    v141 = 0;
LABEL_126:
  }

  else
  {
    v141 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v141))
  {
    rankingItem34 = [featureCopy rankingItem];
    v143 = SSCompactRankingAttrsGetValue([rankingItem34 attributes], 0x175uLL);

    rankingItem35 = [featureCopy rankingItem];
    v145 = SSCompactRankingAttrsGetValue([rankingItem35 attributes], 0x176uLL);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v146 = v141;
      v147 = [v146 countByEnumeratingWithState:&v201 objects:v220 count:16];
      if (v147)
      {
        v148 = *v202;
        while (2)
        {
          for (m = 0; m != v147; ++m)
          {
            if (*v202 != v148)
            {
              objc_enumerationMutation(v146);
            }

            v150 = *(*(&v201 + 1) + 8 * m);
            if ([v143 containsObject:v150])
            {
              rankingItem36 = [featureCopy rankingItem];
              [rankingItem36 setIsMeCardEmailInPrimaryRecipients:1];

              v152 = SSGeneralLog();
              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
              {
                rankingItem37 = [featureCopy rankingItem];
                identifier5 = [rankingItem37 identifier];
                v195 = SSRedactStringClient(identifier5, 1, isSearchToolClient);
                v168 = SSRedactStringClient(subjectCopy, 1, isSearchToolClient);
                v169 = SSRedactStringClient(v150, 1, isSearchToolClient);
                *buf = 138412802;
                v222 = v195;
                v223 = 2112;
                v224 = v168;
                v225 = 2112;
                *v226 = v169;
                _os_log_debug_impl(&dword_1D9F69000, v152, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Featurization] [Mail] For ID:%@, subject:%@, found meCard email:%@ match in primaryRecipients", buf, 0x20u);
              }

              goto LABEL_143;
            }
          }

          v147 = [v146 countByEnumeratingWithState:&v201 objects:v220 count:16];
          if (v147)
          {
            continue;
          }

          break;
        }
      }

LABEL_143:
    }

    rankingItem38 = [featureCopy rankingItem];
    if ([rankingItem38 isMeCardEmailInPrimaryRecipients])
    {
LABEL_160:
    }

    else
    {
      objc_opt_class();
      v154 = objc_opt_isKindOfClass();

      if (v154)
      {
        v199 = 0u;
        v200 = 0u;
        v197 = 0u;
        v198 = 0u;
        rankingItem38 = v141;
        v155 = [rankingItem38 countByEnumeratingWithState:&v197 objects:v219 count:16];
        if (v155)
        {
          v156 = *v198;
          while (2)
          {
            for (n = 0; n != v155; ++n)
            {
              if (*v198 != v156)
              {
                objc_enumerationMutation(rankingItem38);
              }

              v158 = *(*(&v197 + 1) + 8 * n);
              if ([v145 containsObject:v158])
              {
                rankingItem39 = [featureCopy rankingItem];
                [rankingItem39 setIsMeCardEmailInAdditionalRecipients:1];

                v162 = SSGeneralLog();
                if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
                {
                  rankingItem40 = [featureCopy rankingItem];
                  identifier6 = [rankingItem40 identifier];
                  v196 = SSRedactStringClient(identifier6, 1, isSearchToolClient);
                  v171 = SSRedactStringClient(subjectCopy, 1, isSearchToolClient);
                  v172 = SSRedactStringClient(v158, 1, isSearchToolClient);
                  *buf = 138412802;
                  v222 = v196;
                  v223 = 2112;
                  v224 = v171;
                  v225 = 2112;
                  *v226 = v172;
                  _os_log_debug_impl(&dword_1D9F69000, v162, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Featurization] [Mail] For ID:%@, subject:%@, found meCard email:%@ match in additionalRecipients", buf, 0x20u);
                }

                goto LABEL_160;
              }
            }

            v155 = [rankingItem38 countByEnumeratingWithState:&v197 objects:v219 count:16];
            if (v155)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_160;
      }
    }
  }
}

void __109__SSRankingManager_searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet___block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E6977A80]);
  v4[0] = *MEMORY[0x1E69779F0];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = [v0 initWithTagSchemes:v1];
  v3 = searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger;
  searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger = v2;
}

void __109__SSRankingManager_searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [searchToolExtractDocTextualFeature_queryContext_title_subject_displayName_searchTermsSet__nlTagger string];
  v8 = [v7 substringWithRange:{a3, a4}];

  [*(a1 + 32) addObject:v8];
}

+ (void)searchToolRanker:(id)ranker queryContext:(id)context searchToolBundles:(id)bundles
{
  (MEMORY[0x1EEE9AC00])(self, a2, ranker, context, bundles);
  v6 = v5;
  v8 = v7;
  v1196[16] = *MEMORY[0x1E69E9840];
  v847 = v9;
  v10 = v8;
  v922 = v6;
  if (searchToolRanker_queryContext_searchToolBundles__onceTokenForBiomeStream != -1)
  {
    +[SSRankingManager searchToolRanker:queryContext:searchToolBundles:];
  }

  isFromLLMQUParse = [v10 isFromLLMQUParse];
  intentFromQU = [v10 intentFromQU];
  if (loadRankingThresholdingParameters_onceToken != -1)
  {
    +[SSRankingManager searchToolRanker:queryContext:searchToolBundles:];
  }

  isSearchToolClient = [v10 isSearchToolClient];
  spQUParse = [v10 spQUParse];
  getEncodedData = [spQUParse getEncodedData];
  v13 = [getEncodedData objectForKeyedSubscript:@"isPQA"];

  isAppEntitySearch = [v10 isAppEntitySearch];
  v15 = @"PQA";
  if (!v13)
  {
    v15 = @"PCS";
  }

  if (isAppEntitySearch)
  {
    v15 = @"AppEntity";
  }

  v758 = v15;
  v16 = SSGeneralLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    searchString = [v10 searchString];
    v1005 = SSRedactStringClient(searchString, 1, isSearchToolClient);
    [v10 intentFromQU];
    v987 = intentLabel();
    v1014 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v10 llmQUIntentType]);
    v17 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v10 inferredLlmQUIntentType]);
    earliestTokenFromQU = [v10 earliestTokenFromQU];
    latestTokenFromQU = [v10 latestTokenFromQU];
    parsedQueryFromQU = [v10 parsedQueryFromQU];
    v20 = SSRedactStringClient(parsedQueryFromQU, 1, isSearchToolClient);
    hasQueryTextEmbedding = [v10 hasQueryTextEmbedding];
    [v10 currentTime];
    v23 = v22;
    v24 = MEMORY[0x1E695DF00];
    [v10 currentTime];
    v25 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
    queryDateStringStartDate = [v10 queryDateStringStartDate];
    queryDateStringEndDate = [v10 queryDateStringEndDate];
    *buf = 138415618;
    v1112 = v1005;
    v1113 = 1024;
    *v1114 = isFromLLMQUParse;
    *&v1114[4] = 2080;
    *&v1114[6] = v987;
    *&v1114[14] = 2112;
    *&v1114[16] = v1014;
    *&v1114[24] = 2112;
    *&v1114[26] = v17;
    *&v1114[34] = 1024;
    *&v1114[36] = earliestTokenFromQU;
    *&v1114[40] = 1024;
    *&v1114[42] = latestTokenFromQU;
    *&v1114[46] = 2112;
    *&v1114[48] = v20;
    *&v1114[56] = 1024;
    *&v1114[58] = hasQueryTextEmbedding;
    *&v1114[62] = 2112;
    *&v1114[64] = v758;
    *&v1114[72] = 2048;
    *&v1114[74] = v23;
    *&v1114[82] = 2112;
    *v1115 = v25;
    *&v1115[8] = 2112;
    *&v1115[10] = queryDateStringStartDate;
    *&v1115[18] = 2112;
    *v1116 = queryDateStringEndDate;
    _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [QU] query=%@ useLLMQU=%i QU_Intent=%s LLM_QU_Intent=%@ LLM_QU_Inferred_Intent=%@ earliest=%i latest=%i parsedQueryFromQU=%@ hasQueryContextEmbedding=%i queryType=%@ queryTime=%f queryDate=[%@] userSpecififedStartDate=[%@] userSpecifiedEndDate=[%@]", buf, 0x7Eu);
  }

  v865 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = objc_alloc(MEMORY[0x1E695DF90]);
  resultSet = [v847 resultSet];
  v889 = [v28 initWithCapacity:objc_msgSend_count(resultSet)];

  v30 = objc_alloc(MEMORY[0x1E695DF90]);
  resultSet2 = [v847 resultSet];
  v890 = [v30 initWithCapacity:objc_msgSend_count(resultSet2)];

  currentTime = [v10 currentTime];
  v838 = v33;
  v806 = SSEnableTextSemanticSearchCalibration(currentTime, v34);
  v921 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1015 = v10;
  v35 = ([v1015 llmQUIntentType] & 0x3C00) != 0 || (objc_msgSend(v1015, "inferredLlmQUIntentType") & 0x3C00) != 0;
  v809 = v35;

  sectionBundleIdentifier19 = &LLMQUIntentAppointmentEvent;
  if (isFromLLMQUParse)
  {
    v807 = ([v1015 llmQUIntentType] & 0x207FC000) != 0;
    [v1015 llmQUIntentType];
    [v1015 llmQUIntentType];
  }

  else
  {
    v37 = intentLabel();
    v38 = v37;
    if (v37)
    {
      v39 = !strncmp(v37, "INTENT_FLIGHT", 0xDuLL) || !strncmp(v38, "INTENT_HOTEL", 0xCuLL) || strncmp(v38, "INTENT_RESTAURANT", 0x11uLL) == 0;
      v807 = v39;
    }

    else
    {
      v807 = 0;
    }
  }

  queryDateStringStartDate2 = [v1015 queryDateStringStartDate];
  if (!queryDateStringStartDate2 || ([v1015 queryDateStringEndDate], v41 = objc_claimAutoreleasedReturnValue(), v42 = v41 == 0, v41, queryDateStringStartDate2, v42))
  {
    v880 = NAN;
    v884 = NAN;
  }

  else
  {
    queryDateStringStartDate3 = [v1015 queryDateStringStartDate];
    [queryDateStringStartDate3 timeIntervalSinceReferenceDate];
    v884 = v44;

    queryDateStringEndDate2 = [v1015 queryDateStringEndDate];
    [queryDateStringEndDate2 timeIntervalSinceReferenceDate];
    v880 = v46;
  }

  normalizedSearchTermsFromQU = [v1015 normalizedSearchTermsFromQU];
  if (normalizedSearchTermsFromQU)
  {
    v48 = MEMORY[0x1E695DFD8];
    normalizedSearchTermsFromQU2 = [v1015 normalizedSearchTermsFromQU];
    v888 = [v48 setWithArray:normalizedSearchTermsFromQU2];
  }

  else
  {
    v888 = 0;
  }

  v1099 = 0u;
  v1098 = 0u;
  v1097 = 0u;
  v1096 = 0u;
  obj = [v847 resultSet];
  v923 = [obj countByEnumeratingWithState:&v1096 objects:v1195 count:16];
  if (!v923)
  {
    v948 = 0;
    LOBYTE(matched) = 0;
    goto LABEL_379;
  }

  v948 = 0;
  v929 = 0;
  LOBYTE(matched) = 0;
  spid = *v1097;
  v812 = *MEMORY[0x1E6963AA0];
  v808 = *MEMORY[0x1E6963AA8];
  v805 = *MEMORY[0x1E6963AC0];
  do
  {
    v1006 = 0;
    do
    {
      if (*v1097 != spid)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(*(&v1096 + 1) + 8 * v1006);
      rankingItem = [v50 rankingItem];
      sectionBundleIdentifier = [rankingItem sectionBundleIdentifier];

      if (sectionBundleIdentifier)
      {
        rankingItem2 = [v50 rankingItem];
        v997 = SSCompactRankingAttrsGetValue([rankingItem2 attributes], 7uLL);

        rankingItem3 = [v50 rankingItem];
        v980 = SSCompactRankingAttrsGetValue([rankingItem3 attributes], 0xCuLL);

        rankingItem4 = [v50 rankingItem];
        oslog = SSCompactRankingAttrsGetValue([rankingItem4 attributes], 4uLL);

        rankingItem5 = [v50 rankingItem];
        v952 = SSCompactRankingAttrsGetValue([rankingItem5 attributes], 6uLL);

        v57 = v997;
        if (!v997)
        {
          v57 = oslog;
          if (!oslog)
          {
            v57 = v952;
          }

          if (v980)
          {
            v57 = v980;
          }
        }

        v941 = v57;
        rankingItem6 = [v50 rankingItem];
        log = SSCompactRankingAttrsGetValue([rankingItem6 attributes], 0x15BuLL);

        rankingItem7 = [v50 rankingItem];
        v966 = SSCompactRankingAttrsGetValue([rankingItem7 attributes], 0xDFuLL);

        v60 = objc_msgSend_count(v966);
        rankingItem8 = [v50 rankingItem];
        [rankingItem8 setCountRecipientByEmails:v60];

        rankingItem9 = [v50 rankingItem];
        [rankingItem9 pommesL1Score];
        v64 = v63;
        rankingItem10 = [v50 rankingItem];
        LODWORD(v66) = v64;
        [rankingItem10 setNormalizedSparseScore:v66];

        rankingItem11 = [v50 rankingItem];
        [rankingItem11 setRankedInLowerTier:0];

        rankingItem12 = [v50 rankingItem];
        embeddingSimilarity = [rankingItem12 embeddingSimilarity];
        v71 = v70;
        if (SSSemanticSearchMD7Enabled(embeddingSimilarity, v72))
        {
          v73 = v71 * 0.738986527 + 0.195265497;
        }

        else
        {
          v73 = v71 * 0.76632779 + 0.184405762;
        }

        rankingItem13 = [v50 rankingItem];
        *&v75 = v73;
        [rankingItem13 setProjectedEmbeddingSimilarity:v75];

        [SSRankingManager searchToolExtractDocTextualFeature:v50 queryContext:v1015 title:v980 subject:oslog displayName:v997 searchTermsSet:v888];
        if (!isFromLLMQUParse)
        {
          rankingItem14 = [v50 rankingItem];
          sectionBundleIdentifier2 = [rankingItem14 sectionBundleIdentifier];
          matched = isQUIntentMatchBundle(intentFromQU, sectionBundleIdentifier2);
          goto LABEL_101;
        }

        llmQUIntentType = [v1015 llmQUIntentType];
        rankingItem15 = [v50 rankingItem];
        sectionBundleIdentifier3 = [rankingItem15 sectionBundleIdentifier];
        v79 = sectionBundleIdentifier3;
        if ((llmQUIntentType & 0x2075C000) != 0 && [sectionBundleIdentifier3 isEqualToString:@"com.apple.spotlight.events"])
        {
          matched = _os_feature_enabled_impl();
        }

        else
        {
          matched = 0;
        }

        llmQUIntentType2 = [v1015 llmQUIntentType];
        rankingItem16 = [v50 rankingItem];
        sectionBundleIdentifier4 = [rankingItem16 sectionBundleIdentifier];
        v85 = sectionBundleIdentifier4;
        v86 = (llmQUIntentType2 & 0x60) != 0 || (llmQUIntentType2 & 0x207FC000) != 0;
        if ([sectionBundleIdentifier4 isEqualToString:@"com.apple.mobilecal"] & 1) != 0 || (objc_msgSend(v85, "isEqualToString:", @"com.apple.reminders"))
        {
          v87 = 1;
        }

        else if ([v85 isEqualToString:@"com.apple.spotlight.events"])
        {
          v87 = _os_feature_enabled_impl();
        }

        else
        {
          v87 = 0;
        }

        inferredLlmQUIntentType = [v1015 inferredLlmQUIntentType];
        rankingItem17 = [v50 rankingItem];
        sectionBundleIdentifier5 = [rankingItem17 sectionBundleIdentifier];
        v91 = sectionBundleIdentifier5;
        if (inferredLlmQUIntentType & 1) != 0 && ([sectionBundleIdentifier5 isEqualToString:@"com.apple.mobilenotes"] & 1) != 0 || (inferredLlmQUIntentType & 2) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.mobilemail") & 1) != 0 || (inferredLlmQUIntentType & 4) != 0 && (SSSectionIsSyndicatedPhotos(v91) & 1) != 0 || (inferredLlmQUIntentType & 8) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.MobileSMS") & 1) != 0 || (inferredLlmQUIntentType & 0x10) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.mobilesafari") & 1) != 0 || (inferredLlmQUIntentType & 0x20) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.mobilecal") & 1) != 0 || (inferredLlmQUIntentType & 0x40) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.reminders") & 1) != 0 || (inferredLlmQUIntentType & 0x2075C000) != 0 && objc_msgSend(v91, "isEqualToString:", @"com.apple.spotlight.events") && (_os_feature_enabled_impl() & 1) != 0 || (inferredLlmQUIntentType & 0x100) != 0 && ((objc_msgSend(v91, "isEqualToString:", @"com.apple.MobileAddressBook") & 1) != 0 || (objc_msgSend(v91, "isEqualToString:", @"com.apple.spotlight.contacts")) || (inferredLlmQUIntentType & 0x200) != 0 && ((objc_msgSend(v91, "isEqualToString:", @"com.apple.mobilemail") & 1) != 0 || (objc_msgSend(v91, "isEqualToString:", @"com.apple.MobileSMS")) || (inferredLlmQUIntentType & 0x1000000) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.VoiceMemos") & 1) != 0 || (inferredLlmQUIntentType & 0x4000000) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.Passbook") & 1) != 0 || (inferredLlmQUIntentType & 0x8000000) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.freeform") & 1) != 0 || (inferredLlmQUIntentType & 0x3C00) != 0 && ((objc_msgSend(v91, "isEqualToString:", @"com.apple.DocumentsApp") & 1) != 0 || (objc_msgSend(v91, "isEqualToString:", @"com.apple.CloudDocs.MobileDocumentsFileProvider") & 1) != 0 || (objc_msgSend(v91, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProvider") & 1) != 0 || (objc_msgSend(v91, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged")) || (*&inferredLlmQUIntentType & 0x800000) != 0 && (objc_msgSend(v91, "isEqualToString:", @"com.apple.mobilephone"))
        {
          v929 = 1;
        }

        else if ((inferredLlmQUIntentType & 0x2000000) != 0)
        {
          v929 = [v91 isEqualToString:@"com.apple.journal"];
        }

        else
        {
          v929 = 0;
        }

        v948 = v86 & v87;
        if ([v1015 latestTokenFromQU] && (objc_msgSend(v1015, "llmQUIntentType") & 0x20000) != 0)
        {
          rankingItem14 = [v50 rankingItem];
          sectionBundleIdentifier2 = [rankingItem14 sectionBundleIdentifier];
          if (SSSectionIsSyndicatedPhotos(sectionBundleIdentifier2))
          {
            v92 = 1;
          }

          else
          {
            rankingItem18 = [v50 rankingItem];
            sectionBundleIdentifier6 = [rankingItem18 sectionBundleIdentifier];
            v95 = [sectionBundleIdentifier6 isEqualToString:@"com.apple.Passbook"];

            v92 = v95 | v929;
          }

          v929 = v92;
LABEL_101:
        }

        v96 = [MEMORY[0x1E696AD98] numberWithBool:matched];
        rankingItem19 = [v50 rankingItem];
        sectionBundleIdentifier7 = [rankingItem19 sectionBundleIdentifier];
        [v889 setObject:v96 forKeyedSubscript:sectionBundleIdentifier7];

        v99 = [MEMORY[0x1E696AD98] numberWithBool:v929 & 1];
        rankingItem20 = [v50 rankingItem];
        sectionBundleIdentifier8 = [rankingItem20 sectionBundleIdentifier];
        [v890 setObject:v99 forKeyedSubscript:sectionBundleIdentifier8];

        rankingItem21 = [v50 rankingItem];
        sectionBundleIdentifier9 = [rankingItem21 sectionBundleIdentifier];
        if ([sectionBundleIdentifier9 isEqualToString:@"com.apple.spotlight.events"])
        {
LABEL_105:
        }

        else
        {
          rankingItem22 = [v50 rankingItem];
          sectionBundleIdentifier10 = [rankingItem22 sectionBundleIdentifier];
          if ([sectionBundleIdentifier10 isEqualToString:@"com.apple.mobilemail"])
          {

            goto LABEL_105;
          }

          rankingItem23 = [v50 rankingItem];
          sectionBundleIdentifier11 = [rankingItem23 sectionBundleIdentifier];
          v163 = [sectionBundleIdentifier11 isEqualToString:@"com.apple.MobileSMS"];

          if ((v163 & 1) == 0)
          {
LABEL_109:
            sectionBundleIdentifier12 = [v50 sectionBundleIdentifier];
            v112 = [sectionBundleIdentifier12 isEqualToString:@"com.apple.spotlight.events"];

            rankingItem24 = [v50 rankingItem];
            v114 = rankingItem24;
            if (v112)
            {
              [rankingItem24 setIsPromotedInstantAnswer:0];

              rankingItem25 = [v50 rankingItem];
              attributes = [rankingItem25 attributes];

              if (attributes)
              {
                rankingItem26 = [v50 rankingItem];
                v118 = SSCompactRankingAttrsGetValue([rankingItem26 attributes], 0xE8uLL);

                if (([v118 isEqualToString:v812] & 1) != 0 || (objc_msgSend(v118, "isEqualToString:", v808) & 1) != 0 || objc_msgSend(v118, "isEqualToString:", v805))
                {
                  rankingItem27 = [v50 rankingItem];
                  [rankingItem27 setIsPromotedInstantAnswer:1];
                  goto LABEL_150;
                }

                goto LABEL_151;
              }
            }

            else
            {
              sectionBundleIdentifier13 = [rankingItem24 sectionBundleIdentifier];
              v121 = [sectionBundleIdentifier13 isEqualToString:@"com.apple.mobilecal"];

              if (v121)
              {
                rankingItem27 = [v50 rankingItem];
                sectionBundleIdentifier14 = [rankingItem27 sectionBundleIdentifier];
                v123 = [sectionBundleIdentifier14 isEqualToString:@"com.apple.mobilecal"];

                if (v123)
                {
                  v900 = SSCompactRankingAttrsGetValue([rankingItem27 attributes], 0xCuLL);
                  v848 = SSCompactRankingAttrsGetValue([rankingItem27 attributes], 0x14uLL);
                  v825 = SSCompactRankingAttrsGetValue([rankingItem27 attributes], 0xC5uLL);
                  v124 = &stru_1F556FE60;
                  if (v900)
                  {
                    v125 = v900;
                  }

                  else
                  {
                    v125 = &stru_1F556FE60;
                  }

                  if (v848)
                  {
                    v126 = v848;
                  }

                  else
                  {
                    v126 = &stru_1F556FE60;
                  }

                  if (v825)
                  {
                    v124 = v825;
                  }

                  v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v125, v126, v124];
                  lowercaseString = [v124 lowercaseString];

                  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                  v129 = [lowercaseString componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

                  v130 = objc_msgSend_count(v129);
                  v131 = v130;
                  if (v130)
                  {
                    v132 = 0;
                    v133 = v130 - 2;
                    do
                    {
                      v134 = [v129 objectAtIndex:v132];
                      if ([sSetOfFlightReservationKeywords containsObject:v134])
                      {
                        [rankingItem27 setIsCalendarFlightEventType:1];
                      }

                      else if ([sSetOfHotelReservationKeywords containsObject:v134])
                      {
                        [rankingItem27 setIsCalendarHotelEventType:1];
                      }

                      else if ([sSetOfRestaurantReservationKeywords containsObject:v134])
                      {
                        [rankingItem27 setIsCalendarRestaurantEventType:1];
                      }

                      else if ([sSetOfOtherReservationKeywords containsObject:v134])
                      {
                        [rankingItem27 setIsCalendarOtherReservationEventType:1];
                      }

                      if (v132 < v133)
                      {
                        v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v125, v126];
                        if ([sSetOfFlightReservationKeywords containsObject:v126])
                        {
                          [rankingItem27 setIsCalendarFlightEventType:1];
                        }

                        if ([sSetOfHotelReservationKeywords containsObject:v126])
                        {
                          [rankingItem27 setIsCalendarHotelEventType:1];
                        }

                        if ([sSetOfRestaurantReservationKeywords containsObject:v126])
                        {
                          [rankingItem27 setIsCalendarRestaurantEventType:1];
                        }

                        if ([sSetOfOtherReservationKeywords containsObject:v126])
                        {
                          [rankingItem27 setIsCalendarOtherReservationEventType:1];
                        }
                      }

                      ++v132;
                    }

                    while (v131 != v132);
                  }

                  v136 = SSGeneralLog();
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
                  {
                    v274 = SSRedactString(v900, 1);
                    v275 = SSRedactString(v848, 1);
                    v276 = SSRedactString(v825, 1);
                    isCalendarFlightEventType = [rankingItem27 isCalendarFlightEventType];
                    isCalendarHotelEventType = [rankingItem27 isCalendarHotelEventType];
                    isCalendarRestaurantEventType = [rankingItem27 isCalendarRestaurantEventType];
                    isCalendarOtherReservationEventType = [rankingItem27 isCalendarOtherReservationEventType];
                    *buf = 138413826;
                    v1112 = v274;
                    v1113 = 2112;
                    *v1114 = v275;
                    *&v1114[8] = 2112;
                    *&v1114[10] = v276;
                    *&v1114[18] = 1024;
                    *&v1114[20] = isCalendarFlightEventType;
                    *&v1114[24] = 1024;
                    *&v1114[26] = isCalendarHotelEventType;
                    *&v1114[30] = 1024;
                    *&v1114[32] = isCalendarRestaurantEventType;
                    *&v1114[36] = 1024;
                    *&v1114[38] = isCalendarOtherReservationEventType;
                    _os_log_debug_impl(&dword_1D9F69000, v136, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Doc Classification] itemTitle:%@, itemNamedLocation:%@, itemComment:%@, flight event type:%d, hotel reservation type:%d, restaurant reservation type:%d, other reservation type:%d", buf, 0x38u);
                  }
                }

                v118 = rankingItem27;
LABEL_150:

LABEL_151:
              }
            }

            rankingItem28 = [v50 rankingItem];
            v138 = SSCompactRankingAttrsGetValue([rankingItem28 attributes], 0x120uLL);
            rankingItem29 = [v50 rankingItem];
            [rankingItem29 setLinkType:v138];

            rankingItem30 = [v50 rankingItem];
            v141 = SSCompactRankingAttrsGetValue([rankingItem30 attributes], 0x121uLL);
            rankingItem31 = [v50 rankingItem];
            [rankingItem31 setLinkSubType:v141];

            rankingItem32 = [v50 rankingItem];
            v144 = SSCompactRankingAttrsGetValue([rankingItem32 attributes], 0x122uLL);
            rankingItem33 = [v50 rankingItem];
            [rankingItem33 setLinkName:v144];

            rankingItem34 = [v50 rankingItem];
            v147 = SSCompactRankingAttrsGetValue([rankingItem34 attributes], 0x65uLL);
            rankingItem35 = [v50 rankingItem];
            [rankingItem35 setUrl:v147];

            rankingItem36 = [v50 rankingItem];
            v150 = SSCompactRankingAttrsGetValue([rankingItem36 attributes], 0x145uLL);
            rankingItem37 = [v50 rankingItem];
            [rankingItem37 setUrlDescription:v150];

            rankingItem38 = [v50 rankingItem];
            v153 = SSCompactRankingAttrsGetValue([rankingItem38 attributes], 0x158uLL);
            rankingItem39 = [v50 rankingItem];
            [rankingItem39 setMessageLpTitle:v153];

            rankingItem40 = [v50 rankingItem];
            v156 = SSCompactRankingAttrsGetValue([rankingItem40 attributes], 0x159uLL);
            rankingItem41 = [v50 rankingItem];
            [rankingItem41 setMessageLpDescription:v156];

            if (([v1015 inferredLlmQUIntentType] & 0x10000000) != 0)
            {
              rankingItem42 = [v50 rankingItem];
              sectionBundleIdentifier15 = [rankingItem42 sectionBundleIdentifier];
              v160 = [sectionBundleIdentifier15 isEqualToString:@"com.apple.MobileSMS"];
              if (v160)
              {
                rankingItem43 = [v50 rankingItem];
                v895 = [rankingItem43 url];
                if (v895)
                {
                  v849 = 1;
                  goto LABEL_160;
                }

                v895 = 0;
              }

              rankingItem44 = [v50 rankingItem];
              sectionBundleIdentifier16 = [rankingItem44 sectionBundleIdentifier];
              v849 = [sectionBundleIdentifier16 isEqualToString:@"com.apple.searchd.syndicatedLinks"];

              if (v160)
              {
LABEL_160:
              }

              rankingItem45 = [v50 rankingItem];
              v901 = SSCompactRankingAttrsGetValue([rankingItem45 attributes], 1uLL);

              rankingItem46 = [v50 rankingItem];
              v168 = SSCompactRankingAttrsGetValue([rankingItem46 attributes], 0xCuLL);

              rankingItem47 = [v50 rankingItem];
              v170 = SSCompactRankingAttrsGetValue([rankingItem47 attributes], 0x110uLL);

              rankingItem48 = [v50 rankingItem];
              linkType = [rankingItem48 linkType];
              if (linkType)
              {
                goto LABEL_166;
              }

              linkType = [v50 rankingItem];
              linkName = [linkType linkName];
              if (linkName)
              {
                goto LABEL_165;
              }

              rankingItem49 = [v50 rankingItem];
              messageLpTitle = [rankingItem49 messageLpTitle];
              if (messageLpTitle)
              {

LABEL_165:
LABEL_166:

LABEL_167:
                rankingItem50 = [v50 rankingItem];
                [rankingItem50 setIsInferredSharedLink:1];

                parsedArgSearchTermsFromQU = [v1015 parsedArgSearchTermsFromQU];
                v1095[0] = MEMORY[0x1E69E9820];
                v1095[1] = 3221225472;
                v1095[2] = __68__SSRankingManager_searchToolRanker_queryContext_searchToolBundles___block_invoke_1414;
                v1095[3] = &unk_1E8595AE0;
                v1095[4] = v50;
                v178 = [parsedArgSearchTermsFromQU indexOfObjectPassingTest:v1095] != 0x7FFFFFFFFFFFFFFFLL;
                rankingItem51 = [v50 rankingItem];
                [rankingItem51 setIsPromotedSharedLink:v178];

                rankingItem52 = [v50 rankingItem];
                [rankingItem52 topicalityScore];
                [rankingItem52 setTopicalityScore:v181 + 0.3];

                rankingItem53 = [v50 rankingItem];
                v183 = [rankingItem53 url];
                if (v183)
                {
                  rankingItem54 = [v50 rankingItem];
                  v185 = [rankingItem54 url];
                }

                else
                {
                  v185 = &stru_1F556FE60;
                }

                rankingItem55 = [v50 rankingItem];
                isPromotedSharedLink = [rankingItem55 isPromotedSharedLink];

                if (isPromotedSharedLink)
                {
                  v188 = SSGeneralLog();
                  if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
                  {
                    rankingItem56 = [v50 rankingItem];
                    linkType2 = [rankingItem56 linkType];
                    rankingItem57 = [v50 rankingItem];
                    linkSubType = [rankingItem57 linkSubType];
                    rankingItem58 = [v50 rankingItem];
                    linkName2 = [rankingItem58 linkName];
                    v190 = SSRedactStringClient(linkName2, 1, isSearchToolClient);
                    rankingItem59 = [v50 rankingItem];
                    sectionBundleIdentifier17 = [rankingItem59 sectionBundleIdentifier];
                    v826 = SSRedactStringClient(sectionBundleIdentifier17, 1, isSearchToolClient);
                    v817 = SSRedactStringClient(v185, 1, isSearchToolClient);
                    rankingItem60 = [v50 rankingItem];
                    urlDescription = [rankingItem60 urlDescription];
                    v798 = SSRedactStringClient(urlDescription, 1, isSearchToolClient);
                    rankingItem61 = [v50 rankingItem];
                    messageLpTitle2 = [rankingItem61 messageLpTitle];
                    v793 = SSRedactStringClient(messageLpTitle2, 1, isSearchToolClient);
                    rankingItem62 = [v50 rankingItem];
                    messageLpDescription = [rankingItem62 messageLpDescription];
                    v788 = SSRedactStringClient(messageLpDescription, 1, isSearchToolClient);
                    SSRedactStringClient(v168, 1, isSearchToolClient);
                    v760 = rankingItem61;
                    v195 = v194 = rankingItem56;
                    *buf = 138415106;
                    v1112 = linkType2;
                    v1113 = 2112;
                    *v1114 = linkSubType;
                    *&v1114[8] = 2112;
                    *&v1114[10] = v190;
                    *&v1114[18] = 2112;
                    *&v1114[20] = v826;
                    *&v1114[28] = 2112;
                    *&v1114[30] = v817;
                    *&v1114[38] = 2112;
                    *&v1114[40] = v798;
                    *&v1114[48] = 2112;
                    *&v1114[50] = v793;
                    *&v1114[58] = 2112;
                    *&v1114[60] = v788;
                    *&v1114[68] = 1024;
                    *&v1114[70] = v849;
                    *&v1114[74] = 2112;
                    *&v1114[76] = v170;
                    *v1115 = 2112;
                    *&v1115[2] = v901;
                    *&v1115[10] = 2112;
                    *&v1115[12] = v195;
                    _os_log_debug_impl(&dword_1D9F69000, v188, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Shared Link] Promoted Shared Link match for linkType = %@, linkSubType = %@, linkName = %@, bundle = %@, url = %@, urlDescription = %@, lpTitle = %@, lpDescription = %@, messageContainsURL = %d with appEntityInstanceId = %@, id = %@ and title = %@", buf, 0x76u);
                  }

                  goto LABEL_176;
                }

                rankingItem63 = [v50 rankingItem];
                isInferredSharedLink = [rankingItem63 isInferredSharedLink];

                if (isInferredSharedLink)
                {
                  v188 = SSGeneralLog();
                  if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
                  {
                    rankingItem64 = [v50 rankingItem];
                    linkType3 = [rankingItem64 linkType];
                    rankingItem65 = [v50 rankingItem];
                    linkSubType2 = [rankingItem65 linkSubType];
                    rankingItem66 = [v50 rankingItem];
                    linkName3 = [rankingItem66 linkName];
                    v268 = SSRedactStringClient(linkName3, 1, isSearchToolClient);
                    rankingItem67 = [v50 rankingItem];
                    sectionBundleIdentifier18 = [rankingItem67 sectionBundleIdentifier];
                    v827 = SSRedactStringClient(sectionBundleIdentifier18, 1, isSearchToolClient);
                    v818 = SSRedactStringClient(v185, 1, isSearchToolClient);
                    rankingItem68 = [v50 rankingItem];
                    urlDescription2 = [rankingItem68 urlDescription];
                    v799 = SSRedactStringClient(urlDescription2, 1, isSearchToolClient);
                    rankingItem69 = [v50 rankingItem];
                    messageLpTitle3 = [rankingItem69 messageLpTitle];
                    v794 = SSRedactStringClient(messageLpTitle3, 1, isSearchToolClient);
                    rankingItem70 = [v50 rankingItem];
                    messageLpDescription2 = [rankingItem70 messageLpDescription];
                    v789 = SSRedactStringClient(messageLpDescription2, 1, isSearchToolClient);
                    SSRedactStringClient(v168, 1, isSearchToolClient);
                    v761 = rankingItem69;
                    v273 = v272 = rankingItem64;
                    *buf = 138415106;
                    v1112 = linkType3;
                    v1113 = 2112;
                    *v1114 = linkSubType2;
                    *&v1114[8] = 2112;
                    *&v1114[10] = v268;
                    *&v1114[18] = 2112;
                    *&v1114[20] = v827;
                    *&v1114[28] = 2112;
                    *&v1114[30] = v818;
                    *&v1114[38] = 2112;
                    *&v1114[40] = v799;
                    *&v1114[48] = 2112;
                    *&v1114[50] = v794;
                    *&v1114[58] = 2112;
                    *&v1114[60] = v789;
                    *&v1114[68] = 1024;
                    *&v1114[70] = v849;
                    *&v1114[74] = 2112;
                    *&v1114[76] = v170;
                    *v1115 = 2112;
                    *&v1115[2] = v901;
                    *&v1115[10] = 2112;
                    *&v1115[12] = v273;
                    _os_log_debug_impl(&dword_1D9F69000, v188, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [Shared Link] Inferred Intent match for linkType = %@, linkSubType = %@, linkName = %@, bundle = %@, url = %@, urlDescription = %@, lpTitle = %@, lpDescription = %@, messageContainsURL = %d with appEntityInstanceId = %@, id = %@ and title = %@", buf, 0x76u);
                  }

LABEL_176:
                }
              }

              else
              {
                rankingItem71 = [v50 rankingItem];
                messageLpDescription3 = [rankingItem71 messageLpDescription];
                v263 = messageLpDescription3 != 0;

                if ((v263 | v849))
                {
                  goto LABEL_167;
                }
              }
            }

            rankingItem72 = [v50 rankingItem];
            v199 = SSCompactRankingAttrsGetValue([rankingItem72 attributes], 0x11DuLL);
            rankingItem73 = [v50 rankingItem];
            [rankingItem73 setPreExtractedCardType:v199];

            rankingItem74 = [v50 rankingItem];
            [rankingItem74 calculateFreshnessForSearchTool:v1015 userSpecifiedStartTime:v884 userSpecifiedEndTime:v880];

            rankingItem75 = [v50 rankingItem];
            sectionBundleIdentifier19 = [rankingItem75 sectionBundleIdentifier];
            LODWORD(v199) = SSSectionIsSyndicatedPhotos(sectionBundleIdentifier19);

            rankingItem76 = [v50 rankingItem];
            v204 = rankingItem76;
            if (v199)
            {
              [rankingItem76 l2Score];
              v206 = v205 < 70.0;

              rankingItem77 = [v50 rankingItem];
              [rankingItem77 l2Score];
              v209 = v208;
              if (v206)
              {

                rankingItem78 = [v50 rankingItem];
                [rankingItem78 setTopicalityScore:fmax(v209 / 280.0, 0.0)];
              }

              else
              {
                v230 = v208 > 100.0;

                rankingItem79 = [v50 rankingItem];
                [rankingItem79 l2Score];
                v233 = v232;

                rankingItem80 = [v50 rankingItem];
                rankingItem78 = rankingItem80;
                v235 = v233;
                if (v230)
                {
                  v236 = (v235 + -100.0) * 0.00166666666 + 1.0;
                  if (v236 > 1.1)
                  {
                    v236 = 1.1;
                  }
                }

                else
                {
                  v236 = (v235 + -70.0) * 0.025 + 0.25;
                  if (v236 > 1.0)
                  {
                    v236 = 1.0;
                  }
                }

                [rankingItem80 setTopicalityScore:v236];
              }

              goto LABEL_220;
            }

            sectionBundleIdentifier19 = [rankingItem76 sectionBundleIdentifier];
            v211 = [sectionBundleIdentifier19 isEqualToString:@"com.apple.MobileAddressBook"];

            if (v211)
            {
              goto LABEL_221;
            }

            rankingItem81 = [v50 rankingItem];
            bundleIDType = [rankingItem81 bundleIDType];

            if ((bundleIDType & 0x800) != 0 && v809)
            {
              rankingItem82 = [v50 rankingItem];
              [rankingItem82 pommesL1Score];
              v216 = v215;

              rankingItem83 = [v50 rankingItem];
              [rankingItem83 keywordMatchScore];
              v219 = v218 < 0.00000011921;

              v220 = v216;
              if (!v219)
              {
                rankingItem84 = [v50 rankingItem];
                [rankingItem84 keywordMatchScore];
                v220 = v222;
                if (v216 >= 0.00000011921)
                {
                  v220 = v216 * 0.4 + v222 * 0.6;
                }
              }

              if ([v1015 hasQueryTextEmbedding])
              {
                if (*&sparseScoreCap < v220)
                {
                  v220 = *&sparseScoreCap;
                }

                v223 = *&denseScoreCap;
                v224 = *&denseNormalizationMax;
                rankingItem85 = [v50 rankingItem];
                [rankingItem85 projectedEmbeddingSimilarity];
                v227 = v226;

                if (v224 >= v227)
                {
                  v228 = v227;
                }

                else
                {
                  v228 = v224;
                }

                v229 = v228 / *&denseNormalizationMax;
                if (v223 >= v229)
                {
                  v223 = v229;
                }

                rankingItem78 = [v50 rankingItem];
                [rankingItem78 setTopicalityScore:(1.0 - (((1.0 - v220) * (1.0 - v223)) / (((1.0 - v220) * 0.4) + ((1.0 - v223) * 0.6))))];
              }

              else
              {
                if (v220 <= 1.0)
                {
                  v260 = v220;
                }

                else
                {
                  v260 = 1.0;
                }

                rankingItem78 = [v50 rankingItem];
                [rankingItem78 setTopicalityScore:v260];
              }

              goto LABEL_220;
            }

            if (v806)
            {
              rankingItem86 = [v50 rankingItem];
              [rankingItem86 pommesL1Score];
              v239 = v238;
              rankingItem87 = [v50 rankingItem];
              [rankingItem87 calibratedEmbeddingSimilarity];
              v242 = ((v239 + -0.18961) / 0.39976) * 0.294047683 + ((v241 + -0.65941) / 0.14294) * 0.957514226 + -1.40211833;
              v243 = ((v242 + 6.0) / 9.0);
              if (v243 >= 0.0)
              {
                v244 = v243;
              }

              else
              {
                v244 = 0.0;
              }

              sectionBundleIdentifier19 = [v50 rankingItem];
              v245 = fmin(v244, 1.0);
              [sectionBundleIdentifier19 setTopicalityScore:v245];

              goto LABEL_279;
            }

            hasQueryTextEmbedding2 = [v1015 hasQueryTextEmbedding];
            rankingItem88 = [v50 rankingItem];
            v248 = rankingItem88;
            if (!hasQueryTextEmbedding2)
            {
              [rankingItem88 pommesL1Score];
              v265 = v264;

              if (v265 <= 1.0)
              {
                v266 = v265;
              }

              else
              {
                v266 = 1.0;
              }

              rankingItem86 = [v50 rankingItem];
              [rankingItem86 setTopicalityScore:v266];
              goto LABEL_279;
            }

            [rankingItem88 projectedEmbeddingSimilarity];
            v250 = v249;

            rankingItem89 = [v50 rankingItem];
            documentEmbeddingAvailable = [rankingItem89 documentEmbeddingAvailable];

            if ((documentEmbeddingAvailable & 1) == 0)
            {
              rankingItem90 = [v50 rankingItem];
              v254 = [rankingItem90 searchTermsMatchTitle] == 0;

              if (v254)
              {
                v257 = 0.7;
LABEL_231:
                v281 = SSGeneralLog();
                if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
                {
                  searchString2 = [v1015 searchString];
                  v902 = SSRedactStringClient(searchString2, 1, isSearchToolClient);
                  rankingItem91 = [v50 rankingItem];
                  sectionBundleIdentifier20 = [rankingItem91 sectionBundleIdentifier];
                  rankingItem92 = [v50 rankingItem];
                  identifier = [rankingItem92 identifier];
                  v285 = SSRedactStringClient(identifier, 1, isSearchToolClient);
                  sectionBundleIdentifier19 = [v50 rankingItem];
                  v286 = SSCompactRankingAttrsGetValue([sectionBundleIdentifier19 attributes], 1uLL);
                  v287 = SSRedactStringClient(v286, 1, isSearchToolClient);
                  rankingItem93 = [v50 rankingItem];
                  searchTermsMatchTitle = [rankingItem93 searchTermsMatchTitle];
                  v290 = @"Unknown";
                  if (searchTermsMatchTitle <= 3)
                  {
                    v290 = off_1E8595B98[searchTermsMatchTitle];
                  }

                  *buf = 138413570;
                  v1112 = v902;
                  v1113 = 2112;
                  *v1114 = sectionBundleIdentifier20;
                  *&v1114[8] = 2112;
                  *&v1114[10] = v285;
                  *&v1114[18] = 2112;
                  *&v1114[20] = v287;
                  *&v1114[28] = 2112;
                  *&v1114[30] = v290;
                  *&v1114[38] = 2048;
                  *&v1114[40] = v257;
                  _os_log_impl(&dword_1D9F69000, v281, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [DefaultDenseScore] query=%@ bundleId=%@ identifier=%@ MDItemIdentifier=%@ searchTermsMatchTitle=%@ assigned default dense score %f", buf, 0x3Eu);
                }

                v250 = v257;
              }

              else
              {
                rankingItem94 = [v50 rankingItem];
                v256 = [rankingItem94 searchTermsMatchTitle] == 1;

                v257 = 0.6;
                if (v256)
                {
                  goto LABEL_231;
                }

                rankingItem95 = [v50 rankingItem];
                bundleIDType2 = [rankingItem95 bundleIDType];

                if ((bundleIDType2 & 0x20) != 0)
                {
                  v257 = 0.45;
                  goto LABEL_231;
                }
              }
            }

            if (([v1015 llmQUIntentType] & 0x1C000) == 0)
            {
              goto LABEL_268;
            }

            parsedArgLocationTermsFromQU = [v1015 parsedArgLocationTermsFromQU];
            v292 = parsedArgLocationTermsFromQU == 0;

            if (v292)
            {
              goto LABEL_268;
            }

            rankingItem96 = [v50 rankingItem];
            matchInfo = [rankingItem96 matchInfo];

            if (matchInfo)
            {
              v1094 = 0u;
              v1093 = 0u;
              v1092 = 0u;
              v1091 = 0u;
              rankingItem97 = [v50 rankingItem];
              matchInfo2 = [rankingItem97 matchInfo];

              v296 = [matchInfo2 countByEnumeratingWithState:&v1091 objects:v1194 count:16];
              if (v296)
              {
                v297 = 0;
                v903 = *v1092;
LABEL_241:
                v298 = 0;
                while (1)
                {
                  if (*v1092 != v903)
                  {
                    objc_enumerationMutation(matchInfo2);
                  }

                  if (v297)
                  {
                    break;
                  }

                  sectionBundleIdentifier19 = *(*(&v1091 + 1) + 8 * v298);
                  if (sectionBundleIdentifier19)
                  {
                    v1090 = 0u;
                    v1089 = 0u;
                    v1088 = 0u;
                    v1087 = 0u;
                    rankingItem98 = [v50 rankingItem];
                    matchInfo3 = [rankingItem98 matchInfo];
                    sectionBundleIdentifier19 = [matchInfo3 objectForKeyedSubscript:sectionBundleIdentifier19];

                    v301 = [sectionBundleIdentifier19 countByEnumeratingWithState:&v1087 objects:v1193 count:16];
                    if (v301)
                    {
                      v302 = *v1088;
                      while (2)
                      {
                        for (i = 0; i != v301; ++i)
                        {
                          if (*v1088 != v302)
                          {
                            objc_enumerationMutation(sectionBundleIdentifier19);
                          }

                          v304 = *(*(&v1087 + 1) + 8 * i);
                          original = [v304 original];
                          v306 = hasTrailingAsterisk(original);

                          original2 = [v304 original];
                          if (v306)
                          {
                            original3 = [v304 original];
                            v309 = [original2 substringToIndex:{objc_msgSend(original3, "length") - 1}];

                            original2 = v309;
                          }

                          parsedArgLocationTermsFromQU2 = [v1015 parsedArgLocationTermsFromQU];
                          v311 = [parsedArgLocationTermsFromQU2 localizedCaseInsensitiveContainsString:original2];

                          if (v311)
                          {
                            v297 = 1;
                            goto LABEL_258;
                          }
                        }

                        v301 = [sectionBundleIdentifier19 countByEnumeratingWithState:&v1087 objects:v1193 count:16];
                        if (v301)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v297 = 0;
LABEL_258:
                  }

                  else
                  {
                    v297 = 0;
                  }

                  if (++v298 == v296)
                  {
                    v296 = [matchInfo2 countByEnumeratingWithState:&v1091 objects:v1194 count:16];
                    if (v296)
                    {
                      goto LABEL_241;
                    }

                    if ((v297 & 1) == 0)
                    {
                      goto LABEL_265;
                    }

                    goto LABEL_268;
                  }
                }

LABEL_267:

LABEL_268:
                v320 = *&sparseScoreCap;
                rankingItem99 = [v50 rankingItem];
                [rankingItem99 normalizedSparseScore];
                v323 = v322;

                if (v320 >= v323)
                {
                  v324 = v323;
                }

                else
                {
                  v324 = v320;
                }

                v325 = *&denseScoreCap;
                if (*&denseNormalizationMax >= v250)
                {
                  v326 = v250;
                }

                else
                {
                  v326 = *&denseNormalizationMax;
                }

                if (*&denseScoreCap >= (v326 / *&denseNormalizationMax))
                {
                  v325 = v326 / *&denseNormalizationMax;
                }

                v327 = 1.0 - v324;
                v328 = 1.0 - v325;
                v329 = (1.0 - v324) * (1.0 - v325);
                if (v329 == 0.0)
                {
                  rankingItem86 = [v50 rankingItem];
                  [rankingItem86 setTopicalityScore:1.0];
                }

                else
                {
                  v330 = *&sparseLikelihoodWeight;
                  v331 = *denseLikelihoodWeight;
                  rankingItem86 = [v50 rankingItem];
                  [rankingItem86 setTopicalityScore:(1.0 - (v329 / ((v327 * v331) + (v330 * v328))))];
                }

LABEL_279:

                rankingItem100 = [v50 rankingItem];
                if (!SSSectionIsWalletBoardingPass(rankingItem100))
                {
                  goto LABEL_315;
                }

                llmQUIntentType3 = [v1015 llmQUIntentType];
                LOBYTE(llmQUIntentType3) = (([v1015 inferredLlmQUIntentType] | llmQUIntentType3) & 0x208000) == 0;

                if ((llmQUIntentType3 & 1) == 0)
                {
                  rankingItem101 = [v50 rankingItem];
                  walletBoardingPassArrivalAirportCity = [rankingItem101 walletBoardingPassArrivalAirportCity];
                  rankingItem100 = [walletBoardingPassArrivalAirportCity lowercaseString];

                  rankingItem102 = [v50 rankingItem];
                  walletBoardingPassDepartureAirportCity = [rankingItem102 walletBoardingPassDepartureAirportCity];
                  lowercaseString2 = [walletBoardingPassDepartureAirportCity lowercaseString];

                  personTokensFromLLMQU = [v1015 personTokensFromLLMQU];
                  if (!objc_msgSend_count(personTokensFromLLMQU))
                  {

                    goto LABEL_302;
                  }

                  rankingItem103 = [v50 rankingItem];
                  walletBoardingPassPassengerName = [rankingItem103 walletBoardingPassPassengerName];
                  if (![walletBoardingPassPassengerName length])
                  {

                    goto LABEL_313;
                  }

                  personTokensFromLLMQU2 = [v1015 personTokensFromLLMQU];
                  rankingItem104 = [v50 rankingItem];
                  walletBoardingPassPassengerName2 = [rankingItem104 walletBoardingPassPassengerName];
                  v340 = personTokensFromLLMQU2;
                  v800 = walletBoardingPassPassengerName2;
                  v790 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" /"];
                  v341 = [v800 componentsSeparatedByCharactersInSet:v790];
                  v342 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(v341)];
                  v1107 = 0u;
                  v1106 = 0u;
                  v1105 = 0u;
                  v1104 = 0u;
                  v343 = v341;
                  v344 = [v343 countByEnumeratingWithState:&v1104 objects:buf count:16];
                  if (v344)
                  {
                    v345 = *v1105;
                    do
                    {
                      for (j = 0; j != v344; ++j)
                      {
                        if (*v1105 != v345)
                        {
                          objc_enumerationMutation(v343);
                        }

                        lowercaseString3 = [*(*(&v1104 + 1) + 8 * j) lowercaseString];
                        [v342 addObject:lowercaseString3];
                      }

                      v344 = [v343 countByEnumeratingWithState:&v1104 objects:buf count:16];
                    }

                    while (v344);
                  }

                  v1103 = 0u;
                  v1102 = 0u;
                  v1101 = 0u;
                  v1100 = 0u;
                  v348 = v340;
                  v349 = [v348 countByEnumeratingWithState:&v1100 objects:v1196 count:16];
                  if (v349)
                  {
                    v350 = *v1101;
                    while (2)
                    {
                      for (k = 0; k != v349; ++k)
                      {
                        if (*v1101 != v350)
                        {
                          objc_enumerationMutation(v348);
                        }

                        lowercaseString4 = [*(*(&v1100 + 1) + 8 * k) lowercaseString];
                        v353 = [v342 containsObject:lowercaseString4];

                        if (!v353)
                        {
                          sectionBundleIdentifier19 = 0;
                          goto LABEL_301;
                        }
                      }

                      v349 = [v348 countByEnumeratingWithState:&v1100 objects:v1196 count:16];
                      if (v349)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  sectionBundleIdentifier19 = 1;
LABEL_301:

                  if (!sectionBundleIdentifier19)
                  {
                    goto LABEL_314;
                  }

LABEL_302:
                  queryDateStringStartDate4 = [v1015 queryDateStringStartDate];
                  if (!queryDateStringStartDate4)
                  {
                    queryDateStringEndDate3 = [v1015 queryDateStringEndDate];
                    if (!queryDateStringEndDate3)
                    {
                      queryDateStringEndDate3 = 0;
                      goto LABEL_337;
                    }
                  }

                  rankingItem105 = [v50 rankingItem];
                  sectionBundleIdentifier19 = [rankingItem105 walletBoardingPassDepartureDateTime];
                  if (!sectionBundleIdentifier19)
                  {

                    v366 = queryDateStringEndDate3;
                    if (queryDateStringStartDate4)
                    {
                      v366 = queryDateStringStartDate4;
                    }

                    personTokensFromLLMQU = v366;
                    goto LABEL_313;
                  }

                  queryDateStringStartDate5 = [v1015 queryDateStringStartDate];
                  queryDateStringEndDate4 = [v1015 queryDateStringEndDate];
                  rankingItem106 = [v50 rankingItem];
                  walletBoardingPassDepartureDateTime = [rankingItem106 walletBoardingPassDepartureDateTime];
                  v360 = queryDateStringStartDate5;
                  v361 = queryDateStringEndDate4;
                  v362 = walletBoardingPassDepartureDateTime;
                  v363 = v362;
                  if (v360 && v361)
                  {
                    if ([v362 compare:v360] != -1)
                    {
                      v364 = v361;
                      v365 = 1;
                      goto LABEL_329;
                    }

LABEL_330:
                    v382 = 0;
                  }

                  else
                  {
                    if (v360)
                    {
                      v364 = v360;
                    }

                    else
                    {
                      v364 = v361;
                    }

                    if (v360)
                    {
                      v365 = -1;
                    }

                    else
                    {
                      v365 = 1;
                    }

                    if (!(v360 | v361))
                    {
                      goto LABEL_330;
                    }

LABEL_329:
                    v382 = [v363 compare:v364] != v365;
                  }

                  if (queryDateStringStartDate4)
                  {

                    if (v382)
                    {
                      goto LABEL_337;
                    }

LABEL_314:

LABEL_315:
                    goto LABEL_316;
                  }

                  if (!v382)
                  {
                    goto LABEL_314;
                  }

LABEL_337:
                  arrivalLocationFromQU = [v1015 arrivalLocationFromQU];
                  if ([arrivalLocationFromQU length])
                  {
                    departureLocationFromQU = [v1015 departureLocationFromQU];
                    sectionBundleIdentifier19 = [departureLocationFromQU length] == 0;

                    if ((sectionBundleIdentifier19 & 1) == 0)
                    {
                      personTokensFromLLMQU = [v1015 arrivalLocationFromQU];
                      lowercaseString5 = [personTokensFromLLMQU lowercaseString];
                      if ([lowercaseString5 isEqualToString:rankingItem100])
                      {
                        sectionBundleIdentifier19 = [v1015 departureLocationFromQU];
                        lowercaseString6 = [sectionBundleIdentifier19 lowercaseString];
                        v387 = [lowercaseString6 isEqualToString:lowercaseString2];

                        if (!v387)
                        {
                          goto LABEL_314;
                        }

                        rankingItem107 = [v50 rankingItem];
                        [rankingItem107 topicalityScore];
                        v390 = v389;

                        if (v390 + 0.150000006 <= 1.0)
                        {
                          v391 = v390 + 0.150000006;
                        }

                        else
                        {
                          v391 = 1.0;
                        }

                        rankingItem108 = [v50 rankingItem];
                        [rankingItem108 setTopicalityScore:v391];

                        personTokensFromLLMQU = SSGeneralLog();
                        if (os_log_type_enabled(personTokensFromLLMQU, OS_LOG_TYPE_DEFAULT))
                        {
                          searchString3 = [v1015 searchString];
                          v791 = SSRedactStringClient(searchString3, 1, isSearchToolClient);
                          v796 = SSRedactStringClient(v941, 1, isSearchToolClient);
                          rankingItem109 = [v50 rankingItem];
                          identifier2 = [rankingItem109 identifier];
                          v801 = SSRedactStringClient(identifier2, 1, isSearchToolClient);
                          arrivalLocationFromQU2 = [v1015 arrivalLocationFromQU];
                          v820 = SSRedactStringClient(arrivalLocationFromQU2, 1, isSearchToolClient);
                          rankingItem110 = [v50 rankingItem];
                          walletBoardingPassArrivalAirportCity2 = [rankingItem110 walletBoardingPassArrivalAirportCity];
                          v396 = SSRedactStringClient(walletBoardingPassArrivalAirportCity2, 1, isSearchToolClient);
                          departureLocationFromQU2 = [v1015 departureLocationFromQU];
                          sectionBundleIdentifier19 = SSRedactStringClient(departureLocationFromQU2, 1, isSearchToolClient);
                          rankingItem111 = [v50 rankingItem];
                          walletBoardingPassDepartureAirportCity2 = [rankingItem111 walletBoardingPassDepartureAirportCity];
                          v400 = SSRedactStringClient(walletBoardingPassDepartureAirportCity2, 1, isSearchToolClient);
                          *buf = 138413826;
                          v1112 = v791;
                          v1113 = 2112;
                          *v1114 = v796;
                          *&v1114[8] = 2112;
                          *&v1114[10] = v801;
                          *&v1114[18] = 2112;
                          *&v1114[20] = v820;
                          *&v1114[28] = 2112;
                          *&v1114[30] = v396;
                          *&v1114[38] = 2112;
                          *&v1114[40] = sectionBundleIdentifier19;
                          *&v1114[48] = 2112;
                          *&v1114[50] = v400;
                          _os_log_impl(&dword_1D9F69000, personTokensFromLLMQU, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Wallet] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted due to exact matches arrivalLocationFromQU=%@ walletBoardingPassArrivalAirportCity=%@ and departureLocationFromQU=%@ walletBoardingPassDepartureAirportCity=%@", buf, 0x48u);
                        }
                      }

                      else
                      {
                      }

                      goto LABEL_313;
                    }
                  }

                  else
                  {
                  }

                  arrivalLocationFromQU3 = [v1015 arrivalLocationFromQU];
                  if ([arrivalLocationFromQU3 length])
                  {
                    arrivalLocationFromQU4 = [v1015 arrivalLocationFromQU];
                    lowercaseString7 = [arrivalLocationFromQU4 lowercaseString];
                    sectionBundleIdentifier19 = [lowercaseString7 isEqualToString:rankingItem100];

                    if (sectionBundleIdentifier19)
                    {
                      rankingItem112 = [v50 rankingItem];
                      [rankingItem112 topicalityScore];
                      v406 = v405;

                      if (v406 + 0.150000006 <= 1.0)
                      {
                        v407 = v406 + 0.150000006;
                      }

                      else
                      {
                        v407 = 1.0;
                      }

                      rankingItem113 = [v50 rankingItem];
                      [rankingItem113 setTopicalityScore:v407];

                      personTokensFromLLMQU = SSGeneralLog();
                      if (os_log_type_enabled(personTokensFromLLMQU, OS_LOG_TYPE_DEFAULT))
                      {
                        searchString4 = [v1015 searchString];
                        v821 = SSRedactStringClient(searchString4, 1, isSearchToolClient);
                        sectionBundleIdentifier19 = SSRedactStringClient(v941, 1, isSearchToolClient);
                        rankingItem114 = [v50 rankingItem];
                        identifier3 = [rankingItem114 identifier];
                        v411 = SSRedactStringClient(identifier3, 1, isSearchToolClient);
                        arrivalLocationFromQU5 = [v1015 arrivalLocationFromQU];
                        v413 = SSRedactStringClient(arrivalLocationFromQU5, 1, isSearchToolClient);
                        rankingItem115 = [v50 rankingItem];
                        walletBoardingPassArrivalAirportCity3 = [rankingItem115 walletBoardingPassArrivalAirportCity];
                        v416 = SSRedactStringClient(walletBoardingPassArrivalAirportCity3, 1, isSearchToolClient);
                        *buf = 138413314;
                        v1112 = v821;
                        v1113 = 2112;
                        *v1114 = sectionBundleIdentifier19;
                        *&v1114[8] = 2112;
                        *&v1114[10] = v411;
                        *&v1114[18] = 2112;
                        *&v1114[20] = v413;
                        *&v1114[28] = 2112;
                        *&v1114[30] = v416;
                        _os_log_impl(&dword_1D9F69000, personTokensFromLLMQU, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Wallet] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted due to exact match arrivalLocationFromQU=%@ walletBoardingPassArrivalAirportCity=%@", buf, 0x34u);
                      }

                      goto LABEL_313;
                    }
                  }

                  else
                  {
                  }

                  departureLocationFromQU3 = [v1015 departureLocationFromQU];
                  if ([departureLocationFromQU3 length])
                  {
                    departureLocationFromQU4 = [v1015 departureLocationFromQU];
                    lowercaseString8 = [departureLocationFromQU4 lowercaseString];
                    sectionBundleIdentifier19 = [lowercaseString8 isEqualToString:lowercaseString2];

                    if (sectionBundleIdentifier19)
                    {
                      rankingItem116 = [v50 rankingItem];
                      [rankingItem116 topicalityScore];
                      v422 = v421;

                      if (v422 + 0.150000006 <= 1.0)
                      {
                        v423 = v422 + 0.150000006;
                      }

                      else
                      {
                        v423 = 1.0;
                      }

                      rankingItem117 = [v50 rankingItem];
                      [rankingItem117 setTopicalityScore:v423];

                      personTokensFromLLMQU = SSGeneralLog();
                      if (os_log_type_enabled(personTokensFromLLMQU, OS_LOG_TYPE_DEFAULT))
                      {
                        searchString5 = [v1015 searchString];
                        v822 = SSRedactStringClient(searchString5, 1, isSearchToolClient);
                        sectionBundleIdentifier19 = SSRedactStringClient(v941, 1, isSearchToolClient);
                        rankingItem118 = [v50 rankingItem];
                        identifier4 = [rankingItem118 identifier];
                        v427 = SSRedactStringClient(identifier4, 1, isSearchToolClient);
                        departureLocationFromQU5 = [v1015 departureLocationFromQU];
                        v429 = SSRedactStringClient(departureLocationFromQU5, 1, isSearchToolClient);
                        rankingItem119 = [v50 rankingItem];
                        walletBoardingPassDepartureAirportCity3 = [rankingItem119 walletBoardingPassDepartureAirportCity];
                        v432 = SSRedactStringClient(walletBoardingPassDepartureAirportCity3, 1, isSearchToolClient);
                        *buf = 138413314;
                        v1112 = v822;
                        v1113 = 2112;
                        *v1114 = sectionBundleIdentifier19;
                        *&v1114[8] = 2112;
                        *&v1114[10] = v427;
                        *&v1114[18] = 2112;
                        *&v1114[20] = v429;
                        *&v1114[28] = 2112;
                        *&v1114[30] = v432;
                        _os_log_impl(&dword_1D9F69000, personTokensFromLLMQU, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Wallet] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted due to exact match departureLocationFromQU=%@ walletBoardingPassDepartureAirportCity=%@", buf, 0x34u);
                      }

                      goto LABEL_313;
                    }
                  }

                  else
                  {
                  }

                  personTokensFromLLMQU = [v1015 locationFromQU];
                  if ([personTokensFromLLMQU length])
                  {
                    locationFromQU = [v1015 locationFromQU];
                    lowercaseString9 = [locationFromQU lowercaseString];
                    if ([lowercaseString9 isEqualToString:rankingItem100])
                    {
                    }

                    else
                    {
                      locationFromQU2 = [v1015 locationFromQU];
                      lowercaseString10 = [locationFromQU2 lowercaseString];
                      sectionBundleIdentifier19 = [lowercaseString10 isEqualToString:lowercaseString2];

                      if (!sectionBundleIdentifier19)
                      {
                        goto LABEL_314;
                      }
                    }

                    rankingItem120 = [v50 rankingItem];
                    [rankingItem120 topicalityScore];
                    v439 = v438;

                    if (v439 + 0.150000006 <= 1.0)
                    {
                      v440 = v439 + 0.150000006;
                    }

                    else
                    {
                      v440 = 1.0;
                    }

                    rankingItem121 = [v50 rankingItem];
                    [rankingItem121 setTopicalityScore:v440];

                    personTokensFromLLMQU = SSGeneralLog();
                    if (os_log_type_enabled(personTokensFromLLMQU, OS_LOG_TYPE_DEFAULT))
                    {
                      searchString6 = [v1015 searchString];
                      v792 = SSRedactStringClient(searchString6, 1, isSearchToolClient);
                      v797 = SSRedactStringClient(v941, 1, isSearchToolClient);
                      rankingItem122 = [v50 rankingItem];
                      identifier5 = [rankingItem122 identifier];
                      v804 = SSRedactStringClient(identifier5, 1, isSearchToolClient);
                      locationFromQU3 = [v1015 locationFromQU];
                      v823 = SSRedactStringClient(locationFromQU3, 1, isSearchToolClient);
                      rankingItem123 = [v50 rankingItem];
                      walletBoardingPassArrivalAirportCity4 = [rankingItem123 walletBoardingPassArrivalAirportCity];
                      v445 = SSRedactStringClient(walletBoardingPassArrivalAirportCity4, 1, isSearchToolClient);
                      locationFromQU4 = [v1015 locationFromQU];
                      sectionBundleIdentifier19 = SSRedactStringClient(locationFromQU4, 1, isSearchToolClient);
                      rankingItem124 = [v50 rankingItem];
                      walletBoardingPassDepartureAirportCity4 = [rankingItem124 walletBoardingPassDepartureAirportCity];
                      v449 = SSRedactStringClient(walletBoardingPassDepartureAirportCity4, 1, isSearchToolClient);
                      *buf = 138413826;
                      v1112 = v792;
                      v1113 = 2112;
                      *v1114 = v797;
                      *&v1114[8] = 2112;
                      *&v1114[10] = v804;
                      *&v1114[18] = 2112;
                      *&v1114[20] = v823;
                      *&v1114[28] = 2112;
                      *&v1114[30] = v445;
                      *&v1114[38] = 2112;
                      *&v1114[40] = sectionBundleIdentifier19;
                      *&v1114[48] = 2112;
                      *&v1114[50] = v449;
                      _os_log_impl(&dword_1D9F69000, personTokensFromLLMQU, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Wallet] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted due to exact match between locationFromQU=%@ walletBoardingPassArrivalAirportCity=%@ or locationFromQU=%@ walletBoardingPassDepartureAirportCity=%@", buf, 0x48u);
                    }
                  }

LABEL_313:

                  goto LABEL_314;
                }

LABEL_316:
                if (v807 && ([v1015 llmQUIntentType] & 0x20000) == 0)
                {
                  rankingItem78 = [v50 rankingItem];
                  if (![rankingItem78 detectedEventType])
                  {
                    goto LABEL_220;
                  }

                  rankingItem125 = [v50 rankingItem];
                  detectedEventType = [rankingItem125 detectedEventType];
                  sectionBundleIdentifier19 = ([v1015 llmQUIntentType] & detectedEventType) == 0;

                  if (sectionBundleIdentifier19)
                  {
                    rankingItem126 = [v50 rankingItem];
                    [rankingItem126 topicalityScore];
                    v371 = v370;
                    v372 = *&inferredAppEntityMatchBoosting;

                    rankingItem127 = [v50 rankingItem];
                    [rankingItem127 setTopicalityScore:{fmax(v371 - v372, 0.0)}];

                    rankingItem78 = SSGeneralLog();
                    if (os_log_type_enabled(rankingItem78, OS_LOG_TYPE_DEFAULT))
                    {
                      searchString7 = [v1015 searchString];
                      v374 = SSRedactStringClient(searchString7, 1, isSearchToolClient);
                      v375 = SSRedactStringClient(v941, 1, isSearchToolClient);
                      rankingItem128 = [v50 rankingItem];
                      identifier6 = [rankingItem128 identifier];
                      v378 = SSRedactStringClient(identifier6, 1, isSearchToolClient);
                      v379 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v1015 llmQUIntentType]);
                      sectionBundleIdentifier19 = SPSearchQueryContext;
                      rankingItem129 = [v50 rankingItem];
                      v381 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [rankingItem129 detectedEventType]);
                      *buf = 138413314;
                      v1112 = v374;
                      v1113 = 2112;
                      *v1114 = v375;
                      *&v1114[8] = 2112;
                      *&v1114[10] = v378;
                      *&v1114[18] = 2112;
                      *&v1114[20] = v379;
                      *&v1114[28] = 2112;
                      *&v1114[30] = v381;
                      _os_log_impl(&dword_1D9F69000, rankingItem78, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Demotion] query=%@ Result=[%@] identifier=[%@] was soft demoted due to un-matched event type quEventType=%@ resultEventType=%@", buf, 0x34u);
                    }

LABEL_220:
                  }
                }

LABEL_221:

                goto LABEL_222;
              }
            }

LABEL_265:
            matchInfo2 = SSGeneralLog();
            v250 = 0.0;
            if (os_log_type_enabled(matchInfo2, OS_LOG_TYPE_DEFAULT))
            {
              searchString8 = [v1015 searchString];
              v312 = SSRedactStringClient(searchString8, 1, isSearchToolClient);
              rankingItem130 = [v50 rankingItem];
              sectionBundleIdentifier21 = [rankingItem130 sectionBundleIdentifier];
              rankingItem131 = [v50 rankingItem];
              identifier7 = [rankingItem131 identifier];
              v317 = SSRedactStringClient(identifier7, 1, isSearchToolClient);
              sectionBundleIdentifier19 = [v50 rankingItem];
              v318 = SSCompactRankingAttrsGetValue([sectionBundleIdentifier19 attributes], 1uLL);
              v319 = SSRedactStringClient(v318, 1, isSearchToolClient);
              *buf = 138413058;
              v1112 = v312;
              v1113 = 2112;
              *v1114 = sectionBundleIdentifier21;
              *&v1114[8] = 2112;
              *&v1114[10] = v317;
              *&v1114[18] = 2112;
              *&v1114[20] = v319;
              _os_log_impl(&dword_1D9F69000, matchInfo2, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ bundleId=%@ identifier=%@ MDItemIdentifier=%@ assigned 0 dense score due to location mismatch", buf, 0x2Au);
            }

            goto LABEL_267;
          }
        }

        rankingItem132 = [v50 rankingItem];
        v107 = SSCompactRankingAttrsGetValue([rankingItem132 attributes], 0x11uLL);

        if (v107)
        {
          [v107 timeIntervalSinceReferenceDate];
          v109 = v108;
          rankingItem133 = [v50 rankingItem];
          [rankingItem133 setStartDueDateToNowInSeconds:(v109 - *&v838)];
        }

        goto LABEL_109;
      }

LABEL_222:
      v1006 = v1006 + 1;
    }

    while (v1006 != v923);
    v450 = [obj countByEnumeratingWithState:&v1096 objects:v1195 count:16];
    v923 = v450;
  }

  while (v450);
LABEL_379:

  v1086 = 0u;
  v1085 = 0u;
  v1084 = 0u;
  v1083 = 0u;
  resultSet3 = [v847 resultSet];
  v452 = [resultSet3 countByEnumeratingWithState:&v1083 objects:v1192 count:16];
  if (v452)
  {
    v453 = *v1084;
    do
    {
      for (m = 0; m != v452; ++m)
      {
        if (*v1084 != v453)
        {
          objc_enumerationMutation(resultSet3);
        }

        sectionBundleIdentifier19 = *(*(&v1083 + 1) + 8 * m);
        rankingItem134 = [sectionBundleIdentifier19 rankingItem];
        sectionBundleIdentifier22 = [rankingItem134 sectionBundleIdentifier];
        v457 = [sectionBundleIdentifier22 isEqualToString:@"com.apple.MobileAddressBook"];

        rankingItem135 = [sectionBundleIdentifier19 rankingItem];
        v459 = rankingItem135;
        if (v457)
        {
          [rankingItem135 engagementScore];
          v461 = v460;
          rankingItem136 = [sectionBundleIdentifier19 rankingItem];
          [rankingItem136 freshnessScore];
          v464 = v463;
          rankingItem137 = [sectionBundleIdentifier19 rankingItem];
          [rankingItem137 topicalityScore];
          v467 = v466;
          rankingItem138 = [sectionBundleIdentifier19 rankingItem];
          [rankingItem138 setLikelihood:v464 * 0.8 * v467 + v461 * 0.2];
        }

        else
        {
          [rankingItem135 topicalityScore];
          v470 = v469;
          rankingItem136 = [sectionBundleIdentifier19 rankingItem];
          [rankingItem136 setLikelihood:v470];
        }

        if (![SSRankingManager searchToolShouldFilterResultBeforeRanking:sectionBundleIdentifier19 queryContext:v1015 matchQUIntent:matched & 1 intentAndResultWithStartDueDate:v948 & 1 searchToolBundles:v922 useLLMQU:isFromLLMQUParse])
        {
          [v865 addObject:sectionBundleIdentifier19];
          rankingItem139 = [sectionBundleIdentifier19 rankingItem];
          [rankingItem139 topicalityScore];

          rankingItem140 = [sectionBundleIdentifier19 rankingItem];
          sectionBundleIdentifier23 = [rankingItem140 sectionBundleIdentifier];
          v474 = [v921 objectForKeyedSubscript:sectionBundleIdentifier23];

          v475 = MEMORY[0x1E696AD98];
          if (v474)
          {
            [v474 floatValue];
            v477 = v476;
            rankingItem141 = [sectionBundleIdentifier19 rankingItem];
            [rankingItem141 topicalityScore];
            v480 = v479;

            v481 = v477;
            if (v480 > v477)
            {
              v481 = v480;
            }

            rankingItem143 = [v475 numberWithDouble:v481];
            rankingItem142 = [sectionBundleIdentifier19 rankingItem];
            sectionBundleIdentifier19 = [rankingItem142 sectionBundleIdentifier];
            [v921 setObject:rankingItem143 forKeyedSubscript:sectionBundleIdentifier19];
          }

          else
          {
            rankingItem143 = [sectionBundleIdentifier19 rankingItem];
            [rankingItem143 topicalityScore];
            rankingItem142 = [v475 numberWithDouble:?];
            sectionBundleIdentifier19 = [sectionBundleIdentifier19 rankingItem];
            v36SectionBundleIdentifier = [sectionBundleIdentifier19 sectionBundleIdentifier];
            [v921 setObject:rankingItem142 forKeyedSubscript:v36SectionBundleIdentifier];
          }
        }
      }

      v452 = [resultSet3 countByEnumeratingWithState:&v1083 objects:v1192 count:16];
    }

    while (v452);
  }

  if (SSEnableSearchToolL2Ranking(v485, v486))
  {
    v487 = SSSearchToolRankingLog();
    v488 = os_signpost_id_generate(v487);
    v489 = v487;
    v490 = v489;
    v930 = v488 - 1;
    loga = v489;
    if (v488 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v491 = os_signpost_enabled(v489);
      v490 = loga;
      if (v491)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1D9F69000, loga, OS_SIGNPOST_INTERVAL_BEGIN, v488, "SearchToolL2Ranking", "Begin", buf, 2u);
        v490 = loga;
      }
    }

    spida = v488;

    v949 = +[SSRankingManager getSearchToolL2ModelManager];
    if (v949 && ([v949 loaded] & 1) != 0)
    {
      v868 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(v865)];
      v1082 = 0u;
      v1081 = 0u;
      v1080 = 0u;
      v1079 = 0u;
      v953 = v865;
      v877 = [v953 countByEnumeratingWithState:&v1079 objects:v1191 count:16];
      if (v877)
      {
        obja = *v1080;
        do
        {
          for (n = 0; n != v877; ++n)
          {
            if (*v1080 != obja)
            {
              objc_enumerationMutation(v953);
            }

            rankingItem144 = [*(*(&v1079 + 1) + 8 * n) rankingItem];
            LODWORD(v492) = -1.0;
            [rankingItem144 setSearchToolL2Score:v492];
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v493 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(rankingItem144, "bundleIDType")}];
            [dictionary setObject:v493 forKeyedSubscript:@"bundleIDType"];

            v494 = MEMORY[0x1E696AD98];
            [rankingItem144 pommesL1Score];
            v495 = [v494 numberWithFloat:?];
            [dictionary setObject:v495 forKeyedSubscript:@"sparseL1"];

            v496 = MEMORY[0x1E696AD98];
            [rankingItem144 embeddingSimilarity];
            v497 = [v496 numberWithFloat:?];
            [dictionary setObject:v497 forKeyedSubscript:@"denseL1"];

            v498 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(rankingItem144, "isMailCategoryHighImpact")}];
            [dictionary setObject:v498 forKeyedSubscript:@"isMailCategoryHighImpact"];

            v499 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(rankingItem144, "isMailCategoryPromotions")}];
            [dictionary setObject:v499 forKeyedSubscript:@"isMailCategoryHighImpact"];

            v500 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(rankingItem144, "documentEmbeddingAvailable")}];
            [dictionary setObject:v500 forKeyedSubscript:@"documentEmbeddingAvailable"];

            v501 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1015, "hasQueryTextEmbedding")}];
            [dictionary setObject:v501 forKeyedSubscript:@"has_query_text_embedding"];

            v502 = MEMORY[0x1E696AD98];
            [rankingItem144 l2Score];
            v503 = [v502 numberWithFloat:?];
            [dictionary setObject:v503 forKeyedSubscript:@"pommesL2Score"];

            v504 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v998 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v1078 = 0u;
            v1077 = 0u;
            v1076 = 0u;
            v1075 = 0u;
            matchInfo4 = [rankingItem144 matchInfo];
            v907 = [matchInfo4 countByEnumeratingWithState:&v1075 objects:v1190 count:16];
            if (v907)
            {
              v871 = *v1076;
              do
              {
                for (ii = 0; ii != v907; ii = ii + 1)
                {
                  if (*v1076 != v871)
                  {
                    objc_enumerationMutation(matchInfo4);
                  }

                  v1007 = *(*(&v1075 + 1) + 8 * ii);
                  if (v1007)
                  {
                    v855 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v1074 = 0u;
                    v1073 = 0u;
                    v1072 = 0u;
                    v1071 = 0u;
                    matchInfo5 = [rankingItem144 matchInfo];
                    v896 = [matchInfo5 objectForKeyedSubscript:v1007];

                    v881 = [v896 countByEnumeratingWithState:&v1071 objects:v1189 count:16];
                    if (v881)
                    {
                      v862 = *v1072;
                      do
                      {
                        for (jj = 0; jj != v881; ++jj)
                        {
                          if (*v1072 != v862)
                          {
                            objc_enumerationMutation(v896);
                          }

                          original4 = [*(*(&v1071 + 1) + 8 * jj) original];
                          whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                          sectionBundleIdentifier19 = [original4 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

                          v1070 = 0u;
                          v1069 = 0u;
                          v1068 = 0u;
                          v1067 = 0u;
                          v960 = sectionBundleIdentifier19;
                          osloga = [v960 countByEnumeratingWithState:&v1067 objects:v1188 count:16];
                          if (osloga)
                          {
                            v967 = *v1068;
                            do
                            {
                              v507 = 0;
                              do
                              {
                                if (*v1068 != v967)
                                {
                                  v508 = v507;
                                  objc_enumerationMutation(v960);
                                  v507 = v508;
                                }

                                v981 = v507;
                                lowercaseString11 = [*(*(&v1067 + 1) + 8 * v507) lowercaseString];
                                v1066 = 0u;
                                v1065 = 0u;
                                v1064 = 0u;
                                v1063 = 0u;
                                detailedLLMQUTokens = [v1015 detailedLLMQUTokens];
                                v511 = [detailedLLMQUTokens countByEnumeratingWithState:&v1063 objects:v1187 count:16];
                                if (v511)
                                {
                                  v512 = *v1064;
                                  do
                                  {
                                    for (kk = 0; kk != v511; ++kk)
                                    {
                                      if (*v1064 != v512)
                                      {
                                        objc_enumerationMutation(detailedLLMQUTokens);
                                      }

                                      v514 = *(*(&v1063 + 1) + 8 * kk);
                                      v515 = [v1007 stringByAppendingString:@" "];
                                      v516 = [v515 stringByAppendingString:v514];

                                      sectionBundleIdentifier19 = [v1015 detailedLLMQUTokens];
                                      v517 = [sectionBundleIdentifier19 objectForKeyedSubscript:v514];

                                      if ([v517 containsObject:lowercaseString11])
                                      {
                                        v518 = [v504 objectForKeyedSubscript:v516];
                                        v519 = v518 == 0;

                                        if (v519)
                                        {
                                          [v504 setObject:&unk_1F55B6CA8 forKeyedSubscript:v516];
                                          sectionBundleIdentifier19 = MEMORY[0x1E696AD98];
                                          v521 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:objc_msgSend_count(v517)];
                                          [v998 setObject:v521 forKeyedSubscript:v516];
                                        }

                                        else
                                        {
                                          v520 = MEMORY[0x1E696AD98];
                                          v521 = [v504 objectForKeyedSubscript:v516];
                                          [v521 doubleValue];
                                          sectionBundleIdentifier19 = [v520 numberWithDouble:v522 + 1.0];
                                          [v504 setObject:sectionBundleIdentifier19 forKeyedSubscript:v516];
                                        }
                                      }
                                    }

                                    v511 = [detailedLLMQUTokens countByEnumeratingWithState:&v1063 objects:v1187 count:16];
                                  }

                                  while (v511);
                                }

                                v507 = v981 + 1;
                              }

                              while (v981 + 1 != osloga);
                              osloga = [v960 countByEnumeratingWithState:&v1067 objects:v1188 count:16];
                            }

                            while (osloga);
                          }
                        }

                        v881 = [v896 countByEnumeratingWithState:&v1071 objects:v1189 count:16];
                      }

                      while (v881);
                    }
                  }
                }

                v907 = [matchInfo4 countByEnumeratingWithState:&v1075 objects:v1190 count:16];
              }

              while (v907);
            }

            v1062 = 0u;
            v1061 = 0u;
            v1060 = 0u;
            v1059 = 0u;
            v523 = v504;
            v524 = [v523 countByEnumeratingWithState:&v1059 objects:v1186 count:16];
            if (v524)
            {
              v525 = *v1060;
              do
              {
                for (mm = 0; mm != v524; ++mm)
                {
                  if (*v1060 != v525)
                  {
                    objc_enumerationMutation(v523);
                  }

                  v527 = *(*(&v1059 + 1) + 8 * mm);
                  v528 = MEMORY[0x1E696AD98];
                  v529 = [v523 objectForKeyedSubscript:v527];
                  [v529 doubleValue];
                  v531 = v530;
                  v532 = [v998 objectForKeyedSubscript:v527];
                  [v532 doubleValue];
                  sectionBundleIdentifier19 = [v528 numberWithDouble:v531 / v533];
                  [dictionary setObject:sectionBundleIdentifier19 forKeyedSubscript:v527];
                }

                v524 = [v523 countByEnumeratingWithState:&v1059 objects:v1186 count:16];
              }

              while (v524);
            }

            v1058 = 0u;
            v1057 = 0u;
            v1056 = 0u;
            v1055 = 0u;
            detailedLLMQUTokens2 = [v1015 detailedLLMQUTokens];
            v535 = [detailedLLMQUTokens2 countByEnumeratingWithState:&v1055 objects:v1185 count:16];
            if (v535)
            {
              v536 = *v1056;
              do
              {
                for (nn = 0; nn != v535; ++nn)
                {
                  if (*v1056 != v536)
                  {
                    objc_enumerationMutation(detailedLLMQUTokens2);
                  }

                  v538 = *(*(&v1055 + 1) + 8 * nn);
                  detailedLLMQUTokens3 = [v1015 detailedLLMQUTokens];
                  v540 = [detailedLLMQUTokens3 objectForKeyedSubscript:v538];

                  v541 = [v538 stringByAppendingString:@" LEN"];
                  sectionBundleIdentifier19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:objc_msgSend_count(v540)];
                  [dictionary setObject:sectionBundleIdentifier19 forKeyedSubscript:v541];
                }

                v535 = [detailedLLMQUTokens2 countByEnumeratingWithState:&v1055 objects:v1185 count:16];
              }

              while (v535);
            }

            [v868 addObject:dictionary];
          }

          v877 = [v953 countByEnumeratingWithState:&v1079 objects:v1191 count:16];
        }

        while (v877);
      }

      v542 = [v949 predict:v868];
      for (i1 = 0; i1 < objc_msgSend_count(v953); ++i1)
      {
        v544 = [v542 objectAtIndexedSubscript:i1];
        [v544 floatValue];
        v546 = v545;
        sectionBundleIdentifier19 = [v953 objectAtIndexedSubscript:i1];
        rankingItem145 = [sectionBundleIdentifier19 rankingItem];
        LODWORD(v548) = v546;
        [rankingItem145 setSearchToolL2Score:v548];
      }

      v550 = v930;
      v549 = v868;
    }

    else
    {
      v549 = SSGeneralLog();
      if (os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D9F69000, v549, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [L2] L2 models not loaded!", buf, 2u);
      }

      v550 = v488 - 1;
    }

    v551 = v550 < 0xFFFFFFFFFFFFFFFELL;

    v552 = loga;
    v553 = v552;
    if (v551 && os_signpost_enabled(v552))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D9F69000, v553, OS_SIGNPOST_INTERVAL_END, spida, "SearchToolL2Ranking", "End", buf, 2u);
    }
  }

  [SSRankingManager calculateLikelihoodForSearchTool:v865 queryContext:v1015 isQUInferredIntent:v890 isEventSearchIntent:v807];
  LOBYTE(v756) = 0;
  [SSRankingManager searchToolSortResults:v865 isQUIntent:v889 isQUInferredIntent:v890 queryContext:v1015 searchToolBundles:v922 eventSearchIntent:v807 maxTopicalityPerBundle:v921 preExtractionBoost:v756];
  v554 = objc_msgSend_count(v865);
  v555 = (v554 - 1);
  if (v554 >= 1)
  {
    do
    {
      v556 = [v865 objectAtIndexedSubscript:v555];
      v557 = [v1015 llmQUIntentType] & 0x1C000;
      if (!v557)
      {
        if (!v807)
        {
          goto LABEL_480;
        }

        sectionBundleIdentifier19 = [v1015 parsedArgSearchTermsFromQU];
        if (!objc_msgSend_count(sectionBundleIdentifier19))
        {

          goto LABEL_480;
        }
      }

      rankingItem146 = [v556 rankingItem];
      if (([rankingItem146 bundleIDType] & 0x20) != 0 && (objc_msgSend(v1015, "inferredLlmQUIntentType") & 0x20) == 0)
      {
        rankingItem147 = [v556 rankingItem];
        [rankingItem147 normalizedSparseScore];
        v559 = v561 > 1.0;
      }

      else
      {
        v559 = 0;
      }

      if (v557)
      {
        if (v559)
        {
          goto LABEL_483;
        }
      }

      else
      {

        if (v559)
        {
          do
          {
LABEL_483:
            v562 = [v865 objectAtIndexedSubscript:v555];

            v556 = v562;
            rankingItem148 = [v562 rankingItem];
            bundleIDType3 = [rankingItem148 bundleIDType];

            if ((bundleIDType3 & 0x20) != 0)
            {
              rankingItem149 = [v556 rankingItem];
              [rankingItem149 likelihood];
              [rankingItem149 setLikelihood:v566 + *&inferredAppEntityMatchBoosting];

              v567 = SSGeneralLog();
              if (os_log_type_enabled(v567, OS_LOG_TYPE_DEFAULT))
              {
                searchString9 = [v1015 searchString];
                v1008 = SSRedactStringClient(searchString9, 1, isSearchToolClient);
                rankingItem150 = [v556 rankingItem];
                v568 = SSCompactRankingAttrsGetValue([rankingItem150 attributes], 0xCuLL);
                v569 = SSRedactStringClient(v568, 1, isSearchToolClient);
                rankingItem151 = [v556 rankingItem];
                identifier8 = [rankingItem151 identifier];
                v572 = SSRedactStringClient(identifier8, 1, isSearchToolClient);
                v573 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [v1015 llmQUIntentType]);
                *buf = 138413058;
                v1112 = v1008;
                v1113 = 2112;
                *v1114 = v569;
                *&v1114[8] = 2112;
                *&v1114[10] = v572;
                *&v1114[18] = 2112;
                *&v1114[20] = v573;
                _os_log_impl(&dword_1D9F69000, v567, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted on likelihood for quEventType=%@ with perfect sparse score calendar", buf, 0x2Au);
              }
            }

            --v555;
            --v554;
          }

          while (v554 > 0);

          break;
        }
      }

LABEL_480:

      --v554;
      --v555;
    }

    while (v554 + 1 > 1);
  }

  LOBYTE(v757) = 0;
  [SSRankingManager searchToolSortResults:v865 isQUIntent:v889 isQUInferredIntent:v890 queryContext:v1015 searchToolBundles:v922 eventSearchIntent:v807 maxTopicalityPerBundle:v921 preExtractionBoost:v757];
  [SSRankingManager searchToolDeduplicateResults:v865];
  v1054 = 0u;
  v1053 = 0u;
  v1052 = 0u;
  v1051 = 0u;
  v950 = v865;
  v574 = [v950 countByEnumeratingWithState:&v1051 objects:v1184 count:16];
  if (v574)
  {
    v575 = *v1052;
    do
    {
      for (i2 = 0; i2 != v574; ++i2)
      {
        if (*v1052 != v575)
        {
          objc_enumerationMutation(v950);
        }

        [SSSnippetUtilities createFormattedSnippetForResult:*(*(&v1051 + 1) + 8 * i2) withContext:v1015];
      }

      v574 = [v950 countByEnumeratingWithState:&v1051 objects:v1184 count:16];
    }

    while (v574);
  }

  if (isSearchToolClient && SSEnableSearchToolDebugMode(v577, v578))
  {
    v1050 = 0u;
    v1049 = 0u;
    v1048 = 0u;
    v1047 = 0u;
    v954 = v950;
    v961 = [v954 countByEnumeratingWithState:&v1047 objects:v1183 count:16];
    if (v961)
    {
      v943 = *v1048;
      v991 = 1;
      do
      {
        for (i3 = 0; i3 != v961; i3 = i3 + 1)
        {
          if (*v1048 != v943)
          {
            objc_enumerationMutation(v954);
          }

          rankingItem152 = [*(*(&v1047 + 1) + 8 * i3) rankingItem];
          v982 = SSCompactRankingAttrsGetValue([rankingItem152 attributes], 1uLL);
          matchInfo6 = [rankingItem152 matchInfo];

          if (matchInfo6)
          {
            v1046 = 0u;
            v1045 = 0u;
            v1044 = 0u;
            v1043 = 0u;
            matchInfo7 = [rankingItem152 matchInfo];
            v580 = [matchInfo7 countByEnumeratingWithState:&v1043 objects:v1182 count:16];
            if (v580)
            {
              v581 = *v1044;
              do
              {
                for (i4 = 0; i4 != v580; ++i4)
                {
                  if (*v1044 != v581)
                  {
                    objc_enumerationMutation(matchInfo7);
                  }

                  v583 = *(*(&v1043 + 1) + 8 * i4);
                  if (v583)
                  {
                    v584 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v1042 = 0u;
                    v1041 = 0u;
                    v1040 = 0u;
                    v1039 = 0u;
                    matchInfo8 = [rankingItem152 matchInfo];
                    v586 = [matchInfo8 objectForKeyedSubscript:v583];

                    v587 = [v586 countByEnumeratingWithState:&v1039 objects:v1181 count:16];
                    if (v587)
                    {
                      v588 = *v1040;
                      do
                      {
                        for (i5 = 0; i5 != v587; ++i5)
                        {
                          if (*v1040 != v588)
                          {
                            objc_enumerationMutation(v586);
                          }

                          original5 = [*(*(&v1039 + 1) + 8 * i5) original];
                          [v584 addObject:original5];
                        }

                        v587 = [v586 countByEnumeratingWithState:&v1039 objects:v1181 count:16];
                      }

                      while (v587);
                    }

                    v591 = SSGeneralLog();
                    if (os_log_type_enabled(v591, OS_LOG_TYPE_DEBUG))
                    {
                      searchString10 = [v1015 searchString];
                      sectionBundleIdentifier24 = [rankingItem152 sectionBundleIdentifier];
                      identifier9 = [rankingItem152 identifier];
                      *buf = 138413826;
                      v1112 = searchString10;
                      v1113 = 1024;
                      *v1114 = v991;
                      *&v1114[4] = 2112;
                      *&v1114[6] = sectionBundleIdentifier24;
                      *&v1114[14] = 2112;
                      *&v1114[16] = identifier9;
                      *&v1114[24] = 2112;
                      *&v1114[26] = v982;
                      *&v1114[34] = 2112;
                      *&v1114[36] = v583;
                      *&v1114[44] = 2112;
                      *&v1114[46] = v584;
                      _os_log_debug_impl(&dword_1D9F69000, v591, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [MatchInfo] query=%@ ranked result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@, attribute_key=%@, match_value=%@", buf, 0x44u);
                    }
                  }
                }

                v580 = [matchInfo7 countByEnumeratingWithState:&v1043 objects:v1182 count:16];
              }

              while (v580);
            }
          }

          else
          {
            matchInfo7 = SSGeneralLog();
            if (os_log_type_enabled(matchInfo7, OS_LOG_TYPE_DEBUG))
            {
              searchString11 = [v1015 searchString];
              sectionBundleIdentifier25 = [rankingItem152 sectionBundleIdentifier];
              identifier10 = [rankingItem152 identifier];
              *buf = 138413314;
              v1112 = searchString11;
              v1113 = 1024;
              *v1114 = v991;
              *&v1114[4] = 2112;
              *&v1114[6] = sectionBundleIdentifier25;
              *&v1114[14] = 2112;
              *&v1114[16] = identifier10;
              *&v1114[24] = 2112;
              *&v1114[26] = v982;
              _os_log_debug_impl(&dword_1D9F69000, matchInfo7, OS_LOG_TYPE_DEBUG, "[SpotlightRanking] [SearchTool] [MatchInfo] query=%@ ranked result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@, NO MATCH_INFO", buf, 0x30u);
            }
          }

          ++v991;
        }

        v961 = [v954 countByEnumeratingWithState:&v1047 objects:v1183 count:16];
      }

      while (v961);
    }

    v598 = SSGeneralLog();
    if (os_log_type_enabled(v598, OS_LOG_TYPE_DEFAULT))
    {
      searchString12 = [v1015 searchString];
      v600 = objc_msgSend_count(v954);
      *buf = 138412546;
      v1112 = searchString12;
      v1113 = 2048;
      *v1114 = v600;
      _os_log_impl(&dword_1D9F69000, v598, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ rank %lu results", buf, 0x16u);
    }

    string = [MEMORY[0x1E696AD60] string];
    v1038 = 0u;
    v1037 = 0u;
    v1036 = 0u;
    v1035 = 0u;
    v810 = v954;
    v839 = [v810 countByEnumeratingWithState:&v1035 objects:v1180 count:16];
    if (v839)
    {
      v869 = 0;
      v836 = *v1036;
      do
      {
        for (i6 = 0; i6 != v839; i6 = i6 + 1)
        {
          if (*v1036 != v836)
          {
            objc_enumerationMutation(v810);
          }

          rankingItem153 = [*(*(&v1035 + 1) + 8 * i6) rankingItem];
          v931 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 1uLL);
          v925 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0xE6uLL);
          spidb = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0xE7uLL);
          v912 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0xDuLL);
          v908 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0x110uLL);
          v962 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 7uLL);
          v955 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0xCuLL);
          v944 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 4uLL);
          v601 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 6uLL);
          logb = v601;
          v602 = v944;
          if (!v944)
          {
            v602 = v601;
          }

          if (v955)
          {
            v602 = v955;
          }

          if (v962)
          {
            v602 = v962;
          }

          v983 = v602;
          if ([v983 length])
          {
            v603 = [v983 stringByReplacingOccurrencesOfString:@"\r" withString:@" "];
            v604 = [v603 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

            v983 = v604;
          }

          l2FeatureVector = [rankingItem153 L2FeatureVector];
          topicalityAnonFeatDict = [l2FeatureVector topicalityAnonFeatDict];

          v1001 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v1034 = 0u;
          v1033 = 0u;
          v1032 = 0u;
          v1031 = 0u;
          v1010 = topicalityAnonFeatDict;
          v607 = [v1010 countByEnumeratingWithState:&v1031 objects:v1179 count:16];
          if (v607)
          {
            v608 = *v1032;
            do
            {
              for (i7 = 0; i7 != v607; ++i7)
              {
                if (*v1032 != v608)
                {
                  objc_enumerationMutation(v1010);
                }

                v610 = *(*(&v1031 + 1) + 8 * i7);
                v611 = [v1010 objectForKeyedSubscript:v610];
                v612 = [v610 stringByAppendingFormat:@":(Unigram:%li Bigram:%li Ngram:%li UnigramPrefix:%li BigramPrefix:%li NgramPrefix:%li)", objc_msgSend(v611, "countAttributeUnigramMatch"), objc_msgSend(v611, "countAttributeBigramMatch"), objc_msgSend(v611, "countAttributeNgramMatch"), objc_msgSend(v611, "countAttributeUnigramPrefixMatch"), objc_msgSend(v611, "countAttributeBigramPrefixMatch"), objc_msgSend(v611, "countAttributeNgramPrefixMatch")];
                [v1001 addObject:v612];
              }

              v607 = [v1010 countByEnumeratingWithState:&v1031 objects:v1179 count:16];
            }

            while (v607);
          }

          v613 = [v1001 componentsJoinedByString:@" "];
          v614 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 9uLL);
          v615 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0x20uLL);
          v616 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0x19uLL);
          v897 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0x16DuLL);
          v893 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0x18AuLL);
          v886 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0x11uLL);
          v882 = SSCompactRankingAttrsGetValue([rankingItem153 attributes], 0x12uLL);
          oslogb = SSGeneralLog();
          if (os_log_type_enabled(oslogb, OS_LOG_TYPE_DEFAULT))
          {
            objb = [v1015 searchString];
            sectionBundleIdentifier26 = [rankingItem153 sectionBundleIdentifier];
            identifier11 = [rankingItem153 identifier];
            [rankingItem153 likelihood];
            v835 = v617;
            [rankingItem153 topicalityScore];
            v833 = v618;
            [rankingItem153 pommesL1Score];
            v832 = v619;
            [rankingItem153 pommesCalibratedL1Score];
            v621 = v620;
            [rankingItem153 embeddingSimilarity];
            v623 = v622;
            [rankingItem153 projectedEmbeddingSimilarity];
            v625 = v624;
            [rankingItem153 keywordMatchScore];
            v627 = v626;
            [rankingItem153 freshnessScore];
            v831 = v628;
            [rankingItem153 engagementScore];
            v630 = v629;
            [rankingItem153 l2Score];
            v632 = v631;
            [rankingItem153 normalizedSparseScore];
            v634 = v633;
            [rankingItem153 searchToolL2Score];
            v636 = v635;
            v872 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [rankingItem153 detectedEventType]);
            preExtractedCardType = [rankingItem153 preExtractedCardType];
            linkType4 = [rankingItem153 linkType];
            linkName4 = [rankingItem153 linkName];
            v875 = SSRedactStringClient(linkName4, 1, 1);
            v863 = [rankingItem153 url];
            v878 = SSRedactStringClient(v863, 1, 1);
            isInferredSharedLink2 = [rankingItem153 isInferredSharedLink];
            isPromotedSharedLink2 = [rankingItem153 isPromotedSharedLink];
            isMailCategoryHighImpact = [rankingItem153 isMailCategoryHighImpact];
            isMailCategoryPromotions = [rankingItem153 isMailCategoryPromotions];
            startDueDateToNowInSeconds = [rankingItem153 startDueDateToNowInSeconds];
            isCalendarFlightEventType2 = [rankingItem153 isCalendarFlightEventType];
            isCalendarHotelEventType2 = [rankingItem153 isCalendarHotelEventType];
            isCalendarRestaurantEventType2 = [rankingItem153 isCalendarRestaurantEventType];
            isCalendarOtherReservationEventType2 = [rankingItem153 isCalendarOtherReservationEventType];
            mostRecentTimeToQueryInMinutesForFreshness = [rankingItem153 mostRecentTimeToQueryInMinutesForFreshness];
            retrievalType = [rankingItem153 retrievalType];
            intValue = [retrievalType intValue];
            documentEmbeddingAvailable2 = [rankingItem153 documentEmbeddingAvailable];
            searchTermsMatchTitle2 = [rankingItem153 searchTermsMatchTitle];
            ++v869;
            v644 = @"Unknown";
            if (searchTermsMatchTitle2 <= 3)
            {
              v644 = off_1E8595B98[searchTermsMatchTitle2];
            }

            v1142 = isInferredSharedLink2;
            v1144 = isPromotedSharedLink2;
            v1146 = isMailCategoryHighImpact;
            *v1148 = isMailCategoryPromotions;
            *&v1148[6] = startDueDateToNowInSeconds;
            *v1150 = isCalendarFlightEventType2;
            *&v1150[6] = isCalendarHotelEventType2;
            v1152 = isCalendarRestaurantEventType2;
            v1154 = isCalendarOtherReservationEventType2;
            v1156 = mostRecentTimeToQueryInMinutesForFreshness;
            v1174 = intValue;
            v1176 = documentEmbeddingAvailable2;
            v1178 = v644;
            *buf = 138424322;
            v1112 = objb;
            v1113 = 1024;
            *v1114 = v869;
            *&v1114[4] = 2112;
            *&v1114[6] = sectionBundleIdentifier26;
            *&v1114[14] = 2112;
            *&v1114[16] = identifier11;
            *&v1114[24] = 2112;
            *&v1114[26] = v931;
            *&v1114[34] = 2112;
            *&v1114[36] = v925;
            *&v1114[44] = 2112;
            *&v1114[46] = spidb;
            *&v1114[54] = 2112;
            *&v1114[56] = v912;
            *&v1114[64] = 2112;
            *&v1114[66] = v908;
            *&v1114[74] = 2112;
            *&v1114[76] = v983;
            *v1115 = 2048;
            *&v1115[2] = v835;
            *&v1115[10] = 2048;
            *&v1115[12] = v833;
            *v1116 = 2048;
            *&v1116[2] = v832;
            v1117 = 2048;
            v1118 = v621;
            v1119 = 2048;
            v1120 = v623;
            v1121 = 2048;
            v1122 = v625;
            v1123 = 2048;
            v1124 = v627;
            v1125 = 2048;
            v1126 = v831;
            v1127 = 2048;
            v1128 = v630;
            v1129 = 2048;
            v1130 = v632;
            v1131 = 2048;
            v1132 = v634;
            v1133 = 2048;
            v1134 = v636;
            v1135 = 2112;
            v1136 = v872;
            v1137 = 2112;
            *v1138 = preExtractedCardType;
            *&v1138[8] = 2112;
            v1139 = linkType4;
            *v1140 = 2112;
            *&v1140[2] = v875;
            *&v1140[10] = 2112;
            *&v1140[12] = v878;
            v1141 = 1024;
            v1143 = 1024;
            v1145 = 1024;
            v1147 = 1024;
            *&v1148[4] = 2048;
            v1149 = 1024;
            *&v1150[4] = 1024;
            v1151 = 1024;
            v1153 = 1024;
            v1155 = 2048;
            v1157 = 2112;
            v1158 = v613;
            v1159 = 2112;
            v1160 = v614;
            v1161 = 2112;
            v1162 = v615;
            v1163 = 2112;
            v1164 = v616;
            v1165 = 2112;
            v1166 = v897;
            v1167 = 2112;
            v1168 = v893;
            v1169 = 2112;
            v1170 = v886;
            v1171 = 2112;
            v1172 = v882;
            v1173 = 1024;
            v1175 = 1024;
            v1177 = 2112;
            _os_log_impl(&dword_1D9F69000, oslogb, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ ranked result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@ messageID=%@ messageHeader=%@ contentURL=%@ appEntityInstanceId=%@ name=%@ score=(likelihood=%lf topicality=%lf pommesL1Score=%lf pommesCalibratedL1Score=%lf embeddingSimilarity=%lf projectedEmbeddingSimilarity=%lf keywordMatchScore=%lf freshness=%lf engagement=%lf pommesL2Score=%lf normalizedSparseScore=%lf seartoolL2Score=%f) documentSignals=(detectedEventTypes=%@ cardType=%@ link=(type=%@ name=%@ url=%@ isInferred=%i isPromoted=%i) isMailCategoryHighImpact=%i isMailCategoryPromotions=%i startDueDateToNowInSeconds=%ld isCalendarFlightEventType=%i isCalendarHotelEventType=%i isCalendarRestaurantEventTyp=%i isCalendarOtherReservationEventType=%i mostRecentTimeToQueryInMinutes=%ld) topicalityAnonFeatDict=(%@) dates=(lastUsedDate=[%@] contentCreationDate=[%@] contentModificationDate=[%@] receivedDate=[%@] sentDate=[%@] startDate=[%@] endDate=[%@]) retrievalType=%i documentEmbeddingAvailable=%d searchTermsMatchTitle=%@", buf, 0x1B6u);
          }

          if (isSpotlightForSearchToolRegressionTest == 1)
          {
            [string appendFormat:@"%@, ", v931];
          }
        }

        v839 = [v810 countByEnumeratingWithState:&v1035 objects:v1180 count:16];
      }

      while (v839);
    }

    if (isSpotlightForSearchToolRegressionTest == 1)
    {
      v645 = SSGeneralLog();
      if ([string length])
      {
        v646 = 0;
        v647 = 0;
        do
        {
          v648 = os_signpost_id_generate(v645);
          v649 = [string length];
          if ((v649 + v646) >= 0x3E8)
          {
            v650 = 1000;
          }

          else
          {
            v650 = v649 + v646;
          }

          v650 = [string substringWithRange:v647, v650];
          v652 = v645;
          v653 = v652;
          if (v648 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v652))
          {
            v654 = v650;
            uTF8String = [v650 UTF8String];
            *buf = 136315138;
            v1112 = uTF8String;
            _os_signpost_emit_with_name_impl(&dword_1D9F69000, v653, OS_SIGNPOST_EVENT, v648, "RankedResult", "%s", buf, 0xCu);
          }

          v647 += 1000;
          v646 -= 1000;
        }

        while (v647 < [string length]);
      }
    }

    v656 = SSGeneralLog();
    if (os_log_type_enabled(v656, OS_LOG_TYPE_DEFAULT))
    {
      searchString13 = [v1015 searchString];
      v658 = objc_msgSend_count(v810);
      *buf = 138412546;
      v1112 = searchString13;
      v1113 = 2048;
      *v1114 = v658;
      _os_log_impl(&dword_1D9F69000, v656, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ ranked %lu results", buf, 0x16u);
    }
  }

  else
  {
    v659 = SSGeneralLog();
    if (os_log_type_enabled(v659, OS_LOG_TYPE_DEFAULT))
    {
      searchString14 = [v1015 searchString];
      v661 = SSRedactStringClient(searchString14, 1, isSearchToolClient);
      queryIdent = [v1015 queryIdent];
      v663 = objc_msgSend_count(v950);
      *buf = 138412802;
      v1112 = v661;
      v1113 = 2048;
      *v1114 = queryIdent;
      *&v1114[8] = 2048;
      *&v1114[10] = v663;
      _os_log_impl(&dword_1D9F69000, v659, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ qid=%llu rank %lu results", buf, 0x20u);
    }

    v1030 = 0u;
    v1029 = 0u;
    v1028 = 0u;
    v1027 = 0u;
    v840 = v950;
    v870 = [v840 countByEnumeratingWithState:&v1027 objects:v1110 count:16];
    if (v870)
    {
      v984 = 0;
      v867 = *v1028;
LABEL_575:
      v1002 = 0;
      while (1)
      {
        if (*v1028 != v867)
        {
          objc_enumerationMutation(v840);
        }

        if (v984 >= 100 && isInternalDevice != 1)
        {
          break;
        }

        rankingItem154 = [*(*(&v1027 + 1) + 8 * v1002) rankingItem];
        v993 = SSCompactRankingAttrsGetValue([rankingItem154 attributes], 7uLL);
        v970 = SSCompactRankingAttrsGetValue([rankingItem154 attributes], 0xCuLL);
        v963 = SSCompactRankingAttrsGetValue([rankingItem154 attributes], 4uLL);
        v956 = SSCompactRankingAttrsGetValue([rankingItem154 attributes], 6uLL);
        v665 = v993;
        if (!v993)
        {
          v665 = v963;
          if (!v963)
          {
            v665 = v956;
          }

          if (v970)
          {
            v665 = v970;
          }
        }

        oslogc = v665;
        v1011 = SSGeneralLog();
        if (os_log_type_enabled(v1011, OS_LOG_TYPE_DEFAULT))
        {
          searchString15 = [v1015 searchString];
          logc = SSRedactStringClient(searchString15, 1, isSearchToolClient);
          queryIdent2 = [v1015 queryIdent];
          sectionBundleIdentifier27 = [rankingItem154 sectionBundleIdentifier];
          identifier12 = [rankingItem154 identifier];
          v932 = SSRedactStringClient(identifier12, 1, isSearchToolClient);
          v894 = SSCompactRankingAttrsGetValue([rankingItem154 attributes], 1uLL);
          v926 = SSRedactStringClient(v894, 1, isSearchToolClient);
          v945 = SSRedactStringClient(oslogc, 1, isSearchToolClient);
          [rankingItem154 likelihood];
          objc = v666;
          [rankingItem154 topicalityScore];
          v857 = v667;
          [rankingItem154 pommesL1Score];
          v669 = v668;
          [rankingItem154 pommesCalibratedL1Score];
          v854 = v670;
          [rankingItem154 embeddingSimilarity];
          v672 = v671;
          [rankingItem154 projectedEmbeddingSimilarity];
          v674 = v673;
          [rankingItem154 keywordMatchScore];
          v676 = v675;
          [rankingItem154 freshnessScore];
          v678 = v677;
          [rankingItem154 engagementScore];
          v680 = v679;
          [rankingItem154 l2Score];
          v682 = v681;
          [rankingItem154 searchToolL2Score];
          v684 = v683;
          v913 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [rankingItem154 detectedEventType]);
          [rankingItem154 preExtractedCardType];
          v685 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          [rankingItem154 linkType];
          v876 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          linkName5 = [rankingItem154 linkName];
          SSRedactStringClient(linkName5, 1, isSearchToolClient);
          spidc = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v879 = [rankingItem154 url];
          v873 = SSRedactStringClient(v879, 1, isSearchToolClient);
          isInferredSharedLink3 = [rankingItem154 isInferredSharedLink];
          isPromotedSharedLink3 = [rankingItem154 isPromotedSharedLink];
          isMailCategoryHighImpact2 = [rankingItem154 isMailCategoryHighImpact];
          isMailCategoryPromotions2 = [rankingItem154 isMailCategoryPromotions];
          startDueDateToNowInSeconds2 = [rankingItem154 startDueDateToNowInSeconds];
          isCalendarFlightEventType3 = [rankingItem154 isCalendarFlightEventType];
          isCalendarHotelEventType3 = [rankingItem154 isCalendarHotelEventType];
          isCalendarRestaurantEventType3 = [rankingItem154 isCalendarRestaurantEventType];
          isCalendarOtherReservationEventType3 = [rankingItem154 isCalendarOtherReservationEventType];
          mostRecentTimeToQueryInDaysForFreshness = [rankingItem154 mostRecentTimeToQueryInDaysForFreshness];
          documentEmbeddingAvailable3 = [rankingItem154 documentEmbeddingAvailable];
          searchTermsMatchTitle3 = [rankingItem154 searchTermsMatchTitle];
          ++v984;
          v695 = @"Unknown";
          if (searchTermsMatchTitle3 <= 3)
          {
            v695 = off_1E8595B98[searchTermsMatchTitle3];
          }

          *buf = 138420994;
          v1112 = logc;
          v1113 = 2048;
          *v1114 = queryIdent2;
          *&v1114[8] = 1024;
          *&v1114[10] = v984;
          *&v1114[14] = 2112;
          *&v1114[16] = sectionBundleIdentifier27;
          *&v1114[24] = 2112;
          *&v1114[26] = v932;
          *&v1114[34] = 2112;
          *&v1114[36] = v926;
          *&v1114[44] = 2112;
          *&v1114[46] = v945;
          *&v1114[54] = 2048;
          *&v1114[56] = objc;
          *&v1114[64] = 2048;
          *&v1114[66] = v857;
          *&v1114[74] = 2048;
          *&v1114[76] = v669;
          *v1115 = 2048;
          *&v1115[2] = v854;
          *&v1115[10] = 2048;
          *&v1115[12] = v672;
          *v1116 = 2048;
          *&v1116[2] = v674;
          v1117 = 2048;
          v1118 = v676;
          v1119 = 2048;
          v1120 = v678;
          v1121 = 2048;
          v1122 = v680;
          v1123 = 2048;
          v1124 = v682;
          v1125 = 2048;
          v1126 = v684;
          v1127 = 2112;
          v1128 = v913;
          v1129 = 2112;
          v1130 = v685;
          v1131 = 2112;
          v1132 = v876;
          v1133 = 2112;
          v1134 = spidc;
          v1135 = 2112;
          v1136 = v873;
          v1137 = 1024;
          *v1138 = isInferredSharedLink3;
          *&v1138[4] = 1024;
          *&v1138[6] = isPromotedSharedLink3;
          LOWORD(v1139) = 1024;
          *(&v1139 + 2) = isMailCategoryHighImpact2;
          HIWORD(v1139) = 1024;
          *v1140 = isMailCategoryPromotions2;
          *&v1140[4] = 2048;
          *&v1140[6] = startDueDateToNowInSeconds2;
          *&v1140[14] = 1024;
          *&v1140[16] = isCalendarFlightEventType3;
          v1141 = 1024;
          v1142 = isCalendarHotelEventType3;
          v1143 = 1024;
          v1144 = isCalendarRestaurantEventType3;
          v1145 = 1024;
          v1146 = isCalendarOtherReservationEventType3;
          v1147 = 2048;
          *v1148 = mostRecentTimeToQueryInDaysForFreshness;
          *&v1148[8] = 1024;
          *&v1148[10] = documentEmbeddingAvailable3;
          v1149 = 2112;
          *v1150 = v695;
          _os_log_impl(&dword_1D9F69000, v1011, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ qid=%llu ranked result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@ name=%@ score=(likelihood=%f topicality=%f pommesL1Score=%f pommesCalibratedL1Score=%f embeddingSimilarity=%f projectedEmbeddingSimilarity=%f keywordMatchScore=%f freshness=%f engagement=%f pommesL2Score=%f searchToolL2Score=%f) documentSignals=(detectedEventTypes=%@ cardType=%@ link=(type=%@ name=%@ url=%@ isInferred=%i isPromoted=%i) isMailCategoryHighImpact=%i isMailCategoryPromotions=%i startDueDateToNowInSeconds=%ld isCalendarFlightEventType=%i isCalendarHotelEventType=%i isCalendarRestaurantEventTyp=%i isCalendarOtherReservationEventType=%i mostRecentTimeToQueryInDays=%ld) documentEmbeddingAvailable=%d searchTermsMatchTitle=%@", buf, 0x138u);
        }

        v1002 = v1002 + 1;
        if (v870 == v1002)
        {
          v870 = [v840 countByEnumeratingWithState:&v1027 objects:v1110 count:16];
          if (v870)
          {
            goto LABEL_575;
          }

          break;
        }
      }
    }

    string = SSGeneralLog();
    if (os_log_type_enabled(string, OS_LOG_TYPE_DEFAULT))
    {
      searchString16 = [v1015 searchString];
      v697 = SSRedactStringClient(searchString16, 1, isSearchToolClient);
      queryIdent3 = [v1015 queryIdent];
      v699 = objc_msgSend_count(v840);
      *buf = 138412802;
      v1112 = v697;
      v1113 = 2048;
      *v1114 = queryIdent3;
      *&v1114[8] = 2048;
      *&v1114[10] = v699;
      _os_log_impl(&dword_1D9F69000, string, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ qid=%llu ranked %lu results", buf, 0x20u);
    }
  }

  if (searchToolRanker_queryContext_searchToolBundles__isInternalUserOfSearchTool == 1)
  {
    v700 = [SSRankingManager searchToolPopulateResultsForBiomeForTTRWithResult:v950 queryContext:v1015];
    if (v700)
    {
      searchString17 = [v1015 searchString];
      v702 = searchToolRanker_queryContext_searchToolBundles__sTTRBiomeStreamQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__SSRankingManager_searchToolRanker_queryContext_searchToolBundles___block_invoke_1449;
      block[3] = &unk_1E8595728;
      v1025 = v700;
      v703 = searchString17;
      v1026 = v703;
      dispatch_async(v702, block);
    }
  }

  v704 = objc_msgSend_count(v950);
  if (v704)
  {
    v704 = [SSRankingManager searchToolFilterResultsAfterRanking:v950 queryContext:v1015];
  }

  if (SSEnableSearchToolDebugMode(v704, v705))
  {
    v706 = SSGeneralLog();
    if (os_log_type_enabled(v706, OS_LOG_TYPE_DEFAULT))
    {
      searchString18 = [v1015 searchString];
      v708 = objc_msgSend_count(v950);
      *buf = 138412546;
      v1112 = searchString18;
      v1113 = 2048;
      *v1114 = v708;
      _os_log_impl(&dword_1D9F69000, v706, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=[%@] total %lu results after-filtering", buf, 0x16u);
    }

    v1023 = 0u;
    v1022 = 0u;
    v1021 = 0u;
    v1020 = 0u;
    v927 = v950;
    v946 = [v927 countByEnumeratingWithState:&v1020 objects:v1109 count:16];
    if (v946)
    {
      v933 = 0;
      logd = *v1021;
      do
      {
        v709 = 0;
        do
        {
          if (*v1021 != logd)
          {
            v710 = v709;
            objc_enumerationMutation(v927);
            v709 = v710;
          }

          v957 = v709;
          rankingItem155 = [*(*(&v1020 + 1) + 8 * v709) rankingItem];
          v1012 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 1uLL);
          v1003 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 0xE6uLL);
          v994 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 0xE7uLL);
          v985 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 0xDuLL);
          oslogd = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 0x110uLL);
          v712 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 7uLL);
          v971 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 0xCuLL);
          v964 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 4uLL);
          v713 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 6uLL);
          v714 = v713;
          v715 = v712;
          if (!v712)
          {
            v715 = v964;
            if (!v964)
            {
              v715 = v713;
            }

            if (v971)
            {
              v715 = v971;
            }
          }

          v716 = v715;
          v717 = SSCompactRankingAttrsGetValue([rankingItem155 attributes], 0x120uLL);
          bundleIDType4 = [rankingItem155 bundleIDType];
          v719 = SSGeneralLog();
          if (os_log_type_enabled(v719, OS_LOG_TYPE_DEFAULT))
          {
            searchString19 = [v1015 searchString];
            sectionBundleIdentifier28 = [rankingItem155 sectionBundleIdentifier];
            identifier13 = [rankingItem155 identifier];
            *buf = 138415106;
            v1112 = searchString19;
            v1113 = 1024;
            *v1114 = ++v933;
            *&v1114[4] = 2112;
            *&v1114[6] = sectionBundleIdentifier28;
            *&v1114[14] = 2112;
            *&v1114[16] = identifier13;
            *&v1114[24] = 2112;
            *&v1114[26] = v1012;
            *&v1114[34] = 2112;
            *&v1114[36] = v1003;
            *&v1114[44] = 2112;
            *&v1114[46] = v994;
            *&v1114[54] = 2112;
            *&v1114[56] = v985;
            *&v1114[64] = 2112;
            *&v1114[66] = oslogd;
            *&v1114[74] = 2112;
            *&v1114[76] = v716;
            *v1115 = 1024;
            *&v1115[2] = (bundleIDType4 >> 11) & 1;
            *&v1115[6] = 2112;
            *&v1115[8] = v717;
            _os_log_impl(&dword_1D9F69000, v719, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=[%@] after-filtering result %i: bundleId=%@ identifier=%@ MDItemIdentifier=%@ messageID=%@ messageHeader=%@ contentURL=%@ appEntityInstanceId=%@ name=%@ isFileType=%d linkType=%@", buf, 0x72u);
          }

          v709 = v957 + 1;
        }

        while (v946 != v957 + 1);
        v946 = [v927 countByEnumeratingWithState:&v1020 objects:v1109 count:16];
      }

      while (v946);
    }
  }

  v723 = SSGeneralLog();
  if (os_log_type_enabled(v723, OS_LOG_TYPE_DEFAULT))
  {
    searchString20 = [v1015 searchString];
    v725 = SSRedactStringClient(searchString20, 1, isSearchToolClient);
    v726 = objc_msgSend_count(v950);
    *buf = 138412546;
    v1112 = v725;
    v1113 = 2048;
    *v1114 = v726;
    _os_log_impl(&dword_1D9F69000, v723, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ output %lu candidates", buf, 0x16u);
  }

  resultSet4 = [v847 resultSet];
  [resultSet4 removeAllObjects];

  v1013 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1019 = 0u;
  v1018 = 0u;
  v1017 = 0u;
  v1016 = 0u;
  v899 = v950;
  v1004 = [v899 countByEnumeratingWithState:&v1016 objects:v1108 count:16];
  if (v1004)
  {
    v958 = 0;
    v995 = *v1017;
    do
    {
      for (i8 = 0; i8 != v1004; i8 = i8 + 1)
      {
        if (*v1017 != v995)
        {
          objc_enumerationMutation(v899);
        }

        v729 = *(*(&v1016 + 1) + 8 * i8);
        rankingItem156 = [v729 rankingItem];
        sectionBundleIdentifier29 = [rankingItem156 sectionBundleIdentifier];

        if (sectionBundleIdentifier29)
        {
          rankingItem157 = [v729 rankingItem];
          sectionBundleIdentifier30 = [rankingItem157 sectionBundleIdentifier];
          v734 = [v1013 objectForKeyedSubscript:sectionBundleIdentifier30];

          if (v734)
          {
            v735 = [v734 intValue] + 1;
          }

          else
          {
            v735 = 1;
          }

          v736 = [MEMORY[0x1E696AD98] numberWithInt:v735];
          rankingItem158 = [v729 rankingItem];
          sectionBundleIdentifier31 = [rankingItem158 sectionBundleIdentifier];
          [v1013 setObject:v736 forKeyedSubscript:sectionBundleIdentifier31];
        }

        else
        {
          LODWORD(v735) = ++v958;
        }

        if (v735 <= 10)
        {
          resultSet5 = [v847 resultSet];
          [resultSet5 addObject:v729];

          v740 = SSGeneralLog();
          if (os_log_type_enabled(v740, OS_LOG_TYPE_DEFAULT))
          {
            searchString21 = [v1015 searchString];
            v965 = SSRedactStringClient(searchString21, 1, isSearchToolClient);
            rankingItem159 = [v729 rankingItem];
            sectionBundleIdentifier32 = [rankingItem159 sectionBundleIdentifier];
            loge = [v729 rankingItem];
            identifier14 = [loge identifier];
            osloge = SSRedactStringClient(identifier14, 1, isSearchToolClient);
            rankingItem160 = [v729 rankingItem];
            spidd = SSCompactRankingAttrsGetValue([rankingItem160 attributes], 1uLL);
            v972 = SSRedactStringClient(spidd, 1, isSearchToolClient);
            title = [v729 title];
            text = [title text];
            v986 = SSRedactStringClient(text, 1, isSearchToolClient);
            rankingItem161 = [v729 rankingItem];
            [rankingItem161 likelihood];
            v744 = v743;
            rankingItem162 = [v729 rankingItem];
            v746 = +[SPSearchQueryContext llmQUIntentString:](SPSearchQueryContext, "llmQUIntentString:", [rankingItem162 detectedEventType]);
            rankingItem163 = [v729 rankingItem];
            preExtractedCardType2 = [rankingItem163 preExtractedCardType];
            rankingItem164 = [v729 rankingItem];
            linkType5 = [rankingItem164 linkType];
            *buf = 138414338;
            v1112 = v965;
            v1113 = 2112;
            *v1114 = sectionBundleIdentifier32;
            *&v1114[8] = 2112;
            *&v1114[10] = osloge;
            *&v1114[18] = 2112;
            *&v1114[20] = v972;
            *&v1114[28] = 2112;
            *&v1114[30] = v986;
            *&v1114[38] = 2048;
            *&v1114[40] = v744;
            *&v1114[48] = 2112;
            *&v1114[50] = v746;
            *&v1114[58] = 2112;
            *&v1114[60] = preExtractedCardType2;
            *&v1114[68] = 2112;
            *&v1114[70] = linkType5;
            _os_log_impl(&dword_1D9F69000, v740, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ output result: bundleID=%@ identifier=%@ MDItemIdentifier=%@ name=%@ likelihood=%f detectedEventTypes=%@ cardType=%@ linkType=%@", buf, 0x5Cu);
          }
        }
      }

      v1004 = [v899 countByEnumeratingWithState:&v1016 objects:v1108 count:16];
    }

    while (v1004);
  }

  v751 = SSGeneralLog();
  if (os_log_type_enabled(v751, OS_LOG_TYPE_DEFAULT))
  {
    searchString22 = [v1015 searchString];
    v753 = SSRedactStringClient(searchString22, 1, isSearchToolClient);
    resultSet6 = [v847 resultSet];
    v755 = objc_msgSend_count(resultSet6);
    *buf = 138412546;
    v1112 = v753;
    v1113 = 2048;
    *v1114 = v755;
    _os_log_impl(&dword_1D9F69000, v751, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] query=%@ output %lu results", buf, 0x16u);
  }
}

uint64_t __68__SSRankingManager_searchToolRanker_queryContext_searchToolBundles___block_invoke()
{
  [@"com.apple.omniSearch" UTF8String];
  searchToolRanker_queryContext_searchToolBundles__isInternalUserOfSearchTool = os_variant_has_internal_diagnostics();
  searchToolRanker_queryContext_searchToolBundles__sTTRBiomeStreamQueue = dispatch_queue_create("com.apple.omniSearch.donateBiomeEvent", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __68__SSRankingManager_searchToolRanker_queryContext_searchToolBundles___block_invoke_1414(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rankingItem];
  v5 = [v4 linkType];
  v6 = [v5 localizedCaseInsensitiveContainsString:v3];

  return v6;
}

- (id)groupSectionsByCategory:(id)category genreMap:(id)map topSections:(id)sections
{
  v129 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  mapCopy = map;
  sectionsCopy = sections;
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:objc_msgSend_count(categoryCopy)];
  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = objc_msgSend_count(categoryCopy);
  v11 = v9;
  v12 = categoryCopy;
  v101 = [v11 initWithCapacity:v10];
  if (objc_msgSend_count(categoryCopy))
  {
    [categoryCopy objectAtIndexedSubscript:0];
    v14 = v13 = categoryCopy;
    bundleIdentifier = [v14 bundleIdentifier];
    v16 = [bundleIdentifier isEqualToString:@"com.apple.application"];

    if (v16)
    {
      v83 = [v13 objectAtIndexedSubscript:0];
      v82 = 1;
    }

    else
    {
      v83 = 0;
      v82 = 0;
    }

    v12 = v13;
  }

  else
  {
    v83 = 0;
    v82 = 0;
  }

  v84 = v12;
  if (objc_msgSend_count(sectionsCopy) == 1)
  {
    firstObject = [sectionsCopy firstObject];
    results = [firstObject results];
    v19 = objc_msgSend_count(results);

    if (v19)
    {
      results2 = [firstObject results];
      firstObject2 = [results2 firstObject];

      v22 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [SSRankingManager groupSectionsByCategory:firstObject2 genreMap:? topSections:?];
      }

      sectionBundleIdentifier = [firstObject2 sectionBundleIdentifier];

      if (sectionBundleIdentifier)
      {
        sectionBundleIdentifier2 = [firstObject2 sectionBundleIdentifier];
        v25 = [mapCopy objectForKey:sectionBundleIdentifier2];

        v26 = PRSLogCategoryDefault();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [SSRankingManager groupSectionsByCategory:genreMap:topSections:];
        }

        v97 = v25;
        if (v25)
        {
          v89 = firstObject2;
          v91 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(v84)];
          v86 = objc_opt_new();
          v96 = firstObject;
          v99 = __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(v86, firstObject);
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v27 = v84;
          v28 = [v27 countByEnumeratingWithState:&v115 objects:v128 count:16];
          if (v28)
          {
            v29 = v28;
            LODWORD(v30) = 0;
            v31 = *v116;
            do
            {
              v32 = 0;
              v30 = v30;
              do
              {
                if (*v116 != v31)
                {
                  objc_enumerationMutation(v27);
                }

                v33 = *(*(&v115 + 1) + 8 * v32);
                bundleIdentifier2 = [v33 bundleIdentifier];

                if (bundleIdentifier2)
                {
                  bundleIdentifier3 = [v33 bundleIdentifier];
                  v36 = [mapCopy objectForKey:bundleIdentifier3];

                  v38 = __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(v37, v33);
                  if ([v25 isEqual:v36] && ((v99 ^ v38) & 1) == 0)
                  {
                    v39 = PRSLogCategoryDefault();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                    {
                      bundleIdentifier4 = [v33 bundleIdentifier];
                      bundleIdentifier5 = [v96 bundleIdentifier];
                      *buf = 138412546;
                      v125 = bundleIdentifier4;
                      v126 = 2112;
                      v127 = bundleIdentifier5;
                      v43 = bundleIdentifier5;
                      _os_log_debug_impl(&dword_1D9F69000, v39, OS_LOG_TYPE_DEBUG, "Grouping %@ with %@", buf, 0x16u);
                    }

                    [v91 addObject:v33];
                    [v86 addIndex:v30];
                    v25 = v97;
                  }
                }

                else
                {
                  v36 = PRSLogCategoryDefault();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    bundleIdentifier6 = [v33 bundleIdentifier];
                    bundleIdentifier7 = [v96 bundleIdentifier];
                    *buf = 138412546;
                    v125 = bundleIdentifier6;
                    v126 = 2112;
                    v127 = bundleIdentifier7;
                    _os_log_debug_impl(&dword_1D9F69000, v36, OS_LOG_TYPE_DEBUG, "Not grouping %@ with %@", buf, 0x16u);

                    v25 = v97;
                  }
                }

                ++v30;
                ++v32;
              }

              while (v29 != v32);
              v29 = [v27 countByEnumeratingWithState:&v115 objects:v128 count:16];
            }

            while (v29);
          }

          firstObject2 = v89;
          v25 = v91;
          firstObject = v96;
        }

        else
        {
          v86 = 0;
        }
      }

      else
      {
        v86 = 0;
        v25 = 0;
      }

      v12 = v84;
    }

    else
    {
      v86 = 0;
      v25 = 0;
      v12 = v84;
    }

    v44 = objc_msgSend_count(v25);
  }

  else
  {
    v86 = 0;
    v25 = 0;
    v44 = objc_msgSend_count(0);
  }

  if (v44 && objc_msgSend_count(v86))
  {
    v45 = [v12 mutableCopy];
    [v45 removeObjectsAtIndexes:v86];
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v46 = v45;
    v47 = [v46 countByEnumeratingWithState:&v111 objects:v123 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v112;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v112 != v49)
          {
            objc_enumerationMutation(v46);
          }

          [v25 addObject:*(*(&v111 + 1) + 8 * i)];
        }

        v48 = [v46 countByEnumeratingWithState:&v111 objects:v123 count:16];
      }

      while (v48);
    }

    v51 = v25;
  }

  else
  {
    v51 = v12;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v52 = v51;
  v53 = [v52 countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v108;
    v92 = v25;
    v87 = *v108;
    v88 = v52;
    do
    {
      v56 = 0;
      v90 = v54;
      do
      {
        if (*v108 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v107 + 1) + 8 * v56);
        if (([v8 containsObject:v57] & 1) == 0)
        {
          v58 = PRSLogCategoryDefault();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            [(SSRankingManager *)v120 groupSectionsByCategory:v57 genreMap:&v121 topSections:v58];
          }

          [v8 addObject:v57];
          [v101 addObject:v57];
          bundleIdentifier8 = [v57 bundleIdentifier];

          if (bundleIdentifier8)
          {
            bundleIdentifier9 = [v57 bundleIdentifier];
            v61 = [mapCopy objectForKey:bundleIdentifier9];

            v62 = PRSLogCategoryDefault();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v125 = v61;
              _os_log_debug_impl(&dword_1D9F69000, v62, OS_LOG_TYPE_DEBUG, "Genre: %@", buf, 0xCu);
            }

            if (v61)
            {
              v94 = v56;
              v98 = v57;
              v64 = __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(v63, v57);
              v103 = 0u;
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v65 = v52;
              v66 = [v65 countByEnumeratingWithState:&v103 objects:v119 count:16];
              if (v66)
              {
                v67 = v66;
                v68 = *v104;
                do
                {
                  for (j = 0; j != v67; ++j)
                  {
                    if (*v104 != v68)
                    {
                      objc_enumerationMutation(v65);
                    }

                    v70 = *(*(&v103 + 1) + 8 * j);
                    if (([v8 containsObject:v70] & 1) == 0)
                    {
                      bundleIdentifier10 = [v70 bundleIdentifier];

                      if (bundleIdentifier10)
                      {
                        bundleIdentifier11 = [v70 bundleIdentifier];
                        v73 = [mapCopy objectForKey:bundleIdentifier11];

                        v75 = __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(v74, v70);
                        if ([v61 isEqual:v73] && ((v64 ^ v75) & 1) == 0)
                        {
                          v76 = PRSLogCategoryDefault();
                          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                          {
                            bundleIdentifier12 = [v70 bundleIdentifier];
                            bundleIdentifier13 = [v98 bundleIdentifier];
                            *buf = 138412546;
                            v125 = bundleIdentifier12;
                            v126 = 2112;
                            v127 = bundleIdentifier13;
                            _os_log_debug_impl(&dword_1D9F69000, v76, OS_LOG_TYPE_DEBUG, "Grouping %@ with %@", buf, 0x16u);
                          }

                          [v8 addObject:v70];
                          [v101 addObject:v70];
                        }
                      }

                      else
                      {
                        v73 = PRSLogCategoryDefault();
                        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                        {
                          bundleIdentifier14 = [v70 bundleIdentifier];
                          bundleIdentifier15 = [v98 bundleIdentifier];
                          *buf = 138412546;
                          v125 = bundleIdentifier14;
                          v126 = 2112;
                          v127 = bundleIdentifier15;
                          _os_log_debug_impl(&dword_1D9F69000, v73, OS_LOG_TYPE_DEBUG, "Not grouping %@ with %@", buf, 0x16u);
                        }
                      }
                    }
                  }

                  v67 = [v65 countByEnumeratingWithState:&v103 objects:v119 count:16];
                }

                while (v67);
              }

              v54 = v90;
              v25 = v92;
              v55 = v87;
              v52 = v88;
              v56 = v94;
            }
          }
        }

        ++v56;
      }

      while (v56 != v54);
      v54 = [v52 countByEnumeratingWithState:&v107 objects:v122 count:16];
    }

    while (v54);
  }

  v79 = v83;
  if (v83)
  {
    v80 = v82;
  }

  else
  {
    v80 = 0;
  }

  if (v80 == 1 && objc_msgSend_count(v101) >= 2)
  {
    [v101 removeObject:v83];
    v79 = v83;
    [v101 insertObject:v83 atIndex:0];
  }

  return v101;
}

BOOL __65__SSRankingManager_groupSectionsByCategory_genreMap_topSections___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 domain] == 2)
    {
      v4 = 0;
    }

    else
    {
      v5 = [v3 resultSet];
      v6 = [v5 firstObject];
      v7 = [v6 rankingItem];
      v8 = [v7 L2FeatureVector];
      if (v8)
      {
        v9 = [v6 rankingItem];
        v10 = [v9 L2FeatureVector];
        [v10 originalL2Score];
        v4 = v11 < -900.0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)rankAppsAtTopForScopedSearchWithSections:(id)sections
{
  v26 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v4 = [sectionsCopy objectAtIndexedSubscript:0];
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.application"];

  if ((v6 & 1) == 0)
  {
    v7 = [sectionsCopy mutableCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = sectionsCopy;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v22;
      v20 = v7;
      while (2)
      {
        v13 = 0;
        v14 = v11;
        v19 = v11 + v10;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v21 + 1) + 8 * v13);
          bundleIdentifier2 = [v15 bundleIdentifier];
          v17 = [bundleIdentifier2 isEqualToString:@"com.apple.application"];

          if (v17)
          {
            v7 = v20;
            [v20 removeObjectAtIndex:v14];
            [v20 insertObject:v15 atIndex:0];
            goto LABEL_12;
          }

          ++v13;
          ++v14;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v7 = v20;
        v11 = v19;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    sectionsCopy = [v7 copy];
  }

  return sectionsCopy;
}

- (id)keyForSection:(id)section
{
  sectionCopy = section;
  bundleIdentifier = [sectionCopy bundleIdentifier];
  v5 = bundleIdentifier;
  if (bundleIdentifier)
  {
    title = bundleIdentifier;
  }

  else
  {
    title = [sectionCopy title];
  }

  v7 = title;

  return v7;
}

- (void)updateWithNewRankingInfo:(id)info
{
  infoCopy = info;
  rankingConfiguration = [(SSRankingManager *)self rankingConfiguration];
  [rankingConfiguration mergeWith:infoCopy];
}

@end