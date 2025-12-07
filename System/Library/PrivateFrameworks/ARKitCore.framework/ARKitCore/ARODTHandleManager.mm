@interface ARODTHandleManager
+ (id)handleAccumulatedErrorType:(int64_t)type failedReferenceImageNames:(id)names;
+ (id)suggestionInternalError;
+ (id)suggestionInvalidFeature;
+ (id)suggestionInvalidImage;
+ (int)_calibrationDataFromImageData:(id)data pCalibrationData:(id *)calibrationData;
+ (int)verifyReferenceImage:(id)image;
+ (int64_t)actualNumberOfImagesTracked:(int64_t)tracked;
+ (void)accumulateReferenceImageErrorsForResult:(int)result refImage:(id)image objectID:(unint64_t)d pReferenceImageMap:(id *)map pFailedReferenceImageNames:(id *)names pUserErrorType:(int64_t *)type;
- (ARODTHandleManager)init;
- (ARODTHandleManager)initWithDeterministicMode:(BOOL)mode;
- (ARODTHandleManager)initWithMaximumNumberOfTrackedImages:(int64_t)images continuousDetection:(BOOL)detection deterministicMode:(BOOL)mode;
- (ARODTHandleManager)initWithRegionProposalModelAndDeterministicMode:(BOOL)mode;
- (BOOL)continuousDetection;
- (BOOL)deterministicMode;
- (BOOL)isEqual:(id)equal;
- (int)addReferenceImage:(id)image tracking:(BOOL)tracking pObjectID:(unint64_t *)d;
- (int)addReferenceObject:(id)object tracking:(BOOL)tracking pObjectID:(unint64_t *)d;
- (int)detectReferenceObjectsForImageData:(id)data worldTrackingPose:(id)pose imageContext:(const void *)context pResultArray:(id *)array;
- (int)predictPlanarObjectsAtTimestamp:(double)timestamp worldTrackingPose:(id)pose timeBudget:(double)budget pResultArray:(id *)array;
- (int)trackPlanarObjectAndEstimateScaleForImageData:(id)data worldTrackingPose:(id)pose imageContext:(const void *)context timeBudget:(double)budget pResultArray:(id *)array;
- (int)waitForAllObjectsAddToFinish;
- (int64_t)maximumNumberOfTrackedImages;
- (void)dealloc;
- (void)releaseODTHandle;
- (void)updatePowerUsage:(unint64_t)usage;
@end

@implementation ARODTHandleManager

- (int64_t)maximumNumberOfTrackedImages
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC20]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)continuousDetection
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC18]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)deterministicMode
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC10]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (int64_t)actualNumberOfImagesTracked:(int64_t)tracked
{
  v10 = *MEMORY[0x1E69E9840];
  if (tracked < 0)
  {
    v6 = _ARLogSession(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Maximum number of tracked images cannot be negative. Using a value of zero instead", &v8, 2u);
    }

    CV3DODTGetMaxSupportedNumberImagesToTrack();
    return 0;
  }

  else
  {
    trackedCopy = tracked;
    if (CV3DODTGetMaxSupportedNumberImagesToTrack() < tracked)
    {
      v4 = CV3DODTGetMaxSupportedNumberImagesToTrack();
      trackedCopy = v4;
      v5 = _ARLogSession(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = trackedCopy;
        _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "Warning: Maximum number of tracked images exceeds the maximum. Using a value of %ld instead.", &v8, 0xCu);
      }
    }
  }

  return trackedCopy;
}

- (ARODTHandleManager)initWithMaximumNumberOfTrackedImages:(int64_t)images continuousDetection:(BOOL)detection deterministicMode:(BOOL)mode
{
  modeCopy = mode;
  detectionCopy = detection;
  v36[3] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = ARODTHandleManager;
  v8 = [(ARODTHandleManager *)&v28 init];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [objc_opt_class() actualNumberOfImagesTracked:images];
  v35[0] = *MEMORY[0x1E698BC20];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v36[0] = v10;
  v35[1] = *MEMORY[0x1E698BC10];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v36[1] = v11;
  v35[2] = *MEMORY[0x1E698BC18];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:detectionCopy];
  v36[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

  objc_storeStrong(&v8->_options, v13);
  v16 = v15;
  if (!v15)
  {
    v22 = dispatch_semaphore_create(1);
    odtHandleSemaphore = v8->_odtHandleSemaphore;
    v8->_odtHandleSemaphore = v22;

    v8->_odtCounter = 0;
    v8->_odtPowerUsage = 0;

LABEL_9:
    v24 = v8;
    goto LABEL_13;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
  }

  v17 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v18 = _ARLogTechnique(v15);
  v19 = v18;
  if (v17 == 1)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543874;
      v30 = v21;
      v31 = 2048;
      v32 = v8;
      v33 = 1024;
      v34 = v16;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    *buf = 138543874;
    v30 = v26;
    v31 = 2048;
    v32 = v8;
    v33 = 1024;
    v34 = v16;
    _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d", buf, 0x1Cu);
  }

  v24 = 0;
LABEL_13:

  return v24;
}

- (ARODTHandleManager)initWithDeterministicMode:(BOOL)mode
{
  modeCopy = mode;
  v29[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = ARODTHandleManager;
  v4 = [(ARODTHandleManager *)&v21 init];
  if (!v4)
  {
    goto LABEL_9;
  }

  v28 = *MEMORY[0x1E698BC10];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v29[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

  objc_storeStrong(&v4->_options, v6);
  v9 = v8;
  if (!v8)
  {
    v15 = dispatch_semaphore_create(1);
    odtHandleSemaphore = v4->_odtHandleSemaphore;
    v4->_odtHandleSemaphore = v15;

    v4->_odtCounter = 0;
LABEL_9:
    v17 = v4;
    goto LABEL_13;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
  }

  v10 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v11 = _ARLogTechnique(v8);
  v12 = v11;
  if (v10 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543874;
      v23 = v14;
      v24 = 2048;
      v25 = v4;
      v26 = 1024;
      v27 = v9;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d.", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138543874;
    v23 = v19;
    v24 = 2048;
    v25 = v4;
    v26 = 1024;
    v27 = v9;
    _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d.", buf, 0x1Cu);
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (ARODTHandleManager)init
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = ARODTHandleManager;
  v2 = [(ARODTHandleManager *)&v17 init];
  v4 = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  if (!v5)
  {
    v11 = dispatch_semaphore_create(1);
    odtHandleSemaphore = v4->_odtHandleSemaphore;
    v4->_odtHandleSemaphore = v11;

    v4->_odtCounter = 0;
LABEL_10:
    v13 = v4;
    goto LABEL_14;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
  }

  v6 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v7 = _ARLogTechnique(v5);
  v8 = v7;
  if (v6 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v19 = v10;
      v20 = 2048;
      v21 = v4;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v19 = v15;
    v20 = 2048;
    v21 = v4;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection.", buf, 0x16u);
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (ARODTHandleManager)initWithRegionProposalModelAndDeterministicMode:(BOOL)mode
{
  modeCopy = mode;
  v57 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = ARODTHandleManager;
  v4 = [(ARODTHandleManager *)&v44 init];
  if (!v4)
  {
    goto LABEL_29;
  }

  ObjectRegionProposalModelData = CV3DModelsCreateObjectRegionProposalModelData();
  v6 = ObjectRegionProposalModelData;
  if (ObjectRegionProposalModelData)
  {
    v7 = CV3DMLModelCreate();
    v8 = v7;
    if (v7)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
      }

      v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v10 = _ARLogTechnique(v7);
      v11 = v10;
      if (v9 == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          *buf = 138543874;
          v48 = v13;
          v49 = 2048;
          v50 = v4;
          v51 = 1024;
          v52 = v8;
          _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: error creating region proposal model: %i", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138543874;
        v48 = v25;
        v49 = 2048;
        v50 = v4;
        v51 = 1024;
        v52 = v8;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: error creating region proposal model: %i", buf, 0x1Cu);
      }
    }

    else
    {
      v11 = _ARLogTechnique(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        mlModel = v4->_mlModel;
        v22 = *mlModel;
        v23 = mlModel[1];
        LODWORD(mlModel) = mlModel[2];
        *buf = 138544386;
        v48 = v20;
        v49 = 2048;
        v50 = v4;
        v51 = 1024;
        v52 = v22;
        v53 = 1024;
        v54 = v23;
        v55 = 1024;
        v56 = mlModel;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Region proposal model loaded from AppleCV3DModels-%i.%i.%i", buf, 0x28u);
      }
    }

    CFRelease(v6);
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
    }

    v14 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v15 = _ARLogTechnique(ObjectRegionProposalModelData);
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543618;
        v48 = v18;
        v49 = 2048;
        v50 = v4;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create object region proposal model", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138543618;
      v48 = v27;
      v49 = 2048;
      v50 = v4;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create object region proposal model", buf, 0x16u);
    }
  }

  v45 = *MEMORY[0x1E698BC10];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v46 = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

  objc_storeStrong(&v4->_options, v29);
  v32 = v31;
  if (!v31)
  {
    v38 = dispatch_semaphore_create(1);
    odtHandleSemaphore = v4->_odtHandleSemaphore;
    v4->_odtHandleSemaphore = v38;

    v4->_odtCounter = 0;
LABEL_29:
    v40 = v4;
    goto LABEL_33;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
  }

  v33 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v34 = _ARLogTechnique(v31);
  v35 = v34;
  if (v33 == 1)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138543874;
      v48 = v37;
      v49 = 2048;
      v50 = v4;
      v51 = 1024;
      v52 = v32;
      _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d.", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    *buf = 138543874;
    v48 = v42;
    v49 = 2048;
    v50 = v4;
    v51 = 1024;
    v52 = v32;
    _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d.", buf, 0x1Cu);
  }

  v40 = 0;
LABEL_33:

  return v40;
}

- (int)addReferenceImage:(id)image tracking:(BOOL)tracking pObjectID:(unint64_t *)d
{
  imageCopy = image;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [imageCopy pixelBuffer];
  [imageCopy alphaMask];
  [imageCopy physicalSize];
  v8 = CV3DODTAddPlanarObject();
  odtCounter = self->_odtCounter;
  *d = odtCounter;
  self->_odtCounter = odtCounter + 1;
  dispatch_semaphore_signal(self->_odtHandleSemaphore);

  return v8;
}

+ (id)suggestionInvalidImage
{
  v2 = ARKitCoreBundle(self);
  v3 = [v2 localizedStringForKey:@"Make sure that all reference images are greater than 100 pixels and have a positive physical size in meters." value:&stru_1F4208A80 table:@"Localizable"];

  return v3;
}

+ (id)suggestionInvalidFeature
{
  v2 = ARKitCoreBundle(self);
  v3 = [v2 localizedStringForKey:@"One or more images lack sufficient texture and contrast for accurate detection. Image detection works best when an image contains multiple high-contrast regions distributed across its extent." value:&stru_1F4208A80 table:@"Localizable"];

  return v3;
}

+ (id)suggestionInternalError
{
  v2 = ARKitCoreBundle(self);
  v3 = [v2 localizedStringForKey:@"An unknown error occurred while loading ARReferenceImages for detection. Please file a bug report." value:&stru_1F4208A80 table:@"Localizable"];

  return v3;
}

+ (void)accumulateReferenceImageErrorsForResult:(int)result refImage:(id)image objectID:(unint64_t)d pReferenceImageMap:(id *)map pFailedReferenceImageNames:(id *)names pUserErrorType:(int64_t *)type
{
  v42 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v14 = *map;
  v15 = *names;
  v16 = v15;
  if (result > 0xF)
  {
    goto LABEL_20;
  }

  if (((1 << result) & 0x6030) != 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      +[ARODTHandleManager accumulateReferenceImageErrorsForResult:refImage:objectID:pReferenceImageMap:pFailedReferenceImageNames:pUserErrorType:];
    }

    v17 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v18 = _ARLogTechnique(v15);
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = [imageCopy description];
        v38 = 138412546;
        v39 = v20;
        v40 = 1024;
        resultCopy4 = result;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v38, 0x12u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v25 = [imageCopy description];
      v38 = 138412546;
      v39 = v25;
      v40 = 1024;
      resultCopy4 = result;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v38, 0x12u);
    }

    if ((*type + 1) <= 1)
    {
      *type = -1;
      name = [imageCopy name];
      if (name)
      {
        name2 = [imageCopy name];
        v28 = name2;
      }

      else
      {
        v28 = ARKitCoreBundle(0);
        name2 = [v28 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
      }

      [v16 addObject:name2];
      if (!name)
      {
      }

LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (!result)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:d];
    [v14 setObject:imageCopy forKey:v33];

    goto LABEL_30;
  }

  if (result != 15)
  {
LABEL_20:
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      +[ARODTHandleManager accumulateReferenceImageErrorsForResult:refImage:objectID:pReferenceImageMap:pFailedReferenceImageNames:pUserErrorType:];
    }

    v29 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v30 = _ARLogTechnique(v15);
    v31 = v30;
    if (v29 == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v32 = [imageCopy description];
        v38 = 138412546;
        v39 = v32;
        v40 = 1024;
        resultCopy4 = result;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v38, 0x12u);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v34 = [imageCopy description];
      v38 = 138412546;
      v39 = v34;
      v40 = 1024;
      resultCopy4 = result;
      _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v38, 0x12u);
    }

    if (!*type || *type == -3)
    {
      *type = -3;
      name = [imageCopy name];
      if (name)
      {
        name3 = [imageCopy name];
        v28 = name3;
      }

      else
      {
        v28 = ARKitCoreBundle(0);
        name3 = [v28 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
      }

      [v16 addObject:name3];
      if (!name)
      {
      }

      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    +[ARODTHandleManager accumulateReferenceImageErrorsForResult:refImage:objectID:pReferenceImageMap:pFailedReferenceImageNames:pUserErrorType:];
  }

  v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v22 = _ARLogTechnique(v15);
  v23 = v22;
  if (v21 == 1)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = [imageCopy description];
      v38 = 138412546;
      v39 = v24;
      v40 = 1024;
      resultCopy4 = 15;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v38, 0x12u);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v36 = [imageCopy description];
    v38 = 138412546;
    v39 = v36;
    v40 = 1024;
    resultCopy4 = 15;
    _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v38, 0x12u);
  }

  if (!*type || *type == -2)
  {
    *type = -2;
    name = [imageCopy name];
    if (name)
    {
      name4 = [imageCopy name];
      v28 = name4;
    }

    else
    {
      v28 = ARKitCoreBundle(0);
      name4 = [v28 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
    }

    [v16 addObject:name4];
    if (!name)
    {
    }

    goto LABEL_29;
  }

LABEL_30:
}

+ (id)handleAccumulatedErrorType:(int64_t)type failedReferenceImageNames:(id)names
{
  v38[3] = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v6 = namesCopy;
  switch(type)
  {
    case -3:
      v22 = _ARLogSession(namesCopy);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEFAULT, "An unknown error occurred while loading ARReferenceImages for detection. Please file a bug report.", buf, 2u);
      }

      v23 = MEMORY[0x1E696AEC0];
      v25 = ARKitCoreBundle(v24);
      v26 = [v25 localizedStringForKey:@"One or more reference images could not be loaded due to an unknown error: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v27 = [v6 componentsJoinedByString:{@", "}];
      v11 = [v23 stringWithFormat:v26, v27];

      v34[0] = v6;
      v28 = *MEMORY[0x1E696A598];
      v33[0] = @"ARErrorItems";
      v33[1] = v28;
      suggestionInternalError = [objc_opt_class() suggestionInternalError];
      v33[2] = *MEMORY[0x1E696A588];
      v34[1] = suggestionInternalError;
      v34[2] = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

      v15 = ARErrorWithCodeAndUserInfo(300, v14);
      goto LABEL_9;
    case -2:
      v16 = MEMORY[0x1E696AEC0];
      v17 = ARKitCoreBundle(namesCopy);
      v18 = [v17 localizedStringForKey:@"One or more reference images have insufficient texture: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v19 = [v6 componentsJoinedByString:{@", "}];
      v11 = [v16 stringWithFormat:v18, v19];

      v36[0] = v6;
      v20 = *MEMORY[0x1E696A598];
      v35[0] = @"ARErrorItems";
      v35[1] = v20;
      suggestionInvalidFeature = [objc_opt_class() suggestionInvalidFeature];
      v35[2] = *MEMORY[0x1E696A588];
      v36[1] = suggestionInvalidFeature;
      v36[2] = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

      v15 = ARErrorWithCodeAndUserInfo(300, v14);
      goto LABEL_9;
    case -1:
      v7 = MEMORY[0x1E696AEC0];
      v8 = ARKitCoreBundle(namesCopy);
      v9 = [v8 localizedStringForKey:@"One or more reference images have an invalid size: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v10 = [v6 componentsJoinedByString:{@", "}];
      v11 = [v7 stringWithFormat:v9, v10];

      v38[0] = v6;
      v12 = *MEMORY[0x1E696A598];
      v37[0] = @"ARErrorItems";
      v37[1] = v12;
      suggestionInvalidImage = [objc_opt_class() suggestionInvalidImage];
      v37[2] = *MEMORY[0x1E696A588];
      v38[1] = suggestionInvalidImage;
      v38[2] = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];

      v15 = ARErrorWithCodeAndUserInfo(300, v14);
LABEL_9:
      v30 = v15;

      goto LABEL_11;
  }

  v30 = 0;
LABEL_11:

  return v30;
}

- (int)waitForAllObjectsAddToFinish
{
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = CV3DODTWaitForAllObjectsAddToFinish();
  dispatch_semaphore_signal(self->_odtHandleSemaphore);
  return v3;
}

- (int)addReferenceObject:(id)object tracking:(BOOL)tracking pObjectID:(unint64_t *)d
{
  objectCopy = object;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  trackingData = [objectCopy trackingData];
  v9 = CV3DODTAdd3dObject();

  odtCounter = self->_odtCounter;
  *d = odtCounter;
  self->_odtCounter = odtCounter + 1;
  dispatch_semaphore_signal(self->_odtHandleSemaphore);

  return v9;
}

- (int)detectReferenceObjectsForImageData:(id)data worldTrackingPose:(id)pose imageContext:(const void *)context pResultArray:(id *)array
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  poseCopy = pose;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v21 = 0;
  v10 = [objc_opt_class() _calibrationDataFromImageData:dataCopy pCalibrationData:&v21];
  v11 = v21;
  if (v10)
  {
    dispatch_semaphore_signal(self->_odtHandleSemaphore);

    v12 = 7;
  }

  else
  {
    [poseCopy visionCameraTransform];
    [dataCopy pixelBuffer];
    objc_msgSend_timestamp(dataCopy);
    v12 = CV3DODTDetectWithMetadata();
    v17 = objc_opt_new();
    v18 = v17;
    *array = v17;
    CV3DODTObjectInfoRelease();

    dispatch_semaphore_signal(self->_odtHandleSemaphore);
  }

  return v12;
}

- (int)trackPlanarObjectAndEstimateScaleForImageData:(id)data worldTrackingPose:(id)pose imageContext:(const void *)context timeBudget:(double)budget pResultArray:(id *)array
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  poseCopy = pose;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v13 = objc_opt_new();
  arrayCopy = array;
  v26 = v13;
  v14 = [objc_opt_class() _calibrationDataFromImageData:dataCopy pCalibrationData:&v26];
  v15 = v26;

  if (v14)
  {

    v16 = 7;
  }

  else
  {
    if (budget > 0.0)
    {
      CV3DODTSetMaximumTrackingTime();
    }

    if (poseCopy)
    {
      [poseCopy visionCameraTransform];
      [dataCopy pixelBuffer];
      objc_msgSend_timestamp(dataCopy);
      v21 = CV3DODTTrackAndEstimateScale();
    }

    else
    {
      [dataCopy pixelBuffer];
      objc_msgSend_timestamp(dataCopy);
      v21 = CV3DODTTrack();
    }

    v16 = v21;
    v22 = objc_opt_new();
    v23 = v22;
    *arrayCopy = v22;
    CV3DODTObjectInfoRelease();

    dispatch_semaphore_signal(self->_odtHandleSemaphore);
  }

  return v16;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_odtHandle)
  {
    v3 = _ARLogTechnique(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      odtHandle = self->_odtHandle;
      *buf = 138543874;
      v13 = v5;
      v14 = 2048;
      selfCopy2 = self;
      v16 = 2048;
      v17 = odtHandle;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing Image Detection handle: %p …", buf, 0x20u);
    }

    v7 = CV3DODTRelease();
    self->_odtHandle = 0;
    v8 = _ARLogTechnique(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v13 = v10;
      v14 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ImageDetectionHandle handle released", buf, 0x16u);
    }
  }

  if (self->_mlModel)
  {
    CV3DMLModelRelease();
  }

  v11.receiver = self;
  v11.super_class = ARODTHandleManager;
  [(ARODTHandleManager *)&v11 dealloc];
}

- (int)predictPlanarObjectsAtTimestamp:(double)timestamp worldTrackingPose:(id)pose timeBudget:(double)budget pResultArray:(id *)array
{
  v21 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (budget > 0.0)
  {
    CV3DODTSetMaximumTrackingTime();
  }

  if (poseCopy)
  {
    [poseCopy visionCameraTransform];
    ARMatrix4x4RowMajorRotationAndTranslation(v20, &v19, v10, v11, v12, v13);
    v14 = CV3DODTImagePredictInWorld();
  }

  else
  {
    v14 = CV3DODTImagePredict();
  }

  v15 = v14;
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v17 = v16;
  *array = v16;
  CV3DODTObjectInfoRelease();

  dispatch_semaphore_signal(self->_odtHandleSemaphore);
  return v15;
}

+ (int)verifyReferenceImage:(id)image
{
  imageCopy = image;
  [imageCopy pixelBuffer];
  [imageCopy alphaMask];
  [imageCopy physicalSize];
  v4 = CV3DODTVerifyReferenceImage();

  return v4;
}

- (void)updatePowerUsage:(unint64_t)usage
{
  if (self->_odtPowerUsage != usage)
  {
    self->_odtPowerUsage = usage;
    dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    CV3DODTSetPerformanceMode();
    odtHandleSemaphore = self->_odtHandleSemaphore;

    dispatch_semaphore_signal(odtHandleSemaphore);
  }
}

- (void)releaseODTHandle
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_odtHandle)
  {
    v4 = _ARLogTechnique(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      odtHandle = self->_odtHandle;
      v12 = 138543874;
      v13 = v6;
      v14 = 2048;
      selfCopy2 = self;
      v16 = 2048;
      v17 = odtHandle;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing Image Detection handle: %p …", &v12, 0x20u);
    }

    v8 = CV3DODTRelease();
    self->_odtHandle = 0;
    v9 = _ARLogTechnique(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138543618;
      v13 = v11;
      v14 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ImageDetectionHandle handle released", &v12, 0x16u);
    }
  }

  dispatch_semaphore_signal(self->_odtHandleSemaphore);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDictionary *)self->_options isEqual:equalCopy[4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int)_calibrationDataFromImageData:(id)data pCalibrationData:(id *)calibrationData
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = objc_opt_new();
  CVPixelBufferLockBaseAddress([dataCopy pixelBuffer], 0);
  [dataCopy cameraIntrinsics];
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  Width = CVPixelBufferGetWidth([dataCopy pixelBuffer]);
  Height = CVPixelBufferGetHeight([dataCopy pixelBuffer]);
  if (MEMORY[0x1C6919C80](v6, Width, Height, v18, v18, v18, v18, "Perspective", v15, v16, *&v17, *(&v17 + 1), 0.0))
  {
    CVPixelBufferUnlockBaseAddress([dataCopy pixelBuffer], 0);
    v12 = 8;
  }

  else
  {
    v13 = v6;
    *calibrationData = v6;
    CVPixelBufferUnlockBaseAddress([dataCopy pixelBuffer], 0);
    v12 = 0;
  }

  return v12;
}

@end