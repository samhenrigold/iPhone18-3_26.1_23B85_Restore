@interface HKFeatureAvailabilityProvidingDataSource
- (HKFeatureAvailabilityHealthDataSource)healthDataSource;
- (HKFeatureAvailabilityProvidingDataSource)initWithHealthDataSource:(id)source;
- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (void)setKnownFeatureAvailabilityProviding:(id)providing;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
@end

@implementation HKFeatureAvailabilityProvidingDataSource

- (HKFeatureAvailabilityProvidingDataSource)initWithHealthDataSource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HKFeatureAvailabilityProvidingDataSource;
  v5 = [(HKObserverBridge *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_healthDataSource, sourceCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    featureAvailabilityProvidingByFeatureIdentifier = v6->_featureAvailabilityProvidingByFeatureIdentifier;
    v6->_featureAvailabilityProvidingByFeatureIdentifier = dictionary;

    v9 = HKCreateSerialDispatchQueue(v6, 0);
    observationQueue = v6->_observationQueue;
    v6->_observationQueue = v9;
  }

  return v6;
}

- (void)setKnownFeatureAvailabilityProviding:(id)providing
{
  providingCopy = providing;
  v6 = providingCopy;
  if (providingCopy)
  {
    featureIdentifier = [providingCopy featureIdentifier];
    os_unfair_lock_lock(&self->_lock);
    v8 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:featureIdentifier];

    if (!v8)
    {
      [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier setObject:v6 forKeyedSubscript:featureIdentifier];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _HKInitializeLogging(0, v5);
    featureIdentifier = HKLogInfrastructure(v9, v10);
    if (os_log_type_enabled(featureIdentifier, OS_LOG_TYPE_ERROR))
    {
      [HKFeatureAvailabilityProvidingDataSource setKnownFeatureAvailabilityProviding:?];
    }
  }
}

- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_healthDataSource);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained requiresWeakRetention])
    {
      v8 = [v7 featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];
      os_unfair_lock_lock(&self->_lock);
      v9 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:identifierCopy];

      if (v9)
      {
LABEL_14:

        goto LABEL_15;
      }

      if (!v8)
      {
        _HKInitializeLogging(v10, v11);
        v14 = HKLogInfrastructure(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:identifierCopy, v14];
        }

        goto LABEL_14;
      }
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v19 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:identifierCopy];

      if (v19)
      {
LABEL_15:
        v18 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_16;
      }

      v8 = [v7 featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];
    }

    [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier setObject:v8 forKeyedSubscript:identifierCopy];
    goto LABEL_14;
  }

  _HKInitializeLogging(0, v6);
  v17 = HKLogInfrastructure(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [HKFeatureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:?];
  }

  v18 = 0;
LABEL_16:

  return v18;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  handleCopy = handle;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:key];
  v8 = [[_HKFeatureAvailabilityProvidingObserverBridge alloc] initWithHandle:handleCopy];

  [v7 registerObserver:v8 queue:self->_observationQueue];

  return v8;
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  observerCopy = observer;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:key];
  [v7 unregisterObserver:observerCopy];
}

- (HKFeatureAvailabilityHealthDataSource)healthDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_healthDataSource);

  return WeakRetained;
}

- (void)setKnownFeatureAvailabilityProviding:(uint64_t)a1 .cold.1(uint64_t a1)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0_23(&dword_19197B000, v2, v3, "[%{public}@]: Given nil featureAvailabilityProviding in -setKnownFeatureAvailabilityProviding:", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)featureAvailabilityProvidingForFeatureIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_fault_impl(&dword_19197B000, a3, OS_LOG_TYPE_FAULT, "[%{public}@]: Unknown feature identifier %{public}@", &v6, 0x16u);
}

- (void)featureAvailabilityProvidingForFeatureIdentifier:(uint64_t)a1 .cold.2(uint64_t a1)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = objc_opt_class();
  v1 = *(&v8 + 4);
  OUTLINED_FUNCTION_0_23(&dword_19197B000, v2, v3, "[%{public}@]: Health data source is nil", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end