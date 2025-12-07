@interface HKCoreTelephonySatelliteClient
- (BOOL)isSatelliteSupportedForEmergencyDemo;
- (HKCoreTelephonySatelliteClient)init;
- (HKCoreTelephonySatelliteClient)initWithDelegate:(id)delegate queue:(id)queue;
- (HKCoreTelephonySatelliteClientDelegate)delegate;
- (void)stateChanged:(id)changed;
@end

@implementation HKCoreTelephonySatelliteClient

- (HKCoreTelephonySatelliteClient)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = HKCoreTelephonySatelliteClient;
  v8 = [(HKCoreTelephonySatelliteClient *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_queue, queue);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = [objc_alloc(MEMORY[0x1E6965080]) initWithDelegate:v9 queue:v9->_queue];
    stewieStateMonitor = v9->_stewieStateMonitor;
    v9->_stewieStateMonitor = v10;

    [(CTStewieStateMonitor *)v9->_stewieStateMonitor start];
    getState = [(CTStewieStateMonitor *)v9->_stewieStateMonitor getState];
    v13 = [getState copy];
    cachedStewieState = v9->_cachedStewieState;
    v9->_cachedStewieState = v13;
  }

  return v9;
}

- (HKCoreTelephonySatelliteClient)init
{
  v3 = HKCreateSerialDispatchQueue(self, @"HKCoreTelephonySatelliteClient");
  v4 = [(HKCoreTelephonySatelliteClient *)self initWithDelegate:0 queue:v3];

  return v4;
}

- (void)stateChanged:(id)changed
{
  v14 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  os_unfair_lock_lock(&self->_lock);
  v5 = [changedCopy copy];

  cachedStewieState = self->_cachedStewieState;
  self->_cachedStewieState = v5;

  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging(v7, v8);
  v9 = HKLogMedicalID;
  if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *v13 = 138412290;
    *&v13[4] = objc_opt_class();
    v11 = *&v13[4];
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[%@][Satellite Support] Satellite support changed", v13, 0xCu);
  }

  v12 = [(HKCoreTelephonySatelliteClient *)self delegate:*v13];
  [v12 satelliteSupportChanged:self];
}

- (BOOL)isSatelliteSupportedForEmergencyDemo
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(CTStewieState *)self->_cachedStewieState isDemoAllowedForService:1];
  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging(v4, v5);
  v6 = HKLogMedicalID;
  if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = v3;
    v8 = v11;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[%@][Satellite Support] Fetched satellite support as: %d", &v10, 0x12u);
  }

  return v3;
}

- (HKCoreTelephonySatelliteClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end