@interface HDBiomeInterface
- (BOOL)sleepFocusOn;
- (id)_createBiomeEventWithType:(void *)type sessionConfiguration:(uint64_t)configuration isUpdate:;
- (void)_sendBiomeEvent:(id)event toSource:(id)source;
- (void)stopSessionWithIdentifier:(id)identifier recoveredWorkoutConfiguration:(id)configuration;
- (void)workoutConfigurationUpdated:(id)updated;
- (void)workoutSessionWithConfiguration:(id)configuration transitionedToState:(int64_t)state fromState:(int64_t)fromState;
@end

@implementation HDBiomeInterface

- (void)workoutSessionWithConfiguration:(id)configuration transitionedToState:(int64_t)state fromState:(int64_t)fromState
{
  configurationCopy = configuration;
  if (!self)
  {
    goto LABEL_17;
  }

  if (state > 7)
  {
    if ((state - 16) >= 2)
    {
      v9 = 4;
      if (state != 8 && state != 10)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (fromState != 16)
    {
      v9 = 2;
      goto LABEL_15;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_19;
  }

  if ((state - 4) >= 2)
  {
    if (state != 7)
    {
LABEL_18:
      v14 = 0;
      goto LABEL_19;
    }

    if ((fromState & 0xFFFFFFFFFFFFFFFDLL) == 8)
    {
      v9 = 3;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (fromState == 4)
  {
    goto LABEL_17;
  }

  v9 = 1;
LABEL_15:
  v14 = [(HDBiomeInterface *)self _createBiomeEventWithType:v9 sessionConfiguration:configurationCopy isUpdate:0];

  v10 = v14;
  if (!v14)
  {
    goto LABEL_20;
  }

  v11 = BiomeLibrary();
  health = [v11 Health];
  configurationCopy = [health Workout];

  source = [configurationCopy source];
  [(HDBiomeInterface *)self _sendBiomeEvent:v14 toSource:source];

LABEL_19:
  v10 = v14;
LABEL_20:
}

- (void)workoutConfigurationUpdated:(id)updated
{
  v4 = [(HDBiomeInterface *)self _createBiomeEventWithType:updated sessionConfiguration:1 isUpdate:?];
  if (v4)
  {
    v9 = v4;
    v5 = BiomeLibrary();
    health = [v5 Health];
    workout = [health Workout];

    source = [workout source];
    [(HDBiomeInterface *)self _sendBiomeEvent:v9 toSource:source];

    v4 = v9;
  }
}

- (id)_createBiomeEventWithType:(void *)type sessionConfiguration:(uint64_t)configuration isUpdate:
{
  if (self)
  {
    typeCopy = type;
    workoutConfiguration = [typeCopy workoutConfiguration];
    v8 = [workoutConfiguration locationType] == 2;

    v9 = MEMORY[0x277CCDCD8];
    clientApplicationIdentifier = [typeCopy clientApplicationIdentifier];
    v11 = [v9 isFirstPartyForIdentifier:clientApplicationIdentifier];

    workoutConfiguration2 = [typeCopy workoutConfiguration];
    [workoutConfiguration2 activityType];

    sessionIdentifier = [typeCopy sessionIdentifier];

    uUIDString = [sessionIdentifier UUIDString];

    v15 = objc_alloc(MEMORY[0x277CF11A8]);
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v18 = _HKWorkoutActivityNameForActivityType();
    v19 = [MEMORY[0x277CCABB0] numberWithBool:configuration];
    v20 = [v15 initWithIsFirstPartyDonation:v16 isIndoor:v17 activityType:v18 eventType:a2 activityUUID:uUIDString isUpdate:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)stopSessionWithIdentifier:(id)identifier recoveredWorkoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v8 = [configurationCopy locationType] == 2;
  [configurationCopy activityType];

  v18 = _HKWorkoutActivityNameForActivityType();
  v9 = objc_alloc(MEMORY[0x277CF11A8]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  if (v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = @"N/A";
  }

  uUIDString = [identifierCopy UUIDString];

  v13 = [v9 initWithIsFirstPartyDonation:MEMORY[0x277CBEC28] isIndoor:v10 activityType:v11 eventType:2 activityUUID:uUIDString isUpdate:MEMORY[0x277CBEC28]];
  v14 = BiomeLibrary();
  health = [v14 Health];
  workout = [health Workout];

  source = [workout source];
  [(HDBiomeInterface *)self _sendBiomeEvent:v13 toSource:source];
}

- (void)_sendBiomeEvent:(id)event toSource:(id)source
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  sourceCopy = source;
  self->_mostRecentBiomeEventType = [eventCopy eventType];
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *v11 = 138543874;
    *&v11[4] = objc_opt_class();
    *&v11[12] = 2048;
    *&v11[14] = self;
    *&v11[22] = 2114;
    v12 = eventCopy;
    v10 = *&v11[4];
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] sending workout event %{public}@ to biome", v11, 0x20u);
  }

  [sourceCopy sendEvent:{eventCopy, *v11, *&v11[8], v12}];
}

- (BOOL)sleepFocusOn
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  computedMode = [userFocus ComputedMode];
  publisher = [computedMode publisher];
  last = [publisher last];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32__HDBiomeInterface_sleepFocusOn__block_invoke;
  v11[3] = &unk_278629420;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__HDBiomeInterface_sleepFocusOn__block_invoke_298;
  v10[3] = &unk_278629448;
  v10[4] = self;
  v10[5] = &v12;
  v8 = [last sinkWithCompletion:v11 receiveInput:v10];

  LOBYTE(v3) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v3;
}

void __32__HDBiomeInterface_sleepFocusOn__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [v2 error];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] User focus computed mode publisher finished with error: %{public}@", &v8, 0x16u);
  }
}

void __32__HDBiomeInterface_sleepFocusOn__block_invoke_298(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];

  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2B0];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = v5;
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v3 eventBody];
      v18 = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received event: %{public}@", &v18, 0x16u);
    }

    v11 = [v3 eventBody];
    if ([v11 semanticType] == 3)
    {
      v12 = [v3 eventBody];
      *(*(*(a1 + 40) + 8) + 24) = [v12 starting];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else if (v6)
  {
    v13 = v5;
    v14 = objc_opt_class();
    v15 = MEMORY[0x277CCABB0];
    v16 = v14;
    v17 = [v15 numberWithUnsignedChar:{objc_msgSend(v3, "error")}];
    v18 = 138543618;
    v19 = v14;
    v20 = 2114;
    v21 = v17;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received nil user focus computed mode with reason: %{public}@", &v18, 0x16u);
  }
}

@end