@interface ATXAnchorModelTrainingDatasetBuilder
+ (id)_pickTopSamplesFromArray:(id)array sampleSize:(unint64_t)size;
+ (id)fetchAnchorEvents:(id)events startDate:(id)date endDate:(id)endDate;
- (ATXAnchorModelTrainingDatasetBuilder)init;
- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)activity;
- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)activity dataStoreWrapper:(id)wrapper harvester:(id)harvester;
- (BOOL)anchorOccurredLongEnoughAgo:(id)ago anchor:(id)anchor;
- (double)secondsAfterAnchorToCollectPositiveSamples:(id)samples;
- (id)actionCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromActions:(id)actions;
- (id)anchorsToIncludeInTrainingData;
- (id)appCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromAppLaunches:(id)launches;
- (id)appLaunchEventsFromNowPlayingStreamForAnchor:(id)anchor anchorOccurrenceDate:(id)date;
- (id)candidateIdSetFromAppIntentEvents:(id)events;
- (id)candidateIdSetFromAppLaunchDuetEvents:(id)events;
- (id)candidateIdSetFromModeEvents:(id)events;
- (id)featurizeActionEvent:(id)event anchorOccurrenceDate:(id)date;
- (id)featurizeAppEvent:(id)event anchorOccurrenceDate:(id)date eventFeaturizer:(id)featurizer;
- (id)featurizeModeEvent:(id)event anchorOccurrenceDate:(id)date eventFeaturizer:(id)featurizer;
- (id)fetchNegativeActionEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveActionEvents:(id)events;
- (id)fetchNegativeAppEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveAppEvents:(id)events;
- (id)fetchNegativeModeEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveModeEvents:(id)events;
- (id)fetchNewAnchorEventsForAnchor:(id)anchor;
- (id)fetchPositiveActionEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event;
- (id)fetchPositiveAppEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event anchor:(id)anchor;
- (id)fetchPositiveModeEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event anchor:(id)anchor;
- (id)modeCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromModes:(id)modes;
- (id)queryStartDateForAnchor:(id)anchor;
- (id)targetedNegativeActionSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude;
- (id)targetedNegativeAppSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude;
- (id)targetedNegativeModeSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude;
- (int64_t)addActionEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor;
- (int64_t)addAppEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor;
- (int64_t)addCandidateTrainingSamplesToDatabaseForAnchor:(id)anchor anchorEvents:(id)events;
- (int64_t)addModeEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor;
- (int64_t)addNewTrainingSamplesToDatabase;
- (int64_t)addNewTrainingSamplesToDatabaseForAnchor:(id)anchor;
- (int64_t)addNewTrainingSamplesToDatabaseForAnchorEvent:(id)event anchor:(id)anchor;
- (unint64_t)cleanupDatasetForPrivacyPreservation;
- (void)addAnchorEventToDatabase:(id)database anchor:(id)anchor;
@end

@implementation ATXAnchorModelTrainingDatasetBuilder

- (ATXAnchorModelTrainingDatasetBuilder)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self initWithActivity:0 dataStoreWrapper:v3 harvester:v4];

  return v5;
}

- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXAnchorModelTrainingDatasetBuilder *)self initWithActivity:activityCopy dataStoreWrapper:v5 harvester:v6];

  return v7;
}

- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)activity dataStoreWrapper:(id)wrapper harvester:(id)harvester
{
  activityCopy = activity;
  wrapperCopy = wrapper;
  harvesterCopy = harvester;
  v15.receiver = self;
  v15.super_class = ATXAnchorModelTrainingDatasetBuilder;
  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activity, activity);
    objc_storeStrong(&v13->_dataStoreWrapper, wrapper);
    objc_storeStrong(&v13->_harvester, harvester);
  }

  return v13;
}

- (id)anchorsToIncludeInTrainingData
{
  v2 = +[ATXAnchorModelHyperParameters sharedInstance];
  enabledAnchors = [v2 enabledAnchors];
  v4 = [enabledAnchors _pas_mappedArrayWithTransform:&__block_literal_global_183];

  return v4;
}

id __70__ATXAnchorModelTrainingDatasetBuilder_anchorsToIncludeInTrainingData__block_invoke(int a1, NSString *aClassName)
{
  NSClassFromString(aClassName);
  v2 = objc_opt_new();

  return v2;
}

- (unint64_t)cleanupDatasetForPrivacyPreservation
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  v4 = __atxlog_handle_anchor(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "AnchorModel: Cleaning up Anchor Model Database for Privacy Preservation...", &v12, 2u);
  }

  deleteSamplesThatAreMoreThan28DaysOld = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper deleteSamplesThatAreMoreThan28DaysOld];
  v6 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v6 allInstalledAppsKnownToSpringBoard];

  if ([allInstalledAppsKnownToSpringBoard count])
  {
    v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper deleteSamplesForBundleIdsNotInList:allInstalledAppsKnownToSpringBoard];
    deleteSamplesThatAreMoreThan28DaysOld += v8;
  }

  else
  {
    v9 = __atxlog_handle_anchor(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelTrainingDatasetBuilder cleanupDatasetForPrivacyPreservation];
    }
  }

  v10 = __atxlog_handle_anchor(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = deleteSamplesThatAreMoreThan28DaysOld;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "AnchorModel: Done cleaning up Anchor Model Database for Privacy Preservation. Deleted %lu samples in total.", &v12, 0xCu);
  }

  return deleteSamplesThatAreMoreThan28DaysOld;
}

- (int64_t)addNewTrainingSamplesToDatabase
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  v4 = __atxlog_handle_anchor(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "AnchorModel: Harvesting new training samples for Anchor Model and adding them to the database.", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  anchorsToIncludeInTrainingData = [(ATXAnchorModelTrainingDatasetBuilder *)self anchorsToIncludeInTrainingData];
  v6 = [anchorsToIncludeInTrainingData countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(anchorsToIncludeInTrainingData);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v8 += [(ATXAnchorModelTrainingDatasetBuilder *)self addNewTrainingSamplesToDatabaseForAnchor:v11];
        didDefer = [(ATXBackgroundActivityProtocol *)self->_activity didDefer];
        if (didDefer)
        {
          v13 = __atxlog_handle_anchor(didDefer);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v11;
            _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Deferring adding new training samples right after processing anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

          goto LABEL_16;
        }
      }

      v7 = [anchorsToIncludeInTrainingData countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  return v8;
}

- (int64_t)addNewTrainingSamplesToDatabaseForAnchor:(id)anchor
{
  v14 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v5 = __atxlog_handle_anchor(anchorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = anchorCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[START] ============= \nAnchorModel: Harvesting training data for %@.", &v10, 0xCu);
  }

  v6 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNewAnchorEventsForAnchor:anchorCopy];
  v7 = [(ATXAnchorModelTrainingDatasetBuilder *)self addCandidateTrainingSamplesToDatabaseForAnchor:anchorCopy anchorEvents:v6];
  v8 = __atxlog_handle_anchor(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = v7;
    v12 = 2112;
    v13 = anchorCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "AnchorModel: Added %ld new samples for %@. \n============= [END]", &v10, 0x16u);
  }

  return v7;
}

- (int64_t)addCandidateTrainingSamplesToDatabaseForAnchor:(id)anchor anchorEvents:(id)events
{
  v32 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  eventsCopy = events;
  v8 = [eventsCopy countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [(ATXAnchorModelTrainingDatasetBuilder *)self shouldCreateTrainingSamplesForAnchorEvent:v13 anchor:anchorCopy];
        if (v15)
        {
          v10 += [(ATXAnchorModelTrainingDatasetBuilder *)self addNewTrainingSamplesToDatabaseForAnchorEvent:v13 anchor:anchorCopy];
          didDefer = [(ATXBackgroundActivityProtocol *)self->_activity didDefer];
          if (didDefer)
          {
            v18 = __atxlog_handle_anchor(didDefer);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v26 = anchorCopy;
              v27 = 2048;
              v28 = v10;
              v29 = 2112;
              v30 = v13;
              _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Deferring adding new training samples while processing anchor %@ because XPC activity asked for deferral. Not going to finish processing this anchor or other anchors for now. We added %lu training samples for this anchor, and the last anchor event we processed was: %@.", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v14);
            goto LABEL_19;
          }
        }

        else
        {
          v17 = __atxlog_handle_anchor(v15);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Anchor event does not qualify for producing training samples. Anchor event: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [eventsCopy countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_19:

  return v10;
}

- (BOOL)anchorOccurredLongEnoughAgo:(id)ago anchor:(id)anchor
{
  v6 = MEMORY[0x277CBEAA8];
  anchorCopy = anchor;
  agoCopy = ago;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;
  [(ATXAnchorModelTrainingDatasetBuilder *)self secondsAfterAnchorToCollectPositiveSamples:anchorCopy];
  v12 = v10 - v11;
  v13 = objc_opt_class();

  v14 = [v13 anchorOccurenceDateFromDuetEvent:agoCopy];

  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  return v16 < v12;
}

- (id)fetchNewAnchorEventsForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self queryStartDateForAnchor:anchorCopy];
  v6 = objc_opt_class();
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 fetchAnchorEvents:anchorCopy startDate:v5 endDate:date];

  return v8;
}

- (int64_t)addNewTrainingSamplesToDatabaseForAnchorEvent:(id)event anchor:(id)anchor
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchorCopy = anchor;
  v8 = __atxlog_handle_anchor(anchorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = eventCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Adding new training samples based on anchor event %@", &v13, 0xCu);
  }

  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self addActionEventsToDatabaseAfterAnchorEvent:eventCopy anchor:anchorCopy];
  v10 = [(ATXAnchorModelTrainingDatasetBuilder *)self addAppEventsToDatabaseAfterAnchorEvent:eventCopy anchor:anchorCopy];
  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self addModeEventsToDatabaseAfterAnchorEvent:eventCopy anchor:anchorCopy];
  [(ATXAnchorModelTrainingDatasetBuilder *)self addAnchorEventToDatabase:eventCopy anchor:anchorCopy];

  return v10 + v9 + v11;
}

- (void)addAnchorEventToDatabase:(id)database anchor:(id)anchor
{
  databaseCopy = database;
  anchorCopy = anchor;
  v8 = __atxlog_handle_anchor(anchorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder addAnchorEventToDatabase:anchor:];
  }

  v9 = objc_opt_new();
  v10 = [v9 featurizeAnchorEvent:databaseCopy anchor:anchorCopy];

  [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper updateOrInsertAnchorEvent:databaseCopy anchor:anchorCopy featureMetadata:v10];
}

+ (id)fetchAnchorEvents:(id)events startDate:(id)date endDate:(id)endDate
{
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  v10 = [dateCopy earlierDate:endDateCopy];

  if (v10 == dateCopy)
  {
    v13 = [objc_opt_class() fetchAnchorOccurrencesBetweenStartDate:dateCopy endDate:endDateCopy];
  }

  else
  {
    v12 = __atxlog_handle_anchor(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = dateCopy;
      v17 = 2112;
      v18 = endDateCopy;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Skipping operation to fetch anchor events since the query startDate (%@) occurred on or after the query endDate (%@).", &v15, 0x16u);
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (id)queryStartDateForAnchor:(id)anchor
{
  v16 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper timestampOfMostRecentRecordedAnchorOccurrenceForAnchor:anchorCopy];
  if (v6 == 0.0)
  {
    v7 = __atxlog_handle_anchor(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = anchorCopy;
      v14 = 2048;
      v15 = 1296000;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "When computing the query start date for anchor %@, we were unable to fetch the most recent recorded anchor occurrence timestamp. Starting by adding anchor events that were at most %lu seconds ago.", &v12, 0x16u);
    }

    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1296000.0];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v6 + 1.0];
  }

  v9 = v8;
  v10 = __atxlog_handle_anchor(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = anchorCopy;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Query start date for anchor %@ is %@", &v12, 0x16u);
  }

  return v9;
}

- (double)secondsAfterAnchorToCollectPositiveSamples:(id)samples
{
  samplesCopy = samples;
  secondsOfInfluence = [objc_opt_class() secondsOfInfluence];
  v6 = v5;
  v7 = __atxlog_handle_anchor(secondsOfInfluence);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder secondsAfterAnchorToCollectPositiveSamples:];
  }

  return v6;
}

+ (id)_pickTopSamplesFromArray:(id)array sampleSize:(unint64_t)size
{
  arrayCopy = array;
  if ([arrayCopy count] <= size)
  {
    v6 = arrayCopy;
  }

  else
  {
    v6 = [arrayCopy subarrayWithRange:{0, size}];
  }

  v7 = v6;

  return v7;
}

- (int64_t)addActionEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor
{
  v53 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchorCopy = anchor;
  v7 = __atxlog_handle_anchor(anchorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = eventCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Adding new action training samples based on anchor event %@", buf, 0xCu);
  }

  v8 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:eventCopy];
  v9 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:eventCopy];
  [objc_opt_class() durationOfAnchorEvent:eventCopy];
  v37 = v8;
  v10 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchPositiveActionEventsAfterAnchorDate:v8 durationOfAnchorEvent:?];
  v11 = [objc_opt_class() _pickTopSamplesFromArray:v10 sampleSize:15];

  v13 = __atxlog_handle_anchor(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 count];
    *buf = 134217984;
    v52 = v14;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Inserting %lu positive action events after the anchor.", buf, 0xCu);
  }

  v15 = eventCopy;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v11;
  v16 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v46;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v45 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        v23 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeActionEvent:v21 anchorOccurrenceDate:v9];
        v18 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedActionToDatabase:v21 featurizedAction:v23 actionOccurred:1 actionEngaged:0 anchorEvent:v15 anchor:anchorCopy];

        objc_autoreleasePoolPop(v22);
      }

      v17 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v24 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNegativeActionEventsAfterAnchorDate:v37 anchor:anchorCopy positiveActionEvents:obj];
  v25 = [objc_opt_class() _pickTopSamplesFromArray:v24 sampleSize:15];

  v27 = __atxlog_handle_anchor(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v25 count];
    *buf = 134217984;
    v52 = v28;
    _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "Inserting %lu negative action events after the anchor.", buf, 0xCu);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v38 = v25;
  v29 = [v38 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v38);
        }

        v33 = *(*(&v41 + 1) + 8 * j);
        v34 = objc_autoreleasePoolPush();
        v35 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeActionEvent:v33 anchorOccurrenceDate:v9];
        v18 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedActionToDatabase:v33 featurizedAction:v35 actionOccurred:0 actionEngaged:0 anchorEvent:v15 anchor:anchorCopy];

        objc_autoreleasePoolPop(v34);
      }

      v30 = [v38 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v30);
  }

  return v18;
}

- (id)fetchPositiveActionEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event
{
  harvester = self->_harvester;
  dateCopy = date;
  v7 = [(ATXAnchorModelEventHarvester *)harvester fetchEventsAfterAnchorOccurrenceDate:dateCopy withDuetDataProviderClass:objc_opt_class() limit:100000 maxSecondsBeforeAnchor:0 maxSecondsAfterAnchor:event predicates:0];

  return v7;
}

- (id)fetchNegativeActionEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveActionEvents:(id)events
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeActionSamplesForAnchor:anchor anchorOccurrenceDate:date eventsToExclude:events];
  v6 = __atxlog_handle_anchor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeActionEventsAfterAnchorDate:v5 anchor:? positiveActionEvents:?];
  }

  return v5;
}

- (id)targetedNegativeActionSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude
{
  dateCopy = date;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self actionCandidateIdsToTargetForAnchor:anchor excludeCandidateIdsFromActions:exclude];
  v10 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeActionSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  allObjects = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper appIntentDuetEventsFromCandidateIds:allObjects date:dateCopy];

  return v13;
}

- (id)actionCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromActions:(id)actions
{
  dataStoreWrapper = self->_dataStoreWrapper;
  actionsCopy = actions;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:anchor candidateType:@"action" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v11 = __atxlog_handle_anchor(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder actionCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromActions:?];
  }

  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromAppIntentEvents:actionsCopy];

  [v9 minusSet:v12];

  return v9;
}

- (id)candidateIdSetFromAppIntentEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [ATXAnchorModelDataStoreWrapper candidateIdFromAppIntentDuetEvent:v10, v14];
        [v4 addObject:v12];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)candidateIdSetFromAppLaunchDuetEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [ATXAnchorModelDataStoreWrapper candidateIdFromAppLaunchDuetEvent:v10, v14];
        [v4 addObject:v12];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)featurizeActionEvent:(id)event anchorOccurrenceDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  v7 = objc_opt_new();
  [v7 setShouldComputeLaunchHistoryForAppLaunches:0];
  [v7 setShouldComputeLaunchHistoryForActionKeyLaunches:0];
  [v7 setShouldComputeLaunchHistoryForActionUUIDLaunches:1];
  v8 = [v7 featurizeActionEvent:eventCopy anchorOccurrenceDate:dateCopy];

  v10 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  v12 = __atxlog_handle_anchor(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:v8 anchorOccurrenceDate:?];
  }

  v14 = __atxlog_handle_anchor(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:v8 anchorOccurrenceDate:?];
  }

  v16 = __atxlog_handle_anchor(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:v8 anchorOccurrenceDate:?];
  }

  v18 = __atxlog_handle_anchor(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  return v8;
}

- (int64_t)addAppEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor
{
  v55 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchorCopy = anchor;
  v8 = eventCopy;
  v42 = anchorCopy;
  v9 = __atxlog_handle_anchor(anchorCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = eventCopy;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Adding new app training samples based on anchor event %@", buf, 0xCu);
  }

  v10 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:eventCopy];
  v11 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:eventCopy];
  [objc_opt_class() durationOfAnchorEvent:eventCopy];
  v39 = v10;
  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchPositiveAppEventsAfterAnchorDate:v10 durationOfAnchorEvent:v42 anchor:?];
  v13 = [objc_opt_class() _pickTopSamplesFromArray:v12 sampleSize:15];

  v15 = __atxlog_handle_anchor(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 count];
    *buf = 134217984;
    v54 = v16;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Inserting %lu positive app events after the anchor.", buf, 0xCu);
  }

  v17 = objc_opt_new();
  [v17 warmLaunchHistoryForAppEvents:v13 anchorOccurrenceDate:v11];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v13;
  v18 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v48;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v47 + 1) + 8 * i);
        v24 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeAppEvent:v23 anchorOccurrenceDate:v11 eventFeaturizer:v17];
        v20 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedAppToDatabase:v23 featurizedApp:v24 appWasLaunched:1 appEngaged:0 anchorEvent:v8 anchor:v42];
      }

      v19 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  v41 = v8;

  v25 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNegativeAppEventsAfterAnchorDate:v39 anchor:v42 positiveAppEvents:obj];
  v26 = [objc_opt_class() _pickTopSamplesFromArray:v25 sampleSize:15];

  v28 = __atxlog_handle_anchor(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v26 count];
    *buf = 134217984;
    v54 = v29;
    _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Inserting %lu negative app events after the anchor.", buf, 0xCu);
  }

  v30 = objc_opt_new();
  [v30 warmLaunchHistoryForAppEvents:v26 anchorOccurrenceDate:v11];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v26;
  v32 = [v31 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v44;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v43 + 1) + 8 * j);
        v37 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeAppEvent:v36 anchorOccurrenceDate:v11 eventFeaturizer:v30];
        v20 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedAppToDatabase:v36 featurizedApp:v37 appWasLaunched:0 appEngaged:0 anchorEvent:v41 anchor:v42];
      }

      v33 = [v31 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v33);
  }

  return v20;
}

- (id)fetchPositiveAppEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event anchor:(id)anchor
{
  v27[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  harvester = self->_harvester;
  anchorCopy = anchor;
  v11 = [(ATXAnchorModelEventHarvester *)harvester fetchAppLaunchEventsAfterAnchorOccurrenceDate:dateCopy limit:100000 maxSecondsBeforeAnchor:0 maxSecondsAfterAnchor:event isIncluded:&__block_literal_global_31_1];
  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)self appLaunchEventsFromNowPlayingStreamForAnchor:anchorCopy anchorOccurrenceDate:dateCopy];

  v13 = objc_opt_new();
  [v13 addObjectsFromArray:v11];
  [v13 addObjectsFromArray:v12];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v27[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v16 = [v13 sortedArrayUsingDescriptors:v15];
  v17 = [v16 mutableCopy];

  v18 = MEMORY[0x277CBEAA8];
  v19 = dateCopy;
  v20 = [[v18 alloc] initWithTimeInterval:v19 sinceDate:event];
  v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 endDate:v20];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __107__ATXAnchorModelTrainingDatasetBuilder_fetchPositiveAppEventsAfterAnchorDate_durationOfAnchorEvent_anchor___block_invoke_2;
  v25[3] = &unk_278597F30;
  v26 = v21;
  v22 = v21;
  v23 = [v17 _pas_filteredArrayWithTest:v25];

  return v23;
}

BOOL __107__ATXAnchorModelTrainingDatasetBuilder_fetchPositiveAppEventsAfterAnchorDate_durationOfAnchorEvent_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 endDate];
  v4 = [v2 startDate];

  [v3 timeIntervalSinceDate:v4];
  v6 = v5 >= 2.0;

  return v6;
}

uint64_t __107__ATXAnchorModelTrainingDatasetBuilder_fetchPositiveAppEventsAfterAnchorDate_durationOfAnchorEvent_anchor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 startDate];
  v4 = [v2 containsDate:v3];

  return v4;
}

- (id)appLaunchEventsFromNowPlayingStreamForAnchor:(id)anchor anchorOccurrenceDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = MEMORY[0x277CBEAA8];
  anchorCopy = anchor;
  v9 = [v7 alloc];
  [(ATXAnchorModelTrainingDatasetBuilder *)self secondsAfterAnchorToCollectPositiveSamples:anchorCopy];
  v11 = v10;

  v12 = [v9 initWithTimeInterval:dateCopy sinceDate:v11];
  v13 = objc_opt_new();
  v14 = [v13 playbackEventsAfterSecondsOfInactivity:dateCopy betweenStartDate:v12 endDate:600.0];
  v15 = [v13 convertNowPlayingEventsToAppLaunchEvents:v14];
  v16 = __atxlog_handle_anchor(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = 134217984;
    v19 = [v15 count];
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "Generated %lu App Launch Events from Now Playing Events.", &v18, 0xCu);
  }

  return v15;
}

- (id)fetchNegativeAppEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveAppEvents:(id)events
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeAppSamplesForAnchor:anchor anchorOccurrenceDate:date eventsToExclude:events];
  v6 = __atxlog_handle_anchor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeAppEventsAfterAnchorDate:v5 anchor:? positiveAppEvents:?];
  }

  return v5;
}

- (id)targetedNegativeAppSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude
{
  dateCopy = date;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self appCandidateIdsToTargetForAnchor:anchor excludeCandidateIdsFromAppLaunches:exclude];
  v10 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeAppSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  allObjects = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper appLaunchDuetEventsFromCandidateIds:allObjects date:dateCopy];

  return v13;
}

- (id)appCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromAppLaunches:(id)launches
{
  dataStoreWrapper = self->_dataStoreWrapper;
  launchesCopy = launches;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:anchor candidateType:@"app" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v11 = __atxlog_handle_anchor(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder actionCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromActions:?];
  }

  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromAppLaunchDuetEvents:launchesCopy];

  [v9 minusSet:v12];

  return v9;
}

- (id)featurizeAppEvent:(id)event anchorOccurrenceDate:(id)date eventFeaturizer:(id)featurizer
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = MEMORY[0x277CBEA60];
  featurizerCopy = featurizer;
  dateCopy = date;
  eventCopy2 = event;
  v11 = [v7 arrayWithObjects:&eventCopy count:1];

  v12 = [featurizerCopy featurizeAppLaunchEvents:v11 anchorOccurrenceDate:{dateCopy, eventCopy, v22}];

  v13 = [v12 objectAtIndexedSubscript:0];

  v15 = __atxlog_handle_anchor(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  v17 = __atxlog_handle_anchor(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeAppEvent:anchorOccurrenceDate:eventFeaturizer:];
  }

  v19 = __atxlog_handle_anchor(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  return v13;
}

- (int64_t)addModeEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor
{
  v53 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchorCopy = anchor;
  v7 = __atxlog_handle_anchor(anchorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = eventCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Adding new mode training samples based on anchor event %@", buf, 0xCu);
  }

  v8 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:eventCopy];
  v39 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:eventCopy];
  [objc_opt_class() durationOfAnchorEvent:eventCopy];
  v36 = v8;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchPositiveModeEventsAfterAnchorDate:v8 durationOfAnchorEvent:anchorCopy anchor:?];
  v10 = [objc_opt_class() _pickTopSamplesFromArray:v9 sampleSize:15];

  v12 = __atxlog_handle_anchor(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 count];
    *buf = 134217984;
    v52 = v13;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Inserting %lu positive mode events after the anchor.", buf, 0xCu);
  }

  v14 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v46;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeModeEvent:v20 anchorOccurrenceDate:v39 eventFeaturizer:v14];
        v17 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedModeToDatabase:v20 featurizedMode:v22 modeOccurred:1 modeEngaged:0 anchorEvent:eventCopy anchor:anchorCopy];

        objc_autoreleasePoolPop(v21);
      }

      v16 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v23 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNegativeModeEventsAfterAnchorDate:v36 anchor:anchorCopy positiveModeEvents:obj];
  v24 = [objc_opt_class() _pickTopSamplesFromArray:v23 sampleSize:15];

  v26 = __atxlog_handle_anchor(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v24 count];
    *buf = 134217984;
    v52 = v27;
    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "Inserting %lu negative activity change events after the anchor.", buf, 0xCu);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v37 = v24;
  v28 = [v37 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v42;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v37);
        }

        v32 = *(*(&v41 + 1) + 8 * j);
        v33 = objc_autoreleasePoolPush();
        v34 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeModeEvent:v32 anchorOccurrenceDate:v39 eventFeaturizer:v14];
        v17 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedModeToDatabase:v32 featurizedMode:v34 modeOccurred:0 modeEngaged:0 anchorEvent:eventCopy anchor:anchorCopy];

        objc_autoreleasePoolPop(v33);
      }

      v29 = [v37 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v29);
  }

  return v17;
}

- (id)fetchPositiveModeEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event anchor:(id)anchor
{
  dateCopy = date;
  v8 = BiomeLibrary();
  userFocus = [v8 UserFocus];
  computedMode = [userFocus ComputedMode];
  v11 = [computedMode atx_publisherFromStartDate:dateCopy];

  v12 = [(ATXAnchorModelEventHarvester *)self->_harvester fetchEventsAfterAnchorOccurenceDate:dateCopy withBiomePublisher:v11 maxSecondsBeforeAnchor:5 maxSecondsAfterAnchor:event];

  return v12;
}

- (id)featurizeModeEvent:(id)event anchorOccurrenceDate:(id)date eventFeaturizer:(id)featurizer
{
  v5 = [featurizer featurizeModeEvent:event anchorOccurrenceDate:date];
  v6 = __atxlog_handle_anchor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  v8 = __atxlog_handle_anchor(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeModeEvent:anchorOccurrenceDate:eventFeaturizer:];
  }

  v10 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  return v5;
}

- (id)fetchNegativeModeEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveModeEvents:(id)events
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeModeSamplesForAnchor:anchor anchorOccurrenceDate:date eventsToExclude:events];
  v6 = __atxlog_handle_anchor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeModeEventsAfterAnchorDate:v5 anchor:? positiveModeEvents:?];
  }

  return v5;
}

- (id)targetedNegativeModeSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude
{
  dateCopy = date;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self modeCandidateIdsToTargetForAnchor:anchor excludeCandidateIdsFromModes:exclude];
  v10 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeModeSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  allObjects = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper modeBiomeEventsFromCandidateIds:allObjects date:dateCopy];

  return v13;
}

- (id)modeCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromModes:(id)modes
{
  dataStoreWrapper = self->_dataStoreWrapper;
  modesCopy = modes;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:anchor candidateType:@"mode" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v11 = __atxlog_handle_anchor(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder modeCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromModes:?];
  }

  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromModeEvents:modesCopy];

  [v9 minusSet:v12];

  return v9;
}

- (id)candidateIdSetFromModeEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [ATXAnchorModelDataStoreWrapper candidateIdFromModeBiomeEvent:v10, v14];
        [v4 addObject:v12];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)addAnchorEventToDatabase:anchor:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEBUG, "AnchorModel: Adding anchor event to database %@ for anchor %@", v2, 0x16u);
}

- (void)fetchNegativeActionEventsAfterAnchorDate:(uint64_t)a1 anchor:positiveActionEvents:.cold.1(uint64_t a1)
{
  v1 = [ATXAnchorModelEventHarvester idsFromDuetEvents:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Selected negative action events: %@", v4, v5, v6, v7);
}

- (void)targetedNegativeActionSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)actionCandidateIdsToTargetForAnchor:(void *)a1 excludeCandidateIdsFromActions:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "%lu action events have happened after the anchor historically.", v3, v4, v5, v6);
}

- (void)featurizeActionEvent:anchorOccurrenceDate:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)featurizeActionEvent:(void *)a1 anchorOccurrenceDate:.cold.2(void *a1)
{
  v1 = [a1 actionUUIDMetadatas];
  v2 = [v1 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v3, v4, "Featurized action - action UUID: %@", v5, v6, v7, v8);
}

- (void)featurizeActionEvent:(void *)a1 anchorOccurrenceDate:.cold.3(void *a1)
{
  v1 = [a1 actionKeyMetadata];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Featurized action - action key: %@", v4, v5, v6, v7);
}

- (void)featurizeActionEvent:(void *)a1 anchorOccurrenceDate:.cold.4(void *a1)
{
  v1 = [a1 appLaunchMetadata];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Featurized action - app launch: %@", v4, v5, v6, v7);
}

- (void)featurizeActionEvent:anchorOccurrenceDate:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchNegativeAppEventsAfterAnchorDate:(uint64_t)a1 anchor:positiveAppEvents:.cold.1(uint64_t a1)
{
  v1 = [ATXAnchorModelEventHarvester idsFromDuetEvents:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Selected negative app events: %@", v4, v5, v6, v7);
}

- (void)targetedNegativeAppSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)featurizeAppEvent:anchorOccurrenceDate:eventFeaturizer:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)featurizeModeEvent:anchorOccurrenceDate:eventFeaturizer:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchNegativeModeEventsAfterAnchorDate:(uint64_t)a1 anchor:positiveModeEvents:.cold.1(uint64_t a1)
{
  v1 = [ATXAnchorModelEventHarvester idsFromBiomeEvents:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Selected negative mode events: %@", v4, v5, v6, v7);
}

- (void)targetedNegativeModeSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)modeCandidateIdsToTargetForAnchor:(void *)a1 excludeCandidateIdsFromModes:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "%lu mode events have happened after the anchor historically.", v3, v4, v5, v6);
}

@end