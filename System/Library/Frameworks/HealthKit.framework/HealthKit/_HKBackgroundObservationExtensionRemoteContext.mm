@interface _HKBackgroundObservationExtensionRemoteContext
- (_HKBackgroundObservationExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (void)backgroundObservationExtensionTimeWillExpire;
- (void)didReceiveUpdateForSampleType:(id)type completionHandler:(id)handler;
- (void)performCleanup;
@end

@implementation _HKBackgroundObservationExtensionRemoteContext

- (_HKBackgroundObservationExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v10.receiver = self;
  v10.super_class = _HKBackgroundObservationExtensionRemoteContext;
  v5 = [(_HKBackgroundObservationExtensionRemoteContext *)&v10 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  v7 = v5;
  if (v5)
  {
    _HKInitializeLogging(v5, v6);
    v8 = HKLogBackgroundUpdates;
    if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_DEBUG))
    {
      [_HKBackgroundObservationExtensionRemoteContext initWithInputItems:v8 listenerEndpoint:v7 contextUUID:?];
    }
  }

  return v7;
}

- (void)performCleanup
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v3 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    _UUID = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v6 = 138543362;
    v7 = _UUID;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "HealthKit app extension cleaning up for UUID: %{public}@", &v6, 0xCu);
  }

  [(_HKBackgroundObservationExtensionRemoteContext *)self setExtensionInstance:0];
  [(_HKBackgroundObservationExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
}

- (void)didReceiveUpdateForSampleType:(id)type completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  extensionInstance = [(_HKBackgroundObservationExtensionRemoteContext *)self extensionInstance];
  _HKInitializeLogging(extensionInstance, v9);
  v10 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    _UUID = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v13 = 138543618;
    v14 = _UUID;
    v15 = 2114;
    v16 = typeCopy;
    _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_INFO, "HealthKit app extension with UUID: %{public}@ did receive update for sample type: %{public}@", &v13, 0x16u);
  }

  if (extensionInstance)
  {
    [extensionInstance didReceiveUpdateForSampleType:typeCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)backgroundObservationExtensionTimeWillExpire
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v3 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    _UUID = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v7 = 138543362;
    v8 = _UUID;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "HealthKit app extension with UUID: %{public}@ will time out", &v7, 0xCu);
  }

  extensionInstance = [(_HKBackgroundObservationExtensionRemoteContext *)self extensionInstance];
  [extensionInstance backgroundObservationExtensionTimeWillExpire];
}

- (void)initWithInputItems:(void *)a1 listenerEndpoint:(void *)a2 contextUUID:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 _UUID];
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEBUG, "HealthKit app extension context initialized for UUID: %{public}@", &v5, 0xCu);
}

@end