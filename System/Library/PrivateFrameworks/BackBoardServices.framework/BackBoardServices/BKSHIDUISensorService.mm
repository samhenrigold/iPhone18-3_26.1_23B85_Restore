@interface BKSHIDUISensorService
+ (id)sharedInstance;
- (BKSHIDUISensorCharacteristics)sensorCharacteristics;
- (BKSHIDUISensorService)init;
- (id)requestUISensorMode:(id)mode;
- (void)_lock_pushCurrentModeToServer;
- (void)proximityDidUnoccludeAfterWake;
@end

@implementation BKSHIDUISensorService

void __29__BKSHIDUISensorService_init__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(a1 + 32) _lock_pushCurrentModeToServer];
  v2 = (*(a1 + 32) + 24);

  os_unfair_lock_unlock(v2);
}

- (void)_lock_pushCurrentModeToServer
{
  v20 = *MEMORY[0x1E69E9840];
  if (([(BSCompoundAssertion *)self->_suppressionAssertion isActive]& 1) == 0)
  {
    orderedContext = [(BSCompoundAssertion *)self->_modeAssertion orderedContext];
    array = [orderedContext array];
    v5 = [BKSHIDUISensorMode _prevailingMode:?];

    p_lock_prevailingMode = &self->_lock_prevailingMode;
    if (BSEqualObjects())
    {
LABEL_19:

      return;
    }

    if ([orderedContext count] < 2)
    {
      v7 = BKLogUISensor();
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (!v9)
        {
          goto LABEL_12;
        }

        *buf = 138543362;
        v17 = v5;
        v10 = "prevailing client request: %{public}@";
        v11 = v7;
        v12 = 12;
      }

      else
      {
        if (!v9)
        {
          goto LABEL_12;
        }

        *buf = 0;
        v10 = "prevailing client request: none!";
        v11 = v7;
        v12 = 2;
      }

      _os_log_impl(&dword_186345000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

    else
    {
      v7 = BKLogUISensor();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [MEMORY[0x1E698E688] descriptionForRootObject:?];
        *buf = 138543618;
        v17 = v5;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_186345000, v7, OS_LOG_TYPE_DEFAULT, "prevailing client request: %{public}@ all modes:%{public}@", buf, 0x16u);
      }
    }

LABEL_12:

    objc_storeStrong(p_lock_prevailingMode, v5);
    if (v5)
    {
      v13 = [MEMORY[0x1E698E750] encodeObject:? error:?];
      v14 = 0;
      if (!v13)
      {
        v13 = BKLogUISensor();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v17 = v14;
          v18 = 2114;
          v19 = v5;
          _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "error encoding BKSHIDUISensorMode: %{public}@ : %{public}@", buf, 0x16u);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDRequestUISensorMode(v15, [v13 bs_bytesForMIG], [v13 bs_lengthForMIG]);
LABEL_18:

    goto LABEL_19;
  }
}

void __29__BKSHIDUISensorService_init__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(a1 + 32) _lock_pushCurrentModeToServer];
  v2 = (*(a1 + 32) + 24);

  os_unfair_lock_unlock(v2);
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_186 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_186, &__block_literal_global_187);
  }

  v3 = sharedInstance_service_188;

  return v3;
}

- (BKSHIDUISensorCharacteristics)sensorCharacteristics
{
  if (sensorCharacteristics_onceToken != -1)
  {
    dispatch_once(&sensorCharacteristics_onceToken, &__block_literal_global_8);
  }

  v3 = sensorCharacteristics_sCharacteristics;

  return v3;
}

void __46__BKSHIDUISensorService_sensorCharacteristics__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v2 = _BKSHIDGetUISensorCharacteristics(v0, &v11, &v10, v1);
  if (v2)
  {
    v3 = v2;
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v13) = v3;
      _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "Mach IPC error getting UI sensor characteristics: 0x%x", buf, 8u);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] bs_dataWithVMAllocatedBytes:? length:?];
    if (v4)
    {
      v5 = MEMORY[0x1E698E750];
      objc_opt_class();
      v6 = [v5 decodeObjectOfClass:? fromData:? error:?];
      v7 = 0;
      v8 = sensorCharacteristics_sCharacteristics;
      sensorCharacteristics_sCharacteristics = v6;

      if (!sensorCharacteristics_sCharacteristics)
      {
        v9 = BKLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v13 = v7;
          _os_log_error_impl(&dword_186345000, v9, OS_LOG_TYPE_ERROR, "decoding characteristics failed: %{public}@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)proximityDidUnoccludeAfterWake
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  _BKSHIDProximityDidUnoccludeAfterScreenWake(v2);
}

- (id)requestUISensorMode:(id)mode
{
  modeAssertion = self->_modeAssertion;
  modeCopy = mode;
  reason = [modeCopy reason];
  v6 = [BSCompoundAssertion acquireForReason:"acquireForReason:withContext:" withContext:?];

  return v6;
}

- (BKSHIDUISensorService)init
{
  v14.receiver = self;
  v14.super_class = BKSHIDUISensorService;
  v2 = [(BKSHIDUISensorService *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E698E658];
    v13 = v2;
    v5 = [v4 assertionWithIdentifier:? stateDidChangeHandler:?];
    modeAssertion = v13->_modeAssertion;
    v13->_modeAssertion = v5;

    v7 = MEMORY[0x1E698E658];
    v11 = MEMORY[0x1E69E9820];
    v12 = v13;
    v8 = [v7 assertionWithIdentifier:v11 stateDidChangeHandler:{3221225472, __29__BKSHIDUISensorService_init__block_invoke_2, &unk_1E6F46D70}];
    suppressionAssertion = v12->_suppressionAssertion;
    v12->_suppressionAssertion = v8;
  }

  return v3;
}

uint64_t __39__BKSHIDUISensorService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BKSHIDUISensorService);
  v1 = sharedInstance_service_188;
  sharedInstance_service_188 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end