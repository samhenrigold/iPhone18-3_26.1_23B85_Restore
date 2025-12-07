@interface HDHeartbeatSeriesFeatureStatusManagerServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (HDHeartbeatSeriesFeatureStatusManagerServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_clientRemoteObjectProxy;
- (void)heartbeatSeriesFeatureStatusManager:(id)manager didFailToUpdateWithError:(id)error;
- (void)heartbeatSeriesFeatureStatusManager:(id)manager didUpdatePredominantFeature:(int64_t)feature;
- (void)remote_startObservingChangesWithCompletion:(id)completion;
@end

@implementation HDHeartbeatSeriesFeatureStatusManagerServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D12F10]];

  if (v16)
  {
    v17 = [[HDHeartbeatSeriesFeatureStatusManagerServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

- (HDHeartbeatSeriesFeatureStatusManagerServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = HDHeartbeatSeriesFeatureStatusManagerServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    v12 = [[HDHeartbeatSeriesFeatureStatusManager alloc] initWithClient:clientCopy];
    manager = v11->_manager;
    v11->_manager = v12;
  }

  return v11;
}

- (void)remote_startObservingChangesWithCompletion:(id)completion
{
  manager = self->_manager;
  completionCopy = completion;
  [(HDHeartbeatSeriesFeatureStatusManager *)manager startObservingChangesWithDelegate:self];
  [(HDHeartbeatSeriesFeatureStatusManager *)self->_manager getPredominantFeatureWithCompletion:completionCopy];
}

- (void)heartbeatSeriesFeatureStatusManager:(id)manager didUpdatePredominantFeature:(int64_t)feature
{
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HDHeartbeatSeriesFeatureStatusManagerServer heartbeatSeriesFeatureStatusManager:feature didUpdatePredominantFeature:?];
    }
  }

  _clientRemoteObjectProxy = [(HDHeartbeatSeriesFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_heartbeatSeriesFeatureStatusManagerDidUpdatePredominantFeature:feature];
}

- (void)heartbeatSeriesFeatureStatusManager:(id)manager didFailToUpdateWithError:(id)error
{
  errorCopy = error;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HDHeartbeatSeriesFeatureStatusManagerServer heartbeatSeriesFeatureStatusManager:errorCopy didFailToUpdateWithError:?];
    }
  }

  _clientRemoteObjectProxy = [(HDHeartbeatSeriesFeatureStatusManagerServer *)self _clientRemoteObjectProxy];
  [_clientRemoteObjectProxy client_heartbeatSeriesFeatureStatusManagerDidFailToUpdateWithError:errorCopy];
}

- (id)_clientRemoteObjectProxy
{
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

+ (id)requiredEntitlements
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCC1F0];
  v5[0] = *MEMORY[0x277CCC1B8];
  v5[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)heartbeatSeriesFeatureStatusManager:(uint64_t)a1 didUpdatePredominantFeature:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = v2;
  v4 = NSStringFromHKHeartbeatSeriesFeature();
  v5 = HKSensitiveLogItem();
  *v12 = 138543618;
  *&v12[4] = v2;
  *&v12[12] = 2114;
  *&v12[14] = v5;
  OUTLINED_FUNCTION_0_6(&dword_229486000, v6, v7, "[%{public}@] Received notification of predominant feature update: %{public}@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
}

- (void)heartbeatSeriesFeatureStatusManager:(uint64_t)a1 didFailToUpdateWithError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  *v10 = 138543618;
  *&v10[4] = objc_opt_class();
  *&v10[12] = 2114;
  *&v10[14] = a2;
  v3 = *&v10[4];
  OUTLINED_FUNCTION_0_6(&dword_229486000, v4, v5, "[%{public}@] Received notification of update error: %{public}@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end