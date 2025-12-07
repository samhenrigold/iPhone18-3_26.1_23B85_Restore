@interface HKFeatureStatusManager
+ (id)childFeatureStatusManagerWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source contextConstraint:(id)constraint;
- (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSource;
- (HKFeatureAvailabilityRequirementEvaluationDataSource)weakDataSource;
- (HKFeatureStatus)_queue_featureStatusWithEvaluationContext:(void *)context requirements:(void *)requirements overrides:(void *)overrides error:;
- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source;
- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source contextConstraint:(id)constraint;
- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing healthDataSource:(id)source countryCodeSource:(int64_t)codeSource;
- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing healthDataSource:(id)source currentCountryCode:(id)code;
- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store cachingDefaults:(id)defaults;
- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store contextConstraint:(id)constraint;
- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store countryCodeSource:(int64_t)source;
- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store currentCountryCode:(id)code;
- (NSString)description;
- (id)_queue_updateFeatureStatusWithRequestDrivenByObservation:(void *)observation error:;
- (id)_requirementSatisfactionOverrides;
- (id)featureStatusWithError:(id *)error;
- (void)__unregisterForFeatureStatusChanges;
- (void)_notifyObserversWithFeatureStatus:(uint64_t)status;
- (void)_queue_attemptFeatureStatusUpdateDrivenByObservation;
- (void)_queue_registerForFeatureStatusChanges;
- (void)_queue_unregisterForFeatureStatusChanges;
- (void)_registerForRequirementSatisfactionOverrideChangesForRequirements:(id *)requirements;
- (void)_updateOverriddenSatisfactionOfRequirement:(void *)requirement overriddenSatisfaction:;
- (void)_updateSatisfactionOfRequirement:(char)requirement isSatisfied:;
- (void)dataSource;
- (void)dealloc;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings;
- (void)featureAvailabilityRequirement:(id)requirement didUpdateSatisfaction:(BOOL)satisfaction;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKFeatureStatusManager

- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store currentCountryCode:(id)code
{
  codeCopy = code;
  storeCopy = store;
  v10 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:identifier];
  v11 = [[HKFixedCurrentCountryCodeProvider alloc] initWithCountryCode:codeCopy];

  v12 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:storeCopy currentCountryCodeProvider:v11];

  v13 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:v10 featureAvailabilityDataSource:v12];
  return v13;
}

- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store countryCodeSource:(int64_t)source
{
  storeCopy = store;
  v9 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:identifier];
  v10 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:v9 healthDataSource:storeCopy countryCodeSource:source];

  return v10;
}

- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store cachingDefaults:(id)defaults
{
  defaultsCopy = defaults;
  storeCopy = store;
  v10 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:identifier];
  v11 = [[HKFixedCurrentCountryCodeProvider alloc] initWithCountryCode:0];
  v12 = [[HKFeatureOnboardingRecordInaccessibilityCache alloc] initWithCachingDefaults:defaultsCopy];

  v13 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:storeCopy currentCountryCodeProvider:v11 onboardingRecordFallbackProvider:v12];

  v14 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:v10 featureAvailabilityDataSource:v13];
  return v14;
}

- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing healthDataSource:(id)source currentCountryCode:(id)code
{
  codeCopy = code;
  sourceCopy = source;
  providingCopy = providing;
  v11 = [[HKFixedCurrentCountryCodeProvider alloc] initWithCountryCode:codeCopy];

  v12 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:sourceCopy currentCountryCodeProvider:v11];

  v13 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:providingCopy featureAvailabilityDataSource:v12];
  return v13;
}

- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing healthDataSource:(id)source countryCodeSource:(int64_t)codeSource
{
  providingCopy = providing;
  sourceCopy = source;
  v11 = sourceCopy;
  if (codeSource == 1)
  {
    v13 = HKPreferredRegulatoryDomainProvider();
    v14 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:v11 currentCountryCodeProvider:v13];
  }

  else
  {
    if (codeSource)
    {
LABEL_9:
      [HKFeatureStatusManager initWithFeatureAvailabilityProviding:a2 healthDataSource:self countryCodeSource:?];
      v15 = 0;
      goto LABEL_8;
    }

    sharedRequirementEvaluationDataSource = [sourceCopy sharedRequirementEvaluationDataSource];
    v13 = sharedRequirementEvaluationDataSource;
    if (sharedRequirementEvaluationDataSource)
    {
      v14 = sharedRequirementEvaluationDataSource;
      v13 = v14;
    }

    else
    {
      v14 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:v11];
    }
  }

  v15 = v14;

  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_8:
  v16 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:providingCopy featureAvailabilityDataSource:v15];

  return v16;
}

- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source
{
  sourceCopy = source;
  providingCopy = providing;
  v8 = +[HKFeatureAvailabilityContextConstraint allContexts];
  v9 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:providingCopy featureAvailabilityDataSource:sourceCopy contextConstraint:v8];

  return v9;
}

- (HKFeatureStatusManager)initWithFeatureIdentifier:(id)identifier healthStore:(id)store contextConstraint:(id)constraint
{
  constraintCopy = constraint;
  storeCopy = store;
  v10 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:identifier];
  v11 = [HKFeatureAvailabilityRequirementEvaluationDataSource dataSourceWithHealthDataSource:storeCopy];

  v12 = [(HKFeatureStatusManager *)self initWithFeatureAvailabilityProviding:v10 featureAvailabilityDataSource:v11 contextConstraint:constraintCopy];
  return v12;
}

- (HKFeatureStatusManager)initWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source contextConstraint:(id)constraint
{
  providingCopy = providing;
  sourceCopy = source;
  constraintCopy = constraint;
  v32.receiver = self;
  v32.super_class = HKFeatureStatusManager;
  v12 = [(HKFeatureStatusManager *)&v32 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_featureAvailabilityProviding, providing);
    objc_storeStrong(&v13->_strongDataSource, source);
    objc_storeStrong(&v13->_contextConstraint, constraint);
    v14 = [HKObserverSet alloc];
    v15 = [(HKFeatureStatusManager *)v13 description];
    v17 = HKLogInfrastructure(v15, v16);
    v18 = [(HKObserverSet *)v14 initWithName:v15 loggingCategory:v17];
    observers = v13->_observers;
    v13->_observers = v18;

    featureIdentifier = [providingCopy featureIdentifier];
    v21 = HKCreateSerialDispatchQueue(v13, featureIdentifier);
    queue = v13->_queue;
    v13->_queue = v21;

    featureAvailabilityProvidingDataSource = [sourceCopy featureAvailabilityProvidingDataSource];
    [featureAvailabilityProvidingDataSource setKnownFeatureAvailabilityProviding:v13->_featureAvailabilityProviding];

    objc_initWeak(&location, v13);
    v24 = [_HKDelayedOperation alloc];
    v25 = v13->_queue;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __111__HKFeatureStatusManager_initWithFeatureAvailabilityProviding_featureAvailabilityDataSource_contextConstraint___block_invoke;
    v29[3] = &unk_1E73782E8;
    objc_copyWeak(&v30, &location);
    v26 = [(_HKDelayedOperation *)v24 initWithMode:1 queue:v25 delay:v29 block:0.1];
    notifyObserversOperation = v13->_notifyObserversOperation;
    v13->_notifyObserversOperation = v26;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __111__HKFeatureStatusManager_initWithFeatureAvailabilityProviding_featureAvailabilityDataSource_contextConstraint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 9);
    if (v3)
    {
      [(HKFeatureStatusManager *)WeakRetained _notifyObserversWithFeatureStatus:v3];
    }

    else
    {
      _HKInitializeLogging(WeakRetained, 0);
      v6 = HKLogInfrastructure(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __111__HKFeatureStatusManager_initWithFeatureAvailabilityProviding_featureAvailabilityDataSource_contextConstraint___block_invoke_cold_1(v2, v6);
      }
    }
  }
}

+ (id)childFeatureStatusManagerWithFeatureAvailabilityProviding:(id)providing featureAvailabilityDataSource:(id)source contextConstraint:(id)constraint
{
  constraintCopy = constraint;
  sourceCopy = source;
  providingCopy = providing;
  v11 = [[self alloc] initWithFeatureAvailabilityProviding:providingCopy featureAvailabilityDataSource:sourceCopy contextConstraint:constraintCopy];

  v12 = *(v11 + 32);
  *(v11 + 32) = 0;

  objc_storeWeak((v11 + 24), sourceCopy);

  return v11;
}

- (void)dealloc
{
  if (self->_isObserving)
  {
    [(HKFeatureStatusManager *)self __unregisterForFeatureStatusChanges];
  }

  v3.receiver = self;
  v3.super_class = HKFeatureStatusManager;
  [(HKFeatureStatusManager *)&v3 dealloc];
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDataSource);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_weakDataSource);
  }

  else
  {
    strongDataSource = self->_strongDataSource;
    if (!strongDataSource)
    {
      [(HKFeatureStatusManager *)a2 dataSource:&self->_strongDataSource];
      strongDataSource = v8;
    }

    v5 = strongDataSource;
  }

  return v5;
}

- (id)featureStatusWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HKFeatureStatusManager_featureStatusWithError___block_invoke;
  block[3] = &unk_1E7378310;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v18;
  dispatch_sync(queue, block);
  v5 = v13[5];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v19[5];
    v8 = v7;
    if (v7)
    {
      if (error)
      {
        v9 = v7;
        *error = v8;
      }

      else
      {
        _HKLogDroppedError(v7);
      }
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v5;
}

void __49__HKFeatureStatusManager_featureStatusWithError___block_invoke(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(a1, a2);
  v5 = HKLogInfrastructure(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v9 = HKLogInfrastructure(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = a1[4];
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_INFO, "[%{public}@] Updating feature status for client request", buf, 0xCu);
    }
  }

  v11 = a1[4];
  v12 = *(a1[6] + 8);
  obj = *(v12 + 40);
  v13 = [(HKFeatureStatusManager *)v11 _queue_updateFeatureStatusWithRequestDrivenByObservation:&obj error:?];
  objc_storeStrong((v12 + 40), obj);
  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)_queue_updateFeatureStatusWithRequestDrivenByObservation:(void *)observation error:
{
  v48 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v43 = 0;
    v44[0] = &v43;
    v44[1] = 0x3032000000;
    v44[2] = __Block_byref_object_copy__1;
    v44[3] = __Block_byref_object_dispose__1;
    v45 = 0;
    v7 = (self + 80);
    v6 = *(self + 80);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = *(self + 16);
      obj = 0;
      v8 = [v9 featureAvailabilityRequirementsWithError:&obj];
      objc_storeStrong(&v45, obj);
    }

    v10 = [(HKFeatureAvailabilityRequirementSet *)v8 copyApplyingContextConstraint:?];

    if (v10)
    {
      _requirementSatisfactionOverrides = [(HKFeatureStatusManager *)self _requirementSatisfactionOverrides];
      dataSource = [self dataSource];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __89__HKFeatureStatusManager__queue_updateFeatureStatusWithRequestDrivenByObservation_error___block_invoke;
      v37[3] = &unk_1E7378360;
      v41 = &v43;
      v38 = v10;
      selfCopy = self;
      v15 = _requirementSatisfactionOverrides;
      v40 = v15;
      v16 = [dataSource performLocalEvaluation:v37];

      if (v16)
      {
        if (!*v7)
        {
          objc_storeStrong(v7, v10);
        }

        v18 = *(self + 72);
        if (v18)
        {
          a2 = 0;
          v18 = [v18 isEqual:v16];
          v19 = v18 ^ 1;
        }

        else
        {
          v19 = 0;
        }

        if ((a2 | v19))
        {
          _HKInitializeLogging(v18, v17);
          v30 = HKLogInfrastructure(v28, v29);
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);

          if (v31)
          {
            v34 = HKLogInfrastructure(v32, v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              selfCopy2 = self;
              _os_log_impl(&dword_19197B000, v34, OS_LOG_TYPE_INFO, "[%{public}@] Feature status did change", buf, 0xCu);
            }
          }

          objc_storeStrong((self + 72), v16);
          [*(self + 64) execute];
        }

        else
        {
          objc_storeStrong((self + 72), v16);
        }

        v35 = v16;
      }

      else
      {
        v25 = *(v44[0] + 40);
        v26 = v25;
        if (v25)
        {
          if (observation)
          {
            v27 = v25;
            *observation = v26;
          }

          else
          {
            _HKLogDroppedError(v25);
          }
        }
      }

      goto LABEL_33;
    }

    _HKInitializeLogging(v11, v12);
    v22 = HKLogInfrastructure(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(HKFeatureStatusManager *)self _queue_updateFeatureStatusWithRequestDrivenByObservation:v44 error:v22];
    }

    v23 = *(v44[0] + 40);
    v15 = v23;
    if (v23)
    {
      if (observation)
      {
        v24 = v23;
        v16 = 0;
        *observation = v15;
LABEL_33:

        _Block_object_dispose(&v43, 8);
        goto LABEL_34;
      }

      _HKLogDroppedError(v23);
    }

    v16 = 0;
    goto LABEL_33;
  }

  v16 = 0;
LABEL_34:

  return v16;
}

id __89__HKFeatureStatusManager__queue_updateFeatureStatusWithRequestDrivenByObservation_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 healthDataRequirementDataSource];
  v5 = *(*(a1 + 56) + 8);
  v14 = *(v5 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__HKFeatureStatusManager__queue_updateFeatureStatusWithRequestDrivenByObservation_error___block_invoke_2;
  v10[3] = &unk_1E7378338;
  v6 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v13 = *(a1 + 48);
  v7 = v3;
  v8 = [v4 withPrewarmedEvaluationOfRequirementSet:v6 error:&v14 handler:v10];
  objc_storeStrong((v5 + 40), v14);

  return v8;
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  observers = self->_observers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__HKFeatureStatusManager_registerObserver_queue___block_invoke;
  v11[3] = &unk_1E7378388;
  v11[4] = &v12;
  [(HKObserverSet *)observers registerObserver:observerCopy queue:queueCopy runIfFirstObserver:v11];
  if (*(v13 + 24) == 1)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__HKFeatureStatusManager_registerObserver_queue___block_invoke_2;
    v10[3] = &unk_1E7376780;
    v10[4] = self;
    dispatch_sync(queue, v10);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  observers = self->_observers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__HKFeatureStatusManager_unregisterObserver___block_invoke;
  v8[3] = &unk_1E7378388;
  v8[4] = &v9;
  [(HKObserverSet *)observers unregisterObserver:observerCopy runIfLastObserver:v8];
  if (*(v10 + 24) == 1)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__HKFeatureStatusManager_unregisterObserver___block_invoke_2;
    v7[3] = &unk_1E7376780;
    v7[4] = self;
    dispatch_sync(queue, v7);
  }

  _Block_object_dispose(&v9, 8);
}

void __92__HKFeatureStatusManager__registerForRequirementSatisfactionOverrideChangesForRequirements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    [(HKFeatureStatusManager *)v5 _updateOverriddenSatisfactionOfRequirement:v6 overriddenSatisfaction:?];
  }

  else
  {
    _HKInitializeLogging(isKindOfClass, v8);
    v11 = HKLogInfrastructure(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() requirementIdentifier];
      v13 = 138543874;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v12;
      _os_log_error_impl(&dword_19197B000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring observed override value of %{public}@ for %{public}@; invalid type", &v13, 0x20u);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  featureIdentifier = [(HKFeatureAvailabilityProviding *)self->_featureAvailabilityProviding featureIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%@:%p>", v4, featureIdentifier, self];

  return v6;
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v6 = HKLogInfrastructure(v4, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v7)
  {
    v10 = HKLogInfrastructure(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_INFO, "[%{public}@] Updating feature status for onboarding completion update", &v11, 0xCu);
    }
  }

  [(HKFeatureStatusManager *)self _queue_attemptFeatureStatusUpdateDrivenByObservation];
}

void __71__HKFeatureStatusManager__updateSatisfactionOfRequirement_isSatisfied___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(v2 + 72);
  if (!v4 || (v5 = *(v2 + 80)) == 0)
  {
    __71__HKFeatureStatusManager__updateSatisfactionOfRequirement_isSatisfied___block_invoke_cold_1(a1, v3);
    return;
  }

  v6 = [v4 copyUpdatingRequirement:*(a1 + 48) fromRequirements:v5 isSatisfied:*(a1 + 56)];
  if (([v6 isEqual:*(*(a1 + 32) + 72)] & 1) == 0)
  {
    v7 = HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(*(a1 + 40));
    if (v7 && (v7 = HKShowSensitiveLogItems(), (v7 & 1) == 0))
    {
      _HKInitializeLogging(v7, v8);
      v24 = HKLogInfrastructure(v22, v23);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);

      if (v25)
      {
        v15 = HKLogInfrastructure(v26, v27);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v28 = *v3;
          v29 = 138543362;
          v30 = v28;
          v19 = "[%{public}@] Requirement satisfaction changed; updating feature status";
          v20 = v15;
          v21 = 12;
LABEL_15:
          _os_log_impl(&dword_19197B000, v20, OS_LOG_TYPE_INFO, v19, &v29, v21);
        }

LABEL_16:
      }
    }

    else
    {
      _HKInitializeLogging(v7, v8);
      v11 = HKLogInfrastructure(v9, v10);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

      if (v12)
      {
        v15 = HKLogInfrastructure(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 32);
          v17 = *(a1 + 40);
          v18 = @"is NOT";
          if (*(a1 + 56))
          {
            v18 = @"is";
          }

          v29 = 138543874;
          v30 = v16;
          v31 = 2114;
          v32 = v17;
          v33 = 2114;
          v34 = v18;
          v19 = "[%{public}@] %{public}@ %{public}@ satisfied; updating feature status";
          v20 = v15;
          v21 = 32;
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    objc_storeStrong((*v3 + 72), v6);
    [*(*v3 + 64) execute];
  }
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)weakDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDataSource);

  return WeakRetained;
}

- (void)_notifyObserversWithFeatureStatus:(uint64_t)status
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v6 = v4;
  if (status)
  {
    _HKInitializeLogging(v4, v5);
    v9 = HKLogInfrastructure(v7, v8);
    v10 = OUTLINED_FUNCTION_6(v9);

    if (v10)
    {
      v13 = HKLogInfrastructure(v11, v12);
      if (OUTLINED_FUNCTION_6(v13))
      {
        v14 = MEMORY[0x1E696AD98];
        allObservers = [*(status + 48) allObservers];
        v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(allObservers, "count")}];
        *buf = 138543618;
        statusCopy = status;
        v22 = 2114;
        v23 = v16;
        _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers for feature status update", buf, 0x16u);
      }
    }

    v17 = *(status + 48);
    OUTLINED_FUNCTION_0_2();
    v18[1] = 3221225472;
    v18[2] = __60__HKFeatureStatusManager__notifyObserversWithFeatureStatus___block_invoke;
    v18[3] = &unk_1E73783D8;
    v18[4] = status;
    v19 = v6;
    [v17 notifyObservers:v18];
  }
}

- (void)__unregisterForFeatureStatusChanges
{
  v40 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [*(self + 16) unregisterObserver:self];
    WeakRetained = objc_loadWeakRetained((self + 24));
    v3 = WeakRetained;
    if (!WeakRetained)
    {
      v3 = *(self + 32);
    }

    v4 = v3;

    v6 = *(self + 80);
    if (v6 && v4)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      allRequirements = [(HKFeatureAvailabilityRequirementSet *)v6 allRequirements];
      v8 = [allRequirements countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v33;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v33 != v10)
            {
              objc_enumerationMutation(allRequirements);
            }

            v12 = *(*(&v32 + 1) + 8 * i);
            requirementSatisfactionOverridesDataSource = [v4 requirementSatisfactionOverridesDataSource];
            featureIdentifier = [*(self + 16) featureIdentifier];
            [requirementSatisfactionOverridesDataSource unregisterObserver:self forFeature:featureIdentifier requirement:v12];
          }

          v9 = [allRequirements countByEnumeratingWithState:&v32 objects:v39 count:16];
        }

        while (v9);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      allObservableRequirements = [(HKFeatureAvailabilityRequirementSet *)*(self + 80) allObservableRequirements];
      v16 = [allObservableRequirements countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(allObservableRequirements);
            }

            [*(*(&v28 + 1) + 8 * j) unregisterObserver:self fromDataSource:{v4, v28}];
          }

          v17 = [allObservableRequirements countByEnumeratingWithState:&v28 objects:v38 count:16];
        }

        while (v17);
      }

      WeakRetained = [self dataSource];
      healthDataRequirementDataSource = [WeakRetained healthDataRequirementDataSource];
      [healthDataRequirementDataSource unregisterObserver:self];
    }

    *(self + 8) = 0;
    _HKInitializeLogging(v6, v5);
    v23 = HKLogInfrastructure(v21, v22);
    v24 = OUTLINED_FUNCTION_6(v23);

    if (v24)
    {
      v27 = HKLogInfrastructure(v25, v26);
      if (OUTLINED_FUNCTION_6(v27))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_19197B000, WeakRetained, OS_LOG_TYPE_INFO, "[%{public}@] Unregistered for feature status changes", buf, 0xCu);
      }
    }
  }
}

- (id)_requirementSatisfactionOverrides
{
  selfCopy = self;
  if (self)
  {
    dataSource = [self dataSource];
    featureIdentifier = [selfCopy[2] featureIdentifier];
    selfCopy = [dataSource requirementSatisfactionOverridesForFeatureWithIdentifier:featureIdentifier];
  }

  return selfCopy;
}

- (HKFeatureStatus)_queue_featureStatusWithEvaluationContext:(void *)context requirements:(void *)requirements overrides:(void *)overrides error:
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a2;
  contextCopy = context;
  requirementsCopy = requirements;
  if (self)
  {
    featureIdentifier = [(NSDictionary *)self->_requirementsEvaluationByContext featureIdentifier];
    v35 = 0;
    v13 = [v9 onboardingRecordForFeatureWithIdentifier:featureIdentifier error:&v35];
    v14 = v35;

    if (v13)
    {
      v34 = v14;
      v17 = [(HKFeatureAvailabilityRequirementSet *)contextCopy evaluationByContextWithDataSource:v9 overrides:requirementsCopy error:&v34];
      v18 = v34;

      if (v17)
      {
        self = [[HKFeatureStatus alloc] initWithOnboardingRecord:v13 requirementsEvaluationByContext:v17];
      }

      else
      {
        _HKInitializeLogging(v19, v20);
        v28 = HKLogInfrastructure(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_4_0();
          v37 = v18;
          OUTLINED_FUNCTION_5(&dword_19197B000, v28, v33, "[%{public}@]: Error evaluating requirements by context: %{public}@", v36);
        }

        v29 = v18;
        v18 = v29;
        if (v29)
        {
          if (overrides)
          {
            v30 = v29;
            *overrides = v18;
          }

          else
          {
            _HKLogDroppedError(v29);
          }
        }

        self = 0;
      }

      goto LABEL_20;
    }

    _HKInitializeLogging(v15, v16);
    v23 = HKLogInfrastructure(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4_0();
      v37 = v14;
      OUTLINED_FUNCTION_5(&dword_19197B000, v23, v32, "[%{public}@]: Error retrieving onboarding record: %{public}@", v36);
    }

    v24 = v14;
    v17 = v24;
    if (v24)
    {
      if (overrides)
      {
        v25 = v24;
        self = 0;
        *overrides = v17;
LABEL_17:
        v18 = v17;
LABEL_20:

        goto LABEL_21;
      }

      _HKLogDroppedError(v24);
    }

    self = 0;
    goto LABEL_17;
  }

LABEL_21:

  return self;
}

- (void)_queue_registerForFeatureStatusChanges
{
  v38 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [*(self + 16) registerObserver:self queue:*(self + 56)];
    v2 = *(self + 80);
    if (v2)
    {
      v3 = v2;
      v4 = 0;
    }

    else
    {
      v5 = *(self + 16);
      v32 = 0;
      v3 = [v5 featureAvailabilityRequirementsWithError:&v32];
      v4 = v32;
    }

    v6 = [(HKFeatureAvailabilityRequirementSet *)v3 copyApplyingContextConstraint:?];

    if (v6)
    {
      if (!*(self + 80))
      {
        objc_storeStrong((self + 80), v6);
      }

      [(HKFeatureStatusManager *)self _registerForRequirementSatisfactionOverrideChangesForRequirements:v6];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      allObservableRequirements = [(HKFeatureAvailabilityRequirementSet *)v6 allObservableRequirements];
      v13 = [allObservableRequirements countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(allObservableRequirements);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            dataSource = [self dataSource];
            [v17 registerObserver:self forDataSource:dataSource];
          }

          v14 = [allObservableRequirements countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v14);
      }

      dataSource2 = [self dataSource];
      healthDataRequirementDataSource = [dataSource2 healthDataRequirementDataSource];
      [healthDataRequirementDataSource registerObserver:self forRequirementSet:v6 queue:0];

      *(self + 8) = 1;
      _HKInitializeLogging(v20, v21);
      v24 = HKLogInfrastructure(v22, v23);
      LODWORD(healthDataRequirementDataSource) = OUTLINED_FUNCTION_7(v24);

      if (!healthDataRequirementDataSource)
      {
        goto LABEL_9;
      }

      v27 = HKLogInfrastructure(v25, v26);
      if (OUTLINED_FUNCTION_7(v27))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_19197B000, dataSource2, OS_LOG_TYPE_INFO, "[%{public}@] Registered for feature status changes", buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging(v7, v8);
      dataSource2 = HKLogInfrastructure(v9, v10);
      if (os_log_type_enabled(dataSource2, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v36 = 2114;
        v37 = v4;
        _os_log_fault_impl(&dword_19197B000, dataSource2, OS_LOG_TYPE_FAULT, "[%{public}@]: Error determining feature requirements during registration: %{public}@", buf, 0x16u);
      }
    }

LABEL_9:
  }
}

- (void)_queue_unregisterForFeatureStatusChanges
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));

    [(HKFeatureStatusManager *)self __unregisterForFeatureStatusChanges];
  }
}

- (void)_registerForRequirementSatisfactionOverrideChangesForRequirements:(id *)requirements
{
  v18 = *MEMORY[0x1E69E9840];
  if (requirements)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    obj = [(HKFeatureAvailabilityRequirementSet *)a2 allRequirements];
    v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v13 + 1) + 8 * v6);
          dataSource = [requirements dataSource];
          requirementSatisfactionOverridesDataSource = [dataSource requirementSatisfactionOverridesDataSource];
          featureIdentifier = [requirements[2] featureIdentifier];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __92__HKFeatureStatusManager__registerForRequirementSatisfactionOverrideChangesForRequirements___block_invoke;
          v12[3] = &unk_1E73783B0;
          v12[4] = v7;
          [requirementSatisfactionOverridesDataSource registerObserver:requirements forFeature:featureIdentifier requirement:v7 newValueHandler:v12];

          ++v6;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }
  }
}

- (void)_updateOverriddenSatisfactionOfRequirement:(void *)requirement overriddenSatisfaction:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  requirementCopy = requirement;
  if (self)
  {
    requirementIdentifier = [objc_opt_class() requirementIdentifier];
    if (requirementCopy)
    {
      bOOLValue = [requirementCopy BOOLValue];
      v10 = bOOLValue;
      _HKInitializeLogging(bOOLValue, v11);
      v14 = HKLogInfrastructure(v12, v13);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

      if (v15)
      {
        v18 = HKLogInfrastructure(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = @"is NOT";
          *buf = 138543874;
          selfCopy = self;
          v24 = 2114;
          if (v10)
          {
            v19 = @"is";
          }

          v25 = requirementIdentifier;
          v26 = 2114;
          v27 = v19;
          _os_log_impl(&dword_19197B000, v18, OS_LOG_TYPE_INFO, "[%{public}@] Override: %{public}@ %{public}@ satisfied; updating feature status", buf, 0x20u);
        }
      }

      [(HKFeatureStatusManager *)self _updateSatisfactionOfRequirement:v5 isSatisfied:v10];
    }

    else
    {
      v8 = *(self + 56);
      OUTLINED_FUNCTION_0_2();
      v20[1] = 3221225472;
      v20[2] = __92__HKFeatureStatusManager__updateOverriddenSatisfactionOfRequirement_overriddenSatisfaction___block_invoke;
      v20[3] = &unk_1E7378400;
      v20[4] = self;
      v21 = requirementIdentifier;
      dispatch_sync(v8, v20);
    }
  }
}

- (void)_queue_attemptFeatureStatusUpdateDrivenByObservation
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = 0;
    v2 = [(HKFeatureStatusManager *)self _queue_updateFeatureStatusWithRequestDrivenByObservation:&v10 error:?];
    v3 = v10;
    v5 = v3;
    if (!v2)
    {
      _HKInitializeLogging(v3, v4);
      v8 = HKLogInfrastructure(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543618;
        selfCopy = self;
        v13 = 2114;
        v14 = v5;
        OUTLINED_FUNCTION_5(&dword_19197B000, v8, v9, "[%{public}@]: Error attempting to update feature status: %{public}@", &v11);
      }
    }
  }
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings
{
  _HKInitializeLogging(self, a2);
  v7 = HKLogInfrastructure(v5, v6);
  v8 = OUTLINED_FUNCTION_2_1(v7);

  if (v8)
  {
    v11 = HKLogInfrastructure(v9, v10);
    if (OUTLINED_FUNCTION_2_1(v11))
    {
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    }
  }

  [(HKFeatureStatusManager *)self _queue_attemptFeatureStatusUpdateDrivenByObservation];
}

- (void)featureAvailabilityRequirement:(id)requirement didUpdateSatisfaction:(BOOL)satisfaction
{
  satisfactionCopy = satisfaction;
  v23 = *MEMORY[0x1E69E9840];
  requirementCopy = requirement;
  requirementIdentifier = [objc_opt_class() requirementIdentifier];
  _requirementSatisfactionOverrides = [(HKFeatureStatusManager *)&self->super.isa _requirementSatisfactionOverrides];
  v9 = [_requirementSatisfactionOverrides overriddenSatisfactionOfRequirementWithIdentifier:requirementIdentifier];

  if (v9)
  {
    _HKInitializeLogging(v10, v11);
    v14 = HKLogInfrastructure(v12, v13);
    v15 = OUTLINED_FUNCTION_7(v14);

    if (v15)
    {
      v18 = HKLogInfrastructure(v16, v17);
      if (OUTLINED_FUNCTION_7(v18))
      {
        v19 = 138543618;
        selfCopy = self;
        v21 = 2114;
        v22 = requirementIdentifier;
        _os_log_impl(&dword_19197B000, satisfactionCopy, OS_LOG_TYPE_INFO, "[%{public}@] Satisfaction of %{public}@ is overridden; ignoring observed satisfaction change", &v19, 0x16u);
      }
    }
  }

  else
  {
    [(HKFeatureStatusManager *)self _updateSatisfactionOfRequirement:requirementCopy isSatisfied:satisfactionCopy];
  }
}

- (void)_updateSatisfactionOfRequirement:(char)requirement isSatisfied:
{
  v5 = a2;
  if (self)
  {
    requirementIdentifier = [objc_opt_class() requirementIdentifier];
    v7 = *(self + 56);
    OUTLINED_FUNCTION_0_2();
    v10[1] = 3221225472;
    v10[2] = __71__HKFeatureStatusManager__updateSatisfactionOfRequirement_isSatisfied___block_invoke;
    v10[3] = &unk_1E7378428;
    v10[4] = self;
    v11 = v8;
    requirementCopy = requirement;
    v12 = v5;
    v9 = requirementIdentifier;
    dispatch_sync(v7, v10);
  }
}

void __92__HKFeatureStatusManager__updateOverriddenSatisfactionOfRequirement_overriddenSatisfaction___block_invoke(uint64_t a1, uint64_t a2)
{
  _HKInitializeLogging(a1, a2);
  v6 = HKLogInfrastructure(v4, v5);
  v7 = OUTLINED_FUNCTION_2_1(v6);

  if (v7)
  {
    v10 = HKLogInfrastructure(v8, v9);
    if (OUTLINED_FUNCTION_2_1(v10))
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_1_1();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }

  [(HKFeatureStatusManager *)*(a1 + 32) _queue_attemptFeatureStatusUpdateDrivenByObservation];
}

- (void)initWithFeatureAvailabilityProviding:(uint64_t)a1 healthDataSource:(uint64_t)a2 countryCodeSource:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFeatureStatusManager.m" lineNumber:143 description:@"Unexpected country code source"];
}

void __111__HKFeatureStatusManager_initWithFeatureAvailabilityProviding_featureAvailabilityDataSource_contextConstraint___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "[%{public}@]: Asked to notify observers, but no feature status available", &v4, 0xCu);
}

- (void)dataSource
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKFeatureStatusManager.m" lineNumber:238 description:{@"No data source for %@ has been retained!", a2}];

  *a4 = *a3;
}

- (void)_queue_updateFeatureStatusWithRequestDrivenByObservation:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 40);
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  OUTLINED_FUNCTION_5(&dword_19197B000, a3, a3, "[%{public}@]: Error determining feature requirements: %{public}@", &v4);
}

void __71__HKFeatureStatusManager__updateSatisfactionOfRequirement_isSatisfied___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(*(a1 + 40));
  if ((v4 & 1) != 0 && (v4 = HKShowSensitiveLogItems(), (v4 & 1) == 0))
  {
    _HKInitializeLogging(v4, v5);
    v21 = HKLogInfrastructure(v19, v20);
    v22 = OUTLINED_FUNCTION_2_1(v21);

    if (v22)
    {
      v25 = HKLogInfrastructure(v23, v24);
      if (OUTLINED_FUNCTION_2_1(v25))
      {
        OUTLINED_FUNCTION_1_1();
        v18 = 12;
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  else
  {
    _HKInitializeLogging(v4, v5);
    v8 = HKLogInfrastructure(v6, v7);
    v9 = OUTLINED_FUNCTION_2_1(v8);

    if (v9)
    {
      v12 = HKLogInfrastructure(v10, v11);
      if (OUTLINED_FUNCTION_2_1(v12))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_1_1();
        v18 = 32;
LABEL_9:
        _os_log_impl(v13, v14, v15, v16, v17, v18);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  [(HKFeatureStatusManager *)*a2 _queue_attemptFeatureStatusUpdateDrivenByObservation];
}

@end