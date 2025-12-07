@interface HDCoreMotionWorkoutInterface
- (CMWorkout)currentWorkout;
- (CMWorkoutManager)cmWorkoutManager;
- (HDCoreMotionWorkoutInterface)init;
- (dispatch_queue_t)_queue_coreMotionWorkoutManager;
- (id)_queue_cmWorkoutForConfiguration:(void *)configuration sessionUUID:(uint64_t)d error:;
- (id)takeCMWorkoutAssertionForOwnerIdentifier:(id)identifier sessionUUID:(id)d workoutConfiguration:(id)configuration activityConfigurations:(id)configurations enableWorkoutChangeDetection:(BOOL)detection;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)averageMETsForWorkoutSessionUUID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)pauseWorkoutForWorkoutSessionUUID:(id)d;
- (void)resumeWorkoutForWorkoutSessionUUID:(id)d;
- (void)setCurrentActivity:(id)activity isManualTransition:(BOOL)transition;
@end

@implementation HDCoreMotionWorkoutInterface

- (HDCoreMotionWorkoutInterface)init
{
  v8.receiver = self;
  v8.super_class = HDCoreMotionWorkoutInterface;
  v2 = [(HDCoreMotionWorkoutInterface *)&v8 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v2->_assertionManager;
    v2->_assertionManager = v5;

    [(HDAssertionManager *)v2->_assertionManager addObserver:v2 forAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierCoreMotion" queue:v2->_queue];
  }

  return v2;
}

- (CMWorkoutManager)cmWorkoutManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__204;
  v10 = __Block_byref_object_dispose__204;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__HDCoreMotionWorkoutInterface_cmWorkoutManager__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__HDCoreMotionWorkoutInterface_cmWorkoutManager__block_invoke(uint64_t a1)
{
  v2 = [(HDCoreMotionWorkoutInterface *)*(a1 + 32) _queue_coreMotionWorkoutManager];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (dispatch_queue_t)_queue_coreMotionWorkoutManager
{
  if (self)
  {
    selfCopy = self;
    dispatch_assert_queue_V2(self[1]);
    if (!selfCopy[2] && [MEMORY[0x277CC1DA0] isAvailable])
    {
      v3 = objc_alloc_init(MEMORY[0x277CC1DA0]);
      v4 = selfCopy[2];
      selfCopy[2] = v3;
    }

    self = selfCopy[2];
    v1 = vars8;
  }

  return self;
}

- (CMWorkout)currentWorkout
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__204;
  v10 = __Block_byref_object_dispose__204;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__HDCoreMotionWorkoutInterface_currentWorkout__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  [(HDAssertionManager *)self->_assertionManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = HDCoreMotionWorkoutInterface;
  [(HDCoreMotionWorkoutInterface *)&v3 dealloc];
}

- (id)takeCMWorkoutAssertionForOwnerIdentifier:(id)identifier sessionUUID:(id)d workoutConfiguration:(id)configuration activityConfigurations:(id)configurations enableWorkoutChangeDetection:(BOOL)detection
{
  configurationsCopy = configurations;
  configurationCopy = configuration;
  dCopy = d;
  identifierCopy = identifier;
  v16 = [_HDCoreMotionAssertion alloc];
  v17 = dCopy;
  v18 = configurationCopy;
  v19 = configurationsCopy;
  if (v16)
  {
    v30.receiver = v16;
    v30.super_class = _HDCoreMotionAssertion;
    v20 = [(HDCoreMotionWorkoutInterface *)&v30 initWithAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierCoreMotion" ownerIdentifier:identifierCopy];
    v16 = v20;
    if (v20)
    {
      objc_storeStrong(&v20[1]._assertionManager, d);
      objc_storeStrong(&v16->_workoutConfiguration, configuration);
      objc_storeStrong(&v16->_activityConfigurations, configurations);
      v16->_enableWorkoutChangeDetection = detection;
    }
  }

  ownerIdentifier = [(HDAssertion *)v16 ownerIdentifier];
  appIdentifier = self->_appIdentifier;
  self->_appIdentifier = ownerIdentifier;

  if ([(HDAssertionManager *)self->_assertionManager takeAssertion:v16])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __158__HDCoreMotionWorkoutInterface_takeCMWorkoutAssertionForOwnerIdentifier_sessionUUID_workoutConfiguration_activityConfigurations_enableWorkoutChangeDetection___block_invoke;
    block[3] = &unk_278613920;
    block[4] = self;
    v24 = v16;
    v29 = v24;
    dispatch_sync(queue, block);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __158__HDCoreMotionWorkoutInterface_takeCMWorkoutAssertionForOwnerIdentifier_sessionUUID_workoutConfiguration_activityConfigurations_enableWorkoutChangeDetection___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 8));
    if (v2)
    {
      v3 = v2[12];
      v4 = v2[13];
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v61 = 0;
    v5 = v4;
    v6 = [(HDCoreMotionWorkoutInterface *)v1 _queue_cmWorkoutForConfiguration:v3 sessionUUID:v5 error:&v61];
    v7 = v61;
    if (v2)
    {
      objc_storeStrong(v2 + 14, v6);

      if (v2[14])
      {
        v8 = (v1 + 40);
        if (!*(v1 + 40))
        {
          v10 = [(HDCoreMotionWorkoutInterface *)v1 _queue_coreMotionWorkoutManager];
          if (v10)
          {
            v11 = v2[13];
            v60 = 0;
            v12 = v11;
            v13 = v2;
            v14 = v12;
            v15 = v13;
            v59 = v14;
            dispatch_assert_queue_V2(*(v1 + 8));
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (*(v13 + 88) == 1 && [v13[15] count])
            {
              v58 = v7;
              v57 = v10;
              _HKInitializeLogging();
              v17 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                v18 = v17;
                v19 = objc_opt_class();
                *buf = 138543362;
                v67 = v19;
                v20 = v19;
                _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding Multiple workouts to Workout Overview", buf, 0xCu);
              }

              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v21 = v13[15];
              v22 = [v21 countByEnumeratingWithState:&v62 objects:buf count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v63;
                while (2)
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v63 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v62 + 1) + 8 * i);
                    v27 = [MEMORY[0x277CCAD78] UUID];
                    v28 = [(HDCoreMotionWorkoutInterface *)v1 _queue_cmWorkoutForConfiguration:v26 sessionUUID:v27 error:&v60];

                    if (!v28)
                    {

                      v34 = 0;
                      v10 = v57;
                      v7 = v58;
                      v8 = (v1 + 40);
                      v15 = v13;
                      v33 = v59;
                      goto LABEL_27;
                    }

                    [v16 addObject:v28];
                  }

                  v23 = [v21 countByEnumeratingWithState:&v62 objects:buf count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }

              v29 = [v16 firstObject];
              v15 = v13;
              objc_storeStrong(v13 + 14, v29);
              v10 = v57;
              v7 = v58;
              v8 = (v1 + 40);
            }

            else
            {
              [v16 addObject:v13[14]];
              _HKInitializeLogging();
              v29 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = objc_opt_class();
                v31 = v13[14];
                *buf = 138543618;
                v67 = v30;
                v68 = 2114;
                v69 = v31;
                v32 = v30;
                _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Single workout added to Workout Overview: %{public}@", buf, 0x16u);

                v15 = v13;
              }
            }

            v33 = v59;
            v34 = [objc_alloc(MEMORY[0x277CC1DB0]) initWithOverviewId:v59 workouts:v16];
LABEL_27:

            v35 = v60;
            v36 = *(v1 + 48);
            *(v1 + 48) = v34;

            v37 = *(v1 + 48);
            _HKInitializeLogging();
            v38 = *MEMORY[0x277CCC330];
            if (v37)
            {
              v39 = v38;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = objc_opt_class();
                v41 = v15[14];
                *buf = 138543618;
                v67 = v40;
                v68 = 2114;
                v69 = v41;
                v42 = v15;
                v43 = v40;
                _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting CM workout: %{public}@", buf, 0x16u);

                v15 = v42;
              }

              [v10 beginWorkoutSession:*(v1 + 48) withWorkout:v15[14] enableWorkoutChangeDetection:*(v15 + 88)];
              objc_storeStrong(v8, v15[14]);
              v44 = [*(v1 + 48) overviewId];
              v45 = *(v1 + 56);
              *(v1 + 56) = v44;
            }

            else if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
            {
              v51 = v38;
              v52 = objc_opt_class();
              *buf = 138543618;
              v67 = v52;
              v68 = 2114;
              v69 = v35;
              v53 = v52;
              _os_log_error_impl(&dword_228986000, v51, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to create CMWorkoutOverview: %{public}@", buf, 0x16u);
            }
          }

          goto LABEL_39;
        }

        _HKInitializeLogging();
        v9 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          v47 = v2[14];
          v48 = v46;
          v49 = [v47 sessionId];
          v50 = [*(v1 + 40) sessionId];
          *buf = 138543874;
          v67 = v46;
          v68 = 2112;
          v69 = v49;
          v70 = 2112;
          v71 = v50;
          _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Not starting CM workout %@ because workout %@ is in progress", buf, 0x20u);
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v54 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    v9 = v54;
    v55 = objc_opt_class();
    *buf = 138543618;
    v67 = v55;
    v68 = 2114;
    v69 = v7;
    v56 = v55;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to create CMWorkout: %{public}@", buf, 0x16u);

LABEL_9:
LABEL_39:
  }
}

- (void)averageMETsForWorkoutSessionUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__204;
  v18 = __Block_byref_object_dispose__204;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HDCoreMotionWorkoutInterface_averageMETsForWorkoutSessionUUID_completion___block_invoke;
  block[3] = &unk_278613990;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(queue, block);
  v9 = v15[5];
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__HDCoreMotionWorkoutInterface_averageMETsForWorkoutSessionUUID_completion___block_invoke_2;
    v11[3] = &unk_27862F688;
    v12 = completionCopy;
    [v9 queryWorkoutMetsWithSessionId:dCopy handler:v11];
    v10 = v12;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Workout METs are not available for current device"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __76__HDCoreMotionWorkoutInterface_averageMETsForWorkoutSessionUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 8));
    if (!*(v2 + 24) && [MEMORY[0x277CC1DA8] isAvailable])
    {
      v3 = objc_alloc_init(MEMORY[0x277CC1DA8]);
      v4 = *(v2 + 24);
      *(v2 + 24) = v3;
    }

    v5 = *(v2 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8](v5, v7);
}

void __76__HDCoreMotionWorkoutInterface_averageMETsForWorkoutSessionUUID_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (!v9 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [MEMORY[0x277CCDAB0] unitFromString:@"kcal/(kg*hr)"];
    v6 = MEMORY[0x277CCD7E8];
    v7 = [v9 mets];
    [v7 doubleValue];
    v8 = [v6 quantityWithUnit:v5 doubleValue:?];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)setCurrentActivity:(id)activity isManualTransition:(BOOL)transition
{
  activityCopy = activity;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HDCoreMotionWorkoutInterface_setCurrentActivity_isManualTransition___block_invoke;
  block[3] = &unk_27861F830;
  block[4] = self;
  v10 = activityCopy;
  transitionCopy = transition;
  v8 = activityCopy;
  dispatch_sync(queue, block);
}

void __70__HDCoreMotionWorkoutInterface_setCurrentActivity_isManualTransition___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 40))
  {
    v2 = [*(a1 + 40) workoutConfiguration];
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUID];
    v39 = 0;
    v5 = [(HDCoreMotionWorkoutInterface *)v3 _queue_cmWorkoutForConfiguration:v2 sessionUUID:v4 error:&v39];
    v6 = v39;

    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = [v2 suggestedActivityUUID];
      v9 = v5;
      v10 = v8;
      if (v7 && (v11 = *(v7 + 40)) != 0 && (v12 = [v11 type], v12 == objc_msgSend(v9, "type")) && (v13 = objc_msgSend(*(v7 + 40), "locationType"), v13 == objc_msgSend(v9, "locationType")) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v14 = *(v7 + 40), v15 = v9, v16 = objc_msgSend(v14, "location"), v17 = objc_msgSend(v15, "location"), v15, v16 == v17)) && (!v10 || (objc_msgSend(*(v7 + 40), "sessionId"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18 == v10)))
      {

        _HKInitializeLogging();
        v29 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          v31 = objc_opt_class();
          v32 = v31;
          [v2 activityType];
          v33 = _HKWorkoutActivityNameForActivityType();
          [v2 locationType];
          v34 = _HKWorkoutSessionLocationTypeName();
          *buf = 138543874;
          v41 = v31;
          v42 = 2112;
          v43 = v33;
          v44 = 2112;
          v45 = v34;
          _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping current activity %@ (%@) since it matches previous", buf, 0x20u);
        }
      }

      else
      {

        v19 = [(HDCoreMotionWorkoutInterface *)*(a1 + 32) _queue_coreMotionWorkoutManager];
        if (v19)
        {
          _HKInitializeLogging();
          v20 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
            v22 = objc_opt_class();
            *buf = 138543618;
            v41 = v22;
            v42 = 2114;
            v43 = v9;
            v23 = v22;
            _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting current workout type to: %{public}@", buf, 0x16u);
          }

          [v19 setCurrentWorkoutType:v9 isManualTransition:*(a1 + 48)];
          objc_storeStrong((*(a1 + 32) + 40), v5);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v35 = v28;
        v36 = objc_opt_class();
        v37 = *(a1 + 40);
        *buf = 138543874;
        v41 = v36;
        v42 = 2112;
        v43 = v37;
        v44 = 2114;
        v45 = v6;
        v38 = v36;
        _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to start %@ because we could not create a CMWorkout: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v2 = v24;
    v25 = objc_opt_class();
    v26 = *(a1 + 40);
    *buf = 138543618;
    v41 = v25;
    v42 = 2112;
    v43 = v26;
    v27 = v25;
    _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "[%{public}@] Not begining CM workout activity %@ because workout session did not start", buf, 0x16u);
  }
}

- (id)_queue_cmWorkoutForConfiguration:(void *)configuration sessionUUID:(uint64_t)d error:
{
  v7 = a2;
  configurationCopy = configuration;
  if (self)
  {
    predictionSessionUUID = [v7 predictionSessionUUID];
    v10 = predictionSessionUUID;
    if (predictionSessionUUID)
    {
      v11 = predictionSessionUUID;
    }

    else
    {
      suggestedActivityUUID = [v7 suggestedActivityUUID];
      v13 = suggestedActivityUUID;
      if (suggestedActivityUUID)
      {
        v14 = suggestedActivityUUID;
      }

      else
      {
        v14 = configurationCopy;
      }

      v11 = v14;
    }

    locationType = [v7 locationType];
    activityType = [v7 activityType];
    shouldDisambiguateLocation = [v7 shouldDisambiguateLocation];
    if (*MEMORY[0x277CCE1E0] == activityType)
    {
      activityType = 0;
    }

    else
    {
      switch(activityType)
      {
        case 1uLL:
          activityType = 42;
          break;
        case 3uLL:
          activityType = 41;
          break;
        case 4uLL:
          activityType = 52;
          break;
        case 5uLL:
          activityType = 60;
          break;
        case 6uLL:
          activityType = 50;
          break;
        case 8uLL:
          activityType = 64;
          break;
        case 0xAuLL:
          activityType = 61;
          break;
        case 0xDuLL:
          v40 = 4;
          if (locationType == 2)
          {
            v40 = 5;
          }

          v41 = shouldDisambiguateLocation == 0;
          v42 = 3;
          goto LABEL_90;
        case 0x10uLL:
          activityType = 9;
          break;
        case 0x14uLL:
          activityType = 28;
          break;
        case 0x15uLL:
          activityType = 27;
          break;
        case 0x17uLL:
          activityType = 57;
          break;
        case 0x18uLL:
          break;
        case 0x19uLL:
          v36 = locationType == 2;
          v37 = 48;
          goto LABEL_50;
        case 0x1BuLL:
          activityType = 45;
          break;
        case 0x1FuLL:
          activityType = 38;
          break;
        case 0x22uLL:
          activityType = 53;
          break;
        case 0x23uLL:
          if (locationType == 2)
          {
            activityType = 12;
          }

          else
          {
            activityType = 35;
          }

          break;
        case 0x24uLL:
          activityType = 44;
          break;
        case 0x25uLL:
          v40 = 17;
          if (locationType == 2)
          {
            v40 = 18;
          }

          v41 = shouldDisambiguateLocation == 0;
          v42 = 2;
LABEL_90:
          if (v41)
          {
            activityType = v40;
          }

          else
          {
            activityType = v42;
          }

          break;
        case 0x27uLL:
          v38 = locationType == 2;
          v39 = 46;
          goto LABEL_100;
        case 0x29uLL:
          v38 = locationType == 2;
          v39 = 39;
LABEL_100:
          if (v38)
          {
            activityType = v39 + 1;
          }

          else
          {
            activityType = v39;
          }

          break;
        case 0x2AuLL:
          activityType = 59;
          break;
        case 0x2BuLL:
          activityType = 56;
          break;
        case 0x2CuLL:
          activityType = 11;
          break;
        case 0x2EuLL:
          activityType = 19;
          break;
        case 0x2FuLL:
          activityType = 62;
          break;
        case 0x30uLL:
          activityType = 51;
          break;
        case 0x31uLL:
          activityType = 58;
          break;
        case 0x33uLL:
          activityType = 55;
          break;
        case 0x34uLL:
          v43 = 15;
          if (locationType == 2)
          {
            v43 = 16;
          }

          if (shouldDisambiguateLocation)
          {
            activityType = 1;
          }

          else
          {
            activityType = v43;
          }

          break;
        case 0x39uLL:
          activityType = 6;
          break;
        case 0x3BuLL:
          activityType = 30;
          break;
        case 0x3CuLL:
          activityType = 36;
          break;
        case 0x3DuLL:
          activityType = 23;
          break;
        case 0x3FuLL:
          activityType = 22;
          break;
        case 0x40uLL:
          activityType = 63;
          break;
        case 0x41uLL:
          activityType = 34;
          break;
        case 0x42uLL:
          activityType = 32;
          break;
        case 0x43uLL:
          activityType = 37;
          break;
        case 0x46uLL:
          activityType = 20;
          break;
        case 0x47uLL:
          activityType = 21;
          break;
        case 0x48uLL:
          activityType = 31;
          break;
        case 0x4AuLL:
          v36 = locationType == 2;
          v37 = 66;
LABEL_50:
          if (v36)
          {
            activityType = v37;
          }

          else
          {
            activityType = v37 + 1;
          }

          break;
        case 0x4BuLL:
          activityType = 43;
          break;
        case 0x4DuLL:
          activityType = 7;
          break;
        case 0x4FuLL:
          activityType = 54;
          break;
        case 0x50uLL:
          activityType = 29;
          break;
        case 0x53uLL:
          activityType = 33;
          break;
        default:
          activityType = 14;
          break;
      }
    }

    shouldDisambiguateLocation2 = [v7 shouldDisambiguateLocation];
    v19 = 1;
    if (locationType != 2)
    {
      v19 = 2;
    }

    if (shouldDisambiguateLocation2)
    {
      v20 = 3;
    }

    else
    {
      v20 = v19;
    }

    v21 = 0;
    if ([v7 shouldUseExtendedMode])
    {
      objc_opt_self();
      if (activityType <= 0x18 && ((1 << activityType) & 0x1028006) != 0)
      {
        v21 = 1;
      }
    }

    fitnessPlusCatalogWorkoutId = [v7 fitnessPlusCatalogWorkoutId];

    if (fitnessPlusCatalogWorkoutId)
    {
      v23 = objc_alloc(MEMORY[0x277CC1C90]);
      fitnessPlusCatalogWorkoutId2 = [v7 fitnessPlusCatalogWorkoutId];
      fitnessPlusMediaType = [v7 fitnessPlusMediaType];
      if ((fitnessPlusMediaType - 1) >= 3)
      {
        v26 = 0;
      }

      else
      {
        v26 = fitnessPlusMediaType;
      }

      v27 = [v23 initWithSessionId:v11 type:activityType catalogWorkoutId:fitnessPlusCatalogWorkoutId2 mediaType:v26 locationType:v20 error:d];
    }

    else if ([v7 activityType] == 46)
    {
      v28 = ([v7 swimmingLocationType] & 0xFFFFFFFFFFFFFFFDLL) == 0;
      lapLength = [v7 lapLength];
      if (lapLength)
      {
        meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
        [lapLength doubleValueForUnit:meterUnit];
        v32 = v31;
      }

      else
      {
        v32 = 0.0;
      }

      v27 = [objc_alloc(MEMORY[0x277CC1D68]) initWithSessionId:v11 location:v28 poolLength:v32];
    }

    else
    {
      if (activityType == 14)
      {
        v33 = [objc_alloc(MEMORY[0x277CC1CA0]) initWithSessionId:v11 workoutLabel:{objc_msgSend(v7, "activityType")}];
      }

      else
      {
        fitnessMachineSessionUUID = [v7 fitnessMachineSessionUUID];

        if (fitnessMachineSessionUUID)
        {
          v33 = [objc_alloc(MEMORY[0x277CC1C88]) initWithSessionId:v11 workoutType:activityType manufacturerName:@"GymKit" model:@"Fitness Machine"];
        }

        else
        {
          v33 = [objc_alloc(MEMORY[0x277CC1D90]) initWithSessionId:v11 type:activityType locationType:v20 mode:v21];
        }
      }

      v27 = v33;
    }

    [v27 setAppId:*(self + 64)];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)resumeWorkoutForWorkoutSessionUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HDCoreMotionWorkoutInterface_resumeWorkoutForWorkoutSessionUUID___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

void __67__HDCoreMotionWorkoutInterface_resumeWorkoutForWorkoutSessionUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 56) isEqual:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    if (*(v2 + 40))
    {
      v3 = [(HDCoreMotionWorkoutInterface *)v2 _queue_coreMotionWorkoutManager];
      if (v3)
      {
        _HKInitializeLogging();
        v4 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v5 = v4;
          v6 = objc_opt_class();
          v7 = *(*(a1 + 32) + 40);
          *v15 = 138543618;
          *&v15[4] = v6;
          *&v15[12] = 2114;
          *&v15[14] = v7;
          v8 = v6;
          _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resuming CM workout: %{public}@", v15, 0x16u);
        }

        [v3 resumeWorkout:*(*(a1 + 32) + 40), *v15, *&v15[8]];
      }

      goto LABEL_7;
    }
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v3 = v9;
    v10 = objc_opt_class();
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 40);
    v13 = v10;
    v14 = [v12 sessionId];
    *v15 = 138543874;
    *&v15[4] = v10;
    *&v15[12] = 2112;
    *&v15[14] = v11;
    *&v15[22] = 2112;
    v16 = v14;
    _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] Not resuming CM workout %@ because workout %@ is in progress", v15, 0x20u);

LABEL_7:
  }
}

- (void)pauseWorkoutForWorkoutSessionUUID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HDCoreMotionWorkoutInterface_pauseWorkoutForWorkoutSessionUUID___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

void __66__HDCoreMotionWorkoutInterface_pauseWorkoutForWorkoutSessionUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 56) isEqual:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    if (*(v2 + 40))
    {
      v3 = [(HDCoreMotionWorkoutInterface *)v2 _queue_coreMotionWorkoutManager];
      if (v3)
      {
        _HKInitializeLogging();
        v4 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v5 = v4;
          v6 = objc_opt_class();
          v7 = *(*(a1 + 32) + 40);
          *v15 = 138543618;
          *&v15[4] = v6;
          *&v15[12] = 2114;
          *&v15[14] = v7;
          v8 = v6;
          _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Pausing CM workout: %{public}@", v15, 0x16u);
        }

        [v3 pauseWorkout:*(*(a1 + 32) + 40), *v15, *&v15[8]];
      }

      goto LABEL_7;
    }
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v3 = v9;
    v10 = objc_opt_class();
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 40);
    v13 = v10;
    v14 = [v12 sessionId];
    *v15 = 138543874;
    *&v15[4] = v10;
    *&v15[12] = 2112;
    *&v15[14] = v11;
    *&v15[22] = 2112;
    v16 = v14;
    _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] Not pausing CM workout %@ because workout %@ is in progress", v15, 0x20u);

LABEL_7:
  }
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  v55 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_queue);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCoreMotionWorkoutInterface.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"[assertion isKindOfClass:[_HDCoreMotionAssertion class]]"}];
  }

  v7 = invalidatedCopy;
  v40 = v7;
  if (v7)
  {
    v8 = *(v7 + 13);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierCoreMotion"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:buf count:16];
  if (!v11)
  {

LABEL_19:
    v17 = v40;
    dispatch_assert_queue_V2(self->_queue);
    if (v40 && (v18 = *(v17 + 14)) != 0 && (v19 = v18, v20 = [(NSUUID *)self->_currentSessionUUID isEqual:*(v17 + 13)], v19, v20))
    {
      _queue_coreMotionWorkoutManager = [(HDCoreMotionWorkoutInterface *)self _queue_coreMotionWorkoutManager];
      if (_queue_coreMotionWorkoutManager)
      {
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = objc_opt_class();
          v25 = *(v17 + 14);
          *buf = 138543618;
          v46 = v24;
          v47 = 2114;
          v48 = v25;
          v26 = v24;
          _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping CM workout: %{public}@", buf, 0x16u);
        }

        [_queue_coreMotionWorkoutManager endWorkoutSession:*(v17 + 14)];
      }

      currentCMWorkout = self->_currentCMWorkout;
      self->_currentCMWorkout = 0;

      currentSessionUUID = self->_currentSessionUUID;
      self->_currentSessionUUID = 0;
    }

    else
    {
      _HKInitializeLogging();
      _queue_coreMotionWorkoutManager = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(_queue_coreMotionWorkoutManager, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        if (v40)
        {
          v30 = *(v17 + 14);
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        v32 = v29;
        sessionId = [v31 sessionId];
        if (v40)
        {
          v34 = *(v17 + 13);
        }

        else
        {
          v34 = 0;
        }

        v35 = self->_currentCMWorkout;
        v36 = v34;
        sessionId2 = [(CMWorkout *)v35 sessionId];
        v38 = self->_currentSessionUUID;
        *buf = 138544386;
        v46 = v29;
        v47 = 2114;
        v48 = sessionId;
        v49 = 2114;
        v50 = v34;
        v51 = 2114;
        v52 = sessionId2;
        v53 = 2114;
        v54 = v38;
        _os_log_error_impl(&dword_228986000, _queue_coreMotionWorkoutManager, OS_LOG_TYPE_ERROR, "[%{public}@] Not stopping CM workout %{public}@ (overview %{public}@) because workout %{public}@ (overview %{public}@) is in progress", buf, 0x34u);
      }
    }

    goto LABEL_29;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v42;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v42 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v41 + 1) + 8 * i);
      if (v16)
      {
        v16 = v16[13];
      }

      if (v16 == v9)
      {
        ++v13;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v41 objects:buf count:16];
  }

  while (v12);

  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_29:
}

@end