@interface _HKWatchAppInstallationManagerObserverBridge
- (_HKWatchAppInstallationManagerObserverBridge)initWithHandle:(id)handle;
- (void)watchAppInstallationManagerDidObserveChange:(id)change;
@end

@implementation _HKWatchAppInstallationManagerObserverBridge

- (_HKWatchAppInstallationManagerObserverBridge)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = _HKWatchAppInstallationManagerObserverBridge;
  v6 = [(_HKWatchAppInstallationManagerObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

- (void)watchAppInstallationManagerDidObserveChange:(id)change
{
  v28 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _HKInitializeLogging(changeCopy, v5);
  v8 = HKLogInfrastructure(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = objc_opt_class();
    v9 = v23;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed change in watch app installation, notifying observers", buf, 0xCu);
  }

  v21 = 0;
  v10 = [changeCopy isWatchAppInstalledWithError:&v21];
  v11 = v21;
  v13 = v11;
  if (v11)
  {
    _HKInitializeLogging(v11, v12);
    bundleIdentifier2 = HKLogInfrastructure(v14, v15);
    if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = v17;
      bundleIdentifier = [changeCopy bundleIdentifier];
      *buf = 138543874;
      v23 = v17;
      v24 = 2114;
      v25 = bundleIdentifier;
      v26 = 2114;
      v27 = v13;
      _os_log_error_impl(&dword_19197B000, bundleIdentifier2, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving value for watch app installation for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    handle = self->_handle;
    bundleIdentifier2 = [changeCopy bundleIdentifier];
    [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:bundleIdentifier2 newValue:v10];
  }
}

@end