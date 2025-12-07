@interface _HKFeatureStatusProvidingObserverBridge
- (_HKFeatureStatusProvidingObserverBridge)initWithFeatureIdentifierAndContext:(id)context handle:(id)handle;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
@end

@implementation _HKFeatureStatusProvidingObserverBridge

- (_HKFeatureStatusProvidingObserverBridge)initWithFeatureIdentifierAndContext:(id)context handle:(id)handle
{
  contextCopy = context;
  handleCopy = handle;
  v12.receiver = self;
  v12.super_class = _HKFeatureStatusProvidingObserverBridge;
  v9 = [(_HKFeatureStatusProvidingObserverBridge *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureIdentifierAndContext, context);
    objc_storeStrong(&v10->_handle, handle);
  }

  return v10;
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  statusCopy = status;
  _HKInitializeLogging(statusCopy, v6);
  v9 = HKLogInfrastructure(v7, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v13 = HKLogInfrastructure(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_HKFeatureStatusProvidingObserverBridge featureStatusProviding:v13 didUpdateFeatureStatus:?];
    }
  }

  [(HKObserverBridgeHandle *)self->_handle notifyObserversOfChangeForKey:self->_featureIdentifierAndContext newValue:statusCopy];
}

- (void)featureStatusProviding:(uint64_t)a1 didUpdateFeatureStatus:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = *(a1 + 8);
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  v6 = v4;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@]: Observed feature status update for %{public}@, notifying observers", &v7, 0x16u);
}

@end