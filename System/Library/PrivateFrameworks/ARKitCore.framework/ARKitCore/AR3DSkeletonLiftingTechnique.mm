@interface AR3DSkeletonLiftingTechnique
- (AR3DSkeletonLiftingTechnique)init;
- (double)requiredTimeInterval;
- (id)processEspressoTensor:(id)tensor;
- (void)_prepareOnce:(BOOL)once;
@end

@implementation AR3DSkeletonLiftingTechnique

- (AR3DSkeletonLiftingTechnique)init
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v11 = v5;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Initializing", buf, 0x16u);
  }

  v6 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.humanpose3d", 0xFFFFFFFFLL);
  v9.receiver = self;
  v9.super_class = AR3DSkeletonLiftingTechnique;
  v7 = [(ARMLImageProcessingTechnique *)&v9 initWithDispatchQueue:v6 networkInputScaleBeforeRotation:1 delegateInference:1.0, 32.0];

  return v7;
}

- (void)_prepareOnce:(BOOL)once
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = CreateABPK3DLiftingAlgorithm();
  liftingAlgorithm = self->_liftingAlgorithm;
  self->_liftingAlgorithm = v4;

  if (!self->_liftingAlgorithm)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [AR3DSkeletonLiftingTechnique _prepareOnce:];
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral(v6);
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v20 = v11;
        v21 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ABPK3DLiftingAlgorithm could not be initialized!", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v20 = v13;
      v21 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: ABPK3DLiftingAlgorithm could not be initialized!", buf, 0x16u);
    }

    if (ARSkipCrashOnCrash(void)::onceToken != -1)
    {
      [AR3DSkeletonLiftingTechnique _prepareOnce:];
    }

    if ((ARSkipCrashOnCrash(void)::skipCrashOnCrash & 1) == 0)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ABPK3DLiftingAlgorithm could not be initialized!"];
      v16 = [v14 stringWithFormat:@"ARCrash: %@", v15];

      v17 = v16;
      qword_1EBF41A28 = strdup([v16 UTF8String]);
      if (!ARInternalOSBuild(qword_1EBF41A28, v18))
      {
        abort();
      }

      ARAbortWithError(v16);
    }
  }
}

- (double)requiredTimeInterval
{
  if ([AR3DSkeletonLiftingTechnique requiredTimeInterval]::onceToken != -1)
  {
    [AR3DSkeletonLiftingTechnique requiredTimeInterval];
  }

  return *&[AR3DSkeletonLiftingTechnique requiredTimeInterval]::sTimeInterval;
}

uint64_t __52__AR3DSkeletonLiftingTechnique_requiredTimeInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = ARIsANEVersionEqualOrPriorToH12(a1, a2);
  v3 = 0.008;
  if (result)
  {
    v3 = 0.015;
  }

  [AR3DSkeletonLiftingTechnique requiredTimeInterval]::sTimeInterval = *&v3;
  return result;
}

- (id)processEspressoTensor:(id)tensor
{
  v51 = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  v5 = _ARLogGeneral(tensorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v48 = v7;
    v49 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ProcessEspressoTensor", buf, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v8 = tensorCopy;
  if (ARIsANEVersionEqualOrPriorToH12(v8, v9))
  {
    [v8 trackedDetectionResult];
  }

  else
  {
    [v8 rawDetectionResult];
  }
  v10 = ;
  v12 = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  liftingData = [v10 liftingData];
  v14 = [liftingData liftingData3D] == 0;

  if (v14)
  {
    goto LABEL_11;
  }

  objc_msgSend_timestamp(v8);
  [(AR3DSkeletonLiftingTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
  liftingAlgorithm = self->_liftingAlgorithm;
  objc_msgSend_timestamp(v8);
  LODWORD(liftingAlgorithm) = [(ABPK3DLiftingAlgorithm *)liftingAlgorithm runLiftingModelWithData:v12 atTimestamp:?];
  objc_msgSend_timestamp(v8);
  v16 = [(AR3DSkeletonLiftingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
  if (liftingAlgorithm)
  {
    goto LABEL_11;
  }

  if (ARIsANEVersionEqualOrPriorToH12(v16, v17))
  {
LABEL_19:
    v33 = [AR3DSkeletonDetectionResult alloc];
    getLiftingResults = [(ABPK3DLiftingAlgorithm *)self->_liftingAlgorithm getLiftingResults];
    v18 = -[AR3DSkeletonDetectionResult initWithJoints:numberOfJoints:referenceDetectionResult:](v33, "initWithJoints:numberOfJoints:referenceDetectionResult:", [getLiftingResults joints], 17, v12);

    v11 = objc_opt_new();
    if (v18)
    {
      v46 = v18;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    }

    else
    {
      v35 = MEMORY[0x1E695E0F0];
    }

    [v11 setDetectedSkeletons:v35];
    if (v18)
    {
    }

    objc_msgSend_timestamp(v8);
    [v11 setTimestamp:?];
    goto LABEL_12;
  }

  trackedDetectionResult = [v8 trackedDetectionResult];
  v21 = trackedDetectionResult == 0;

  if (!v21)
  {
    v45 = objc_alloc(MEMORY[0x1E698A8F8]);
    trackedDetectionResult2 = [v8 trackedDetectionResult];
    rawJointsOutput = [trackedDetectionResult2 rawJointsOutput];
    rawDetectionResult = [v8 rawDetectionResult];
    jointTrackingStates = [rawDetectionResult jointTrackingStates];
    rawDetectionResult2 = [v8 rawDetectionResult];
    jointCount = [rawDetectionResult2 jointCount];
    rawDetectionResult3 = [v8 rawDetectionResult];
    [rawDetectionResult3 imageResolution];
    v25 = v24;
    v27 = v26;
    rawDetectionResult4 = [v8 rawDetectionResult];
    rotation = [rawDetectionResult4 rotation];
    trackedDetectionResult3 = [v8 trackedDetectionResult];
    liftingData2 = [trackedDetectionResult3 liftingData];
    v32 = [v45 initWithJoints:rawJointsOutput trackingStates:jointTrackingStates numberOfJoints:jointCount imageResolution:rotation rotation:liftingData2 croppedRect:v25 liftingData:{v27, 0.0, 0.0, 1.0, 1.0}];

    v12 = v32;
    goto LABEL_19;
  }

  v36 = _ARLogGeneral(v22);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    *buf = 138543618;
    v48 = v38;
    v49 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: trackedDetectionResult is nil, bailing out", buf, 0x16u);
  }

LABEL_11:
  v18 = 0;
  v11 = 0;
LABEL_12:

LABEL_13:

  return v11;
}

@end