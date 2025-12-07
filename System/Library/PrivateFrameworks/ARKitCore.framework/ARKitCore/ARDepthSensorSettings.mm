@interface ARDepthSensorSettings
- (ARDepthSensorSettings)initWithVideoFormat:(id)format;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ARDepthSensorSettings

- (ARDepthSensorSettings)initWithVideoFormat:(id)format
{
  v29 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = ARDepthSensorSettings;
  v3 = [(ARImageSensorSettings *)&v22 initWithVideoFormat:format];
  if (v3)
  {
    v4 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.jasper.timeOfFlightProjectorMode"];
    v5 = @"ARTimeOfFlightProjectorModeNone";
    v6 = v5;
    v7 = v4 - 1;
    v8 = v5;
    if (v7 <= 5)
    {
      v8 = v5;
      if ((0x27u >> v7))
      {
        v8 = *off_1E817BBE8[v7];
      }
    }

    if (![(__CFString *)v8 isEqualToString:v6])
    {
      v9 = v8;
LABEL_16:
      timeOfFlightProjectorMode = v3->_timeOfFlightProjectorMode;
      v3->_timeOfFlightProjectorMode = &v9->isa;

      return v3;
    }

    v9 = @"ARTimeOfFlightProjectorModeNormalShortHybrid";

    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARDepthSensorSettings initWithVideoFormat:];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion;
    v12 = _ARLogGeneral(v10);
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138543874;
        v24 = v15;
        v25 = 2048;
        v26 = v3;
        v27 = 2114;
        v28 = v9;
        v16 = "%{public}@ <%p>: Invalid default for ARJasperTimeOfFlightProjectorMode, falling back to %{public}@";
        v17 = v13;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v15 = NSStringFromClass(v19);
      *buf = 138543874;
      v24 = v15;
      v25 = 2048;
      v26 = v3;
      v27 = 2114;
      v28 = v9;
      v16 = "Error: %{public}@ <%p>: Invalid default for ARJasperTimeOfFlightProjectorMode, falling back to %{public}@";
      v17 = v13;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = ARDepthSensorSettings;
  v4 = [(ARImageSensorSettings *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  [v5 appendFormat:@"TimeOfFlightProjectorMode: %@\n", self->_timeOfFlightProjectorMode];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = ARDepthSensorSettings;
  if ([(ARImageSensorSettings *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    timeOfFlightProjectorMode = [equalCopy timeOfFlightProjectorMode];
    v6 = [timeOfFlightProjectorMode isEqualToString:self->_timeOfFlightProjectorMode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = ARDepthSensorSettings;
  v5 = [(ARImageSensorSettings *)&v9 copyWithZone:?];
  v6 = [(NSString *)self->_timeOfFlightProjectorMode copyWithZone:zone];
  v7 = v5[9];
  v5[9] = v6;

  return v5;
}

@end