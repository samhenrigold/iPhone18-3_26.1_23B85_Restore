@interface PRUISLightSourceSubscription
+ (id)subscriberOnQueue:(id)queue activityLevelChangeHandler:(id)handler;
- (PRUISLightSourceSubscription)initWithSubscription:(id)subscription;
- (id)_identityLightSource;
- (id)lightSourceOrientationQuaternionForTimestamp:(double)timestamp;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PRUISLightSourceSubscription

+ (id)subscriberOnQueue:(id)queue activityLevelChangeHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  v7 = objc_alloc(objc_opt_class());
  mEMORY[0x1E69AC030] = [MEMORY[0x1E69AC030] sharedInstance];
  v9 = [mEMORY[0x1E69AC030] subscribeOnQueue:queueCopy options:4 activityLevelChangeHandler:handlerCopy];

  v10 = [v7 initWithSubscription:v9];

  return v10;
}

- (PRUISLightSourceSubscription)initWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v9.receiver = self;
  v9.super_class = PRUISLightSourceSubscription;
  v6 = [(PRUISLightSourceSubscription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lightSourceSubscription, subscription);
  }

  return v7;
}

- (void)dealloc
{
  [(PRUISLightSourceSubscription *)self invalidate];
  lightSourceSubscription = self->_lightSourceSubscription;
  self->_lightSourceSubscription = 0;

  v4.receiver = self;
  v4.super_class = PRUISLightSourceSubscription;
  [(PRUISLightSourceSubscription *)&v4 dealloc];
}

- (void)invalidate
{
  if (([(LSSSubscription *)self->_lightSourceSubscription isInvalidated]& 1) == 0)
  {
    lightSourceSubscription = self->_lightSourceSubscription;

    [(LSSSubscription *)lightSourceSubscription invalidate];
  }
}

- (id)_identityLightSource
{
  v2 = [objc_alloc(MEMORY[0x1E69AC028]) initWithIntensity:0.0 angle:0.0 direction:0.0 orientation:0.0 timestamp:{0.0, 0, 0, 0, 0x3FF0000000000000, 0}];

  return v2;
}

- (id)lightSourceOrientationQuaternionForTimestamp:(double)timestamp
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(LSSSubscription *)self->_lightSourceSubscription lightSourceForTargetTime:?];
  if (!v5)
  {
    v6 = PRUISLogMotionEvents(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PRUISLightSourceSubscription lightSourceOrientationQuaternionForTimestamp:v6];
    }

    _identityLightSource = [(PRUISLightSourceSubscription *)self _identityLightSource];
  }

  orientation = [v5 orientation];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = PRUISLogMotionEvents(orientation);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [v5 timestamp];
    v20 = 134219264;
    v21 = v10;
    v22 = 2048;
    v23 = v12;
    v24 = 2048;
    v25 = v14;
    v26 = 2048;
    v27 = v16;
    v28 = 2048;
    v29 = v19;
    v30 = 2048;
    timestampCopy = timestamp;
    _os_log_debug_impl(&dword_1CAE63000, v17, OS_LOG_TYPE_DEBUG, "Light Source orientation: x: %f, y: %f, z: %f, w: %f, timestamp: %f, current time: %f", &v20, 0x3Eu);
  }

  return v5;
}

@end