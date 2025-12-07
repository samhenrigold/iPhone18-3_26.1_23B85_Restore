@interface ARDepthPointCloudCoalescer
- (ADAggregationParameters)aggregationParameters;
- (ARDepthPointCloudCoalescer)init;
- (id)_createModifiedParametersIfNecessary:(id)necessary;
- (id)depthPointCloudWithPose:(id)pose imageData:(id)data;
- (void)addDepthPointCloudData:(id)data;
- (void)setAggregationParameters:(id)parameters;
@end

@implementation ARDepthPointCloudCoalescer

- (ARDepthPointCloudCoalescer)init
{
  v5.receiver = self;
  v5.super_class = ARDepthPointCloudCoalescer;
  v2 = [(ARDepthPointCloudCoalescer *)&v5 init];
  v2->_aggregatorLock._os_unfair_lock_opaque = 0;
  v3 = objc_opt_new();
  [v3 setAggregationSize:4];
  [v3 setMaxPointCloudAge:0.5];
  [(ARDepthPointCloudCoalescer *)v2 setAggregationParameters:v3];

  return v2;
}

- (ADAggregationParameters)aggregationParameters
{
  v2 = [(ADAggregationParameters *)self->_aggregationParameters copy];

  return v2;
}

- (void)setAggregationParameters:(id)parameters
{
  v16 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  if (([parametersCopy ar_isEqualToParameters:self->_aggregationParameters] & 1) == 0)
  {
    v5 = [parametersCopy copy];
    aggregationParameters = self->_aggregationParameters;
    self->_aggregationParameters = v5;

    v7 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.jasper.aggregationBankCount"];
    if (v7 >= 1)
    {
      v7 = [(ADAggregationParameters *)self->_aggregationParameters setAggregationSize:v7];
    }

    v8 = _ARLogGeneral_39(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: The aggregation parameters changed, deleting the aggregator", &v12, 0x16u);
    }

    os_unfair_lock_lock(&self->_aggregatorLock);
    aggregator = self->_aggregator;
    self->_aggregator = 0;

    os_unfair_lock_unlock(&self->_aggregatorLock);
  }
}

- (id)_createModifiedParametersIfNecessary:(id)necessary
{
  v4 = aggregationSizeForPointCloud(necessary);
  aggregationSize = [(ADAggregationParameters *)self->_aggregationParameters aggregationSize];
  aggregationParameters = self->_aggregationParameters;
  if (aggregationSize == v4)
  {
    v7 = aggregationParameters;
  }

  else
  {
    v7 = [(ADAggregationParameters *)aggregationParameters copy];
    [(ADAggregationParameters *)v7 setAggregationSize:v4];
  }

  return v7;
}

- (void)addDepthPointCloudData:(id)data
{
  v45 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  os_unfair_lock_lock(&self->_aggregatorLock);
  aggregator = self->_aggregator;
  if (!aggregator || (-[ADPointCloudAggregator aggregationParameters](aggregator, "aggregationParameters"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 aggregationSize], v8 = aggregationSizeForPointCloud(dataCopy), v6, v7 != v8))
  {
    v9 = [(ARDepthPointCloudCoalescer *)self _createModifiedParametersIfNecessary:dataCopy];
    v10 = _ARLogGeneral_39(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = self->_aggregator;
      v35 = 138543874;
      v36 = v12;
      v37 = 2048;
      selfCopy2 = self;
      v39 = 2048;
      v40 = v13;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: About to create a new ADPointCloudAggregator; old: (%p)", &v35, 0x20u);
    }

    v14 = [objc_alloc(MEMORY[0x1E698C198]) initWithAggregationParameters:v9];
    v15 = self->_aggregator;
    self->_aggregator = v14;

    v17 = _ARLogGeneral_39(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = self->_aggregator;
      aggregationParameters = [(ADPointCloudAggregator *)v20 aggregationParameters];
      aggregationSize = [aggregationParameters aggregationSize];
      aggregationParameters2 = [(ADPointCloudAggregator *)self->_aggregator aggregationParameters];
      [aggregationParameters2 maxPointCloudAge];
      v35 = 138544386;
      v36 = v19;
      v37 = 2048;
      selfCopy2 = self;
      v39 = 2048;
      v40 = v20;
      v41 = 1024;
      v42 = aggregationSize;
      v43 = 2048;
      v44 = v24;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Created a new ADPointCloudAggregator (%p) with Size:%u Age:%lf", &v35, 0x30u);
    }
  }

  objc_msgSend_timestamp(dataCopy);
  pointCloud = [dataCopy pointCloud];
  [pointCloud length];
  kdebug_trace();

  v26 = self->_aggregator;
  pointCloud2 = [dataCopy pointCloud];
  objc_msgSend_timestamp(dataCopy);
  v29 = v28;
  v30 = MEMORY[0x1E698C198];
  [dataCopy visionCameraTransform];
  [v30 transformMetersToMillimiters:?];
  [(ADPointCloudAggregator *)v26 pushPointCloud:pointCloud2 timestamp:v29 worldToCameraTransform:v31, v32, v33, v34];

  kdebug_trace();
  os_unfair_lock_unlock(&self->_aggregatorLock);
}

- (id)depthPointCloudWithPose:(id)pose imageData:(id)data
{
  v78 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  dataCopy = data;
  os_unfair_lock_lock(&self->_aggregatorLock);
  aggregator = self->_aggregator;
  if (!aggregator)
  {
    v23 = 0;
    goto LABEL_35;
  }

  aggregationParameters = [(ADPointCloudAggregator *)aggregator aggregationParameters];
  [aggregationParameters aggregationSize];
  CVPixelBufferGetWidth([dataCopy pixelBuffer]);
  CVPixelBufferGetHeight([dataCopy pixelBuffer]);
  objc_msgSend_timestamp(dataCopy);
  kdebug_trace();
  calibrationData = [dataCopy calibrationData];
  if (calibrationData)
  {
    v11 = objc_alloc(MEMORY[0x1E698C160]);
    v12 = [v11 ar_initWithImageData:dataCopy calibrationData:calibrationData];

    if (v12)
    {
      goto LABEL_15;
    }

    if (ARShouldUseLogTypeError_onceToken_45 != -1)
    {
      [ARDepthPointCloudCoalescer depthPointCloudWithPose:imageData:];
    }

    v14 = ARShouldUseLogTypeError_internalOSVersion_45;
    v15 = _ARLogGeneral_39(v13);
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544130;
        v71 = v18;
        v72 = 2048;
        selfCopy6 = self;
        v74 = 2114;
        v75 = v20;
        v76 = 2114;
        v77 = v22;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: failed to create %{public}@ from calibration data, using last known %{public}@ calibration", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544130;
      v71 = v25;
      v72 = 2048;
      selfCopy6 = self;
      v74 = 2114;
      v75 = v27;
      v76 = 2114;
      v77 = v29;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: failed to create %{public}@ from calibration data, using last known %{public}@ calibration", buf, 0x2Au);
    }
  }

  adCameraCalibration = [dataCopy adCameraCalibration];
  v31 = adCameraCalibration == 0;

  if (v31)
  {
LABEL_25:
    if (ARShouldUseLogTypeError_onceToken_45 != -1)
    {
      [ARDepthPointCloudCoalescer depthPointCloudWithPose:imageData:];
    }

    v54 = ARShouldUseLogTypeError_internalOSVersion_45;
    v55 = _ARLogGeneral_39(v32);
    v56 = v55;
    if (v54 == 1)
    {
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        cameraType = [dataCopy cameraType];
        *buf = 138543874;
        v71 = v58;
        v72 = 2048;
        selfCopy6 = self;
        v74 = 2114;
        v75 = cameraType;
        _os_log_impl(&dword_1C241C000, v56, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not update aggregator calibration for image: %{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      cameraType2 = [dataCopy cameraType];
      *buf = 138543874;
      v71 = v61;
      v72 = 2048;
      selfCopy6 = self;
      v74 = 2114;
      v75 = cameraType2;
      _os_log_impl(&dword_1C241C000, v56, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not update aggregator calibration for image: %{public}@", buf, 0x20u);
    }

    v12 = 0;
    if (poseCopy)
    {
      goto LABEL_16;
    }

LABEL_33:
    v68 = *(MEMORY[0x1E69E9B18] + 48);
    v69 = *(MEMORY[0x1E69E9B18] + 32);
    goto LABEL_34;
  }

  v33 = MEMORY[0x1E698C160];
  adCameraCalibration2 = [dataCopy adCameraCalibration];
  v12 = [v33 ar_calibrationWithImageData:dataCopy adCalibrationData:adCameraCalibration2];

  if (!v12)
  {
    if (ARShouldUseLogTypeError_onceToken_45 != -1)
    {
      [ARDepthPointCloudCoalescer depthPointCloudWithPose:imageData:];
    }

    v39 = ARShouldUseLogTypeError_internalOSVersion_45;
    v40 = _ARLogGeneral_39(v35);
    v41 = v40;
    if (v39 == 1)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        *buf = 138544130;
        v71 = v43;
        v72 = 2048;
        selfCopy6 = self;
        v74 = 2114;
        v75 = v45;
        v76 = 2114;
        v77 = v47;
        _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: failed to create %{public}@ from calibration data, using last known %{public}@ calibration", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138544130;
      v71 = v49;
      v72 = 2048;
      selfCopy6 = self;
      v74 = 2114;
      v75 = v51;
      v76 = 2114;
      v77 = v53;
      _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: failed to create %{public}@ from calibration data, using last known %{public}@ calibration", buf, 0x2Au);
    }

    goto LABEL_25;
  }

LABEL_15:
  [(ADPointCloudAggregator *)self->_aggregator setColorCameraCalibration:v12];
  [v12 cameraToPlatformTransform];
  ARMatrix4x4FromMatrix4x3();
  v81 = __invert_f4(v80);
  [(ADPointCloudAggregator *)self->_aggregator setJasperToCameraTransform:*v81.columns[0].i64, *v81.columns[1].i64, *v81.columns[2].i64, *v81.columns[3].i64];
  if (!poseCopy)
  {
    goto LABEL_33;
  }

LABEL_16:
  v36 = MEMORY[0x1E698C198];
  [poseCopy visionCameraTransform];
  [v36 transformMetersToMillimiters:?];
  v68 = v38;
  v69 = v37;
LABEL_34:
  v63 = self->_aggregator;
  objc_msgSend_timestamp(poseCopy, v68, v69);
  v23 = [ADPointCloudAggregator aggregateForTime:v63 worldToCameraTransform:"aggregateForTime:worldToCameraTransform:"];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  kdebug_trace();
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  kdebug_trace();
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  kdebug_trace();
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  kdebug_trace();
  colorCameraCalibration = [(ADPointCloudAggregator *)self->_aggregator colorCameraCalibration];
  [colorCameraCalibration intrinsicMatrix];
  colorCameraCalibration2 = [(ADPointCloudAggregator *)self->_aggregator colorCameraCalibration];
  [colorCameraCalibration2 intrinsicMatrix];
  colorCameraCalibration3 = [(ADPointCloudAggregator *)self->_aggregator colorCameraCalibration];
  [colorCameraCalibration3 intrinsicMatrix];
  kdebug_trace();

  [v23 length];
  kdebug_trace();

LABEL_35:
  os_unfair_lock_unlock(&self->_aggregatorLock);

  return v23;
}

@end