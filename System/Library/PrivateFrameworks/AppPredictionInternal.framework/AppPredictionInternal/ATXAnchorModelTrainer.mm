@interface ATXAnchorModelTrainer
- (ATXAnchorModelTrainer)init;
- (ATXAnchorModelTrainer)initWithTask:(id)task;
- (ATXAnchorModelTrainer)initWithTask:(id)task dataStoreWrapper:(id)wrapper;
- (BOOL)anchorWasRecentlyTrained:(id)trained;
- (id)anchorsToIncludeInTraining;
- (id)candidateTypeFromCandidateId:(id)id;
- (id)trainAnchorModel:(id)model;
- (id)trainAnchorModel:(id)model phase1Trainer:(id)trainer phase2Trainer:(id)phase2Trainer phase3Trainer:(id)phase3Trainer;
- (id)trainModelPerCandidateSelectedInPhase1:(id)phase1 phase2Trainer:(id)trainer phase3Trainer:(id)phase3Trainer phase1Results:(id)results;
- (void)train;
@end

@implementation ATXAnchorModelTrainer

- (ATXAnchorModelTrainer)init
{
  v3 = objc_opt_new();
  v4 = [(ATXAnchorModelTrainer *)self initWithTask:0 dataStoreWrapper:v3];

  return v4;
}

- (ATXAnchorModelTrainer)initWithTask:(id)task
{
  taskCopy = task;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelTrainer *)self initWithTask:taskCopy dataStoreWrapper:v5];

  return v6;
}

- (ATXAnchorModelTrainer)initWithTask:(id)task dataStoreWrapper:(id)wrapper
{
  taskCopy = task;
  wrapperCopy = wrapper;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelTrainer;
  v9 = [(ATXAnchorModelTrainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, task);
    objc_storeStrong(&v10->_dataStoreWrapper, wrapper);
    v11 = +[ATXAnchorModelHyperParameters sharedInstance];
    hyperparameters = v10->_hyperparameters;
    v10->_hyperparameters = v11;
  }

  return v10;
}

- (id)anchorsToIncludeInTraining
{
  enabledAnchors = [(ATXAnchorModelHyperParameters *)self->_hyperparameters enabledAnchors];
  v3 = [enabledAnchors _pas_mappedArrayWithTransform:&__block_literal_global_26];

  return v3;
}

id __51__ATXAnchorModelTrainer_anchorsToIncludeInTraining__block_invoke(int a1, NSString *aClassName)
{
  NSClassFromString(aClassName);
  v2 = objc_opt_new();

  return v2;
}

- (void)train
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Anchor Model training has exceeded 15 minutes. Training completed in %.2f seconds.", &v2, 0xCu);
}

uint64_t __30__ATXAnchorModelTrainer_train__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) anchorWasRecentlyTrained:v3];
  v5 = v4;
  if (v4)
  {
    v6 = __atxlog_handle_anchor(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Skipping training of anchor because it was recently trained. Anchor: %@", &v8, 0xCu);
    }
  }

  return v5 ^ 1u;
}

- (BOOL)anchorWasRecentlyTrained:(id)trained
{
  v17 = *MEMORY[0x277D85DE8];
  trainedCopy = trained;
  v5 = objc_alloc(MEMORY[0x277CBEAA8]);
  [(ATXAnchorModelHyperParameters *)self->_hyperparameters maxTrainingAgeInSecondsToConsiderForRetraining];
  v7 = [v5 initWithTimeIntervalSinceNow:-v6];
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper dateAnchorModelWasLastTrainedForAnchor:trainedCopy];
  v9 = __atxlog_handle_anchor(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = trainedCopy;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Anchor %@ was last trained on %@", &v13, 0x16u);
  }

  v10 = [v8 laterDate:v7];
  v11 = v10 == v8;

  return v11;
}

- (id)trainAnchorModel:(id)model
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = __atxlog_handle_anchor(modelCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = modelCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Starting training for Anchor %@", buf, 0xCu);
  }

  v28 = objc_opt_new();
  v6 = modelCopy;
  [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper uniqueAnchorEventIdentifiersForAnchor:modelCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        didDefer = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
        v13 = v6;
        if (didDefer)
        {
          v25 = __atxlog_handle_anchor(didDefer);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v6;
            _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

          v20 = obj;
          v24 = MEMORY[0x277CBEBF8];
          v23 = v28;
          goto LABEL_17;
        }

        v14 = [v6 copy];
        v15 = [v11 copy];
        [v14 setAnchorEventIdentifier:v15];

        v16 = [[ATXAnchorModelPhase1Trainer alloc] initForAnchor:v14 anchorModelDataStoreWrapper:self->_dataStoreWrapper];
        [v16 setRunningTask:self->_task];
        v17 = [[ATXAnchorModelPhase2Trainer alloc] initForAnchor:v14 anchorModelDataStoreWrapper:self->_dataStoreWrapper];
        [v17 setRunningTask:self->_task];
        v18 = [[ATXAnchorModelPhase3Trainer alloc] initForAnchor:v14 anchorModelDataStoreWrapper:self->_dataStoreWrapper];
        [v18 setRunningTask:self->_task];
        v19 = [(ATXAnchorModelTrainer *)self trainAnchorModel:v14 phase1Trainer:v16 phase2Trainer:v17 phase3Trainer:v18];
        [v28 addObjectsFromArray:v19];
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = obj;

  v22 = __atxlog_handle_anchor(v21);
  v13 = v6;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_INFO, "Finished training for Anchor %@.", buf, 0xCu);
  }

  v23 = v28;
  v24 = v28;
LABEL_17:

  return v24;
}

- (id)trainAnchorModel:(id)model phase1Trainer:(id)trainer phase2Trainer:(id)phase2Trainer phase3Trainer:(id)phase3Trainer
{
  v32 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  phase2TrainerCopy = phase2Trainer;
  phase3TrainerCopy = phase3Trainer;
  trainerCopy = trainer;
  v14 = __atxlog_handle_anchor(trainerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    anchorEventIdentifier = [modelCopy anchorEventIdentifier];
    v26 = 138412546;
    v27 = modelCopy;
    v28 = 2112;
    v29 = anchorEventIdentifier;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Starting training of Anchor Model for anchor: %@, event identifier: %@...", &v26, 0x16u);
  }

  trainPhase1 = [trainerCopy trainPhase1];

  didDefer = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
  v18 = didDefer;
  v19 = __atxlog_handle_anchor(didDefer);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v26 = 138412290;
      v27 = modelCopy;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", &v26, 0xCu);
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (v20)
    {
      anchorEventIdentifier2 = [modelCopy anchorEventIdentifier];
      v23 = [trainPhase1 count];
      v26 = 138412802;
      v27 = modelCopy;
      v28 = 2112;
      v29 = anchorEventIdentifier2;
      v30 = 2048;
      v31 = v23;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Finished training Anchor Model Phase 1 for anchor: %@, event identifier: %@. Completing training for each of %lu candidates...", &v26, 0x20u);
    }

    v21 = [(ATXAnchorModelTrainer *)self trainModelPerCandidateSelectedInPhase1:modelCopy phase2Trainer:phase2TrainerCopy phase3Trainer:phase3TrainerCopy phase1Results:trainPhase1];
    v19 = __atxlog_handle_anchor(v21);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v21 count];
      v26 = 134217984;
      v27 = v24;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Done training. Returning %lu training results.", &v26, 0xCu);
    }
  }

  return v21;
}

- (id)trainModelPerCandidateSelectedInPhase1:(id)phase1 phase2Trainer:(id)trainer phase3Trainer:(id)phase3Trainer phase1Results:(id)results
{
  v58 = *MEMORY[0x277D85DE8];
  phase1Copy = phase1;
  trainerCopy = trainer;
  phase3TrainerCopy = phase3Trainer;
  resultsCopy = results;
  didDefer = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
  if (didDefer)
  {
    v15 = __atxlog_handle_anchor(didDefer);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = phase1Copy;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
    }

    v16 = objc_opt_new();
  }

  else
  {
    v17 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = resultsCopy;
    v49 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v49)
    {
      v48 = *v52;
      v43 = phase3TrainerCopy;
      v44 = trainerCopy;
      v42 = resultsCopy;
      v45 = v17;
LABEL_7:
      v18 = 0;
      while (1)
      {
        if (*v52 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v51 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        didDefer2 = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
        if (didDefer2)
        {
          v38 = __atxlog_handle_anchor(didDefer2);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = phase1Copy;
            _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

          v16 = objc_opt_new();
          goto LABEL_41;
        }

        candidateId = [v19 candidateId];
        v23 = [(ATXAnchorModelTrainer *)self candidateTypeFromCandidateId:candidateId];
        if (v23)
        {
          v24 = v23;
          didDefer3 = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
          if (didDefer3)
          {
            v39 = __atxlog_handle_anchor(didDefer3);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v57 = phase1Copy;
              _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
            }

            v16 = objc_opt_new();
            goto LABEL_40;
          }

          v50 = [trainerCopy trainPhase2ForCandidate:candidateId candidateType:v24];
          if (v50)
          {
            didDefer4 = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
            if (didDefer4)
            {
              v40 = __atxlog_handle_anchor(didDefer4);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v57 = phase1Copy;
                _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
              }

              v16 = objc_opt_new();
LABEL_40:

LABEL_41:
              objc_autoreleasePoolPop(v20);

              resultsCopy = v42;
              v17 = v45;
              goto LABEL_42;
            }

            v27 = [phase3TrainerCopy trainPhase3ForCandidate:candidateId];
            if (v27)
            {
              v28 = v27;
              v46 = v20;
              v29 = phase1Copy;
              v30 = phase1Copy;
              v31 = -[ATXAnchorModelTrainingResult initWithAnchor:candidateId:candidateType:phase1TrainingResult:candidateClassifier:candidateClassifierType:offsetFromAnchorToShowPrediction:]([ATXAnchorModelTrainingResult alloc], "initWithAnchor:candidateId:candidateType:phase1TrainingResult:candidateClassifier:candidateClassifierType:offsetFromAnchorToShowPrediction:", phase1Copy, candidateId, v24, v19, v50, [v50 classifierType], v27);
              [v45 addObject:v31];
              didDefer5 = [(ATXBackgroundActivityProtocol *)self->_task didDefer];
              v33 = didDefer5;
              v34 = __atxlog_handle_anchor(didDefer5);
              v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
              if (v33)
              {
                phase1Copy = v29;
                if (v35)
                {
                  *buf = 138412290;
                  v57 = v30;
                  _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
                }

                v16 = objc_opt_new();
                phase3TrainerCopy = v43;
                trainerCopy = v44;
                v20 = v46;
                goto LABEL_41;
              }

              if (v35)
              {
                *buf = 138412290;
                v57 = v31;
                _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "Added training result: %@", buf, 0xCu);
              }

              phase1Copy = v29;
              phase3TrainerCopy = v43;
              trainerCopy = v44;
              v20 = v46;
            }

            else
            {
              v37 = __atxlog_handle_anchor(0);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v57 = candidateId;
                _os_log_error_impl(&dword_2263AA000, v37, OS_LOG_TYPE_ERROR, "Could not compute the offset seconds from the anchor to show the show the prediction for candidate: %@. Skipping the candidate.", buf, 0xCu);
              }
            }
          }

          else
          {
            v36 = __atxlog_handle_anchor(0);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v57 = candidateId;
              _os_log_error_impl(&dword_2263AA000, v36, OS_LOG_TYPE_ERROR, "Could not train a classifier for candidate: %@. Skipping the candidate.", buf, 0xCu);
            }
          }
        }

        else
        {
          v24 = __atxlog_handle_anchor(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v57 = candidateId;
            _os_log_error_impl(&dword_2263AA000, v24, OS_LOG_TYPE_ERROR, "Could not fetch the candidateType for candidate: %@. Skipping the candidate.", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v20);
        if (v49 == ++v18)
        {
          resultsCopy = v42;
          v17 = v45;
          v49 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
          if (v49)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v16 = v17;
LABEL_42:
  }

  return v16;
}

- (id)candidateTypeFromCandidateId:(id)id
{
  idCopy = id;
  v4 = objc_opt_new();
  v5 = [v4 candidateTypeForCandidateId:idCopy];

  return v5;
}

@end