@interface ARDeviceOrientationSensor
- (ARDeviceOrientationSensor)initWithMotionManager:(id)manager alignment:(int64_t)alignment;
- (ARSensorDelegate)delegate;
- (NSString)description;
- (void)changeReferenceFrame:(unint64_t)frame;
- (void)dealloc;
- (void)handleDeviceMotionUpdateWithMotion:(id)motion error:(id)error;
- (void)setInterval:(double)interval;
- (void)start;
- (void)stop;
@end

@implementation ARDeviceOrientationSensor

- (ARDeviceOrientationSensor)initWithMotionManager:(id)manager alignment:(int64_t)alignment
{
  v29 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  isDeviceMotionAvailable = [managerCopy isDeviceMotionAvailable];
  if ((isDeviceMotionAvailable & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_0 != -1)
    {
      [ARDeviceOrientationSensor initWithMotionManager:alignment:];
    }

    v14 = ARShouldUseLogTypeError_internalOSVersion_0;
    v15 = _ARLogSensor_0(isDeviceMotionAvailable);
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543618;
        v26 = v18;
        v27 = 2048;
        selfCopy2 = self;
        v19 = "%{public}@ <%p>: Unable to initialize ARDeviceOrientationSensor: Device motion from CMMotionManager not available.";
        v20 = v16;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v18 = NSStringFromClass(v22);
      *buf = 138543618;
      v26 = v18;
      v27 = 2048;
      selfCopy2 = self;
      v19 = "Error: %{public}@ <%p>: Unable to initialize ARDeviceOrientationSensor: Device motion from CMMotionManager not available.";
      v20 = v16;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    selfCopy3 = 0;
    goto LABEL_14;
  }

  v24.receiver = self;
  v24.super_class = ARDeviceOrientationSensor;
  v9 = [(ARDeviceOrientationSensor *)&v24 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_worldAlignment = alignment;
    objc_storeStrong(&v9->_motionManager, manager);
    v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v12 = p_isa[2];
    p_isa[2] = v11;

    [p_isa[2] setQualityOfService:33];
    [p_isa[2] setMaxConcurrentOperationCount:1];
  }

  self = p_isa;
  selfCopy3 = self;
LABEL_14:

  return selfCopy3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    motionManager = self->_motionManager;
    *buf = 138543874;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    v12 = 2048;
    v13 = motionManager;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc (%p).", buf, 0x20u);
  }

  [(ARDeviceOrientationSensor *)self stop];
  v7.receiver = self;
  v7.super_class = ARDeviceOrientationSensor;
  [(ARDeviceOrientationSensor *)&v7 dealloc];
}

- (void)start
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    motionManager = self->_motionManager;
    *buf = 138543874;
    v41 = v5;
    v42 = 2048;
    selfCopy6 = self;
    v44 = 2048;
    v45 = motionManager;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: start (%p)", buf, 0x20u);
  }

  [(ARDeviceOrientationSensor *)self preferredInterval];
  v7 = [(ARDeviceOrientationSensor *)self setInterval:?];
  if (self->_worldAlignment == 1)
  {
    v8 = 8;
  }

  else
  {
    v8 = 1;
  }

  v9 = _ARLogSensor_0(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromAttitudeReferenceFrame(v8);
    *buf = 138543874;
    v41 = v11;
    v42 = 2048;
    selfCopy6 = self;
    v44 = 2112;
    v45 = v12;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: starting with reference frame: %@", buf, 0x20u);
  }

  availableAttitudeReferenceFrames = [MEMORY[0x1E69634D0] availableAttitudeReferenceFrames];
  if ((availableAttitudeReferenceFrames & v8) != 0)
  {
    objc_initWeak(buf, self);
    v15 = self->_motionManager;
    taskDeviceMotion = self->_taskDeviceMotion;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __34__ARDeviceOrientationSensor_start__block_invoke;
    v38[3] = &unk_1E817BC78;
    objc_copyWeak(&v39, buf);
    [(CMMotionManager *)v15 startDeviceMotionUpdatesUsingReferenceFrame:v8 toQueue:taskDeviceMotion withHandler:v38];
    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
    delegate = [(ARDeviceOrientationSensor *)self delegate];
    LOBYTE(taskDeviceMotion) = objc_opt_respondsToSelector();

    if ((taskDeviceMotion & 1) == 0)
    {
      return;
    }

    delegate2 = [(ARDeviceOrientationSensor *)self delegate];
    [delegate2 sensorDidStart:self];
    goto LABEL_27;
  }

  if (ARShouldUseLogTypeError_onceToken_0 != -1)
  {
    [ARDeviceOrientationSensor start];
  }

  v18 = ARShouldUseLogTypeError_internalOSVersion_0;
  v19 = _ARLogSensor_0(availableAttitudeReferenceFrames);
  v20 = v19;
  if (v18 == 1)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromAttitudeReferenceFrame(v8);
      *buf = 138543874;
      v41 = v22;
      v42 = 2048;
      selfCopy6 = self;
      v44 = 2112;
      v45 = v23;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Device motion is not available for reference frame: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromAttitudeReferenceFrame(v8);
    *buf = 138543874;
    v41 = v25;
    v42 = 2048;
    selfCopy6 = self;
    v44 = 2112;
    v45 = v26;
    _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Device motion is not available for reference frame: %@", buf, 0x20u);
  }

  if (ARShouldUseLogTypeError_onceToken_0 != -1)
  {
    [ARDeviceOrientationSensor start];
  }

  v28 = ARShouldUseLogTypeError_internalOSVersion_0;
  v29 = _ARLogSensor_0(v27);
  v30 = v29;
  if (v28 == 1)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138543618;
      v41 = v32;
      v42 = 2048;
      selfCopy6 = self;
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to start.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    *buf = 138543618;
    v41 = v34;
    v42 = 2048;
    selfCopy6 = self;
    _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to start.", buf, 0x16u);
  }

  delegate3 = [(ARDeviceOrientationSensor *)self delegate];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    delegate2 = [(ARDeviceOrientationSensor *)self delegate];
    v37 = ARErrorWithCodeAndUserInfo(101, 0);
    [delegate2 sensor:self didFailWithError:v37];

LABEL_27:
  }
}

void __34__ARDeviceOrientationSensor_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeviceMotionUpdateWithMotion:v6 error:v5];
}

- (void)changeReferenceFrame:(unint64_t)frame
{
  if ([(CMMotionManager *)self->_motionManager isDeviceMotionActive])
  {
    [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
    objc_initWeak(&location, self);
    motionManager = self->_motionManager;
    taskDeviceMotion = self->_taskDeviceMotion;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__ARDeviceOrientationSensor_changeReferenceFrame___block_invoke;
    v7[3] = &unk_1E817BC78;
    objc_copyWeak(&v8, &location);
    [(CMMotionManager *)motionManager startDeviceMotionUpdatesUsingReferenceFrame:frame toQueue:taskDeviceMotion withHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __50__ARDeviceOrientationSensor_changeReferenceFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeviceMotionUpdateWithMotion:v6 error:v5];
}

- (void)handleDeviceMotionUpdateWithMotion:(id)motion error:(id)error
{
  v47 = *MEMORY[0x1E69E9840];
  motionCopy = motion;
  errorCopy = error;
  code = kdebug_trace();
  if (errorCopy)
  {
    code = [errorCopy code];
    if (code != 101)
    {
      if (ARShouldUseLogTypeError_onceToken_0 != -1)
      {
        [ARDeviceOrientationSensor initWithMotionManager:alignment:];
      }

      v16 = ARShouldUseLogTypeError_internalOSVersion_0;
      v17 = _ARLogSensor_0(code);
      v18 = v17;
      if (v16 == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = [errorCopy description];
          *buf = 138543874;
          v42 = v20;
          v43 = 2048;
          selfCopy5 = self;
          v45 = 2112;
          v46 = v21;
          v22 = "%{public}@ <%p>: error received from motion manager: %@";
          v23 = v18;
          v24 = OS_LOG_TYPE_ERROR;
LABEL_22:
          _os_log_impl(&dword_1C241C000, v23, v24, v22, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v20 = NSStringFromClass(v33);
        v21 = [errorCopy description];
        *buf = 138543874;
        v42 = v20;
        v43 = 2048;
        selfCopy5 = self;
        v45 = 2112;
        v46 = v21;
        v22 = "Error: %{public}@ <%p>: error received from motion manager: %@";
        v23 = v18;
        v24 = OS_LOG_TYPE_INFO;
        goto LABEL_22;
      }

      delegate = [(ARDeviceOrientationSensor *)self delegate];
      v39 = *MEMORY[0x1E696AA08];
      v40 = errorCopy;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v34 = ARErrorWithCodeAndUserInfo(102, v27);
      [delegate sensor:self didFailWithError:v34];

      goto LABEL_24;
    }
  }

  if (!motionCopy)
  {
    delegate = _ARLogSensor_0(code);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      motionManager = self->_motionManager;
      *buf = 138543874;
      v42 = v27;
      v43 = 2048;
      selfCopy5 = self;
      v45 = 2048;
      v46 = motionManager;
      v29 = "%{public}@ <%p>: Failed to get device motion from motion manager (%p)";
      v30 = delegate;
      v31 = 32;
LABEL_19:
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_DEBUG, v29, buf, v31);
LABEL_24:
    }

LABEL_25:

    goto LABEL_30;
  }

  v9 = objc_msgSend_timestamp(motionCopy);
  if (v10 <= self->_previousCaptureEndingTimestamp)
  {
    delegate = _ARLogSensor_0(v9);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEBUG))
    {
      v32 = objc_opt_class();
      v27 = NSStringFromClass(v32);
      *buf = 138543618;
      v42 = v27;
      v43 = 2048;
      selfCopy5 = self;
      v29 = "%{public}@ <%p>: Rejected stale device motion data";
      v30 = delegate;
      v31 = 22;
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (self->_worldAlignment == 1)
  {
    v11 = objc_msgSend_magneticField(motionCopy);
    if (v38 != 2)
    {
      v12 = _ARLogSensor_0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        objc_msgSend_magneticField(motionCopy);
        if ((v37 + 1) > 3)
        {
          v15 = &stru_1F4208A80;
        }

        else
        {
          v15 = off_1E817BC98[v37 + 1];
        }

        *buf = 138543874;
        v42 = v14;
        v43 = 2048;
        selfCopy5 = self;
        v45 = 2112;
        v46 = v15;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Warning: Magnetic calibration accuracy is %@", buf, 0x20u);
      }
    }
  }

  delegate2 = [(ARDeviceOrientationSensor *)self delegate];
  v36 = [[ARDeviceOrientationData alloc] initWithMotionData:motionCopy];
  [delegate2 sensor:self didOutputSensorData:v36];

  objc_msgSend_timestamp(motionCopy);
  kdebug_trace();
LABEL_30:
}

- (void)setInterval:(double)interval
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(CMMotionManager *)self->_motionManager isDeviceMotionAvailable])
  {
    interval = 0.0;
  }

  if (self->_interval != interval)
  {
    v5 = _ARLogSensor_0([(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:fmax(interval, 0.0)]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138543874;
      v9 = v7;
      v10 = 2048;
      selfCopy = self;
      v12 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CMDeviceMotion update interval set at %f", &v8, 0x20u);
    }

    self->_interval = interval;
  }
}

- (void)stop
{
  v16 = *MEMORY[0x1E69E9840];
  deviceMotion = [(CMMotionManager *)self->_motionManager deviceMotion];
  v4 = deviceMotion;
  if (deviceMotion)
  {
    objc_msgSend_timestamp(deviceMotion);
    self->_previousCaptureEndingTimestamp = v5;
  }

  v6 = _ARLogSensor_0([(ARDeviceOrientationSensor *)self setInterval:0.0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    motionManager = self->_motionManager;
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    selfCopy = self;
    v14 = 2048;
    v15 = motionManager;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: stop (%p).", &v10, 0x20u);
  }

  [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@" MotionManager=%@", self->_motionManager];
  [v6 appendString:@">"];

  return v6;
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end