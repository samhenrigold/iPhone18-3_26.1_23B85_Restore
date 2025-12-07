@interface ATXAnchorModelPhase1Trainer
- (BOOL)candidateSatisfiesAllThresholds:(id)thresholds trainingResult:(id)result;
- (BOOL)candidateUniqueAnchorOccurrencesIsAtLeastMinimum:(int64_t)minimum candidateId:(id)id trainingResult:(id)result;
- (BOOL)classConditionalProbabilityOfAnchorIsAtLeastMinimum:(double)minimum candidateId:(id)id trainingResult:(id)result;
- (BOOL)posteriorProbabilityConditionedOnAnchorIsAtLeastMinimum:(double)minimum candidateId:(id)id trainingResult:(id)result;
- (double)anchorPopularityForCandidate:(id)candidate;
- (double)classConditionalProbabilityOfAnchorForCandidate:(id)candidate;
- (double)globalPopularityForCandidate:(id)candidate;
- (double)posteriorProbabilityConditionedOnAnchorForCandidate:(id)candidate;
- (double)standardDeviationOfNumbers:(id)numbers;
- (double)standardDeviationOfSecondsAfterAnchorForFirstOccurrenceOfCandidateId:(id)id;
- (id)initForAnchor:(id)anchor;
- (id)initForAnchor:(id)anchor anchorModelDataStoreWrapper:(id)wrapper;
- (id)initForAnchor:(id)anchor anchorModelDataStoreWrapper:(id)wrapper hyperParameters:(id)parameters tracker:(id)tracker;
- (id)selectedPredictionCandidates;
- (id)uniqueCandidateIdsThatOccurredAfterAnchor;
- (void)_logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:(id)consider selectedCandidates:(id)candidates;
- (void)uniqueCandidateIdsThatOccurredAfterAnchor;
@end

@implementation ATXAnchorModelPhase1Trainer

- (id)initForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelPhase1Trainer *)self initForAnchor:anchorCopy anchorModelDataStoreWrapper:v5];

  return v6;
}

- (id)initForAnchor:(id)anchor anchorModelDataStoreWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  anchorCopy = anchor;
  v8 = +[ATXAnchorModelHyperParameters sharedInstance];
  v9 = objc_opt_new();
  v10 = [(ATXAnchorModelPhase1Trainer *)self initForAnchor:anchorCopy anchorModelDataStoreWrapper:wrapperCopy hyperParameters:v8 tracker:v9];

  return v10;
}

- (id)initForAnchor:(id)anchor anchorModelDataStoreWrapper:(id)wrapper hyperParameters:(id)parameters tracker:(id)tracker
{
  anchorCopy = anchor;
  wrapperCopy = wrapper;
  parametersCopy = parameters;
  trackerCopy = tracker;
  v18.receiver = self;
  v18.super_class = ATXAnchorModelPhase1Trainer;
  v15 = [(ATXAnchorModelPhase1Trainer *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_anchor, anchor);
    objc_storeStrong(p_isa + 2, wrapper);
    objc_storeStrong(p_isa + 3, parameters);
    objc_storeStrong(p_isa + 4, tracker);
  }

  return p_isa;
}

- (id)selectedPredictionCandidates
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  uniqueCandidateIdsThatOccurredAfterAnchor = [(ATXAnchorModelPhase1Trainer *)self uniqueCandidateIdsThatOccurredAfterAnchor];
  v5 = __atxlog_handle_anchor(uniqueCandidateIdsThatOccurredAfterAnchor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Phase 1: Starting training...", buf, 2u);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v6 = uniqueCandidateIdsThatOccurredAfterAnchor;
  v73 = [v6 countByEnumeratingWithState:&v75 objects:v82 count:16];
  if (v73)
  {
    v7 = *v76;
    v71 = *v76;
    do
    {
      v8 = 0;
      do
      {
        if (*v76 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v75 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        didDefer = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
        if (didDefer)
        {
          v65 = __atxlog_handle_anchor(didDefer);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            anchor = self->_anchor;
            *buf = 138412290;
            v81 = anchor;
            _os_log_impl(&dword_2263AA000, v65, OS_LOG_TYPE_DEFAULT, "Phase 1: Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

          goto LABEL_58;
        }

        v12 = objc_opt_new();
        v13 = [(ATXAnchorModelPhase1Trainer *)self candidateSatisfiesAllThresholds:v9 trainingResult:v12];
        if ((v13 & 1) == 0)
        {
          v31 = __atxlog_handle_anchor(v13);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v81 = v9;
            _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "Phase 1: ❌ (NO) Candidate: %@ rejected in Phase 1.", buf, 0xCu);
          }

          goto LABEL_17;
        }

        v74 = v12;
        didDefer2 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
        v15 = didDefer2;
        v16 = __atxlog_handle_anchor(didDefer2);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
LABEL_56:
            v68 = self->_anchor;
            *buf = 138412290;
            v81 = v68;
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

LABEL_57:

          v65 = v74;
LABEL_58:

          objc_autoreleasePoolPop(v10);
          goto LABEL_59;
        }

        if (v17)
        {
          *buf = 138412290;
          v81 = v9;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate: %@ satisfies all thresholds.", buf, 0xCu);
        }

        v18 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper candidateTypeForCandidateId:v9];
        v19 = [v18 isEqualToString:@"app"];

        storeWrapper = self->_storeWrapper;
        if (v19)
        {
          v72 = v10;
          v21 = objc_opt_new();
          v70 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper appLaunchDuetEventFromCandidateId:v9 date:v21];

          v22 = objc_opt_new();
          v79 = v70;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
          v24 = objc_opt_new();
          v25 = [v22 historyForAppLaunchDuetEvents:v23 anchorOccurrenceDate:v24];
          [v25 objectAtIndexedSubscript:0];
          selfCopy = self;
          v27 = v6;
          v29 = v28 = v3;
          [v74 setLaunchHistory:v29];

          v3 = v28;
          v6 = v27;
          self = selfCopy;

          v30 = v70;
LABEL_28:

          v10 = v72;
          goto LABEL_29;
        }

        v32 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper candidateTypeForCandidateId:v9];
        v33 = [v32 isEqualToString:@"action"];

        v34 = self->_storeWrapper;
        v12 = v74;
        if (v33)
        {
          v35 = objc_opt_new();
          v36 = [(ATXAnchorModelDataStoreWrapperProtocol *)v34 appIntentDuetEventFromCandidateId:v9 date:v35];

          if (!v36)
          {
            v31 = __atxlog_handle_anchor(v37);
            v7 = v71;
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            *buf = 138412290;
            v81 = v9;
            v57 = v31;
            v58 = "Skipping candidate because we were unable to access the DuetEvent for the candidate. candidateId: %@";
LABEL_41:
            _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, 0xCu);
            goto LABEL_17;
          }

          v30 = v36;
          v72 = v10;
          v22 = objc_opt_new();
          v23 = objc_opt_new();
          v38 = [v22 historyForActionUUIDWithAppIntentDuetEvent:v30 anchorOccurrenceDate:v23];
          goto LABEL_27;
        }

        v39 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper candidateTypeForCandidateId:v9];
        v40 = [v39 isEqualToString:@"mode"];

        v41 = self->_storeWrapper;
        if (v40)
        {
          v42 = objc_opt_new();
          v43 = [(ATXAnchorModelDataStoreWrapperProtocol *)v41 modeBiomeEventFromCandidateId:v9 date:v42];

          if (!v43)
          {
            v31 = __atxlog_handle_anchor(v44);
            v7 = v71;
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

LABEL_40:
            *buf = 138412290;
            v81 = v9;
            v57 = v31;
            v58 = "Skipping candidate because we were unable to access the BMStoreEvent for the candidate. candidateId: %@";
            goto LABEL_41;
          }

          v30 = v43;
          v72 = v10;
          v22 = objc_opt_new();
          v23 = objc_opt_new();
          v38 = [v22 historyForModeChangeEvent:v30 anchorOccurrenceDate:v23];
          goto LABEL_27;
        }

        v45 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper candidateTypeForCandidateId:v9];
        v46 = [v45 isEqualToString:@"linkaction"];

        if (v46)
        {
          v47 = self->_storeWrapper;
          v48 = objc_opt_new();
          v49 = [(ATXAnchorModelDataStoreWrapperProtocol *)v47 linkActionBiomeEventFromCandidateId:v9 date:v48];

          if (!v49)
          {
            v31 = __atxlog_handle_anchor(v50);
            v7 = v71;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_40;
            }

LABEL_17:

            goto LABEL_33;
          }

          v30 = v49;
          v72 = v10;
          v22 = objc_opt_new();
          v23 = objc_opt_new();
          v38 = [v22 historyForLinkActionChangeEvent:v30 anchorOccurrenceDate:v23];
LABEL_27:
          v24 = v38;
          [v74 setLaunchHistory:v38];
          goto LABEL_28;
        }

LABEL_29:
        didDefer3 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
        v52 = didDefer3;
        v16 = __atxlog_handle_anchor(didDefer3);
        v53 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v52)
        {
          if (v53)
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        if (v53)
        {
          *buf = 138412290;
          v81 = v9;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Phase 1: ✅ (YES) Candidate: %@ selected to pass Phase 1.", buf, 0xCu);
        }

        v12 = v74;
        [v74 setCandidateId:v9];
        v54 = self->_storeWrapper;
        anchorTypeString = [(ATXAnchor *)self->_anchor anchorTypeString];
        anchorEventIdentifier = [(ATXAnchor *)self->_anchor anchorEventIdentifier];
        [(ATXAnchorModelDataStoreWrapperProtocol *)v54 assignMetricsForTrainingResult:v74 anchorType:anchorTypeString anchorEventIdentifier:anchorEventIdentifier candidateId:v9];

        [v3 addObject:v74];
        v7 = v71;
LABEL_33:

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v73 != v8);
      v59 = [v6 countByEnumeratingWithState:&v75 objects:v82 count:16];
      v73 = v59;
    }

    while (v59);
  }

  v61 = __atxlog_handle_anchor(v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v61, OS_LOG_TYPE_DEFAULT, "Phase 1: Done training.", buf, 2u);
  }

  didDefer4 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
  if (didDefer4)
  {
    v63 = __atxlog_handle_anchor(didDefer4);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = self->_anchor;
      *buf = 138412290;
      v81 = v64;
      _os_log_impl(&dword_2263AA000, v63, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
    }

LABEL_59:
    v67 = MEMORY[0x277CBEBF8];
  }

  else
  {
    [(ATXAnchorModelPhase1Trainer *)self _logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:v6 selectedCandidates:v3];
    v67 = v3;
  }

  return v67;
}

- (BOOL)candidateSatisfiesAllThresholds:(id)thresholds trainingResult:(id)result
{
  v70 = *MEMORY[0x277D85DE8];
  thresholdsCopy = thresholds;
  resultCopy = result;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForCandidate:thresholdsCopy anchor:self->_anchor];
  didDefer = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
  if (!didDefer)
  {
    v12 = __atxlog_handle_anchor([resultCopy setNumUniqueAnchorOccurrencesWithUniqueCandidateOccurrence:v8]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated unique anchor occurrences", &v56, 2u);
    }

    if (![(ATXAnchorModelPhase1Trainer *)self candidateUniqueAnchorOccurrencesIsAtLeastMinimum:[(ATXAnchorModelHyperParameters *)self->_hyperParameters minUniqueAnchorOccurrencesForAnchorForPhase1] candidateId:thresholdsCopy trainingResult:resultCopy])
    {
      goto LABEL_34;
    }

    didDefer2 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    if (didDefer2)
    {
      v10 = __atxlog_handle_anchor(didDefer2);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      anchor = self->_anchor;
      v56 = 138412290;
      v57 = anchor;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self classConditionalProbabilityOfAnchorForCandidate:thresholdsCopy];
    v16 = v15;
    v17 = __atxlog_handle_anchor([resultCopy setClassConditionalProbability:?]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated class conditional probability", &v56, 2u);
    }

    didDefer3 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    if (didDefer3)
    {
      v10 = __atxlog_handle_anchor(didDefer3);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v19 = self->_anchor;
      v56 = 138412290;
      v57 = v19;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self posteriorProbabilityConditionedOnAnchorForCandidate:thresholdsCopy];
    v21 = v20;
    v22 = __atxlog_handle_anchor([resultCopy setPosteriorProbability:?]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated posterior probability", &v56, 2u);
    }

    didDefer4 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    if (didDefer4)
    {
      v10 = __atxlog_handle_anchor(didDefer4);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v24 = self->_anchor;
      v56 = 138412290;
      v57 = v24;
      goto LABEL_4;
    }

    [(ATXAnchorModelHyperParameters *)self->_hyperParameters minClassConditionalProbabilityForCandidateForPhase1];
    if (![(ATXAnchorModelPhase1Trainer *)self classConditionalProbabilityOfAnchorIsAtLeastMinimum:thresholdsCopy candidateId:resultCopy trainingResult:?])
    {
      minPosteriorProbabilityToIgnoreClassConditionalProbabilityForCandidateForPhase1 = [(ATXAnchorModelHyperParameters *)self->_hyperParameters minPosteriorProbabilityToIgnoreClassConditionalProbabilityForCandidateForPhase1];
      if (v21 <= v26)
      {
        goto LABEL_34;
      }

      v27 = __atxlog_handle_anchor(minPosteriorProbabilityToIgnoreClassConditionalProbabilityForCandidateForPhase1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        [(ATXAnchorModelHyperParameters *)self->_hyperParameters minPosteriorProbabilityToIgnoreClassConditionalProbabilityForCandidateForPhase1];
        v56 = 138412802;
        v57 = thresholdsCopy;
        v58 = 2048;
        v59 = v21;
        v60 = 2048;
        v61 = v28;
        _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate %@ posterior probability (%.2f) is high enough to proceed even though the class conditional probability requirement is not met. High threshold: %.2f", &v56, 0x20u);
      }
    }

    didDefer5 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    if (didDefer5)
    {
      v10 = __atxlog_handle_anchor(didDefer5);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v30 = self->_anchor;
      v56 = 138412290;
      v57 = v30;
      goto LABEL_4;
    }

    [(ATXAnchorModelHyperParameters *)self->_hyperParameters minPosteriorProbabilityForCandidateForPhase1];
    if (![(ATXAnchorModelPhase1Trainer *)self posteriorProbabilityConditionedOnAnchorIsAtLeastMinimum:thresholdsCopy candidateId:resultCopy trainingResult:?])
    {
      goto LABEL_34;
    }

    didDefer6 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    if (didDefer6)
    {
      v10 = __atxlog_handle_anchor(didDefer6);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v32 = self->_anchor;
      v56 = 138412290;
      v57 = v32;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self standardDeviationOfSecondsAfterAnchorForFirstOccurrenceOfCandidateId:thresholdsCopy];
    v36 = v35;
    v37 = __atxlog_handle_anchor([resultCopy setStandardDeviationOfOffsetFromAnchor:?]);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated standard deviation of offset from anchor", &v56, 2u);
    }

    didDefer7 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    if (didDefer7)
    {
      v10 = __atxlog_handle_anchor(didDefer7);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v39 = self->_anchor;
      v56 = 138412290;
      v57 = v39;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self anchorPopularityForCandidate:thresholdsCopy];
    v41 = v40;
    v42 = __atxlog_handle_anchor([resultCopy setAnchorPopularity:?]);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_2263AA000, v42, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated anchor popularity", &v56, 2u);
    }

    didDefer8 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    if (didDefer8)
    {
      v10 = __atxlog_handle_anchor(didDefer8);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v44 = self->_anchor;
      v56 = 138412290;
      v57 = v44;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self globalPopularityForCandidate:thresholdsCopy];
    v46 = v45;
    v47 = __atxlog_handle_anchor([resultCopy setGlobalPopularity:?]);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_2263AA000, v47, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated global popularity", &v56, 2u);
    }

    didDefer9 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    v49 = didDefer9;
    v50 = __atxlog_handle_anchor(didDefer9);
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
    if (v49)
    {
      if (v51)
      {
        v52 = self->_anchor;
        v56 = 138412290;
        v57 = v52;
        v53 = "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.";
        v54 = v50;
        v55 = 12;
LABEL_53:
        _os_log_impl(&dword_2263AA000, v54, OS_LOG_TYPE_DEFAULT, v53, &v56, v55);
      }
    }

    else if (v51)
    {
      v56 = 138413826;
      v57 = thresholdsCopy;
      v58 = 2048;
      v59 = *&v8;
      v60 = 2048;
      v61 = v16;
      v62 = 2048;
      v63 = v21;
      v64 = 2048;
      v65 = v36;
      v66 = 2048;
      v67 = v41;
      v68 = 2048;
      v69 = v46;
      v53 = "Phase 1: Candidate %@ unique anchor occurrence count: %ld, class-conditional probability: %.2f, posterior probability: %.2f, standard deviation in offset from anchor: %.2f, anchorProbability: %.2f, globalPopularity: %.2f";
      v54 = v50;
      v55 = 72;
      goto LABEL_53;
    }

    v33 = v49 ^ 1;
    goto LABEL_35;
  }

  v10 = __atxlog_handle_anchor(didDefer);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_anchor;
    v56 = 138412290;
    v57 = v11;
LABEL_4:
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", &v56, 0xCu);
  }

LABEL_5:

LABEL_34:
  v33 = 0;
LABEL_35:

  return v33;
}

- (BOOL)candidateUniqueAnchorOccurrencesIsAtLeastMinimum:(int64_t)minimum candidateId:(id)id trainingResult:(id)result
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  resultCopy = result;
  numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence = [resultCopy numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];
  v10 = numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence;
  if (numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence < minimum)
  {
    v11 = __atxlog_handle_anchor(numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = idCopy;
      v15 = 2048;
      minimumCopy = minimum;
      v17 = 2048;
      numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence2 = [resultCopy numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate %@ failed unique anchor occurrence count requirement. Req: %ld, Actual: %ld", &v13, 0x20u);
    }
  }

  return v10 >= minimum;
}

- (BOOL)classConditionalProbabilityOfAnchorIsAtLeastMinimum:(double)minimum candidateId:(id)id trainingResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  resultCopy = result;
  classConditionalProbability = [resultCopy classConditionalProbability];
  v11 = v10;
  if (v10 < minimum)
  {
    v12 = __atxlog_handle_anchor(classConditionalProbability);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [resultCopy classConditionalProbability];
      v15 = 138412802;
      v16 = idCopy;
      v17 = 2048;
      minimumCopy = minimum;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate %@ failed class conditional probability requirement. Req: %.2f, Actual: %.2f", &v15, 0x20u);
    }
  }

  return v11 >= minimum;
}

- (double)classConditionalProbabilityOfAnchorForCandidate:(id)candidate
{
  v19 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numCandidateOccurrencesInAnchorContextForCandidate:candidateCopy anchor:self->_anchor];
  v6 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numCandidateOccurrencesInAllContextsForCandidate:candidateCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v5 / v6;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = __atxlog_handle_anchor(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138413058;
    v12 = candidateCopy;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Phase 1: Candidate: %@. anchorContextCount = %ld, allContextCount = %ld ==> p(anchor | candidate) = %.3f", &v11, 0x2Au);
  }

  return v8;
}

- (BOOL)posteriorProbabilityConditionedOnAnchorIsAtLeastMinimum:(double)minimum candidateId:(id)id trainingResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  resultCopy = result;
  posteriorProbability = [resultCopy posteriorProbability];
  v11 = v10;
  if (v10 < minimum)
  {
    v12 = __atxlog_handle_anchor(posteriorProbability);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [resultCopy posteriorProbability];
      v15 = 138412802;
      v16 = idCopy;
      v17 = 2048;
      minimumCopy = minimum;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate %@ failed posterior probability requirement. Req: %.2f, Actual: %.2f", &v15, 0x20u);
    }
  }

  return v11 >= minimum;
}

- (double)posteriorProbabilityConditionedOnAnchorForCandidate:(id)candidate
{
  v19 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numUniqueAnchorOccurrencesForCandidate:candidateCopy anchor:self->_anchor];
  v6 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numUniqueAnchorOccurrencesForAnchor:self->_anchor candidateId:candidateCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v5 / v6;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = __atxlog_handle_anchor(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138413058;
    v12 = candidateCopy;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Phase 1: Candidate: %@. uniqueOccurrencesInAnchorContext = %ld, uniqueAnchorOccurrences = %ld ==> p(candidate | anchor) = %.3f", &v11, 0x2Au);
  }

  return v8;
}

- (double)standardDeviationOfSecondsAfterAnchorForFirstOccurrenceOfCandidateId:(id)id
{
  v4 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper secondsAfterAnchorWhenCandidateOccurredForAnchor:self->_anchor candidateId:id onlyConsiderFirstOccurrencePerAnchor:1];
  [(ATXAnchorModelPhase1Trainer *)self standardDeviationOfNumbers:v4];
  v6 = v5;

  return v6;
}

- (double)standardDeviationOfNumbers:(id)numbers
{
  v12[1] = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  if ([numbersCopy count])
  {
    v4 = MEMORY[0x277CCA9C0];
    v5 = [MEMORY[0x277CCA9C0] expressionForConstantValue:numbersCopy];
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [v4 expressionForFunction:@"stddev:" arguments:v6];

    v8 = [v7 expressionValueWithObject:0 context:0];
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (id)uniqueCandidateIdsThatOccurredAfterAnchor
{
  p_anchor = &self->_anchor;
  v3 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper uniqueCandidateIdsThatOccurredAfterAnchor:self->_anchor];
  v4 = __atxlog_handle_anchor(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelPhase1Trainer *)p_anchor uniqueCandidateIdsThatOccurredAfterAnchor];
  }

  return v3;
}

- (double)anchorPopularityForCandidate:(id)candidate
{
  v21 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numCandidateOccurrencesInAnchorContextForCandidate:candidateCopy anchor:self->_anchor];
  storeWrapper = self->_storeWrapper;
  v7 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper candidateTypeForCandidateId:candidateCopy];
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper numCandidateOccurrencesInAnchorContextForCandidateType:v7 anchor:self->_anchor];

  if (v8)
  {
    v10 = v5 / v8;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138413058;
    v14 = candidateCopy;
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "Phase 1: Candidate: %@. occurencesInAnchorContextForCandidate = %ld, occurencesInAnchorContextForAllCandidatesOfSameType = %ld ==> anchorProbability = %.3f", &v13, 0x2Au);
  }

  return v10;
}

- (double)globalPopularityForCandidate:(id)candidate
{
  v21 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numCandidateOccurrencesInAllContextsForCandidate:candidateCopy];
  storeWrapper = self->_storeWrapper;
  v7 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper candidateTypeForCandidateId:candidateCopy];
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper numCandidateOccurrencesInAllContextsForCandidateType:v7];

  if (v8)
  {
    v10 = v5 / v8;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138413058;
    v14 = candidateCopy;
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "Phase 1: Candidate: %@. occurencesInAllContextsForCandidate = %ld, occurencesInAllContextsForCandidatesOfSameType = %ld ==> globalPopularity = %.3f", &v13, 0x2Au);
  }

  return v10;
}

- (void)_logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:(id)consider selectedCandidates:(id)candidates
{
  candidatesCopy = candidates;
  considerCopy = consider;
  v8 = objc_opt_new();
  [v8 setPhaseDescription:1];
  [v8 setPhaseType:0];
  v9 = [considerCopy count];

  [v8 setNumStartingCandidates:v9];
  v10 = [candidatesCopy count];

  [v8 setNumEndingCandidates:v10];
  anchorTypeString = [(ATXAnchor *)self->_anchor anchorTypeString];
  [v8 setAnchorType:anchorTypeString];

  abGroup = [(ATXAnchorModelHyperParameters *)self->_hyperParameters abGroup];
  [v8 setAbGroup:abGroup];

  v13 = __atxlog_handle_metrics([(ATXPETEventTracker2Protocol *)self->_tracker logMessage:v8]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelPhase1Trainer *)self _logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:v8 selectedCandidates:v13];
  }
}

- (void)uniqueCandidateIdsThatOccurredAfterAnchor
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Phase 1: Unique candidates found after anchor (%@): %@", &v4, 0x16u);
}

- (void)_logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:(NSObject *)a3 selectedCandidates:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 numStartingCandidates];
  v8 = [a2 numEndingCandidates];
  v9 = [a2 anchorType];
  v10 = [a2 abGroup];
  v11 = 138413314;
  v12 = v6;
  v13 = 1024;
  v14 = v7;
  v15 = 1024;
  v16 = v8;
  v17 = 2112;
  v18 = v9;
  v19 = 2112;
  v20 = v10;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAnchorModelPhaseFilterTracker for phase 1 with starting candidates: %u ending candidates: %u, anchorType: %@ abGroup: %@", &v11, 0x2Cu);
}

@end