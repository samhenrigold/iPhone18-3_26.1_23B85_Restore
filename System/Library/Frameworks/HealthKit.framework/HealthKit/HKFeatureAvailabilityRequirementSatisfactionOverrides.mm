@interface HKFeatureAvailabilityRequirementSatisfactionOverrides
- (HKFeatureAvailabilityRequirementSatisfactionOverrides)initWithFeatureIdentifier:(id)identifier;
- (HKFeatureAvailabilityRequirementSatisfactionOverrides)initWithUserDefaults:(id)defaults featureIdentifier:(id)identifier requirementOverridableEvaluator:(id)evaluator;
- (id)overriddenRequirementIdentifiers;
- (id)overriddenSatisfactionOfRequirementWithIdentifier:(id)identifier;
- (void)overrideSatisfactionOfRequirementWithIdentifier:(id)identifier isSatisfied:(id)satisfied;
- (void)resetAllRequirementSatisfactionOverrides;
@end

@implementation HKFeatureAvailabilityRequirementSatisfactionOverrides

- (HKFeatureAvailabilityRequirementSatisfactionOverrides)initWithFeatureIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695E000];
  identifierCopy = identifier;
  hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults = [v4 hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults];
  v7 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)self initWithUserDefaults:hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults featureIdentifier:identifierCopy];

  return v7;
}

uint64_t __96__HKFeatureAvailabilityRequirementSatisfactionOverrides_initWithUserDefaults_featureIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_alloc_init(HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility);
  v7 = objc_alloc_init(HKImportExclusionDeviceDataSource);
  v8 = +[_HKBehavior sharedBehavior];
  v9 = [(HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility *)v6 isRequirementOverridable:v4 featureIdentifier:v5 importExclusionDeviceDataSource:v7 behavior:v8];

  return v9;
}

- (HKFeatureAvailabilityRequirementSatisfactionOverrides)initWithUserDefaults:(id)defaults featureIdentifier:(id)identifier requirementOverridableEvaluator:(id)evaluator
{
  defaultsCopy = defaults;
  identifierCopy = identifier;
  evaluatorCopy = evaluator;
  v19.receiver = self;
  v19.super_class = HKFeatureAvailabilityRequirementSatisfactionOverrides;
  v12 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, defaults);
    v14 = [identifierCopy copy];
    featureIdentifier = v13->_featureIdentifier;
    v13->_featureIdentifier = v14;

    v16 = _Block_copy(evaluatorCopy);
    requirementOverridableEvaluator = v13->_requirementOverridableEvaluator;
    v13->_requirementOverridableEvaluator = v16;
  }

  return v13;
}

- (id)overriddenSatisfactionOfRequirementWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[_HKBehavior sharedBehavior];
  featureRequirementOverrides = [v5 featureRequirementOverrides];

  v7 = +[_HKBehavior sharedBehavior];
  isAppleInternalInstall = [v7 isAppleInternalInstall];

  if ((isAppleInternalInstall & 1) == 0)
  {
    if (!featureRequirementOverrides)
    {
      goto LABEL_17;
    }

    _HKInitializeLogging(v9, v10);
    v28 = HKLogInfrastructure(v26, v27);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);

    if (!v29)
    {
      goto LABEL_17;
    }

    v32 = HKLogInfrastructure(v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [HKFeatureAvailabilityRequirementSatisfactionOverrides overriddenSatisfactionOfRequirementWithIdentifier:v32];
    }

    goto LABEL_16;
  }

  if (self)
  {
    requirementOverridableEvaluator = self->_requirementOverridableEvaluator;
  }

  else
  {
    requirementOverridableEvaluator = 0;
  }

  v12 = requirementOverridableEvaluator[2](requirementOverridableEvaluator, self->_featureIdentifier, identifierCopy);
  if ((v12 & 1) == 0)
  {
    _HKInitializeLogging(v12, v13);
    v35 = HKLogInfrastructure(v33, v34);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);

    if (!v36)
    {
LABEL_17:
      v25 = 0;
      goto LABEL_24;
    }

    v32 = HKLogInfrastructure(v37, v38);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [HKFeatureAvailabilityRequirementSatisfactionOverrides overriddenSatisfactionOfRequirementWithIdentifier:v32];
    }

LABEL_16:

    goto LABEL_17;
  }

  if (!featureRequirementOverrides)
  {
    goto LABEL_19;
  }

  v14 = +[_HKBehavior sharedBehavior];
  featureRequirementOverrides2 = [v14 featureRequirementOverrides];
  v16 = [featureRequirementOverrides2 objectForKeyedSubscript:self->_featureIdentifier];
  if (!v16)
  {

    goto LABEL_19;
  }

  v17 = v16;
  v18 = +[_HKBehavior sharedBehavior];
  featureRequirementOverrides3 = [v18 featureRequirementOverrides];
  v20 = [featureRequirementOverrides3 objectForKeyedSubscript:self->_featureIdentifier];
  v21 = [v20 objectForKeyedSubscript:identifierCopy];

  if (!v21)
  {
LABEL_19:
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", self->_featureIdentifier, identifierCopy];
    featureRequirementOverrides4 = [(NSUserDefaults *)self->_userDefaults objectForKey:identifierCopy];
    if (featureRequirementOverrides4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v25 = featureRequirementOverrides4;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_23;
  }

  identifierCopy = +[_HKBehavior sharedBehavior];
  featureRequirementOverrides4 = [identifierCopy featureRequirementOverrides];
  v24 = [featureRequirementOverrides4 objectForKeyedSubscript:self->_featureIdentifier];
  v25 = [v24 objectForKeyedSubscript:identifierCopy];

LABEL_23:
LABEL_24:

  return v25;
}

- (id)overriddenRequirementIdentifiers
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  dictionaryRepresentation = [(NSUserDefaults *)self->_userDefaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(dictionaryRepresentation);
        }

        featureIdentifier = self->_featureIdentifier;
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(*(&v17 + 1) + 8 * i);
        featureIdentifier = [v9 stringWithFormat:@"%@_", featureIdentifier];
        LODWORD(featureIdentifier) = [v10 hasPrefix:featureIdentifier];

        if (featureIdentifier)
        {
          v12 = [v10 componentsSeparatedByString:@"_"];
          if ([v12 count] == 2)
          {
            v13 = [v12 objectAtIndexedSubscript:1];

            if (v13 && (*(self->_requirementOverridableEvaluator + 2))())
            {
              [v16 addObject:v13];
            }
          }

          else
          {

            v13 = 0;
          }
        }
      }

      v5 = [dictionaryRepresentation countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = [MEMORY[0x1E695DFD8] setWithSet:v16];

  return v14;
}

- (void)overrideSatisfactionOfRequirementWithIdentifier:(id)identifier isSatisfied:(id)satisfied
{
  identifierCopy = identifier;
  satisfiedCopy = satisfied;
  v8 = +[_HKBehavior sharedBehavior];
  isAppleInternalInstall = [v8 isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)self overrideSatisfactionOfRequirementWithIdentifier:identifierCopy isSatisfied:satisfiedCopy];
  }
}

- (void)resetAllRequirementSatisfactionOverrides
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dictionaryRepresentation = [(NSUserDefaults *)self->_userDefaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(dictionaryRepresentation);
        }

        featureIdentifier = self->_featureIdentifier;
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(*(&v12 + 1) + 8 * v7);
        featureIdentifier = [v9 stringWithFormat:@"%@_", featureIdentifier];
        LODWORD(featureIdentifier) = [v10 hasPrefix:featureIdentifier];

        if (featureIdentifier)
        {
          [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [dictionaryRepresentation countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)overrideSatisfactionOfRequirementWithIdentifier:(uint64_t)a3 isSatisfied:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1 = *(a1 + 24);
  }

  v6 = (*(a1 + 16))(a1, *(v5 + 16), a2);
  if (v6)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", *(v5 + 16), a2];
    [*(v5 + 8) setObject:a3 forKey:?];
  }

  else
  {
    _HKInitializeLogging(v6, v7);
    v10 = HKLogInfrastructure(v8, v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v14 = HKLogInfrastructure(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = a2;
        _os_log_debug_impl(&dword_19197B000, v14, OS_LOG_TYPE_DEBUG, "Override for %@ is ignored since it is not an overridable requirement.", buf, 0xCu);
      }
    }
  }
}

@end