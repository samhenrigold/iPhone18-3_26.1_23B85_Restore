@interface HKBluetoothDeviceDataSource
- (HKBluetoothDeviceDataSource)init;
- (HKBluetoothDeviceDataSource)initWithDiscoveryType:(Class)type;
- (id)_beginDiscoveryWithObserver:(id)observer;
- (id)_devicesWithError:(uint64_t)error;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (id)pairedDevicesWithError:(id *)error;
- (void)_endDiscovery;
- (void)dealloc;
- (void)registerObserverForDevicePairingChanges:(id)changes updateHandler:(id)handler;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
@end

@implementation HKBluetoothDeviceDataSource

- (HKBluetoothDeviceDataSource)init
{
  v3 = objc_opt_class();

  return [(HKBluetoothDeviceDataSource *)self initWithDiscoveryType:v3];
}

- (HKBluetoothDeviceDataSource)initWithDiscoveryType:(Class)type
{
  v5.receiver = self;
  v5.super_class = HKBluetoothDeviceDataSource;
  result = [(HKObserverBridge *)&v5 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_DiscoveryType = type;
    result->_lock_isDiscoveryActive = 0;
  }

  return result;
}

- (void)dealloc
{
  [(HKBluetoothDeviceDataSource *)self _endDiscovery];
  v3.receiver = self;
  v3.super_class = HKBluetoothDeviceDataSource;
  [(HKObserverBridge *)&v3 dealloc];
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  v7 = HKLogInfrastructure(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = [v3 identifier];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device found: %{public}@", &v10, 0x16u);
  }

  [*(a1 + 32) notifyObserversOfChangeForKey:@"CBDiscoveryObservation" newValue:0];
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_12(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  v7 = HKLogInfrastructure(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = [v3 identifier];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device lost: %{public}@", &v10, 0x16u);
  }

  [*(a1 + 32) notifyObserversOfChangeForKey:@"CBDiscoveryObservation" newValue:0];
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  v7 = HKLogInfrastructure(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_13_cold_1(a1, v3, v7);
  }
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_16(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v4 = *(a1 + 32);
  if (*(a1 + 40) == *(v4 + 40))
  {
    *(v4 + 48) = 1;
    v4 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v4 + 32));
  _HKInitializeLogging(v5, v6);
  v9 = HKLogInfrastructure(v7, v8);
  v10 = v9;
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_16_cold_1((a1 + 32), v3, v10);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = *(a1 + 40);
    v14 = 138543618;
    v15 = v11;
    v16 = 2048;
    v17 = v12;
    v13 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activated CBDiscovery:%p", &v14, 0x16u);
  }
}

- (void)registerObserverForDevicePairingChanges:(id)changes updateHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__HKBluetoothDeviceDataSource_registerObserverForDevicePairingChanges_updateHandler___block_invoke;
  v8[3] = &unk_1E737B448;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(HKObserverBridge *)self registerObserver:changes forKey:@"CBDiscoveryObservation" newValueHandler:v8];
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  keyCopy = key;
  handleCopy = handle;
  v8 = [keyCopy isEqualToString:@"CBDiscoveryObservation"];
  if (v8)
  {
    selfCopy = [(HKBluetoothDeviceDataSource *)self _beginDiscoveryWithObserver:handleCopy];
  }

  else
  {
    _HKInitializeLogging(v8, v9);
    v12 = HKLogInfrastructure(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [HKBluetoothDeviceDataSource makeAndRegisterBridgedObserverForKey:? handle:?];
    }

    selfCopy = self;
  }

  v14 = selfCopy;

  return v14;
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  keyCopy = key;
  v6 = [keyCopy isEqualToString:@"CBDiscoveryObservation"];
  if (v6)
  {
    [(HKBluetoothDeviceDataSource *)self _endDiscovery];
  }

  else
  {
    _HKInitializeLogging(v6, v7);
    v10 = HKLogInfrastructure(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [HKBluetoothDeviceDataSource unregisterBridgedObserver:? forKey:?];
    }
  }
}

- (void)_endDiscovery
{
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    [*(self + 40) invalidate];
    v2 = *(self + 40);
    *(self + 40) = 0;

    os_unfair_lock_unlock((self + 32));
  }
}

- (id)_devicesWithError:(uint64_t)error
{
  if (error)
  {
    v4 = +[_HKBehavior sharedBehavior];
    supportsBluetoothDiscovery = [v4 supportsBluetoothDiscovery];

    if (supportsBluetoothDiscovery)
    {
      os_unfair_lock_lock((error + 32));
      if (*(error + 48))
      {
        [*(error + 40) discoveredDevices];
      }

      else
      {
        [*(error + 56) devicesWithDiscoveryFlags:0x800000 error:a2];
      }
      v6 = ;
      os_unfair_lock_unlock((error + 32));
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pairedDevicesWithError:(id *)error
{
  v3 = [(HKBluetoothDeviceDataSource *)self _devicesWithError:error];
  v4 = [v3 hk_filter:&__block_literal_global_116];

  return v4;
}

- (id)_beginDiscoveryWithObserver:(id)observer
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (observer)
  {
    os_unfair_lock_lock(observer + 8);
    if (*(observer + 5))
    {
      _HKInitializeLogging(v4, v5);
      v8 = HKLogInfrastructure(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v26 = objc_opt_class();
        v15 = v26;
        _os_log_fault_impl(&dword_19197B000, v8, OS_LOG_TYPE_FAULT, "[%{public}@] CBDiscovery beginning while another is currently running", buf, 0xCu);
      }

      [*(observer + 5) invalidate];
      *(observer + 48) = 0;
    }

    v9 = objc_alloc_init(objc_opt_class());
    v10 = objc_opt_class();
    [v9 setDiscoveryFlags:0x800000];
    [v9 setLabel:@"HKBluetoothDeviceDataSource"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke;
    v22[3] = &unk_1E7383C38;
    v24 = v10;
    v11 = v3;
    v23 = v11;
    [v9 setDeviceFoundHandler:v22];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_12;
    v19[3] = &unk_1E7383C38;
    v21 = v10;
    v20 = v11;
    [v9 setDeviceLostHandler:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_13;
    v18[3] = &__block_descriptor_40_e17_v16__0__NSError_8lu32l8;
    v18[4] = v10;
    [v9 setErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_16;
    v16[3] = &unk_1E7380648;
    v16[4] = observer;
    v12 = v9;
    v17 = v12;
    [v12 activateWithCompletion:v16];
    objc_storeStrong(observer + 5, v9);
    os_unfair_lock_unlock(observer + 8);
    v13 = v17;
    observer = v12;
  }

  return observer;
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_13_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error during CBDiscovery: %{public}@", &v4, 0x16u);
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_16_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = OUTLINED_FUNCTION_0_11(v4);
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Error activating CBDiscovery: %{public}@", v6, 0x16u);
}

- (void)makeAndRegisterBridgedObserverForKey:(uint64_t)a1 handle:.cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_1_13(&dword_19197B000, v3, v4, "[%{public}@] Unsupported registration key: %{public}@", v5, v6, v7, v8);
}

- (void)unregisterBridgedObserver:(uint64_t)a1 forKey:.cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_1_13(&dword_19197B000, v3, v4, "[%{public}@] Unsupported unregistration key: %{public}@", v5, v6, v7, v8);
}

@end