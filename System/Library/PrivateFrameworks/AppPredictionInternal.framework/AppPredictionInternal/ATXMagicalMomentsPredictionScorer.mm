@interface ATXMagicalMomentsPredictionScorer
- (ATXMagicalMomentsPredictionScorer)initWithCorrelatedEvents:(id)events andGlobalAppLaunchCountedSet:(id)set;
- (BOOL)subExpertCanMakeHighConfidencePredictions;
- (BOOL)subExpertCanMakeHighConfidencePredictionsForBundleId:(id)id;
- (BOOL)subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions;
- (BOOL)subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions;
- (BOOL)subExpertHasWitnessedEnoughRelevantAppLaunches;
- (double)scalingFactorFromTopPrediction;
- (id)generatePredictions;
- (id)getPredictionsFromFinalConfidences;
- (id)relevanceScoreForBundleId:(id)id;
- (id)startOfDayForDate:(id)date;
- (void)computeModelConfidences;
- (void)computeRelevanceScoresForAllRelevantBundleIds;
- (void)computeTimeDecayedCumulativeScores;
- (void)getRelevantAppLaunchCountsAndDateSetFromCorrelationData;
- (void)scaleAllScoresWithTopScoringFactor;
- (void)subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions;
@end

@implementation ATXMagicalMomentsPredictionScorer

- (ATXMagicalMomentsPredictionScorer)initWithCorrelatedEvents:(id)events andGlobalAppLaunchCountedSet:(id)set
{
  eventsCopy = events;
  setCopy = set;
  v9 = setCopy;
  if (eventsCopy && setCopy && (setCopy = [eventsCopy count]) != 0 && (setCopy = objc_msgSend(v9, "count")) != 0)
  {
    v15.receiver = self;
    v15.super_class = ATXMagicalMomentsPredictionScorer;
    v10 = [(ATXMagicalMomentsPredictionScorer *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_globalAppLaunches, set);
      objc_storeStrong(p_isa + 1, events);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v13 = __atxlog_handle_default(setCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_INFO, "Attempted to initialize a Magical Moments Prediction Scorer without passing global app launch counts or relevant correlated events. Nothing to predict for this sub-expert!", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)computeRelevanceScoresForAllRelevantBundleIds
{
  v30 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_relevantAppLaunches;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138413058;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(ATXMagicalMomentsPredictionScorer *)self relevanceScoreForBundleId:v9, v16, v17];
        [(NSMutableDictionary *)self->_relevanceWeightsByIdentifier setObject:v10 forKeyedSubscript:v9];

        v11 = [(NSCountedSet *)self->_relevantAppLaunches countForObject:v9];
        self->_totalRelevantLaunchesForAllBundleIds += v11;
        v12 = __atxlog_handle_default(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [(NSCountedSet *)self->_relevantAppLaunches countForObject:v9];
          v14 = [(NSCountedSet *)self->_globalAppLaunches countForObject:v9];
          v15 = [(NSMutableDictionary *)self->_relevanceWeightsByIdentifier objectForKeyedSubscript:v9];
          *buf = v16;
          v22 = v9;
          v23 = 2048;
          v24 = v13;
          v25 = 2048;
          v26 = v14;
          v27 = 2112;
          v28 = v15;
          _os_log_debug_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEBUG, "ATXMM: ==> bundleId: %@, relevant launches: %lu, global launches: %lu, relevance weight: %@", buf, 0x2Au);
        }
      }

      v6 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v6);
  }
}

- (void)getRelevantAppLaunchCountsAndDateSetFromCorrelationData
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  dateSetForDecay = self->_dateSetForDecay;
  self->_dateSetForDecay = v3;

  v5 = objc_opt_new();
  relevantAppLaunches = self->_relevantAppLaunches;
  self->_relevantAppLaunches = v5;

  v7 = objc_opt_new();
  relevanceWeightsByIdentifier = self->_relevanceWeightsByIdentifier;
  self->_relevanceWeightsByIdentifier = v7;

  self->_totalRelevantLaunchesForAllBundleIds = 0;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  numUniqueAnchorOccurrencesPerCandidate = self->_numUniqueAnchorOccurrencesPerCandidate;
  self->_numUniqueAnchorOccurrencesPerCandidate = v10;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_correlatedEvents;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v34 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        firstEvent = [v15 firstEvent];
        startDate = [firstEvent startDate];
        v18 = [(ATXMagicalMomentsPredictionScorer *)self startOfDayForDate:startDate];

        [(NSMutableOrderedSet *)self->_dateSetForDecay addObject:v18];
        v19 = self->_relevantAppLaunches;
        secondEvent = [v15 secondEvent];
        identifier = [secondEvent identifier];
        [(NSCountedSet *)v19 addObject:identifier];

        secondEvent2 = [v15 secondEvent];
        identifier2 = [secondEvent2 identifier];
        v24 = [v9 objectForKeyedSubscript:identifier2];

        if (!v24)
        {
          v25 = objc_opt_new();
          secondEvent3 = [v15 secondEvent];
          identifier3 = [secondEvent3 identifier];
          [v9 setObject:v25 forKeyedSubscript:identifier3];
        }

        secondEvent4 = [v15 secondEvent];
        identifier4 = [secondEvent4 identifier];
        v30 = [v9 objectForKeyedSubscript:identifier4];
        firstEvent2 = [v15 firstEvent];
        startDate2 = [firstEvent2 startDate];
        [v30 addObject:startDate2];
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __92__ATXMagicalMomentsPredictionScorer_getRelevantAppLaunchCountsAndDateSetFromCorrelationData__block_invoke;
  v35[3] = &unk_27859B318;
  v35[4] = self;
  [v9 enumerateKeysAndObjectsUsingBlock:v35];
  [(NSMutableOrderedSet *)self->_dateSetForDecay sortUsingComparator:&__block_literal_global_83];
  [(ATXMagicalMomentsPredictionScorer *)self computeRelevanceScoresForAllRelevantBundleIds];
}

void __92__ATXMagicalMomentsPredictionScorer_getRelevantAppLaunchCountsAndDateSetFromCorrelationData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  [*(*(a1 + 32) + 40) setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_relevantAppLaunches;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSCountedSet *)self->_relevantAppLaunches countForObject:*(*(&v13 + 1) + 8 * i), v13];
        if (v8 >= 7)
        {
          v11 = __atxlog_handle_default(v8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ATXMagicalMomentsPredictionScorer subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions];
          }

          v10 = 1;
          goto LABEL_15;
        }
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = __atxlog_handle_default(v9);
  if (os_log_type_enabled(&v3->super.super.super, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsPredictionScorer subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions];
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (BOOL)subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions
{
  selfCopy = self;
  if (self->_totalRelevantLaunchesForAllBundleIds < 0xF || (self = [(NSCountedSet *)self->_relevantAppLaunches count], self < 3))
  {
    v3 = __atxlog_handle_default(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ATXMagicalMomentsPredictionScorer *)selfCopy subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions];
    }

    v4 = 0;
  }

  else
  {
    v3 = __atxlog_handle_default(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ATXMagicalMomentsPredictionScorer *)&selfCopy->_relevantAppLaunches subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions];
    }

    v4 = 1;
  }

  return v4;
}

- (BOOL)subExpertHasWitnessedEnoughRelevantAppLaunches
{
  subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions = [(ATXMagicalMomentsPredictionScorer *)self subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions];
  if (subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions)
  {
    v4 = __atxlog_handle_default(subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertHasWitnessedEnoughRelevantAppLaunches];
    }

LABEL_7:

    LOBYTE(subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions) = 1;
    return subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions;
  }

  subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions = [(ATXMagicalMomentsPredictionScorer *)self subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions];
  if (subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions)
  {
    v4 = __atxlog_handle_default(subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertHasWitnessedEnoughRelevantAppLaunches];
    }

    goto LABEL_7;
  }

  return subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions;
}

- (BOOL)subExpertCanMakeHighConfidencePredictions
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableOrderedSet *)self->_dateSetForDecay count];
  minimumNumberOfDaysOfObservationsRequiredForSubExpertToMakePredictions = [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfDaysOfObservationsRequiredForSubExpertToMakePredictions];
  if (v3 >= minimumNumberOfDaysOfObservationsRequiredForSubExpertToMakePredictions)
  {
    subExpertHasWitnessedEnoughRelevantAppLaunches = [(ATXMagicalMomentsPredictionScorer *)self subExpertHasWitnessedEnoughRelevantAppLaunches];
    if (subExpertHasWitnessedEnoughRelevantAppLaunches)
    {
      return 1;
    }

    v5 = __atxlog_handle_default(subExpertHasWitnessedEnoughRelevantAppLaunches);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v7 = "ATXMM: Subexpert has not observed enough relevant app launches to confidently make predictions.";
      v8 = v5;
      v9 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = __atxlog_handle_default(minimumNumberOfDaysOfObservationsRequiredForSubExpertToMakePredictions);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableOrderedSet *)self->_dateSetForDecay count];
      v12 = 134218240;
      v13 = v6;
      v14 = 2048;
      minimumNumberOfDaysOfObservationsRequiredForSubExpertToMakePredictions2 = [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfDaysOfObservationsRequiredForSubExpertToMakePredictions];
      v7 = "ATXMM: Subexpert has only been observed on %lu unique days. Minimum days required is %lu.";
      v8 = v5;
      v9 = 22;
LABEL_8:
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
    }
  }

  return 0;
}

- (BOOL)subExpertCanMakeHighConfidencePredictionsForBundleId:(id)id
{
  relevantAppLaunches = self->_relevantAppLaunches;
  idCopy = id;
  v6 = [(NSCountedSet *)relevantAppLaunches countForObject:idCopy];
  v7 = [(NSCountedSet *)self->_globalAppLaunches countForObject:idCopy];
  v8 = [(NSMutableDictionary *)self->_numUniqueAnchorOccurrencesPerCandidate objectForKey:idCopy];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  minimumNumberOfGlobalObservationsOfBundleIdForMMScoring = [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfGlobalObservationsOfBundleIdForMMScoring];
  if (v7 < minimumNumberOfGlobalObservationsOfBundleIdForMMScoring)
  {
    v11 = __atxlog_handle_default(minimumNumberOfGlobalObservationsOfBundleIdForMMScoring);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertCanMakeHighConfidencePredictionsForBundleId:];
    }

LABEL_10:

    return 0;
  }

  minimumNumberOfRelevantObservationsOfBundleIdForMMScoring = [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfRelevantObservationsOfBundleIdForMMScoring];
  if (v6 < minimumNumberOfRelevantObservationsOfBundleIdForMMScoring)
  {
    v11 = __atxlog_handle_default(minimumNumberOfRelevantObservationsOfBundleIdForMMScoring);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertCanMakeHighConfidencePredictionsForBundleId:];
    }

    goto LABEL_10;
  }

  minimumNumberOfUniqueAnchorOccurrencesForBundleIdForMMScoring = [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfUniqueAnchorOccurrencesForBundleIdForMMScoring];
  if (unsignedIntegerValue < minimumNumberOfUniqueAnchorOccurrencesForBundleIdForMMScoring)
  {
    v11 = __atxlog_handle_default(minimumNumberOfUniqueAnchorOccurrencesForBundleIdForMMScoring);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertCanMakeHighConfidencePredictionsForBundleId:];
    }

    goto LABEL_10;
  }

  return 1;
}

- (id)relevanceScoreForBundleId:(id)id
{
  relevantAppLaunches = self->_relevantAppLaunches;
  idCopy = id;
  v6 = [(NSCountedSet *)relevantAppLaunches countForObject:idCopy];
  v7 = v6 / [(NSCountedSet *)self->_globalAppLaunches countForObject:idCopy];
  v8 = [(ATXMagicalMomentsPredictionScorer *)self subExpertCanMakeHighConfidencePredictionsForBundleId:idCopy];

  if (!v8)
  {
    v10 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer relevanceScoreForBundleId:];
    }

    [(ATXMagicalMomentsPredictionScorer *)self minimumRelevanceWeightForMMScoring];
    v7 = v7 * v11;
  }

  [(ATXMagicalMomentsPredictionScorer *)self maximumRelevanceWeightForMMScoring];
  if (v7 > v12)
  {
    [(ATXMagicalMomentsPredictionScorer *)self maximumRelevanceWeightForMMScoring];
    v7 = v13;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7];

  return v14;
}

- (id)generatePredictions
{
  if (self->_finalPredictionConfidences)
  {
LABEL_16:
    getPredictionsFromFinalConfidences = [(ATXMagicalMomentsPredictionScorer *)self getPredictionsFromFinalConfidences];
    goto LABEL_17;
  }

  v3 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsPredictionScorer generatePredictions];
  }

  v4 = __atxlog_handle_default([(ATXMagicalMomentsPredictionScorer *)self getRelevantAppLaunchCountsAndDateSetFromCorrelationData]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsPredictionScorer generatePredictions];
  }

  subExpertCanMakeHighConfidencePredictions = [(ATXMagicalMomentsPredictionScorer *)self subExpertCanMakeHighConfidencePredictions];
  v6 = subExpertCanMakeHighConfidencePredictions;
  v7 = __atxlog_handle_default(subExpertCanMakeHighConfidencePredictions);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer generatePredictions];
    }

    v9 = __atxlog_handle_default([(ATXMagicalMomentsPredictionScorer *)self computeTimeDecayedCumulativeScores]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer generatePredictions];
    }

    v10 = __atxlog_handle_default([(ATXMagicalMomentsPredictionScorer *)self scaleAllScoresWithTopScoringFactor]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer generatePredictions];
    }

    v11 = __atxlog_handle_default([(ATXMagicalMomentsPredictionScorer *)self computeModelConfidences]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer generatePredictions];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "ATXMM: Failed to meet quality control criteria. Nothing to predict for this sub-expert!", v14, 2u);
  }

  getPredictionsFromFinalConfidences = MEMORY[0x277CBEBF8];
LABEL_17:

  return getPredictionsFromFinalConfidences;
}

- (void)computeTimeDecayedCumulativeScores
{
  v76 = *MEMORY[0x277D85DE8];
  if (!self->_cumulativeScoresWithDecayedWeightsByIdentifier)
  {
    v3 = objc_opt_new();
    cumulativeScoresWithDecayedWeightsByIdentifier = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
    self->_cumulativeScoresWithDecayedWeightsByIdentifier = v3;

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = self->_correlatedEvents;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v75 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v61;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v61 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v60 + 1) + 8 * i);
          firstEvent = [v9 firstEvent];
          startDate = [firstEvent startDate];
          v12 = [(ATXMagicalMomentsPredictionScorer *)self startOfDayForDate:startDate];

          v13 = [(NSMutableOrderedSet *)self->_dateSetForDecay indexOfObject:v12];
          relevanceWeightsByIdentifier = self->_relevanceWeightsByIdentifier;
          secondEvent = [v9 secondEvent];
          identifier = [secondEvent identifier];
          v17 = [(NSMutableDictionary *)relevanceWeightsByIdentifier objectForKeyedSubscript:identifier];
          [v17 doubleValue];
          v19 = v18;
          v20 = pow(0.99, v13);

          v21 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
          secondEvent2 = [v9 secondEvent];
          identifier2 = [secondEvent2 identifier];
          v24 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:identifier2];

          if (!v24)
          {
            v25 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
            secondEvent3 = [v9 secondEvent];
            identifier3 = [secondEvent3 identifier];
            [(NSMutableDictionary *)v25 setObject:&unk_283A55F10 forKeyedSubscript:identifier3];
          }

          v28 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
          secondEvent4 = [v9 secondEvent];
          identifier4 = [secondEvent4 identifier];
          v31 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:identifier4];
          [v31 doubleValue];
          v33 = v20 * v19 + v32;

          v34 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
          v35 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
          secondEvent5 = [v9 secondEvent];
          identifier5 = [secondEvent5 identifier];
          [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:identifier5];

          if (!self->_topScoringIdentifier || (-[NSMutableDictionary objectForKeyedSubscript:](self->_cumulativeScoresWithDecayedWeightsByIdentifier, "objectForKeyedSubscript:"), v38 = objc_claimAutoreleasedReturnValue(), [v38 doubleValue], v40 = v39, v38, v33 > v40))
          {
            secondEvent6 = [v9 secondEvent];
            identifier6 = [secondEvent6 identifier];
            topScoringIdentifier = self->_topScoringIdentifier;
            self->_topScoringIdentifier = identifier6;
          }
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v75 count:16];
      }

      while (v6);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v44 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
    v45 = [(NSMutableDictionary *)v44 countByEnumeratingWithState:&v56 objects:v74 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v57;
      do
      {
        v48 = 0;
        do
        {
          if (*v57 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v56 + 1) + 8 * v48);
          v50 = __atxlog_handle_default(v45);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            obja = [(NSCountedSet *)self->_relevantAppLaunches countForObject:v49];
            v51 = [(NSCountedSet *)self->_globalAppLaunches countForObject:v49];
            v52 = [(NSMutableDictionary *)self->_relevanceWeightsByIdentifier objectForKeyedSubscript:v49];
            v53 = [(NSMutableDictionary *)self->_cumulativeScoresWithDecayedWeightsByIdentifier objectForKeyedSubscript:v49];
            *buf = 138413314;
            v65 = v49;
            v66 = 2048;
            v67 = obja;
            v68 = 2048;
            v69 = v51;
            v70 = 2112;
            v71 = v52;
            v72 = 2112;
            v73 = v53;
            _os_log_debug_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEBUG, "ATXMM: ==> bundleId: %@, relevant launches: %lu, global launches: %lu, relevance weight: %@, decayed cumulative score: %@", buf, 0x34u);
          }

          ++v48;
        }

        while (v46 != v48);
        v45 = [(NSMutableDictionary *)v44 countByEnumeratingWithState:&v56 objects:v74 count:16];
        v46 = v45;
      }

      while (v45);
    }
  }
}

- (double)scalingFactorFromTopPrediction
{
  v3 = [(NSMutableDictionary *)self->_cumulativeScoresWithDecayedWeightsByIdentifier objectForKeyedSubscript:self->_topScoringIdentifier];
  [v3 doubleValue];
  v5 = v4;

  return [(NSCountedSet *)self->_relevantAppLaunches countForObject:self->_topScoringIdentifier]/ v5;
}

- (void)scaleAllScoresWithTopScoringFactor
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "ATXMM: Scaling Factor: %f", &v2, 0xCu);
}

- (void)computeModelConfidences
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  finalPredictionConfidences = self->_finalPredictionConfidences;
  self->_finalPredictionConfidences = v3;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 134218498;
    v25 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_cumulativeScoresWithDecayedWeightsByIdentifier objectForKeyedSubscript:*&v11, v25];
        [v12 doubleValue];
        v14 = v13;

        v16 = v14 + 1.0;
        v17 = self->_totalScaledCumulativeScoresForAllBundleIds + 1.0 - v14;
        if (v14 + 1.0 < 1.0 && fabs(v16 + -1.0) >= 0.00001 || v17 < 1.0 && fabs(v17 + -1.0) >= 0.00001)
        {
          v20 = __atxlog_handle_default(v15);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            totalScaledCumulativeScoresForAllBundleIds = self->_totalScaledCumulativeScoresForAllBundleIds;
            *buf = v25;
            v31 = totalScaledCumulativeScoresForAllBundleIds;
            v32 = 2048;
            v33 = v14;
            v34 = 2112;
            v35 = v11;
            _os_log_error_impl(&dword_2263AA000, v20, OS_LOG_TYPE_ERROR, "ERROR: Wrong weight in the model: {totalWeight=%f, appWeight=%f, app=%@}", buf, 0x20u);
          }

          v19 = 0.0;
        }

        else
        {
          [ATXMagicalMomentsStatistics calculateModelConfidenceWithCorrectPredictions:v14 + 1.0 incorrectPredictions:self->_totalScaledCumulativeScoresForAllBundleIds + 1.0 - v14];
          v19 = v18;
        }

        v21 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
        [(NSMutableDictionary *)self->_finalPredictionConfidences setObject:v21 forKeyedSubscript:*&v11];

        v23 = __atxlog_handle_default(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v31 = v11;
          v32 = 2048;
          v33 = v16;
          v34 = 2048;
          v35 = v17;
          v36 = 2048;
          v37 = v19;
          _os_log_debug_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEBUG, "ATXMM: ==> bundleId: %@, alpha: %f, beta: %f, confidence: %f", buf, 0x2Au);
        }
      }

      v8 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v8);
  }
}

- (id)getPredictionsFromFinalConfidences
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_finalPredictionConfidences;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412802;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_relevanceWeightsByIdentifier objectForKeyedSubscript:v10, v19, v20];
        [v11 doubleValue];
        v13 = v12;

        if (v13 >= 0.0)
        {
          v16 = [ATXMagicalMomentsPrediction alloc];
          v17 = [(NSMutableDictionary *)self->_finalPredictionConfidences objectForKeyedSubscript:v10];
          [v17 doubleValue];
          v15 = [(ATXMagicalMomentsPrediction *)v16 initWithConfidence:v10 predictionIdentifier:?];

          [v3 addObject:v15];
        }

        else
        {
          v15 = __atxlog_handle_default(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v25 = v10;
            v26 = 2048;
            v27 = v13;
            v28 = 2048;
            v29 = 0;
            _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "FILTER: A globally used app would not be suggested. (%@: %f < %f)", buf, 0x20u);
          }
        }
      }

      v7 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)startOfDayForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 startOfDayForDate:dateCopy];

  return v7;
}

- (void)subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions
{
  [*self count];
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v1, v2, "ATXMM: %lu bundleIds observed for this subexpert with %lu total relevant launches, making the expert eligible for training/prediction.", v3, v4, v5, v6);
}

@end