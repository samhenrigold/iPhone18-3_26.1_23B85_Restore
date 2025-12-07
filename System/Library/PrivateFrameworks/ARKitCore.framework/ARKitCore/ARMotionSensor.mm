@interface ARMotionSensor
- (ARMotionSensor)initWithMotionManager:(id)manager;
- (ARSensorDelegate)delegate;
- (NSString)description;
- (unint64_t)providedDataTypes;
- (void)accelerometerOutput:(id *)output;
- (void)dealloc;
- (void)gyroscopeOutput:(id *)output;
- (void)magnetometerOutput:(id *)output;
- (void)setInterval:(double)interval;
- (void)start;
- (void)stop;
@end

@implementation ARMotionSensor

- (ARMotionSensor)initWithMotionManager:(id)manager
{
  v31 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  isGyroAvailable = [managerCopy isGyroAvailable];
  if (!isGyroAvailable || (isGyroAvailable = [managerCopy isAccelerometerAvailable], (isGyroAvailable & 1) == 0))
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARMotionSensor initWithMotionManager:];
    }

    v16 = ARShouldUseLogTypeError_internalOSVersion_2;
    v17 = _ARLogSensor_3(isGyroAvailable);
    v18 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543618;
        v28 = v20;
        v29 = 2048;
        selfCopy2 = self;
        v21 = "%{public}@ <%p>: Unable to initialize ARMotionSensor: accelerometer and/or gyroscope from CMMotionManager not available.";
        v22 = v18;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v22, v23, v21, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v20 = NSStringFromClass(v24);
      *buf = 138543618;
      v28 = v20;
      v29 = 2048;
      selfCopy2 = self;
      v21 = "Error: %{public}@ <%p>: Unable to initialize ARMotionSensor: accelerometer and/or gyroscope from CMMotionManager not available.";
      v22 = v18;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    selfCopy3 = 0;
    goto LABEL_16;
  }

  v26.receiver = self;
  v26.super_class = ARMotionSensor;
  v7 = [(ARMotionSensor *)&v26 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_motionManager, manager);
    v8->_requestMagnetometerData = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.motionSensor.magnetometerEnabled"];
    v9 = objc_opt_new();
    currentGyroData = v8->_currentGyroData;
    v8->_currentGyroData = v9;

    v11 = objc_opt_new();
    currentAccelerometerData = v8->_currentAccelerometerData;
    v8->_currentAccelerometerData = v11;

    if (v8->_requestMagnetometerData)
    {
      v13 = objc_opt_new();
      currentMagnetometerData = v8->_currentMagnetometerData;
      v8->_currentMagnetometerData = v13;
    }
  }

  self = v8;
  selfCopy3 = self;
LABEL_16:

  return selfCopy3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_3([(ARMotionSensor *)self stop]);
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
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARMotionSensor dealloc (%p).", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = ARMotionSensor;
  [(ARMotionSensor *)&v7 dealloc];
}

- (unint64_t)providedDataTypes
{
  if (self->_requestMagnetometerData)
  {
    return 1030;
  }

  else
  {
    return 6;
  }
}

- (void)start
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_3(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    motionManager = self->_motionManager;
    v24 = 138543874;
    v25 = v5;
    v26 = 2048;
    selfCopy3 = self;
    v28 = 2048;
    v29 = motionManager;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARMotionSensor start (%p).", &v24, 0x20u);
  }

  [(ARMotionSensor *)self preferredInterval];
  [(ARMotionSensor *)self setInterval:?];
  interval = [(ARMotionSensor *)self interval];
  if (v8 > 0.0)
  {
    delegate = [(ARMotionSensor *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    delegate2 = [(ARMotionSensor *)self delegate];
    [delegate2 sensorDidStart:self];
    goto LABEL_16;
  }

  if (ARShouldUseLogTypeError_onceToken_2 != -1)
  {
    [ARMotionSensor start];
  }

  v12 = ARShouldUseLogTypeError_internalOSVersion_2;
  v13 = _ARLogSensor_3(interval);
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v24 = 138543618;
      v25 = v16;
      v26 = 2048;
      selfCopy3 = self;
      v17 = "%{public}@ <%p>: Accelerometer and/or Gyroscope sensor(s) not available";
      v18 = v14;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_13:
      _os_log_impl(&dword_1C241C000, v18, v19, v17, &v24, 0x16u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v20 = objc_opt_class();
    v16 = NSStringFromClass(v20);
    v24 = 138543618;
    v25 = v16;
    v26 = 2048;
    selfCopy3 = self;
    v17 = "Error: %{public}@ <%p>: Accelerometer and/or Gyroscope sensor(s) not available";
    v18 = v14;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_13;
  }

  delegate3 = [(ARMotionSensor *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if ((v22 & 1) == 0)
  {
    return;
  }

  delegate2 = [(ARMotionSensor *)self delegate];
  v23 = ARErrorWithCodeAndUserInfo(101, 0);
  [delegate2 sensor:self didFailWithError:v23];

LABEL_16:
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_3(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    motionManager = self->_motionManager;
    v7 = 138543874;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    v11 = 2048;
    v12 = motionManager;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARMotionSensor stop (%p).", &v7, 0x20u);
  }

  [(ARMotionSensor *)self setInterval:0.0];
}

- (void)setInterval:(double)interval
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_interval == interval)
  {
    return;
  }

  motionManager = self->_motionManager;
  if (interval <= 0.0)
  {
    [(CMMotionManager *)motionManager setGyroDataCallback:0 info:0 interval:0.0];
    [(CMMotionManager *)self->_motionManager setAccelerometerDataCallback:0 info:0 interval:0.0];
    isMagnetometerAvailable = [(CMMotionManager *)self->_motionManager isMagnetometerAvailable];
    if (isMagnetometerAvailable && self->_requestMagnetometerData)
    {
      v7 = self->_motionManager;
      intervalCopy = 0.0;
      v8 = 0;
      selfCopy = 0;
      goto LABEL_9;
    }
  }

  else
  {
    [(CMMotionManager *)motionManager setGyroDataCallback:rawGyroscopeCallback info:self interval:interval];
    [(CMMotionManager *)self->_motionManager setAccelerometerDataCallback:rawAccelerometerCallback info:self interval:interval];
    isMagnetometerAvailable = [(CMMotionManager *)self->_motionManager isMagnetometerAvailable];
    if (isMagnetometerAvailable && self->_requestMagnetometerData)
    {
      v7 = self->_motionManager;
      v8 = rawMagnetometerCallback;
      selfCopy = self;
      intervalCopy = interval;
LABEL_9:
      isMagnetometerAvailable = [(CMMotionManager *)v7 setMagnetometerDataCallback:v8 info:selfCopy interval:intervalCopy];
    }
  }

  v11 = _ARLogSensor_3(isMagnetometerAvailable);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = 138543874;
    v15 = v13;
    v16 = 2048;
    selfCopy2 = self;
    v18 = 2048;
    intervalCopy2 = interval;
    _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Accelerometer and Gyroscope update interval set at %f", &v14, 0x20u);
  }

  self->_interval = interval;
}

- (void)gyroscopeOutput:(id *)output
{
  kdebug_trace();
  [(ARGyroscopeData *)self->_currentGyroData setTimestamp:output->var1];
  [(ARGyroscopeData *)self->_currentGyroData setRotationRate:output->var0.var0, output->var0.var1, output->var0.var2];
  delegate = [(ARMotionSensor *)self delegate];
  [delegate sensor:self didOutputSensorData:self->_currentGyroData];

  kdebug_trace();
}

- (void)accelerometerOutput:(id *)output
{
  kdebug_trace();
  [(ARAccelerometerData *)self->_currentAccelerometerData setTimestamp:output->var1];
  [(ARAccelerometerData *)self->_currentAccelerometerData setAcceleration:output->var0.var0, output->var0.var1, output->var0.var2];
  delegate = [(ARMotionSensor *)self delegate];
  [delegate sensor:self didOutputSensorData:self->_currentAccelerometerData];

  kdebug_trace();
}

- (void)magnetometerOutput:(id *)output
{
  kdebug_trace();
  [(ARMagnetometerData *)self->_currentMagnetometerData setTimestamp:output->var1];
  [(ARMagnetometerData *)self->_currentMagnetometerData setMagneticField:output->var0.var0, output->var0.var1, output->var0.var2];
  delegate = [(ARMotionSensor *)self delegate];
  [delegate sensor:self didOutputSensorData:self->_currentMagnetometerData];

  kdebug_trace();
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@" MotionManager=%@", self->_motionManager];
  [v6 appendFormat:@" Gyroscope=%@", self->_currentGyroData];
  [v6 appendFormat:@" Accelerometer=%@", self->_currentAccelerometerData];
  if (self->_requestMagnetometerData)
  {
    [v6 appendFormat:@" Magnetometer=%@", self->_currentMagnetometerData];
  }

  [v6 appendString:@">"];

  return v6;
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end