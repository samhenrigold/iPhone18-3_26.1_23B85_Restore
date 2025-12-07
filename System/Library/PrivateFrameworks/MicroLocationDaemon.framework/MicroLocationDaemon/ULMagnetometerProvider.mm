@interface ULMagnetometerProvider
+ (id)sharedInstance;
- ($1AB5FA073B851C12C2339EC22442E995)rotateMagField:(id *)field withMatrix:(id *)matrix;
- (optional<ULMagnetometerDO>)fetchMagnetometerData;
- (void)startUpdates;
- (void)stopUpdates;
@end

@implementation ULMagnetometerProvider

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ULMagnetometerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[ULMagnetometerProvider sharedInstance]::ul_once_token_787 != -1)
  {
    dispatch_once(&+[ULMagnetometerProvider sharedInstance]::ul_once_token_787, block);
  }

  v2 = +[ULMagnetometerProvider sharedInstance]::ul_once_object_787;

  return v2;
}

void __40__ULMagnetometerProvider_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[ULMagnetometerProvider sharedInstance]::ul_once_object_787;
  +[ULMagnetometerProvider sharedInstance]::ul_once_object_787 = v1;
}

- (void)startUpdates
{
  if (!_motionManager)
  {
    v2 = objc_alloc_init(MEMORY[0x277CC1CD8]);
    v3 = _motionManager;
    _motionManager = v2;
  }

  if ((isUpdatesEnabled & 1) == 0)
  {
    if ([_motionManager isMagnetometerAvailable] && (objc_msgSend(_motionManager, "isDeviceMotionAvailable") & 1) != 0)
    {
      [_motionManager startDeviceMotionUpdatesUsingReferenceFrame:8];
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMagnetometerProvider startUpdates];
      }

      v4 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "#magnetometer Starting magnetometer updates", v6, 2u);
      }

      isUpdatesEnabled = 1;
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMagnetometerProvider startUpdates];
      }

      v5 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "#magnetometer Error: Magnetometer not available", buf, 2u);
      }
    }
  }
}

- (void)stopUpdates
{
  if (isUpdatesEnabled == 1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMagnetometerProvider startUpdates];
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "#magnetometer Stopping magnetometer updates ", v3, 2u);
    }

    [_motionManager stopDeviceMotionUpdates];
    isUpdatesEnabled = 0;
  }
}

- (optional<ULMagnetometerDO>)fetchMagnetometerData
{
  v46 = *MEMORY[0x277D85DE8];
  if (isUpdatesEnabled != 1)
  {
    goto LABEL_9;
  }

  selfCopy = self;
  deviceMotion = [_motionManager deviceMotion];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULMagnetometerProvider startUpdates];
  }

  v5 = logObject_MicroLocation_Default;
  self = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
  if (self)
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#magnetometer fetchMagnetometerData", buf, 2u);
  }

  if (deviceMotion)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7;

    v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    [deviceMotion timestamp];
    v11 = v10;
    objc_msgSend_magneticField(deviceMotion);
    v36 = *buf;
    v37 = v32;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    v32 = 0u;
    attitude = [deviceMotion attitude];
    v13 = attitude;
    if (attitude)
    {
      objc_msgSend_rotationMatrix(attitude);
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      *buf = 0u;
      v32 = 0u;
    }

    unk_286A89418(selfCopy, "rotateMagField:withMatrix:", &v36, buf);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [deviceMotion magnetometerBiasEstimateVariance];
    v21 = v20;
    [deviceMotion magnetometerBiasEstimateVariance];
    v23 = v22;
    [deviceMotion magnetometerBiasEstimateVariance];
    v25 = v24;
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMagnetometerProvider fetchMagnetometerData];
    }

    v26 = sqrt(v17 * v17 + v15 * v15);
    v27 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      magneticFieldCalibrationLevel = [deviceMotion magneticFieldCalibrationLevel];
      objc_msgSend_magneticField(deviceMotion);
      *v38 = 134219520;
      *&v38[4] = v26;
      *&v38[12] = 2048;
      *&v38[14] = v19;
      *&v38[22] = 2048;
      *&v38[24] = v21;
      *v39 = 2048;
      *&v39[2] = v23;
      v40 = 2048;
      v41 = v25;
      v42 = 1024;
      v43 = magneticFieldCalibrationLevel;
      v44 = 1024;
      v45 = v30;
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, "#magnetometer handlerCB: horizontal field %f, verticalField %f BiasEstimateVariance (%f, %f, %f),  calibLevel: %d accuracy: %d", v38, 0x40u);
    }

    ULMagnetometerDO::ULMagnetometerDO(v38, v26, v19, v21, v23, v25, v8 + v9 / -1000000000.0 + v11);
    v29 = *&v38[16];
    *&retstr->var0.var0 = *v38;
    *&retstr->var0.var1.var2.var0 = v29;
    retstr[1].var0.var1.var0 = *v39;
    LOBYTE(retstr[1].var0.var1.var1) = 1;
  }

  else
  {
LABEL_9:
    retstr->var0.var0 = 0;
    LOBYTE(retstr[1].var0.var1.var1) = 0;
  }

  return self;
}

- ($1AB5FA073B851C12C2339EC22442E995)rotateMagField:(id *)field withMatrix:(id *)matrix
{
  __C[3] = *MEMORY[0x277D85DE8];
  var1 = matrix->var1;
  var2 = matrix->var2;
  var3 = matrix->var3;
  __A[0] = matrix->var0;
  __A[1] = var3;
  var7 = matrix->var7;
  __A[2] = matrix->var6;
  __A[3] = var1;
  var5 = matrix->var5;
  __A[4] = matrix->var4;
  __A[5] = var7;
  __A[6] = var2;
  __A[7] = var5;
  __A[8] = matrix->var8;
  __B = *field;
  vDSP_mmulD(__A, 1, &__B.var0, 1, __C, 1, 3uLL, 1uLL, 3uLL);
  v9 = __C[0];
  v10 = __C[1];
  v11 = __C[2];
  result.var2 = v11;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

@end