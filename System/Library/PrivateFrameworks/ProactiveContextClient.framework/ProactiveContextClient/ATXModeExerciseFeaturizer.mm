@interface ATXModeExerciseFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (id)_createWorkoutPredicate;
- (id)provideFeatures;
- (void)_createWorkoutPredicate;
- (void)_setUpContextIfNecessary;
- (void)beginListening;
- (void)stopListening;
@end

@implementation ATXModeExerciseFeaturizer

- (id)provideFeatures
{
  v3 = objc_alloc_init(ATXModeFeatureSet);
  [(ATXModeFeatureSet *)v3 setValue:[(ATXModeExerciseFeaturizer *)self isInWorkout] forBinaryFeatureOfType:3];

  return v3;
}

- (void)beginListening
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__ATXModeExerciseFeaturizer_beginListening__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFE3C0]];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v10 = v8;
        v11 = [MEMORY[0x277CFE338] sessionState];
        v12 = [v10 objectForKeyedSubscript:v11];

        v14 = __atxlog_handle_modes(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v12;
          _os_log_impl(&dword_260C9F000, v14, OS_LOG_TYPE_DEFAULT, "Workout state string: %@", &v19, 0xCu);
        }

        v15 = __HKWorkoutSessionStateName(2);
        v16 = [v12 isEqualToString:v15];

        [WeakRetained setIsInWorkout:v16];
        v17 = objc_alloc_init(ATXModeFeatureSet);
        [(ATXModeFeatureSet *)v17 setValue:v16 forBinaryFeatureOfType:3];
        v18 = [WeakRetained delegate];
        [v18 featurizer:WeakRetained didUpdateFeatures:v17];
      }

      else
      {
        v10 = __atxlog_handle_modes(isKindOfClass);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __43__ATXModeExerciseFeaturizer_beginListening__block_invoke_cold_1();
        }
      }
    }

    else
    {
      v8 = __atxlog_handle_modes(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __43__ATXModeExerciseFeaturizer_beginListening__block_invoke_cold_2();
      }
    }
  }

  else
  {
    v7 = __atxlog_handle_modes(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__ATXModeExerciseFeaturizer_beginListening__block_invoke_cold_3();
    }
  }
}

- (void)stopListening
{
  if (self->_registration)
  {
    [(_CDClientContext *)self->_userContext deregisterCallback:?];
    registration = self->_registration;
    self->_registration = 0;
  }
}

- (id)_createWorkoutPredicate
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v2 = getHKWorkoutClass_softClass;
  v16 = getHKWorkoutClass_softClass;
  if (!getHKWorkoutClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getHKWorkoutClass_block_invoke;
    v12[3] = &unk_279AB7FA8;
    v12[4] = &v13;
    __getHKWorkoutClass_block_invoke(v12);
    v2 = v14[3];
  }

  v3 = v2;
  _Block_object_dispose(&v13, 8);
  _allWorkoutActivityTypes = [v2 _allWorkoutActivityTypes];
  if (_allWorkoutActivityTypes)
  {
    v5 = objc_opt_new();
    v6 = __HKWorkoutSessionStateName(2);
    [v5 addObject:v6];

    v7 = __HKWorkoutSessionStateName(3);
    [v5 addObject:v7];

    v8 = MEMORY[0x277CFE380];
    v9 = [MEMORY[0x277CBEB98] setWithArray:_allWorkoutActivityTypes];
    v10 = [v8 predicateForFirstPartyWorkoutMatchingTypes:v9 states:v5];
  }

  else
  {
    v5 = __atxlog_handle_modes(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXModeExerciseFeaturizer _createWorkoutPredicate];
    }

    v10 = 0;
  }

  return v10;
}

- (void)_setUpContextIfNecessary
{
  if (!self->_userContext)
  {
    self->_userContext = [MEMORY[0x277CFE318] userContext];

    MEMORY[0x2821F96F8]();
  }
}

- (ATXModeFeaturizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__ATXModeExerciseFeaturizer_beginListening__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createWorkoutPredicate
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end