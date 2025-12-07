@interface ARObjectDetectionTechnique
- (ARObjectDetectionTechnique)initWithDetectionObjects:(id)objects;
- (BOOL)isEqual:(id)equal;
- (id)processData:(id)data;
- (id)processResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)_enqueueObjectForDetectionNonBlocking:(id)blocking;
- (void)_loadReferenceObjects;
- (void)_processImageDataInBackgound:(id)backgound;
- (void)prepare:(BOOL)prepare;
@end

@implementation ARObjectDetectionTechnique

- (ARObjectDetectionTechnique)initWithDetectionObjects:(id)objects
{
  objectsCopy = objects;
  v17.receiver = self;
  v17.super_class = ARObjectDetectionTechnique;
  v5 = [(ARImageBasedTechnique *)&v17 init];
  if (v5)
  {
    v6 = [objectsCopy copy];
    detectionObjects = v5->_detectionObjects;
    v5->_detectionObjects = v6;

    v8 = dispatch_semaphore_create(1);
    dataSemaphore = v5->_dataSemaphore;
    v5->_dataSemaphore = v8;

    v10 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.technique.objectDetection", 4294967285);
    loadObjectsQueue = v5->_loadObjectsQueue;
    v5->_loadObjectsQueue = v10;

    v12 = dispatch_semaphore_create(1);
    detectionSemaphore = v5->_detectionSemaphore;
    v5->_detectionSemaphore = v12;

    v14 = ARCreateFixedPriorityDispatchQueueWithQOS("com.apple.arkit.technique.objectDetection", 33, 4294967285);
    processDataQueue = v5->_processDataQueue;
    v5->_processDataQueue = v14;
  }

  return v5;
}

- (void)prepare:(BOOL)prepare
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_odtHandleManager)
  {
    prepareCopy = prepare;
    v5 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.objctdetection.regionProposalModel"];
    v6 = [ARODTHandleManager alloc];
    if (v5)
    {
      v7 = [(ARODTHandleManager *)v6 initWithRegionProposalModelAndDeterministicMode:prepareCopy];
    }

    else
    {
      v7 = [(ARODTHandleManager *)v6 initWithDeterministicMode:prepareCopy];
    }

    odtHandleManager = self->_odtHandleManager;
    self->_odtHandleManager = v7;

    self->_deterministicMode = prepareCopy;
    objc_initWeak(&location, self);
    loadObjectsQueue = self->_loadObjectsQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__ARObjectDetectionTechnique_prepare___block_invoke;
    v13[3] = &unk_1E817C2D8;
    objc_copyWeak(&v14, &location);
    dispatch_async(loadObjectsQueue, v13);
    if (self->_deterministicMode)
    {
      dispatch_sync(self->_loadObjectsQueue, &__block_literal_global_29);
    }

    if (_ARLogTechnique(void)::onceToken != -1)
    {
      [ARObjectDetectionTechnique prepare:];
    }

    v10 = _ARLogTechnique(void)::logObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v17 = v12;
      v18 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: prepared.", buf, 0x16u);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __38__ARObjectDetectionTechnique_prepare___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadReferenceObjects];
}

- (void)_loadReferenceObjects
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(ARObjectDetectionTechnique *)self finishedLoadingObjects])
  {
    [(NSArray *)self->_detectionObjects count];
    kdebug_trace();
    [(ARObjectDetectionTechnique *)self setFinishedLoadingObjects:0];
    v3 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = self->_detectionObjects;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = *v14;
      do
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v13 + 1) + 8 * v6);
          v12 = 0;
          if ([(ARODTHandleManager *)self->_odtHandleManager addReferenceObject:v7 tracking:0 pObjectID:&v12])
          {
            delegate = [(ARTechnique *)self delegate];
            v9 = ARErrorWithCodeAndUserInfo(301, 0);
            [delegate technique:self didFailWithError:v9];
          }

          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
          [v3 setObject:v7 forKey:v10];

          ++v6;
        }

        while (v4 != v6);
        v4 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    objc_storeStrong(&self->_referenceObjecteMap, v3);
    [(ARODTHandleManager *)self->_odtHandleManager waitForAllObjectsAddToFinish];
    [(ARObjectDetectionTechnique *)self setFinishedLoadingObjects:1];
    kdebug_trace();
  }
}

- (id)processResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  dataCopy = data;
  v7 = [dataCopy indexOfObjectPassingTest:&__block_literal_global_7_0];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [dataCopy objectAtIndexedSubscript:v7];
  }

  [(ARObjectDetectionTechnique *)self setCurrentWorldTrackingPose:v8];

  return dataCopy;
}

uint64_t __66__ARObjectDetectionTechnique_processResultData_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8.receiver = self;
    v8.super_class = ARObjectDetectionTechnique;
    v5 = [(ARImageBasedTechnique *)&v8 processData:dataCopy];
    v6 = dataCopy;
    if ([(ARObjectDetectionTechnique *)self finishedLoadingObjects])
    {
      [(ARObjectDetectionTechnique *)self _enqueueObjectForDetectionNonBlocking:v6];
      if (self->_deterministicMode)
      {
        dispatch_sync(self->_processDataQueue, &__block_literal_global_13);
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

- (void)_enqueueObjectForDetectionNonBlocking:(id)blocking
{
  blockingCopy = blocking;
  v5 = self->_detectionSemaphore;
  if (dispatch_semaphore_wait(v5, 0))
  {
    objc_msgSend_timestamp(blockingCopy);
    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  }

  else
  {
    objc_initWeak(&location, self);
    processDataQueue = self->_processDataQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__ARObjectDetectionTechnique__enqueueObjectForDetectionNonBlocking___block_invoke;
    v7[3] = &unk_1E817C350;
    objc_copyWeak(&v10, &location);
    v8 = v5;
    v9 = blockingCopy;
    dispatch_async(processDataQueue, v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __68__ARObjectDetectionTechnique__enqueueObjectForDetectionNonBlocking___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processImageDataInBackgound:*(a1 + 40)];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (void)_processImageDataInBackgound:(id)backgound
{
  v44 = *MEMORY[0x1E69E9840];
  backgoundCopy = backgound;
  dispatch_assert_queue_V2(self->_processDataQueue);
  objc_msgSend_timestamp(backgoundCopy);
  kdebug_trace();
  currentWorldTrackingPose = [(ARObjectDetectionTechnique *)self currentWorldTrackingPose];
  if (currentWorldTrackingPose && (-[ARObjectDetectionTechnique currentWorldTrackingPose](self, "currentWorldTrackingPose"), v6 = objc_claimAutoreleasedReturnValue(), [v6 worldTrackingState], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "vioTrackingState"), v7, v6, currentWorldTrackingPose, !v8))
  {
    odtHandleManager = self->_odtHandleManager;
    currentWorldTrackingPose2 = [(ARObjectDetectionTechnique *)self currentWorldTrackingPose];
    v36 = 0;
    LODWORD(odtHandleManager) = [(ARODTHandleManager *)odtHandleManager detectReferenceObjectsForImageData:backgoundCopy worldTrackingPose:currentWorldTrackingPose2 imageContext:0 pResultArray:&v36];
    v9 = v36;

    if (odtHandleManager)
    {
      dispatch_semaphore_signal(self->_detectionSemaphore);
      [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forFrame:0];
    }

    else
    {
      v12 = objc_opt_new();
      v13 = 0;
      *&v14 = 138543874;
      v35 = v14;
      while ([v9 count] > v13)
      {
        referenceObjecteMap = [(ARObjectDetectionTechnique *)self referenceObjecteMap];
        v16 = MEMORY[0x1E696AD98];
        v17 = [v9 objectAtIndexedSubscript:v13];
        v18 = [v16 numberWithInteger:{objc_msgSend(v17, "detectedObjectID")}];
        v19 = [referenceObjecteMap objectForKeyedSubscript:v18];

        if (v19)
        {
          v21 = objc_opt_new();
          v22 = [v9 objectAtIndexedSubscript:v13];
          [v22 visionTransform];
          [v21 setVisionTransform:?];

          [v21 setReferenceObject:v19];
          [v12 addObject:v21];
        }

        else
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            [ARObjectDetectionTechnique _processImageDataInBackgound:];
          }

          v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v24 = _ARLogGeneral(v20);
          v21 = v24;
          if (v23 == 1)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = objc_opt_class();
              v26 = NSStringFromClass(v25);
              v27 = [v9 objectAtIndexedSubscript:v13];
              detectedObjectID = [v27 detectedObjectID];
              *buf = v35;
              v39 = v26;
              v40 = 2048;
              selfCopy2 = self;
              v42 = 2048;
              v43 = detectedObjectID;
              _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unknown 'detectedObjectID' %llu encountered.", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            v31 = [v9 objectAtIndexedSubscript:v13];
            detectedObjectID2 = [v31 detectedObjectID];
            *buf = v35;
            v39 = v30;
            v40 = 2048;
            selfCopy2 = self;
            v42 = 2048;
            v43 = detectedObjectID2;
            _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unknown 'detectedObjectID' %llu encountered.", buf, 0x20u);
          }
        }

        ++v13;
      }

      if ([v12 count])
      {
        v33 = objc_opt_new();
        [v33 setDetectedObjects:v12];
        v37 = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [(ARImageBasedTechnique *)self pushResultData:v34 forFrame:0];
      }

      else
      {
        [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forFrame:0];
      }

      objc_msgSend_timestamp(backgoundCopy);
      [v9 count];
      kdebug_trace();
      dispatch_semaphore_signal(self->_detectionSemaphore);
    }
  }

  else
  {
    dispatch_semaphore_signal(self->_detectionSemaphore);
    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forFrame:0];
    v9 = 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = ARObjectDetectionTechnique;
  if ([(ARTechnique *)&v8 isEqual:equalCopy])
  {
    detectionObjects = self->_detectionObjects;
    if (detectionObjects == equalCopy[19])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSArray *)detectionObjects isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end