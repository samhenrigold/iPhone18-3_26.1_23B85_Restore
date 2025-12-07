@interface _HKWristDetectionSettingManagerObserverBridge
- (_HKWristDetectionSettingManagerObserverBridge)initWithHandle:(id)handle;
- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change;
@end

@implementation _HKWristDetectionSettingManagerObserverBridge

- (_HKWristDetectionSettingManagerObserverBridge)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = _HKWristDetectionSettingManagerObserverBridge;
  v6 = [(_HKWristDetectionSettingManagerObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _HKInitializeLogging(changeCopy, v5);
  v8 = HKLogInfrastructure(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = objc_opt_class();
    v9 = v16;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed change in wrist detection setting, notifying observers", &v15, 0xCu);
  }

  handle = self->_handle;
  null = [MEMORY[0x1E695DFB0] null];
  v12 = MEMORY[0x1E696AD98];
  isWristDetectEnabled = [changeCopy isWristDetectEnabled];

  v14 = [v12 numberWithBool:isWristDetectEnabled];
  [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:null newValue:v14];
}

@end