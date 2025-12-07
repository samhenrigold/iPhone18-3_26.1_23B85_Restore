@interface HDFeatureAvailabilityHealthDataRequirementEvaluationManager
- (BOOL)registerObserver:(id)observer forRequirements:(id)requirements queue:(id)queue error:(id *)error;
- (HDFeatureAvailabilityHealthDataRequirementEvaluationManager)initWithProfile:(id)profile;
- (id)_evaluatorForRequirement:(void *)requirement error:;
- (id)evaluationOfRequirements:(id)requirements error:(id *)error;
- (void)unregisterObserver:(id)observer;
@end

@implementation HDFeatureAvailabilityHealthDataRequirementEvaluationManager

- (HDFeatureAvailabilityHealthDataRequirementEvaluationManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDFeatureAvailabilityHealthDataRequirementEvaluationManager;
  v5 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    lock_observedRequirementsByObserver = v6->_lock_observedRequirementsByObserver;
    v6->_lock_observedRequirementsByObserver = weakToStrongObjectsMapTable;
  }

  return v6;
}

- (id)evaluationOfRequirements:(id)requirements error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  requirementsCopy = requirements;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = requirementsCopy;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v34)
  {
    v8 = *v36;
    errorCopy = error;
    v28 = *v36;
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = v10;
        if (!self)
        {

LABEL_27:
          v25 = 0;
          goto LABEL_28;
        }

        v12 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)self _evaluatorForRequirement:v10 error:error];
        v13 = v12;
        if (v12)
        {
          v39 = 0;
          v14 = [v12 isRequirementSatisfied:v11 error:&v39];
          v15 = v39;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            requirementIdentifier = [objc_opt_class() requirementIdentifier];
            _HKInitializeLogging();
            v17 = HKLogInfrastructure();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              selfCopy2 = self;
              v47 = 2114;
              v48 = requirementIdentifier;
              v49 = 2114;
              v50 = v15;
              _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Error evaluating requirement %{public}@: %{public}@", buf, 0x20u);
            }

            v18 = MEMORY[0x277CCA9B8];
            if (v15)
            {
              domain = [v15 domain];
              code = [v15 code];
              userInfo = [v15 userInfo];
              v43 = @"HKFeatureAvailabilityRequirementIdentifier";
              v44 = requirementIdentifier;
              v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
              [userInfo hk_dictionaryByAddingEntriesFromDictionary:v20];
              v22 = v21 = v7;
              v23 = [v18 errorWithDomain:domain code:code userInfo:v22];

              v7 = v21;
              error = errorCopy;
            }

            else
            {
              v41 = @"HKFeatureAvailabilityRequirementIdentifier";
              v42 = requirementIdentifier;
              domain = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
              v23 = [v18 hk_error:2000 userInfo:domain];
            }

            v15 = v23;
            v8 = v28;
            self = selfCopy;
            if (v15)
            {
              if (error)
              {
                v24 = v15;
                *error = v15;
              }

              else
              {
                _HKLogDroppedError();
              }
            }
          }
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          goto LABEL_27;
        }

        [v7 setObject:v14 forKeyedSubscript:v11];
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v25 = objc_msgSend_copy(v7);
LABEL_28:

  return v25;
}

- (id)_evaluatorForRequirement:(void *)requirement error:
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    WeakRetained = objc_loadWeakRetained((self + 8));
    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained((self + 8));
      requirementIdentifier = [v7 profileExtensionsConformingToProtocol:{&unk_283D71798, v22}];
    }

    else
    {
      requirementIdentifier = MEMORY[0x277CBEBF8];
    }

    v9 = [requirementIdentifier countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(requirementIdentifier);
          }

          v13 = [*(*(&v22 + 1) + 8 * i) evaluatorForRequirement:{v5, v22}];
          if (v13)
          {
            v20 = v13;
            goto LABEL_21;
          }
        }

        v10 = [requirementIdentifier countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    requirementIdentifier = [objc_opt_class() requirementIdentifier];
    _HKInitializeLogging();
    v14 = HKLogInfrastructure();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v30 = 2114;
      v31 = requirementIdentifier;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] No evaluator found for requirement %{public}@", buf, 0x16u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v26 = @"HKFeatureAvailabilityRequirementIdentifier";
    v27 = requirementIdentifier;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v17 = [v15 hk_error:3 userInfo:v16];

    v18 = v17;
    if (v18)
    {
      if (requirement)
      {
        v19 = v18;
        *requirement = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = 0;
LABEL_21:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)registerObserver:(id)observer forRequirements:(id)requirements queue:(id)queue error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  requirementsCopy = requirements;
  queueCopy = queue;
  if ([requirementsCopy count])
  {
    _HKInitializeLogging();
    v13 = HKLogInfrastructure();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v39 = 2114;
      v40 = observerCopy;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering %{public}@ for changes", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    v14 = [(NSMapTable *)self->_lock_observedRequirementsByObserver objectForKey:observerCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB98] set];
    }

    v18 = v16;

    v30 = v18;
    v31 = requirementsCopy;
    [requirementsCopy hk_minus:v18];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v35 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          v25 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)self _evaluatorForRequirement:v24 error:error];
          if (!v25)
          {
            v17 = 0;
            v28 = v19;
            v27 = v30;
            goto LABEL_18;
          }

          v26 = v25;
          [v25 registerObserver:observerCopy forRequirement:v24 queue:queueCopy];
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v27 = v30;
    v28 = [v30 setByAddingObjectsFromSet:v19];
    [(NSMapTable *)self->_lock_observedRequirementsByObserver setObject:v28 forKey:observerCopy];
    v17 = 1;
LABEL_18:
    os_unfair_lock_unlock(&self->_lock);

    requirementsCopy = v31;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)unregisterObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 2114;
    v22 = observerCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering %{public}@ from changes", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMapTable *)self->_lock_observedRequirementsByObserver objectForKey:observerCopy];
  v7 = v6;
  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)self _evaluatorForRequirement:v12 error:0];
          [v13 unregisterObserver:observerCopy forRequirement:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(NSMapTable *)self->_lock_observedRequirementsByObserver removeObjectForKey:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end