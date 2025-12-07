@interface ARImageDetectionTechnique
+ (BOOL)_redetectionRequiredForContext:(id)context;
- (ARImageDetectionTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages;
- (ARImageDetectionTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages continuousDetection:(BOOL)detection processingQueue:(id)queue;
- (BOOL)finishedLoadingImages;
- (BOOL)isEqual:(id)equal;
- (double)requiredTimeInterval;
- (id).cxx_construct;
- (id)_addReferenceImagesAppleCV3D;
- (id)_trackImagesWithImageData:(id)data timeBudget:(double)budget;
- (id)predictAtTimeStamp:(double)stamp timeBudget:(double)budget predictedWorldTrackingPose:(id)pose;
- (id)processData:(id)data;
- (id)processResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)_enqueueImageForTrackingNonBlocking:(id)blocking;
- (void)_enqueueImageForTrackingSynced:(id)synced;
- (void)_loadReferenceImages;
- (void)_loadReferenceImagesInBackground;
- (void)prepare:(BOOL)prepare;
- (void)setPowerUsage:(unint64_t)usage;
@end

@implementation ARImageDetectionTechnique

- (ARImageDetectionTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages
{
  imagesCopy = images;
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imageDetection.fixedPriorityProcessingQueue"])
  {
    v7 = ARCreateFixedPriorityDispatchQueueWithQOS("com.apple.arkit.technique.imageDetection", 33, 4294967285);
    v8 = _ARLogTechnique(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v9 = "ARImageDetectionTechnique: Created fixed priority serial queue for image detection";
      v10 = &v14;
LABEL_6:
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
    }
  }

  else
  {
    v7 = ARCreateNonFixedPriorityDispatchQueue("com.apple.arkit.technique.imageDetection", 33, 4294967285);
    v8 = _ARLogTechnique(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v9 = "ARImageDetectionTechnique: Created non-fixed priority serial queue for image detection";
      v10 = &v13;
      goto LABEL_6;
    }
  }

  v11 = [(ARImageDetectionTechnique *)self initWithReferenceImages:imagesCopy maximumNumberOfTrackedImages:trackedImages processingQueue:v7];
  return v11;
}

- (ARImageDetectionTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages continuousDetection:(BOOL)detection processingQueue:(id)queue
{
  imagesCopy = images;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = ARImageDetectionTechnique;
  v12 = [(ARImageBasedTechnique *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->_maximumNumberOfTrackedImages = trackedImages;
    v12->_continuousDetection = detection;
    v14 = [imagesCopy copy];
    referenceImages = v13->_referenceImages;
    v13->_referenceImages = v14;

    v16 = dispatch_semaphore_create(0);
    loadingSemaphore = v13->_loadingSemaphore;
    v13->_loadingSemaphore = v16;

    dispatch_semaphore_signal(v13->_loadingSemaphore);
    v18 = dispatch_semaphore_create(1);
    dataSemaphore = v13->_dataSemaphore;
    v13->_dataSemaphore = v18;

    v20 = dispatch_semaphore_create(1);
    detectionSemaphore = v13->_detectionSemaphore;
    v13->_detectionSemaphore = v20;

    v13->_finishedLoadingImages = 0;
    v13->_needsWorldTrackingPoseData = 1;
    objc_storeStrong(&v13->_processDataQueue, queue);
    v13->_tracking = trackedImages > 0;
    std::allocate_shared[abi:ne200100]<arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>,std::allocator<arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>>,int,0>();
  }

  return 0;
}

- (double)requiredTimeInterval
{
  syncWithProcessedImage = [(ARImageDetectionTechnique *)self syncWithProcessedImage];
  result = 0.016;
  if (!syncWithProcessedImage)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)finishedLoadingImages
{
  dispatch_semaphore_wait(self->_dataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  finishedLoadingImages = self->_finishedLoadingImages;
  dispatch_semaphore_signal(self->_dataSemaphore);
  return finishedLoadingImages;
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8.receiver = self;
    v8.super_class = ARImageDetectionTechnique;
    v5 = [(ARImageBasedTechnique *)&v8 processData:dataCopy];
    v6 = dataCopy;
    if ([(ARImageDetectionTechnique *)self finishedLoadingImages])
    {
      if ([(ARImageDetectionTechnique *)self syncWithProcessedImage])
      {
        [(ARImageDetectionTechnique *)self _enqueueImageForTrackingSynced:v6];
      }

      else
      {
        [(ARImageDetectionTechnique *)self _enqueueImageForTrackingNonBlocking:v6];
      }

      if ([(ARImageDetectionTechnique *)self deterministicMode])
      {
        dispatch_sync(self->_processDataQueue, &__block_literal_global_21);
      }
    }

    else
    {
      objc_msgSend_timestamp(v6);
      [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
    }
  }

  return dataCopy;
}

- (id)processResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  if (self->_needsWorldTrackingPoseData)
  {
    v32 = dataCopy;
    v8 = [dataCopy indexOfObjectPassingTest:&__block_literal_global_7];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [dataCopy objectAtIndexedSubscript:v8];
    }

    [(ARImageDetectionTechnique *)self setCurrentWorldTrackingPose:v9, v9];
    if (v9)
    {
      worldTrackingState = [v28 worldTrackingState];
      vioTrackingState = [worldTrackingState vioTrackingState];

      if (!vioTrackingState)
      {
        [v28 cameraTransform];
        *__p = v12;
        v37 = v13;
        v38 = v14;
        v39 = v15;
        v16 = [MEMORY[0x1E695DEF0] dataWithBytes:__p length:64];
        v17 = v16;
        arkit::wrapRawData(buf, [v16 bytes], objc_msgSend(v16, "length"));
        imageData = [contextCopy imageData];
        ARImageContextFromImageData(imageData, v19);
        v21 = v20;

        v35 = v21;
        arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::insert();
      }
    }

    v22 = [v32 count];
    if (v22)
    {
      v31 = v22;
      for (i = 0; i != v31; ++i)
      {
        v33 = [v32 objectAtIndex:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v33;
          memset(v34, 0, sizeof(v34));
          v30 = v24;
          detectedImages = [v24 detectedImages];
          if ([detectedImages countByEnumeratingWithState:v34 objects:v40 count:16])
          {
            v26 = **(&v34[0] + 1);
            __p[0] = 0;
            __p[1] = 0;
            *&v37 = 0;
            *buf = [v26 imageContext];
            arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::find();
          }
        }
      }
    }

    dataCopy = v32;
  }

  return dataCopy;
}

uint64_t __65__ARImageDetectionTechnique_processResultData_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)_redetectionRequiredForContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject = [v5 firstObject];

  worldTrackingState = [firstObject worldTrackingState];
  poseGraphUpdated = [worldTrackingState poseGraphUpdated];

  if (poseGraphUpdated)
  {
    v10 = _ARLogGeneral(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v25 = 138543618;
      v26 = v12;
      v27 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Redetection of image anchors is required. Reason: pose-graph update.", &v25, 0x16u);
    }
  }

  else
  {
    worldTrackingState2 = [firstObject worldTrackingState];
    majorRelocalization = [worldTrackingState2 majorRelocalization];

    if (majorRelocalization)
    {
      v10 = _ARLogGeneral(v15);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v25 = 138543618;
        v26 = v17;
        v27 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Redetection of image anchors is required. Reason: Relocalization.", &v25, 0x16u);
      }
    }

    else
    {
      worldTrackingState3 = [firstObject worldTrackingState];
      vioTrackingState = [worldTrackingState3 vioTrackingState];

      if (!vioTrackingState)
      {
        v23 = 0;
        goto LABEL_11;
      }

      v10 = _ARLogGeneral(v20);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v25 = 138543618;
        v26 = v22;
        v27 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Redetection of image anchors is required. Reason: VIO Tracking state changed.", &v25, 0x16u);
      }
    }
  }

  v23 = 1;
LABEL_11:

  return v23;
}

- (void)_loadReferenceImagesInBackground
{
  v17[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_processDataQueue);
  [(NSArray *)self->_referenceImages count];
  kdebug_trace();
  [(NSArray *)self->_referenceImages count];
  kdebug_trace();
  _addReferenceImagesAppleCV3D = [(ARImageDetectionTechnique *)self _addReferenceImagesAppleCV3D];
  [(NSArray *)self->_referenceImages count];
  [_addReferenceImagesAppleCV3D code];
  kdebug_trace();
  if (_addReferenceImagesAppleCV3D)
  {
    [(NSArray *)self->_referenceImages count];
    [_addReferenceImagesAppleCV3D code];
    kdebug_trace();
    delegate = [(ARTechnique *)self delegate];
    [delegate technique:self didFailWithError:_addReferenceImagesAppleCV3D];
  }

  else
  {
    odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
    waitForAllObjectsAddToFinish = [odtTHandleManger waitForAllObjectsAddToFinish];

    if (waitForAllObjectsAddToFinish)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = ARKitCoreBundle(v7);
      v10 = [v9 localizedStringForKey:@"Reference images could not be loaded due to an unknown error: %d" value:&stru_1F4208A80 table:@"Localizable"];
      v11 = [v8 stringWithFormat:v10, waitForAllObjectsAddToFinish];

      v16[0] = *MEMORY[0x1E696A598];
      v12 = +[ARODTHandleManager suggestionInternalError];
      v16[1] = *MEMORY[0x1E696A588];
      v17[0] = v12;
      v17[1] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

      v14 = ARErrorWithCodeAndUserInfo(151, v13);
      delegate2 = [(ARTechnique *)self delegate];
      [delegate2 technique:self didFailWithError:v14];
    }

    [(NSArray *)self->_referenceImages count];
    kdebug_trace();
    dispatch_semaphore_wait(self->_dataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    self->_finishedLoadingImages = 1;
    dispatch_semaphore_signal(self->_dataSemaphore);
  }
}

- (void)_loadReferenceImages
{
  referenceImageMap = [(ARImageDetectionTechnique *)self referenceImageMap];

  if (!referenceImageMap)
  {
    v4 = self->_loadingSemaphore;
    if (!dispatch_semaphore_wait(v4, 0))
    {
      objc_initWeak(&location, self);
      processDataQueue = self->_processDataQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __49__ARImageDetectionTechnique__loadReferenceImages__block_invoke;
      v6[3] = &unk_1E817C2D8;
      objc_copyWeak(&v7, &location);
      dispatch_async(processDataQueue, v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __49__ARImageDetectionTechnique__loadReferenceImages__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadReferenceImagesInBackground];
}

- (void)prepare:(BOOL)prepare
{
  prepareCopy = prepare;
  v21 = *MEMORY[0x1E69E9840];
  odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];

  if (!odtTHandleManger)
  {
    self->_deterministicMode = prepareCopy;
    v6 = [[ARODTHandleManager alloc] initWithMaximumNumberOfTrackedImages:self->_maximumNumberOfTrackedImages continuousDetection:self->_continuousDetection deterministicMode:prepareCopy];
    odtTHandleManger = self->_odtTHandleManger;
    self->_odtTHandleManger = v6;

    odtTHandleManger2 = [(ARImageDetectionTechnique *)self odtTHandleManger];

    if (!odtTHandleManger2)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARImageDetectionTechnique prepare:];
      }

      v10 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v11 = _ARLogTechnique(v9);
      v12 = v11;
      if (v10 == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v17 = 138543618;
          v18 = v14;
          v19 = 2048;
          selfCopy2 = self;
          _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection.", &v17, 0x16u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138543618;
        v18 = v16;
        v19 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection.", &v17, 0x16u);
      }
    }

    [(ARImageDetectionTechnique *)self _loadReferenceImages];
    if ([(ARImageDetectionTechnique *)self deterministicMode])
    {
      dispatch_sync(self->_processDataQueue, &__block_literal_global_23);
    }
  }
}

- (id)_addReferenceImagesAppleCV3D
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v22 = 0;
  v23 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_referenceImages;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      v8 = v4;
      v9 = v3;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v7);
        odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
        v12 = [odtTHandleManger addReferenceImage:v10 tracking:1 pObjectID:&v22];

        v16 = v8;
        v17 = v9;
        [ARODTHandleManager accumulateReferenceImageErrorsForResult:v12 refImage:v10 objectID:v22 pReferenceImageMap:&v17 pFailedReferenceImageNames:&v16 pUserErrorType:&v23];
        v3 = v17;

        v4 = v16;
        ++v22;
        ++v7;
        v8 = v4;
        v9 = v3;
      }

      while (v5 != v7);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  objc_storeStrong(&self->_referenceImageMap, v3);
  v13 = [ARODTHandleManager handleAccumulatedErrorType:v23 failedReferenceImageNames:v4];

  return v13;
}

- (void)_enqueueImageForTrackingSynced:(id)synced
{
  syncedCopy = synced;
  date = [MEMORY[0x1E695DF00] date];
  objc_initWeak(&location, self);
  processDataQueue = self->_processDataQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ARImageDetectionTechnique__enqueueImageForTrackingSynced___block_invoke;
  v9[3] = &unk_1E817C350;
  objc_copyWeak(&v12, &location);
  v10 = date;
  v11 = syncedCopy;
  v7 = syncedCopy;
  v8 = date;
  dispatch_async(processDataQueue, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __60__ARImageDetectionTechnique__enqueueImageForTrackingSynced___block_invoke(id *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained deterministicMode];
    v5 = 0.0;
    if ((v4 & 1) != 0 || ([v3 requiredTimeInterval], v7 = v6, objc_msgSend(a1[4], "timeIntervalSinceNow"), v5 = v7 + v8 + -0.002, v5 > 0.0))
    {
      v9 = [v3 _trackImagesWithImageData:a1[5] timeBudget:v5];
      v10 = v9;
      if (v9)
      {
        v12[0] = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }

      objc_msgSend_timestamp(a1[5]);
      [v3 pushResultData:v11 forTimestamp:?];
    }

    else
    {
      objc_msgSend_timestamp(a1[5]);
      [v3 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
    }
  }
}

- (void)_enqueueImageForTrackingNonBlocking:(id)blocking
{
  blockingCopy = blocking;
  objc_msgSend_timestamp(blockingCopy);
  [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  v5 = self->_detectionSemaphore;
  if (!dispatch_semaphore_wait(v5, 0))
  {
    objc_initWeak(&location, self);
    processDataQueue = self->_processDataQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__ARImageDetectionTechnique__enqueueImageForTrackingNonBlocking___block_invoke;
    v7[3] = &unk_1E817C350;
    objc_copyWeak(&v10, &location);
    v8 = v5;
    v9 = blockingCopy;
    dispatch_async(processDataQueue, v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __65__ARImageDetectionTechnique__enqueueImageForTrackingNonBlocking___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _trackImagesWithImageData:*(a1 + 40) timeBudget:0.0];
    v5 = v4;
    if (v4)
    {
      v7[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      [v3 pushResultData:v6 forFrame:0];
    }

    else
    {
      objc_msgSend_timestamp(*(a1 + 40));
      [v3 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (id)_trackImagesWithImageData:(id)data timeBudget:(double)budget
{
  v60 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v51 = dataCopy;
  if (dataCopy)
  {
    objc_msgSend_timestamp(dataCopy);
    odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
    [odtTHandleManger maximumNumberOfTrackedImages];
    kdebug_trace();

    v9 = _ARLogTechnique(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      enableAutomaticImageScaleEstimation = [(ARImageDetectionTechnique *)self enableAutomaticImageScaleEstimation];
      v13 = @"OFF";
      *buf = 138543874;
      v55 = v11;
      if (enableAutomaticImageScaleEstimation)
      {
        v13 = @"ON";
      }

      v56 = 2048;
      selfCopy4 = self;
      v58 = 2112;
      v59 = v13;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Attempting to track planar object. Automatic scale estimation = %@", buf, 0x20u);
    }

    if ([(ARImageDetectionTechnique *)self enableAutomaticImageScaleEstimation])
    {
      odtTHandleManger2 = [(ARImageDetectionTechnique *)self odtTHandleManger];
      currentWorldTrackingPose = [(ARImageDetectionTechnique *)self currentWorldTrackingPose];
      ARImageContextFromImageData(v51, v16);
      v53 = 0;
      v18 = [odtTHandleManger2 trackPlanarObjectAndEstimateScaleForImageData:v51 worldTrackingPose:currentWorldTrackingPose imageContext:v17 timeBudget:&v53 pResultArray:budget];
      v19 = v53;
    }

    else
    {
      odtTHandleManger2 = [(ARImageDetectionTechnique *)self odtTHandleManger];
      ARImageContextFromImageData(v51, v21);
      v52 = 0;
      v18 = [odtTHandleManger2 trackPlanarObjectForImageData:v51 imageContext:v22 timeBudget:&v52 pResultArray:budget];
      v19 = v52;
    }

    if (v18)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARImageDetectionTechnique _trackImagesWithImageData:timeBudget:];
      }

      v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v25 = _ARLogTechnique(v23);
      v26 = v25;
      if (v24 == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = 138543874;
          v55 = v28;
          v56 = 2048;
          selfCopy4 = self;
          v58 = 1024;
          LODWORD(v59) = v18;
          _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Tracking failed with error %d.", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138543874;
        v55 = v30;
        v56 = 2048;
        selfCopy4 = self;
        v58 = 1024;
        LODWORD(v59) = v18;
        _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Tracking failed with error %d.", buf, 0x1Cu);
      }
    }

    objc_msgSend_timestamp(v51);
    [v19 count];
    v31 = kdebug_trace();
    v32 = _ARLogTechnique(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = [v19 count];
      *buf = 138543874;
      v55 = v34;
      v56 = 2048;
      selfCopy4 = self;
      v58 = 1024;
      LODWORD(v59) = v35;
      _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tracking %d images", buf, 0x1Cu);
    }

    v36 = objc_opt_new();
    for (i = 0; [v19 count] > i; ++i)
    {
      referenceImageMap = [(ARImageDetectionTechnique *)self referenceImageMap];
      v39 = MEMORY[0x1E696AD98];
      v40 = [v19 objectAtIndexedSubscript:i];
      v41 = [v39 numberWithInteger:{objc_msgSend(v40, "detectedObjectID")}];
      v42 = [referenceImageMap objectForKeyedSubscript:v41];

      v43 = objc_opt_new();
      v44 = [v19 objectAtIndexedSubscript:i];
      [v44 visionTransform];
      [v43 setVisionTransform:?];

      v45 = [v19 objectAtIndexedSubscript:i];
      [v43 setImageContext:{objc_msgSend(v45, "imageContext")}];

      [v43 setReferenceImage:v42];
      v46 = [v19 objectAtIndexedSubscript:i];
      [v46 estimatedScaleFactor];
      [v43 setEstimatedScaleFactor:?];

      v47 = [v19 objectAtIndexedSubscript:i];
      [v43 setOdtObjectIdentifer:{objc_msgSend(v47, "detectedObjectID")}];

      [v36 addObject:v43];
    }

    v20 = objc_opt_new();
    [v20 setDetectedImages:v36];
    [v20 setProvidesWorldTrackingCameraPose:self->_needsWorldTrackingPoseData];
    odtTHandleManger3 = [(ARImageDetectionTechnique *)self odtTHandleManger];
    if ([odtTHandleManger3 maximumNumberOfTrackedImages])
    {
      needsWorldTrackingPoseData = 0;
    }

    else
    {
      needsWorldTrackingPoseData = self->_needsWorldTrackingPoseData;
    }

    [v20 setDetectionOnly:needsWorldTrackingPoseData];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setPowerUsage:(unint64_t)usage
{
  v6.receiver = self;
  v6.super_class = ARImageDetectionTechnique;
  [(ARTechnique *)&v6 setPowerUsage:?];
  odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
  [odtTHandleManger updatePowerUsage:usage];
}

- (id)predictAtTimeStamp:(double)stamp timeBudget:(double)budget predictedWorldTrackingPose:(id)pose
{
  v57 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
  if ([odtTHandleManger maximumNumberOfTrackedImages])
  {
  }

  else
  {
    needsWorldTrackingPoseData = self->_needsWorldTrackingPoseData;

    if (needsWorldTrackingPoseData)
    {
      v12 = 0;
      goto LABEL_31;
    }
  }

  v13 = _ARLogTechnique(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v52 = v15;
    v53 = 2048;
    selfCopy5 = self;
    _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Attempting to predict planar object", buf, 0x16u);
  }

  odtTHandleManger2 = [(ARImageDetectionTechnique *)self odtTHandleManger];
  v50 = 0;
  v17 = [odtTHandleManger2 predictPlanarObjectsAtTimestamp:0 worldTrackingPose:&v50 timeBudget:stamp pResultArray:budget];
  v18 = v50;

  if (v17)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARImageDetectionTechnique _trackImagesWithImageData:timeBudget:];
    }

    v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v21 = _ARLogTechnique(v19);
    log = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138543874;
        v52 = v23;
        v53 = 2048;
        selfCopy5 = self;
        v55 = 1024;
        v56 = v17;
        _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Prediction failed with error %d.", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 138543874;
      v52 = v46;
      v53 = 2048;
      selfCopy5 = self;
      v55 = 1024;
      v56 = v17;
      _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Prediction failed with error %d.", buf, 0x1Cu);
    }

    v12 = 0;
  }

  else
  {
    v24 = _ARLogTechnique(v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v18 count];
      *buf = 138543874;
      v52 = v26;
      v53 = 2048;
      selfCopy5 = self;
      v55 = 1024;
      v56 = v27;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Prediction %d images", buf, 0x1Cu);
    }

    log = objc_opt_new();
    v28 = 0;
    *&v29 = 138543618;
    v48 = v29;
    while ([v18 count] > v28)
    {
      referenceImageMap = [(ARImageDetectionTechnique *)self referenceImageMap];
      v31 = MEMORY[0x1E696AD98];
      v32 = [v18 objectAtIndexedSubscript:v28];
      v33 = [v31 numberWithInteger:{objc_msgSend(v32, "detectedObjectID")}];
      v34 = [referenceImageMap objectForKeyedSubscript:v33];

      if (v34)
      {
        v36 = objc_opt_new();
        v37 = [v18 objectAtIndexedSubscript:v28];
        [v37 visionTransform];
        [v36 setVisionTransform:?];

        v38 = [v18 objectAtIndexedSubscript:v28];
        -[NSObject setImageContext:](v36, "setImageContext:", [v38 imageContext]);

        [v36 setReferenceImage:v34];
        v39 = [v18 objectAtIndexedSubscript:v28];
        [v39 estimatedScaleFactor];
        [v36 setEstimatedScaleFactor:?];

        v40 = [v18 objectAtIndexedSubscript:v28];
        -[NSObject setOdtObjectIdentifer:](v36, "setOdtObjectIdentifer:", [v40 detectedObjectID]);

        if (poseCopy)
        {
          [poseCopy cameraTransform];
          [v36 setWorldTrackingCameraTransformAtDetection:?];
          [log addObject:v36];
        }
      }

      else
      {
        v36 = _ARLogTechnique(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = v48;
          v52 = v42;
          v53 = 2048;
          selfCopy5 = self;
          _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_INFO, "%{public}@ <%p>: No matching reference image found, throwing away prediction.", buf, 0x16u);
        }
      }

      ++v28;
    }

    v12 = objc_opt_new();
    [v12 setDetectedImages:log];
    [v12 setProvidesWorldTrackingCameraPose:self->_needsWorldTrackingPoseData];
    odtTHandleManger3 = [(ARImageDetectionTechnique *)self odtTHandleManger];
    if ([odtTHandleManger3 maximumNumberOfTrackedImages])
    {
      v44 = 0;
    }

    else
    {
      v44 = self->_needsWorldTrackingPoseData;
    }

    [v12 setDetectionOnly:v44];

    [v12 setPredicted:1];
  }

LABEL_31:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = ARImageDetectionTechnique;
  if ([(ARTechnique *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = [(NSArray *)self->_referenceImages isEqual:v5[11]]&& self->_needsWorldTrackingPoseData == *(v5 + 176) && self->_enableAutomaticImageScaleEstimation == *(v5 + 177) && self->_maximumNumberOfTrackedImages == v5[18] && self->_continuousDetection == *(v5 + 152);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 21) = 0;
  return self;
}

@end