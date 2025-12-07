@interface ATXAnchorModelPhase3Trainer
- (double)endSecondsAfterAnchorGivenHistoricalOffsets:(id)offsets;
- (double)endSecondsAfterAnchorGivenHistoricalOffsets:(id)offsets startSecondsAfterAnchor:(double)anchor;
- (double)startSecondsAfterAnchorGivenHistoricalOffsets:(id)offsets;
- (id)initForAnchor:(id)anchor;
- (id)initForAnchor:(id)anchor anchorModelDataStoreWrapper:(id)wrapper;
- (id)trainPhase3ForCandidate:(id)candidate;
- (unint64_t)indexOfPercentile:(double)percentile array:(id)array;
@end

@implementation ATXAnchorModelPhase3Trainer

- (id)initForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelPhase3Trainer *)self initForAnchor:anchorCopy anchorModelDataStoreWrapper:v5];

  return v6;
}

- (id)initForAnchor:(id)anchor anchorModelDataStoreWrapper:(id)wrapper
{
  anchorCopy = anchor;
  wrapperCopy = wrapper;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelPhase3Trainer;
  v9 = [(ATXAnchorModelPhase3Trainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchor, anchor);
    objc_storeStrong(&v10->_storeWrapper, wrapper);
    v11 = +[ATXAnchorModelHyperParameters sharedInstance];
    hyperParameters = v10->_hyperParameters;
    v10->_hyperParameters = v11;
  }

  return v10;
}

- (id)trainPhase3ForCandidate:(id)candidate
{
  v36 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v5 = objc_autoreleasePoolPush();
  v6 = __atxlog_handle_anchor(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelPhase3Trainer *)candidateCopy trainPhase3ForCandidate:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper secondsAfterAnchorWhenCandidateOccurredForAnchor:self->_anchor candidateId:candidateCopy onlyConsiderFirstOccurrencePerAnchor:1];
  didDefer = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
  if (didDefer)
  {
    v15 = __atxlog_handle_anchor(didDefer);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      anchor = self->_anchor;
      v34 = 138412290;
      v35 = anchor;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", &v34, 0xCu);
    }

    goto LABEL_15;
  }

  v15 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper secondsAfterAnchorWhenCandidateOccurredForAnchor:self->_anchor candidateId:candidateCopy onlyConsiderFirstOccurrencePerAnchor:0];
  didDefer2 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
  if (didDefer2)
  {
    v18 = __atxlog_handle_anchor(didDefer2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_anchor;
      v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", &v34, 0xCu);
    }

    goto LABEL_15;
  }

  if (!v13 || ![v13 count])
  {
LABEL_15:
    v32 = 0;
    goto LABEL_16;
  }

  [(ATXAnchorModelPhase3Trainer *)self startSecondsAfterAnchorGivenHistoricalOffsets:v13];
  v21 = v20;
  v22 = [(ATXAnchorModelPhase3Trainer *)self endSecondsAfterAnchorGivenHistoricalOffsets:v15 startSecondsAfterAnchor:?];
  v24 = v23;
  v25 = __atxlog_handle_anchor(v22);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelPhase3Trainer *)candidateCopy trainPhase3ForCandidate:v25, v26, v27, v28, v29, v30, v31];
  }

  v32 = [[ATXAnchorModelPredictionOffsetFromAnchorOccurrence alloc] initWithStartSecondsAfterAnchor:v21 endSecondsAfterAnchor:v24];
LABEL_16:

  objc_autoreleasePoolPop(v5);

  return v32;
}

- (double)startSecondsAfterAnchorGivenHistoricalOffsets:(id)offsets
{
  hyperParameters = self->_hyperParameters;
  offsetsCopy = offsets;
  [(ATXAnchorModelHyperParameters *)hyperParameters percentileForStartOffsetFromAnchorForPhase3];
  v6 = [offsetsCopy objectAtIndexedSubscript:{-[ATXAnchorModelPhase3Trainer indexOfPercentile:array:](self, "indexOfPercentile:array:", offsetsCopy)}];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (double)endSecondsAfterAnchorGivenHistoricalOffsets:(id)offsets startSecondsAfterAnchor:(double)anchor
{
  [(ATXAnchorModelPhase3Trainer *)self endSecondsAfterAnchorGivenHistoricalOffsets:offsets];
  v7 = v6;
  v8 = v6 - anchor;
  maxDurationForAnchorModelPredictionInSecondsForPhase3 = [(ATXAnchorModelHyperParameters *)self->_hyperParameters maxDurationForAnchorModelPredictionInSecondsForPhase3];
  if (v8 > v10)
  {
    v11 = __atxlog_handle_anchor(maxDurationForAnchorModelPredictionInSecondsForPhase3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAnchorModelPhase3Trainer *)v11 endSecondsAfterAnchorGivenHistoricalOffsets:v12 startSecondsAfterAnchor:v13, v14, v15, v16, v17, v18, v8];
    }

    [(ATXAnchorModelHyperParameters *)self->_hyperParameters maxDurationForAnchorModelPredictionInSecondsForPhase3];
    return v19 + anchor;
  }

  minDurationForAnchorModelPredictionInSecondsForPhase3 = [(ATXAnchorModelHyperParameters *)self->_hyperParameters minDurationForAnchorModelPredictionInSecondsForPhase3];
  if (v8 < v21)
  {
    v22 = __atxlog_handle_anchor(minDurationForAnchorModelPredictionInSecondsForPhase3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAnchorModelPhase3Trainer *)v22 endSecondsAfterAnchorGivenHistoricalOffsets:v23 startSecondsAfterAnchor:v24, v25, v26, v27, v28, v29, v8];
    }

    [(ATXAnchorModelHyperParameters *)self->_hyperParameters minDurationForAnchorModelPredictionInSecondsForPhase3];
    return v19 + anchor;
  }

  return v7;
}

- (double)endSecondsAfterAnchorGivenHistoricalOffsets:(id)offsets
{
  hyperParameters = self->_hyperParameters;
  offsetsCopy = offsets;
  [(ATXAnchorModelHyperParameters *)hyperParameters percentileForEndOffsetFromAnchorForPhase3];
  v6 = [offsetsCopy objectAtIndexedSubscript:{-[ATXAnchorModelPhase3Trainer indexOfPercentile:array:](self, "indexOfPercentile:array:", offsetsCopy)}];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (unint64_t)indexOfPercentile:(double)percentile array:(id)array
{
  arrayCopy = array;
  v6 = arrayCopy;
  if (arrayCopy && (arrayCopy = [arrayCopy count]) != 0)
  {
    v7 = (ceil([v6 count] * percentile) + -1.0);
  }

  else
  {
    v8 = __atxlog_handle_anchor(arrayCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelPhase3Trainer indexOfPercentile:v8 array:percentile];
    }

    v7 = 0;
  }

  return v7;
}

- (void)trainPhase3ForCandidate:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a2, a3, "Training Phase 3 (Time) for candidate: %@...", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)trainPhase3ForCandidate:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a2, a3, "Done with Training Phase 3 (Time) for candidate: %@.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)endSecondsAfterAnchorGivenHistoricalOffsets:(uint64_t)a3 startSecondsAfterAnchor:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a1, a3, "Computed duration for candidate prediction is too short %.2f. Replacing with globally specified min duaration.", a5, a6, a7, a8, v9, DWORD2(v9));
}

- (void)endSecondsAfterAnchorGivenHistoricalOffsets:(uint64_t)a3 startSecondsAfterAnchor:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a1, a3, "Computed duration for candidate prediction is too long %.2f. Replacing with globally specified max duaration.", a5, a6, a7, a8, v9, DWORD2(v9));
}

- (void)indexOfPercentile:(os_log_t)log array:(double)a2 .cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Tried to compute the %.2f percentile from an empty array.", &v2, 0xCu);
}

@end