@interface PRUISDeviceMotionProvider
+ (id)motionProvider;
- (BOOL)_isLightSourceSubscriptionActive;
- (BOOL)areMotionEventsAvailable;
- (BOOL)isGeneratingMotionEvents;
- (PRUISDeviceMotionProvider)init;
- (PRUISDeviceMotionProvider)initWithMotionSource:(id)source;
- (PRUISDeviceMotionProviderDelegate)delegate;
- (double)_scaleRotation:(float64x2_t *)rotation@<X2> byFactor:(_OWORD *)factor@<X8>;
- (id)__lock_lightSourceSubscription;
- (id)_activeOrientationChangedDate;
- (id)_lightSourceSubscription;
- (id)referenceAttitude;
- (int64_t)_activeOrientation;
- (int64_t)_motionActivityLevel;
- (int64_t)_previousOrientation;
- (void)_cancelDampeningTimer;
- (void)_invalidateLightSourceSubscription;
- (void)_lock_invalidateLightSourceSubscription;
- (void)_lock_setLightSourceSubscriptionActive:(BOOL)active;
- (void)_motionGenerationQueue_cancelDampeningTimer;
- (void)_motionGenerationQueue_motionProvider:(id)provider motionActivityLevelDidUpdate:(int64_t)update;
- (void)_motionGenerationQueue_motionProvider:(void *)provider motionDidUpdateWithRotation:(_OWORD *)rotation;
- (void)_motionGenerationQueue_processDampeningStep:(float64x2_t *)step;
- (void)_motionGenerationQueue_processDeviceMotion:(id)motion;
- (void)_motionGenerationQueue_startDampeningToZeroFromRotation:(__int128 *)rotation;
- (void)_motionGenerationQueue_startGeneratingMotionEvents;
- (void)_motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:(int64_t)level invalidateLightSourceSubscription:(BOOL)subscription;
- (void)_motionProvider:(id)provider motionActivityLevelDidUpdate:(int64_t)update;
- (void)_motionProvider:(void *)provider motionDidUpdateWithRotation:(__int128 *)rotation;
- (void)_previousAttitudeQuaternion;
- (void)_setActiveOrientation:(int64_t)orientation;
- (void)_setLightSourceSubscriptionActive:(BOOL)active;
- (void)_setMotionActivityLevel:(int64_t)level;
- (void)_setPreviousAttitudeQuaternion:(_OWORD *)quaternion;
- (void)_stopGeneratingMotionEventsRightNow;
- (void)dealloc;
- (void)invalidate;
- (void)pauseGeneratingMotionEvents;
- (void)resetReferenceAttitude;
- (void)setGeneratingMotionEvents:(BOOL)events;
- (void)setMotionUpdateInterval:(double)interval;
- (void)setReferenceAttitude:(id)attitude;
- (void)startGeneratingMotionEvents;
- (void)stopGeneratingMotionEvents;
@end

@implementation PRUISDeviceMotionProvider

- (PRUISDeviceMotionProvider)initWithMotionSource:(id)source
{
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = PRUISDeviceMotionProvider;
  v6 = [(PRUISDeviceMotionProvider *)&v22 init];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    objc_storeStrong(v6 + 3, source);
    *(v6 + 29) = 0x3F9111F0C34C1A8BLL;
    *(v6 + 8) = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
    v9 = BSDispatchQueueCreateWithQualityOfService();
    v10 = *(v6 + 10);
    *(v6 + 10) = v9;

    v11 = BSDispatchQueueCreateWithQualityOfService();
    v12 = *(v6 + 6);
    *(v6 + 6) = v11;

    *(v6 + 22) = 0;
    *(v6 + 7) = 0;
    v6[144] = 0;
    v20 = _simd_cos_d2(0);
    v21 = _simd_cos_d2(0);
    v19 = _simd_sin_d2(0);
    v13 = _simd_sin_d2(0);
    v14.f64[0] = v21.f64[0];
    v14.f64[1] = v19.f64[1];
    v15 = vdupq_lane_s64(*&v13.f64[0], 0);
    v16 = vzip1q_s64(v13, v20);
    v13.f64[1] = v20.f64[1];
    v17.f64[1] = v15.f64[1];
    v17.f64[0] = -v19.f64[0];
    v15.f64[0] = -v20.f64[0];
    *(v6 + 10) = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(v19, v19, 8uLL), v13), v15), vzip1q_s64(v19, v21), vmulq_f64(vextq_s8(v20, v20, 8uLL), v14));
    *(v6 + 11) = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v17, v19, 1), vzip1q_s64(v21, v19)), v16, vmulq_f64(v20, vextq_s8(v20, v21, 8uLL)));
    *(v6 + 200) = xmmword_1CAF024B0;
  }

  return v6;
}

- (void)dealloc
{
  [(PRUISDeviceMotionProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRUISDeviceMotionProvider;
  [(PRUISDeviceMotionProvider *)&v3 dealloc];
}

- (PRUISDeviceMotionProvider)init
{
  [(PRUISDeviceMotionProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)motionProvider
{
  if (motionProvider_onceToken != -1)
  {
    +[PRUISDeviceMotionProvider motionProvider];
  }

  v3 = motionProvider_coreMotionProvider;

  return v3;
}

void __43__PRUISDeviceMotionProvider_motionProvider__block_invoke()
{
  v0 = [PRUISDeviceMotionProvider alloc];
  v3 = objc_alloc_init(MEMORY[0x1E69634D0]);
  v1 = [(PRUISDeviceMotionProvider *)v0 initWithMotionSource:v3];
  v2 = motionProvider_coreMotionProvider;
  motionProvider_coreMotionProvider = v1;
}

- (BOOL)areMotionEventsAvailable
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) != 0)
  {
    return 0;
  }

  motionSource = self->_motionSource;
  if (!motionSource)
  {
    return 1;
  }

  return [(CMMotionManager *)motionSource isDeviceMotionAvailable];
}

- (void)setMotionUpdateInterval:(double)interval
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0 && self->_motionUpdateInterval != interval)
  {
    self->_motionUpdateInterval = interval;
    motionSource = self->_motionSource;

    [(CMMotionManager *)motionSource setDeviceMotionUpdateInterval:interval];
  }
}

- (void)startGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    objc_initWeak(&location, self);
    motionGenerationQueue = self->_motionGenerationQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __56__PRUISDeviceMotionProvider_startGeneratingMotionEvents__block_invoke;
    v4[3] = &unk_1E83A72A8;
    objc_copyWeak(&v5, &location);
    dispatch_async(motionGenerationQueue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __56__PRUISDeviceMotionProvider_startGeneratingMotionEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionGenerationQueue_startGeneratingMotionEvents];
}

- (void)_motionGenerationQueue_startGeneratingMotionEvents
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    BSDispatchQueueAssert();
    if (![(PRUISDeviceMotionProvider *)self isGeneratingMotionEvents])
    {
      if (self->_motionSource)
      {
        [(PRUISDeviceMotionProvider *)self _motionGenerationQueue_cancelDampeningTimer];
        isDeviceMotionAvailable = [(CMMotionManager *)self->_motionSource isDeviceMotionAvailable];
        if (isDeviceMotionAvailable)
        {
          _lightSourceSubscription = [(PRUISDeviceMotionProvider *)self _lightSourceSubscription];
          [(CMMotionManager *)self->_motionSource setDeviceMotionUpdateInterval:self->_motionUpdateInterval];
          [(CMMotionManager *)self->_motionSource setPowerConservationMode:3];
          _wantsNorthByNorthwestTreatment = [(PRUISDeviceMotionProvider *)self _wantsNorthByNorthwestTreatment];
          if (_wantsNorthByNorthwestTreatment)
          {
            _wantsNorthByNorthwestTreatment = [(CMMotionManager *)self->_motionSource setShouldResetStartingReference:0];
          }

          v6 = PRUISLogMotionEvents(_wantsNorthByNorthwestTreatment);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "Starting motion updates", buf, 2u);
          }

          v7 = objc_opt_new();
          [v7 setUnderlyingQueue:self->_motionGenerationQueue];
          objc_initWeak(buf, self);
          motionSource = self->_motionSource;
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke;
          v9[3] = &unk_1E83A72D0;
          objc_copyWeak(&v10, buf);
          [(CMMotionManager *)motionSource startDeviceMotionUpdatesToQueue:v7 withHandler:v9];
          [(PRUISDeviceMotionProvider *)self setGeneratingMotionEvents:1];
          objc_destroyWeak(&v10);
          objc_destroyWeak(buf);
        }

        else
        {
          v7 = PRUISLogMotionEvents(isDeviceMotionAvailable);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_1CAE63000, v7, OS_LOG_TYPE_DEFAULT, "Device motion updates are not available.", buf, 2u);
          }
        }
      }
    }
  }
}

void __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && [WeakRetained isGeneratingMotionEvents])
  {
    v9 = [v8 _wantsNorthByNorthwestTreatment];
    v10 = v9;
    if (v9)
    {
      v9 = [v8 _isLightSourceSubscriptionActive];
      if ((v9 & 1) == 0)
      {
        v11 = PRUISLogMotionEvents(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke_cold_1();
        }

        goto LABEL_15;
      }
    }

    if (v6)
    {
      v11 = PRUISLogMotionEvents(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke_cold_2(v6, v11);
      }

      goto LABEL_15;
    }

    v12 = [MEMORY[0x1E698E730] sharedInstance];
    v13 = [v12 deviceClass];

    if (v13 == 2)
    {
      [v8 _setActiveOrientation:{objc_msgSend(*MEMORY[0x1E69DDA98], "activeInterfaceOrientation")}];
    }

    if (!v10)
    {
      v14 = [v8 referenceAttitude];

      if (!v14)
      {
        v11 = [v5 attitude];
        [v8 setReferenceAttitude:v11];
LABEL_15:

        goto LABEL_16;
      }
    }

    [v8 _motionGenerationQueue_processDeviceMotion:v5];
  }

LABEL_16:
}

- (void)stopGeneratingMotionEvents
{
  objc_initWeak(&location, self);
  motionGenerationQueue = self->_motionGenerationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PRUISDeviceMotionProvider_stopGeneratingMotionEvents__block_invoke;
  v4[3] = &unk_1E83A72A8;
  objc_copyWeak(&v5, &location);
  dispatch_async(motionGenerationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __55__PRUISDeviceMotionProvider_stopGeneratingMotionEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:0 invalidateLightSourceSubscription:1];
}

- (void)_stopGeneratingMotionEventsRightNow
{
  BSDispatchQueueAssertNot();
  motionGenerationQueue = self->_motionGenerationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PRUISDeviceMotionProvider__stopGeneratingMotionEventsRightNow__block_invoke;
  block[3] = &unk_1E83A72F8;
  block[4] = self;
  dispatch_sync(motionGenerationQueue, block);
}

uint64_t __64__PRUISDeviceMotionProvider__stopGeneratingMotionEventsRightNow__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 216) = 1;
  [*(a1 + 32) _motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:0 invalidateLightSourceSubscription:1];
  v2 = *(a1 + 32);

  return [v2 _motionGenerationQueue_cancelDampeningTimer];
}

- (void)pauseGeneratingMotionEvents
{
  objc_initWeak(&location, self);
  motionGenerationQueue = self->_motionGenerationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PRUISDeviceMotionProvider_pauseGeneratingMotionEvents__block_invoke;
  v4[3] = &unk_1E83A72A8;
  objc_copyWeak(&v5, &location);
  dispatch_async(motionGenerationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__PRUISDeviceMotionProvider_pauseGeneratingMotionEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:1 invalidateLightSourceSubscription:0];
}

- (void)_motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel:(int64_t)level invalidateLightSourceSubscription:(BOOL)subscription
{
  v18 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __130__PRUISDeviceMotionProvider__motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel_invalidateLightSourceSubscription___block_invoke;
  aBlock[3] = &unk_1E83A7320;
  subscriptionCopy = subscription;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  if ([(PRUISDeviceMotionProvider *)self isGeneratingMotionEvents])
  {
    motionSource = self->_motionSource;
    if (motionSource)
    {
      isDeviceMotionActive = [(CMMotionManager *)motionSource isDeviceMotionActive];
      if (isDeviceMotionActive)
      {
        v10 = PRUISLogMotionEvents(isDeviceMotionActive);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = @"Stopping";
          if (level == 1)
          {
            v11 = @"Pausing";
          }

          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_impl(&dword_1CAE63000, v10, OS_LOG_TYPE_DEFAULT, "%@ motion updates", buf, 0xCu);
        }

        if (!self->_motionGenerationQueue_deallocating)
        {
          os_unfair_lock_lock(&self->_lock);
          v12 = *&self->_anon_a0[16];
          v13 = *self->_anon_a0;
          os_unfair_lock_unlock(&self->_lock);
          *buf = v13;
          v17 = v12;
          [(PRUISDeviceMotionProvider *)self _motionGenerationQueue_startDampeningToZeroFromRotation:buf];
        }

        [(CMMotionManager *)self->_motionSource stopDeviceMotionUpdates:v12];
        [(PRUISDeviceMotionProvider *)self resetReferenceAttitude];
        [(PRUISDeviceMotionProvider *)self setGeneratingMotionEvents:0];
      }
    }
  }

  v7[2](v7);
}

id *__130__PRUISDeviceMotionProvider__motionGenerationQueue_stopGeneratingMotionEventsWithActivityLevel_invalidateLightSourceSubscription___block_invoke(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] _invalidateLightSourceSubscription];
  }

  return result;
}

- (void)resetReferenceAttitude
{
  os_unfair_lock_lock(&self->_lock);
  [(PRUISDeviceMotionProvider *)self _lock_resetReferenceAttitude];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)referenceAttitude
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_referenceAttitude;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReferenceAttitude:(id)attitude
{
  attitudeCopy = attitude;
  os_unfair_lock_lock(&self->_lock);
  lock_referenceAttitude = self->_lock_referenceAttitude;
  self->_lock_referenceAttitude = attitudeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGeneratingMotionEvents:(BOOL)events
{
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_lock_isGeneratingMotionEvents = events;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)isGeneratingMotionEvents
{
  os_unfair_lock_lock(&self->_lock);
  lock_isGeneratingMotionEvents = self->_lock_isGeneratingMotionEvents;
  os_unfair_lock_unlock(&self->_lock);
  return lock_isGeneratingMotionEvents;
}

- (void)_setActiveOrientation:(int64_t)orientation
{
  v14 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_activeOrientation != orientation)
    {
      v6 = PRUISLogMotionEvents(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        lock_activeOrientation = self->_lock_activeOrientation;
        v10 = 134218240;
        v11 = lock_activeOrientation;
        v12 = 2048;
        orientationCopy = orientation;
        _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "Active orientation changed from %lu to %lu, reseting reference attitude", &v10, 0x16u);
      }

      self->_lock_previousOrientation = self->_lock_activeOrientation;
      self->_lock_activeOrientation = orientation;
      v8 = [MEMORY[0x1E695DF00] now];
      lock_activeOrientationChangedDate = self->_lock_activeOrientationChangedDate;
      self->_lock_activeOrientationChangedDate = v8;

      [(PRUISDeviceMotionProvider *)self _lock_resetReferenceAttitude];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (int64_t)_activeOrientation
{
  os_unfair_lock_lock(&self->_lock);
  lock_activeOrientation = self->_lock_activeOrientation;
  os_unfair_lock_unlock(&self->_lock);
  return lock_activeOrientation;
}

- (int64_t)_previousOrientation
{
  os_unfair_lock_lock(&self->_lock);
  lock_previousOrientation = self->_lock_previousOrientation;
  os_unfair_lock_unlock(&self->_lock);
  return lock_previousOrientation;
}

- (id)_activeOrientationChangedDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_activeOrientationChangedDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setPreviousAttitudeQuaternion:(_OWORD *)quaternion
{
  os_unfair_lock_lock((self + 88));
  v5 = quaternion[1];
  *(self + 96) = *quaternion;
  *(self + 112) = v5;

  os_unfair_lock_unlock((self + 88));
}

- (void)_previousAttitudeQuaternion
{
  os_unfair_lock_lock((self + 88));
  v4 = *(self + 112);
  *a2 = *(self + 96);
  a2[1] = v4;

  os_unfair_lock_unlock((self + 88));
}

- (void)_setLightSourceSubscriptionActive:(BOOL)active
{
  activeCopy = active;
  os_unfair_lock_lock(&self->_lock);
  [(PRUISDeviceMotionProvider *)self _lock_setLightSourceSubscriptionActive:activeCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setLightSourceSubscriptionActive:(BOOL)active
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_lock_lightSourceSubscriptionActive != active)
  {
    activeCopy = active;
    v5 = PRUISLogMotionEvents(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = activeCopy;
      _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Light source subscription is active: %{BOOL}u", v6, 8u);
    }

    self->_lock_lightSourceSubscriptionActive = activeCopy;
  }
}

- (BOOL)_isLightSourceSubscriptionActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_lightSourceSubscriptionActive = self->_lock_lightSourceSubscriptionActive;
  os_unfair_lock_unlock(&self->_lock);
  return lock_lightSourceSubscriptionActive;
}

- (void)_setMotionActivityLevel:(int64_t)level
{
  v10 = *MEMORY[0x1E69E9840];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_motionActivityLevel == level)
    {

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v6 = PRUISLogMotionEvents(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (level > 2)
        {
          v7 = @"unknown";
        }

        else
        {
          v7 = off_1E83A73E0[level];
        }

        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "Motion activity level changed: %@", &v8, 0xCu);
      }

      self->_lock_motionActivityLevel = level;
      os_unfair_lock_unlock(&self->_lock);
      [(PRUISDeviceMotionProvider *)self _motionProvider:self motionActivityLevelDidUpdate:level];
    }
  }
}

- (int64_t)_motionActivityLevel
{
  os_unfair_lock_lock(&self->_lock);
  lock_motionActivityLevel = self->_lock_motionActivityLevel;
  os_unfair_lock_unlock(&self->_lock);
  return lock_motionActivityLevel;
}

- (id)_lightSourceSubscription
{
  os_unfair_lock_lock(&self->_lock);
  __lock_lightSourceSubscription = [(PRUISDeviceMotionProvider *)self __lock_lightSourceSubscription];
  os_unfair_lock_unlock(&self->_lock);

  return __lock_lightSourceSubscription;
}

- (id)__lock_lightSourceSubscription
{
  if ([(PRUISDeviceMotionProvider *)self _wantsNorthByNorthwestTreatment])
  {
    lock_lightSourceSubscription = self->_lock_lightSourceSubscription;
    if (!lock_lightSourceSubscription || [(PRUISLightSourceSubscription *)lock_lightSourceSubscription isInvalidated])
    {
      [(PRUISDeviceMotionProvider *)self _lock_invalidateLightSourceSubscription];
      [(PRUISDeviceMotionProvider *)self _lock_setLightSourceSubscriptionActive:0];
      objc_initWeak(&location, self);
      lock_lightSourceSubscriptionQueue = self->_lock_lightSourceSubscriptionQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PRUISDeviceMotionProvider___lock_lightSourceSubscription__block_invoke;
      v9[3] = &unk_1E83A7348;
      objc_copyWeak(&v10, &location);
      v5 = [PRUISLightSourceSubscription subscriberOnQueue:lock_lightSourceSubscriptionQueue activityLevelChangeHandler:v9];
      v6 = self->_lock_lightSourceSubscription;
      self->_lock_lightSourceSubscription = v5;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    v7 = self->_lock_lightSourceSubscription;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __59__PRUISDeviceMotionProvider___lock_lightSourceSubscription__block_invoke(uint64_t a1, unsigned int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  v4 = a2 > 1;
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [WeakRetained _setLightSourceSubscriptionActive:v4];
  [v6 _setMotionActivityLevel:v5];
}

- (void)_invalidateLightSourceSubscription
{
  os_unfair_lock_lock(&self->_lock);
  [(PRUISDeviceMotionProvider *)self _lock_invalidateLightSourceSubscription];
  os_unfair_lock_unlock(&self->_lock);

  [(PRUISDeviceMotionProvider *)self _setLightSourceSubscriptionActive:0];
}

- (void)_lock_invalidateLightSourceSubscription
{
  lock_lightSourceSubscription = self->_lock_lightSourceSubscription;
  if (lock_lightSourceSubscription)
  {
    [(PRUISLightSourceSubscription *)lock_lightSourceSubscription invalidate];
    v4 = self->_lock_lightSourceSubscription;
    self->_lock_lightSourceSubscription = 0;
  }
}

- (void)_motionGenerationQueue_processDeviceMotion:(id)motion
{
  v93 = *MEMORY[0x1E69E9840];
  motionCopy = motion;
  BSDispatchQueueAssert();
  attitude = [motionCopy attitude];

  if (![(PRUISDeviceMotionProvider *)self _wantsNorthByNorthwestTreatment])
  {
    referenceAttitude = [(PRUISDeviceMotionProvider *)self referenceAttitude];
    [attitude multiplyByInverseOfAttitude:referenceAttitude];

    [attitude quaternion];
    v27.f64[1] = v26;
    v29.f64[1] = v28;
    v84 = v29;
    v86 = v27;
    goto LABEL_7;
  }

  v6 = CACurrentMediaTime() + -0.045;
  os_unfair_lock_lock(&self->_lock);
  __lock_lightSourceSubscription = [(PRUISDeviceMotionProvider *)self __lock_lightSourceSubscription];
  v8 = [__lock_lightSourceSubscription lightSourceOrientationQuaternionForTimestamp:v6];
  os_unfair_lock_unlock(&self->_lock);
  [v8 timestamp];
  v9 = [PRUISDeviceMotionProvider _isTimestamp:"_isTimestamp:almostEqualToTimestamp:withinThreshold:" almostEqualToTimestamp:? withinThreshold:?];
  if (v9)
  {
    [v8 orientation];
    v11.f64[1] = v10;
    v13.f64[1] = v12;
    v83 = v11;
    v85 = v13;
    quaternion = [attitude quaternion];
    v79 = v15;
    v80 = v16;
    *(&v15 + 1) = v16;
    v77 = v17;
    v78 = v18;
    *&v17.f64[1] = v18;
    v81 = v17;
    v82 = v15;
    v19 = PRUISLogMotionEvents(quaternion);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      buf[0].n128_u32[0] = 134218752;
      *(buf[0].n128_u64 + 4) = *&v77.f64[0];
      buf[0].n128_u16[6] = 2048;
      *(&buf[0].n128_u64[1] + 6) = v78;
      buf[1].n128_u16[3] = 2048;
      buf[1].n128_u64[1] = v79;
      v91 = 2048;
      v92 = v80;
      _os_log_debug_impl(&dword_1CAE63000, v19, OS_LOG_TYPE_DEBUG, "Device motion attitude: x: %f, y: %f, z: %f, w: %f", buf, 0x2Au);
    }

    v20 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(v85, v85), vmulq_f64(v83, v83)));
    v21 = vmulq_n_f64(vmulq_f64(v83, xmmword_1CAF024C0), v20);
    v22 = vmulq_n_f64(vnegq_f64(v85), v20);
    v23 = vnegq_f64(v81);
    v24 = vextq_s8(v82, vnegq_f64(v82), 8uLL);
    v84 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v82, v22, 1), v24, v22.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v81, v21, 1), vextq_s8(v23, v81, 8uLL), v21.f64[0]));
    v86 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v23, v22, 1), vextq_s8(v81, v23, 8uLL), v22.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v82, v21, 1), v24, v21.f64[0]));

LABEL_7:
    mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
    deviceClass = [mEMORY[0x1E698E730] deviceClass];

    if (deviceClass != 2)
    {
LABEL_24:
      buf[0] = v84;
      buf[1] = v86;
      [(PRUISDeviceMotionProvider *)self _setPreviousAttitudeQuaternion:buf];
      buf[0] = v84;
      buf[1] = v86;
      [(PRUISDeviceMotionProvider *)self _motionGenerationQueue_motionProvider:self motionDidUpdateWithRotation:buf];
      goto LABEL_25;
    }

    _activeOrientation = [(PRUISDeviceMotionProvider *)self _activeOrientation];
    switch(_activeOrientation)
    {
      case 2:
        v60 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF024D0, v84, 1), xmmword_1CAF024F0, v84.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(vnegq_f64(0), v86, 1), xmmword_1CAF02500, v86.f64[0]));
        v61 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(0, v84, 1), xmmword_1CAF024E0, v84.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF024D0, v86, 1), xmmword_1CAF024F0, v86.f64[0]));
        v62 = vnegq_f64(v60);
        v63 = vextq_s8(v61, vnegq_f64(v61), 8uLL);
        v51 = vmlaq_f64(vmulq_f64(v61, 0), 0, v63);
        v52 = vmlaq_f64(vmulq_f64(v62, 0), 0, vextq_s8(v60, v62, 8uLL));
        v64 = vextq_s8(v62, v60, 8uLL);
        v65 = vdupq_n_s64(0x3C91A62633145C07uLL);
        v58 = vaddq_f64(v64, vmulq_f64(v60, v65));
        v59 = vaddq_f64(v63, vmulq_f64(v61, v65));
        break;
      case 3:
        v47 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF02510, v84, 1), xmmword_1CAF02520, v84.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(vnegq_f64(0), v86, 1), xmmword_1CAF02500, v86.f64[0]));
        v48 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(0, v84, 1), xmmword_1CAF024E0, v84.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF02510, v86, 1), xmmword_1CAF02520, v86.f64[0]));
        v49 = vnegq_f64(v47);
        v50 = vextq_s8(v48, vnegq_f64(v48), 8uLL);
        v51 = vmlaq_f64(vmulq_f64(v48, 0), 0, v50);
        v52 = vmlaq_f64(vmulq_f64(v49, 0), 0, vextq_s8(v47, v49, 8uLL));
        v53 = vextq_s8(v49, v47, 8uLL);
        v54 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
        v55 = vmulq_f64(v48, v54);
        v56 = vmulq_f64(v47, v54);
        v57 = vdupq_n_s64(0x3FE6A09E667F3BCCuLL);
        v58 = vmlaq_f64(v56, v57, v53);
        v59 = vmlaq_f64(v55, v57, v50);
        break;
      case 4:
        v33 = vnegq_f64(0);
        v34 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF02530, v84, 1), xmmword_1CAF02540, v84.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(0, v86, 1), xmmword_1CAF024E0, v86.f64[0]));
        v35 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v33, v84, 1), xmmword_1CAF02500, v84.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(xmmword_1CAF02530, v86, 1), xmmword_1CAF02540, v86.f64[0]));
        v36 = vnegq_f64(v34);
        v37 = vextq_s8(v35, vnegq_f64(v35), 8uLL);
        v38 = vmlsq_f64(vmulq_f64(v35, v33), v37, 0);
        v39 = vmlsq_f64(vmulq_f64(v34, 0), vextq_s8(v34, v36, 8uLL), 0);
        v40 = vextq_s8(v36, v34, 8uLL);
        v41 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
        v42 = vmulq_f64(v35, v41);
        v43 = vmulq_f64(v34, v41);
        v44 = vdupq_n_s64(0xBFE6A09E667F3BCCLL);
        v86 = vaddq_f64(vmlaq_f64(v42, v44, v37), v39);
        v45 = vaddq_f64(vmlaq_f64(v43, v44, v40), v38);
LABEL_18:
        v84 = v45;
        goto LABEL_19;
      default:
LABEL_19:
        if ([(PRUISDeviceMotionProvider *)self _previousOrientation])
        {
          _activeOrientationChangedDate = [(PRUISDeviceMotionProvider *)self _activeOrientationChangedDate];
          [_activeOrientationChangedDate timeIntervalSinceNow];
          v68 = fabs(v67);

          if (v68 < 1.0)
          {
            memset(buf, 0, sizeof(buf));
            v69 = objc_msgSend__previousAttitudeQuaternion(self);
            v70 = PRUISLogMotionEvents(v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              [(PRUISDeviceMotionProvider *)buf _motionGenerationQueue_processDeviceMotion:v70, v71, v72, v73, v74, v75, v76];
            }

            v88[0] = buf[0];
            v88[1] = buf[1];
            v87[0] = v84;
            v87[1] = v86;
            simd_slerp(v88, v87, v89, v68);
            v84 = v89[0];
            v86 = v89[1];
          }
        }

        goto LABEL_24;
    }

    v86 = vaddq_f64(v59, v52);
    v45 = vaddq_f64(v58, v51);
    goto LABEL_18;
  }

  v46 = PRUISLogMotionEvents(v9);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    [PRUISDeviceMotionProvider _motionGenerationQueue_processDeviceMotion:];
  }

LABEL_25:
}

- (void)_motionProvider:(void *)provider motionDidUpdateWithRotation:(__int128 *)rotation
{
  providerCopy = provider;
  v7 = *(self + 80);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PRUISDeviceMotionProvider__motionProvider_motionDidUpdateWithRotation___block_invoke;
  v10[3] = &unk_1E83A7370;
  selfCopy = self;
  v14 = providerCopy;
  v8 = rotation[1];
  v11 = *rotation;
  v12 = v8;
  v9 = providerCopy;
  dispatch_async(v7, v10);
}

uint64_t __73__PRUISDeviceMotionProvider__motionProvider_motionDidUpdateWithRotation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v1 = *(a1 + 72);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  return [v2 _motionGenerationQueue_motionProvider:v1 motionDidUpdateWithRotation:v5];
}

- (void)_motionGenerationQueue_motionProvider:(void *)provider motionDidUpdateWithRotation:(_OWORD *)rotation
{
  providerCopy = provider;
  BSDispatchQueueAssert();
  os_unfair_lock_lock((self + 88));
  v7 = rotation[1];
  *(self + 160) = *rotation;
  *(self + 176) = v7;
  os_unfair_lock_unlock((self + 88));
  WeakRetained = objc_loadWeakRetained((self + 224));
  v9 = PRUISLogMotionEvents(WeakRetained);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(PRUISDeviceMotionProvider *)rotation _motionGenerationQueue_motionProvider:v9 motionDidUpdateWithRotation:v10, v11, v12, v13, v14, v15];
  }

  v16 = rotation[1];
  v17[0] = *rotation;
  v17[1] = v16;
  [WeakRetained motionProvider:providerCopy motionDidUpdateWithRotation:v17];
}

- (void)_motionProvider:(id)provider motionActivityLevelDidUpdate:(int64_t)update
{
  providerCopy = provider;
  motionGenerationQueue = self->_motionGenerationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PRUISDeviceMotionProvider__motionProvider_motionActivityLevelDidUpdate___block_invoke;
  block[3] = &unk_1E83A7398;
  block[4] = self;
  v10 = providerCopy;
  updateCopy = update;
  v8 = providerCopy;
  dispatch_async(motionGenerationQueue, block);
}

- (void)_motionGenerationQueue_motionProvider:(id)provider motionActivityLevelDidUpdate:(int64_t)update
{
  providerCopy = provider;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained motionProvider:providerCopy motionActivityLevelDidUpdate:update];
}

- (void)_motionGenerationQueue_startDampeningToZeroFromRotation:(__int128 *)rotation
{
  v20 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  [self _motionGenerationQueue_cancelDampeningTimer];
  os_unfair_lock_lock((self + 88));
  if (*(self + 144) == 1)
  {

    os_unfair_lock_unlock((self + 88));
  }

  else
  {
    *(self + 144) = 1;
    *(self + 200) = 0x3FF0000000000000;
    os_unfair_lock_unlock((self + 88));
    v6 = PRUISLogMotionEvents(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(self + 208);
      *buf = 134217984;
      v19 = v7;
      _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "Starting dampening motion to zero over %f seconds", buf, 0xCu);
    }

    v8 = *(self + 232);
    v9 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"PRUISDeviceMotionProvider.dampening"];
    v10 = *(self + 192);
    *(self + 192) = v9;

    objc_initWeak(buf, self);
    v11 = *(self + 192);
    v12 = *(self + 80);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__PRUISDeviceMotionProvider__motionGenerationQueue_startDampeningToZeroFromRotation___block_invoke;
    v14[3] = &unk_1E83A73C0;
    objc_copyWeak(v17, buf);
    v13 = rotation[1];
    v15 = *rotation;
    v16 = v13;
    [v11 scheduleRepeatingWithFireInterval:v12 repeatInterval:v14 leewayInterval:v8 queue:v8 handler:v8 * 0.1];
    objc_destroyWeak(v17);
    objc_destroyWeak(buf);
  }
}

void __85__PRUISDeviceMotionProvider__motionGenerationQueue_startDampeningToZeroFromRotation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v5[0] = *(a1 + 32);
    v5[1] = v4;
    [WeakRetained _motionGenerationQueue_processDampeningStep:v5];
  }
}

- (void)_motionGenerationQueue_processDampeningStep:(float64x2_t *)step
{
  BSDispatchQueueAssert();
  os_unfair_lock_lock((self + 88));
  if (*(self + 144))
  {
    v5 = *(self + 200) - *(self + 232) / *(self + 208);
    *(self + 200) = v5;
    if (v5 <= 0.0)
    {
      *(self + 200) = 0;
      *(self + 144) = 0;
      os_unfair_lock_unlock((self + 88));
      v15 = _simd_cos_d2(0);
      v16 = _simd_cos_d2(0);
      v14 = _simd_sin_d2(0);
      v8 = _simd_sin_d2(0);
      v9.f64[0] = v16.f64[0];
      v9.f64[1] = v14.f64[1];
      v10 = vdupq_lane_s64(*&v8.f64[0], 0);
      v11 = vzip1q_s64(v8, v15);
      v8.f64[1] = v15.f64[1];
      v12.f64[1] = v10.f64[1];
      v12.f64[0] = -v14.f64[0];
      v10.f64[0] = -v15.f64[0];
      *buf = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(v14, v14, 8uLL), v8), v10), vzip1q_s64(v14, v16), vmulq_f64(vextq_s8(v15, v15, 8uLL), v9));
      v20 = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v12, v14, 1), vzip1q_s64(v16, v14)), v11, vmulq_f64(v15, vextq_s8(v15, v16, 8uLL)));
      [self _motionGenerationQueue_motionProvider:self motionDidUpdateWithRotation:buf];
      v13 = PRUISLogMotionEvents([self _motionGenerationQueue_cancelDampeningTimer]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CAE63000, v13, OS_LOG_TYPE_DEFAULT, "Dampening complete - reached zero rotation", buf, 2u);
      }
    }

    else
    {
      os_unfair_lock_unlock((self + 88));
      v6 = pow(1.0 - v5, 3.0);
      *buf = 0u;
      v20 = 0u;
      v7 = step[1];
      v17 = *step;
      v18 = v7;
      objc_msgSend__scaleRotation_byFactor_(self, (1.0 - v6));
      v17 = *buf;
      v18 = v20;
      [self _motionGenerationQueue_motionProvider:self motionDidUpdateWithRotation:&v17];
    }
  }

  else
  {

    os_unfair_lock_unlock((self + 88));
  }
}

- (double)_scaleRotation:(float64x2_t *)rotation@<X2> byFactor:(_OWORD *)factor@<X8>
{
  v4 = *rotation;
  v5 = rotation[1];
  v10 = 0u;
  v11 = 0u;
  v9[0] = 0uLL;
  v9[1] = xmmword_1CAF02550;
  v8[0] = v4;
  v8[1] = v5;
  simd_slerp(v9, v8, &v10, v2);
  result = v10.f64[0];
  v7 = v11;
  *factor = v10;
  factor[1] = v7;
  return result;
}

- (void)_cancelDampeningTimer
{
  objc_initWeak(&location, self);
  motionGenerationQueue = self->_motionGenerationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PRUISDeviceMotionProvider__cancelDampeningTimer__block_invoke;
  v4[3] = &unk_1E83A72A8;
  objc_copyWeak(&v5, &location);
  dispatch_async(motionGenerationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__PRUISDeviceMotionProvider__cancelDampeningTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionGenerationQueue_cancelDampeningTimer];
}

- (void)_motionGenerationQueue_cancelDampeningTimer
{
  BSDispatchQueueAssert();
  dampeningTimer = self->_dampeningTimer;
  if (dampeningTimer)
  {
    [(BSAbsoluteMachTimer *)dampeningTimer invalidate];
    v4 = self->_dampeningTimer;
    self->_dampeningTimer = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_isDampening = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  BSDispatchQueueAssertNot();
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {

    [(PRUISDeviceMotionProvider *)self _stopGeneratingMotionEventsRightNow];
  }
}

- (PRUISDeviceMotionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __79__PRUISDeviceMotionProvider__motionGenerationQueue_startGeneratingMotionEvents__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_ERROR, "Error while receiving motion updates: %@", &v2, 0xCu);
}

- (void)_motionGenerationQueue_processDeviceMotion:(uint64_t)a3 .cold.2(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(a1[1].n128_f64[0], *a1, a1, a2, a3, a4, a5, a6, a7, a8, v13);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
}

- (void)_motionGenerationQueue_motionProvider:(uint64_t)a3 motionDidUpdateWithRotation:(uint64_t)a4 .cold.1(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(a1[1].n128_f64[0], *a1, a1, a2, a3, a4, a5, a6, a7, a8, v13);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
}

@end