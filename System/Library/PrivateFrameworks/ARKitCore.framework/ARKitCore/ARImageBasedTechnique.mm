@interface ARImageBasedTechnique
- (ARImageBasedTechnique)init;
- (BOOL)context:(id)context matchesFrameReference:(id)reference;
- (id)_fullDescription;
- (id)processData:(id)data;
- (int64_t)getDeviceOrientationFromImageData:(id)data;
- (void)pushResultData:(id)data forFrame:(__CVBuffer *)frame;
- (void)pushResultData:(id)data forFrameReference:(id)reference;
- (void)pushResultData:(id)data forTimestamp:(double)timestamp;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation ARImageBasedTechnique

- (ARImageBasedTechnique)init
{
  v12.receiver = self;
  v12.super_class = ARImageBasedTechnique;
  v2 = [(ARTechnique *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pendingResultData = v2->_pendingResultData;
    v2->_pendingResultData = v3;

    v5 = objc_opt_new();
    pendingFrameReferences = v2->_pendingFrameReferences;
    v2->_pendingFrameReferences = v5;

    v7 = objc_opt_new();
    pendingRequestContexts = v2->_pendingRequestContexts;
    v2->_pendingRequestContexts = v7;

    v9 = dispatch_semaphore_create(1);
    pendingRequestsSemaphore = v2->_pendingRequestsSemaphore;
    v2->_pendingRequestsSemaphore = v9;
  }

  return v2;
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dataCopy;
    objc_msgSend_timestamp(v5);
    traceKey = [(ARTechnique *)self traceKey];
    if (ARTechnique_Image_to_Result_Timestamp_onceToken != -1)
    {
      [ARImageBasedTechnique processData:];
    }

    v7 = [ARTechnique_Image_to_Result_Timestamp_keyToCode objectForKeyedSubscript:traceKey];
    [v7 intValue];

    kdebug_trace();
    traceKey2 = [(ARTechnique *)self traceKey];
    if (ARTechnique_Image_to_Result_Frame_onceToken != -1)
    {
      [ARImageBasedTechnique processData:];
    }

    v9 = [ARTechnique_Image_to_Result_Frame_keyToCode objectForKeyedSubscript:traceKey2];
    [v9 intValue];

    [v5 pixelBuffer];
    kdebug_trace();
  }

  return dataCopy;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v53 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dispatch_semaphore_wait(self->_pendingRequestsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v7 = [(NSMutableArray *)self->_pendingResultData count];
  if (!v7)
  {
LABEL_9:
    if ([(NSMutableArray *)self->_pendingRequestContexts count]>= 2)
    {
      firstObject = [(NSMutableArray *)self->_pendingRequestContexts firstObject];
      imageData = [firstObject imageData];
      objc_msgSend_timestamp(imageData);
      v21 = timestamp - v20;
      [(ARTechnique *)self requiredTimeInterval];
      v23 = v22 + v22;

      if (v21 > v23)
      {
        v25 = _ARLogTechnique_2(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          firstObject2 = [(NSMutableArray *)self->_pendingRequestContexts firstObject];
          imageData2 = [firstObject2 imageData];
          objc_msgSend_timestamp(imageData2);
          v43 = 138543874;
          v44 = v27;
          v45 = 2048;
          selfCopy4 = self;
          v47 = 2048;
          v48 = v30;
          _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping timed-out context: %f", &v43, 0x20u);
        }

        [(NSMutableArray *)self->_pendingRequestContexts removeObjectAtIndex:0];
      }
    }

    [(NSMutableArray *)self->_pendingRequestContexts addObject:contextCopy];
    dispatch_semaphore_signal(self->_pendingRequestsSemaphore);
    goto LABEL_15;
  }

  v8 = v7;
  if (v7 < 1)
  {
LABEL_6:
    v12 = _ARLogTechnique_2(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      imageData3 = [contextCopy imageData];
      objc_msgSend_timestamp(imageData3);
      pendingResultData = self->_pendingResultData;
      v43 = 138544386;
      v44 = v14;
      v45 = 2048;
      selfCopy4 = self;
      v47 = 2048;
      v48 = v17;
      v49 = 2048;
      v50 = v8;
      v51 = 2112;
      v52 = pendingResultData;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Enqueuing context (%f) even though %ld results (%@) are pending", &v43, 0x34u);
    }

    goto LABEL_9;
  }

  v9 = 0;
  while (1)
  {
    v10 = [(NSMutableArray *)self->_pendingFrameReferences objectAtIndexedSubscript:v9];
    v11 = [(ARImageBasedTechnique *)self context:contextCopy matchesFrameReference:v10];

    if (v11)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_6;
    }
  }

  v31 = [(NSMutableArray *)self->_pendingResultData objectAtIndexedSubscript:v9];
  v32 = v31;
  if (v9)
  {
    v33 = _ARLogTechnique_2(v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v43 = 138543874;
      v44 = v35;
      v45 = 2048;
      selfCopy4 = self;
      v47 = 2048;
      v48 = v9;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping %ld received result datas - newer data available", &v43, 0x20u);
    }
  }

  [(NSMutableArray *)self->_pendingFrameReferences removeObjectsInRange:0, v9 + 1];
  [(NSMutableArray *)self->_pendingResultData removeObjectsInRange:0, v9 + 1];
  if (!v32)
  {
    goto LABEL_9;
  }

  if ([v32 count])
  {
    v36 = [(NSMutableArray *)self->_pendingRequestContexts count];
    if (v36)
    {
      v37 = _ARLogTechnique_2(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = [(NSMutableArray *)self->_pendingRequestContexts count];
        pendingRequestContexts = self->_pendingRequestContexts;
        v43 = 138544130;
        v44 = v39;
        v45 = 2048;
        selfCopy4 = self;
        v47 = 2048;
        v48 = v40;
        v49 = 2112;
        v50 = pendingRequestContexts;
        _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping %ld skipped contexts (%@)", &v43, 0x2Au);
      }

      [(NSMutableArray *)self->_pendingRequestContexts removeAllObjects];
    }
  }

  dispatch_semaphore_signal(self->_pendingRequestsSemaphore);
  [(ARImageBasedTechnique *)self prepareResultData:v32 forContext:contextCopy];
  delegate = [(ARTechnique *)self delegate];
  [delegate technique:self didOutputResultData:v32 timestamp:contextCopy context:timestamp];

LABEL_15:
}

- (void)pushResultData:(id)data forFrameReference:(id)reference
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  referenceCopy = reference;
  dispatch_semaphore_wait(self->_pendingRequestsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [(NSMutableArray *)self->_pendingRequestContexts count];
  if (!v8)
  {
LABEL_9:
    [(NSMutableArray *)self->_pendingResultData addObject:dataCopy];
    [(NSMutableArray *)self->_pendingFrameReferences addObject:referenceCopy];
    dispatch_semaphore_signal(self->_pendingRequestsSemaphore);
    goto LABEL_10;
  }

  v9 = v8;
  if (v8 < 1)
  {
LABEL_6:
    v13 = _ARLogTechnique_2(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      pendingRequestContexts = self->_pendingRequestContexts;
      v29 = 138544386;
      v30 = v15;
      v31 = 2048;
      selfCopy3 = self;
      v33 = 2112;
      v34 = dataCopy;
      v35 = 2048;
      v36 = v9;
      v37 = 2112;
      v38 = pendingRequestContexts;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Enqueuing result data (%@) even though %ld contexts are pending (%@)", &v29, 0x34u);
    }

    goto LABEL_9;
  }

  v10 = 0;
  while (1)
  {
    v11 = [(NSMutableArray *)self->_pendingRequestContexts objectAtIndexedSubscript:v10];
    v12 = [(ARImageBasedTechnique *)self context:v11 matchesFrameReference:referenceCopy];
    if (v12)
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_6;
    }
  }

  if (v10)
  {
    v17 = _ARLogTechnique_2(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = self->_pendingRequestContexts;
      v29 = 138544130;
      v30 = v19;
      v31 = 2048;
      selfCopy3 = self;
      v33 = 2048;
      v34 = v10;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Result data received, skipped %ld contexts (%@)", &v29, 0x2Au);
    }
  }

  [(NSMutableArray *)self->_pendingRequestContexts removeObjectsInRange:0, v10 + 1];
  if (!v11)
  {
    goto LABEL_9;
  }

  v21 = [(NSMutableArray *)self->_pendingResultData count];
  if (v21)
  {
    v22 = _ARLogTechnique_2(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [(NSMutableArray *)self->_pendingResultData count];
      pendingResultData = self->_pendingResultData;
      v29 = 138544130;
      v30 = v24;
      v31 = 2048;
      selfCopy3 = self;
      v33 = 2048;
      v34 = v25;
      v35 = 2112;
      v36 = pendingResultData;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping %ld skipped result datas (%@)", &v29, 0x2Au);
    }

    [(NSMutableArray *)self->_pendingResultData removeAllObjects];
    [(NSMutableArray *)self->_pendingFrameReferences removeAllObjects];
  }

  dispatch_semaphore_signal(self->_pendingRequestsSemaphore);
  [(ARImageBasedTechnique *)self prepareResultData:dataCopy forContext:v11];
  delegate = [(ARTechnique *)self delegate];
  imageData = [v11 imageData];
  objc_msgSend_timestamp(imageData);
  [delegate technique:self didOutputResultData:dataCopy timestamp:v11 context:?];

LABEL_10:
}

- (void)pushResultData:(id)data forFrame:(__CVBuffer *)frame
{
  dataCopy = data;
  traceKey = [(ARTechnique *)self traceKey];
  if (ARTechnique_Image_to_Result_FrameEnd_onceToken != -1)
  {
    [ARImageBasedTechnique pushResultData:forFrame:];
  }

  v8 = [ARTechnique_Image_to_Result_FrameEnd_keyToCode objectForKeyedSubscript:traceKey];
  [v8 intValue];

  kdebug_trace();
  v9 = [MEMORY[0x1E696B098] valueWithPointer:frame];
  [(ARImageBasedTechnique *)self pushResultData:dataCopy forFrameReference:v9];
}

- (void)pushResultData:(id)data forTimestamp:(double)timestamp
{
  dataCopy = data;
  traceKey = [(ARTechnique *)self traceKey];
  if (ARTechnique_Image_to_Result_TimestampEnd_onceToken != -1)
  {
    [ARImageBasedTechnique pushResultData:forTimestamp:];
  }

  v8 = [ARTechnique_Image_to_Result_TimestampEnd_keyToCode objectForKeyedSubscript:traceKey];
  [v8 intValue];

  kdebug_trace();
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
  [(ARImageBasedTechnique *)self pushResultData:dataCopy forFrameReference:v9];
}

- (BOOL)context:(id)context matchesFrameReference:(id)reference
{
  contextCopy = context;
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [referenceCopy doubleValue];
    v8 = v7;
    imageData = [contextCopy imageData];
    objc_msgSend_timestamp(imageData);
    v11 = v8 == v10;
  }

  else
  {
    if (![referenceCopy pointerValue])
    {
      v11 = 1;
      goto LABEL_6;
    }

    imageData = [contextCopy imageData];
    v11 = [imageData matchesPixelBufferPointerRecursively:{objc_msgSend(referenceCopy, "pointerValue")}];
  }

LABEL_6:
  return v11;
}

- (id)_fullDescription
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v27.receiver = self;
  v27.super_class = ARImageBasedTechnique;
  _fullDescription = [(ARTechnique *)&v27 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  if ([(NSMutableArray *)self->_pendingResultData count])
  {
    v6 = [(NSMutableArray *)self->_pendingResultData description];
    v7 = [v6 description];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
    [v5 appendFormat:@"\tPendingResultData: %@\n", v8];
  }

  else
  {
    [v5 appendFormat:@"\tPendingResultData: None\n"];
  }

  if ([(NSMutableArray *)self->_pendingFrameReferences count])
  {
    v9 = [(NSMutableArray *)self->_pendingFrameReferences description];
    v10 = [v9 description];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
    [v5 appendFormat:@"\tPendingFrameReferences: %@\n", v11];
  }

  else
  {
    [v5 appendFormat:@"\tPendingFrameReferences: None\n"];
  }

  if ([(NSMutableArray *)self->_pendingRequestContexts count])
  {
    [v5 appendFormat:@"\tPendingRequestContexts:\n"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_pendingRequestContexts;
    v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 1;
      v15 = *v24;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v14 = (v17 + 1);
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d: %@\n", v17, *(*(&v23 + 1) + 8 * v16)];
          v19 = [v18 description];
          v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
          [v5 appendFormat:@"%@", v20];

          ++v16;
          v17 = v14;
        }

        while (v13 != v16);
        v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }
  }

  else
  {
    [v5 appendFormat:@"\tPendingRequestContexts: None\n"];
  }

  return v5;
}

- (int64_t)getDeviceOrientationFromImageData:(id)data
{
  dataCopy = data;
  deviceOrientation = [dataCopy deviceOrientation];
  if ((deviceOrientation - 1) >= 4)
  {
    [ARImageBasedTechnique getDeviceOrientationFromImageData:];
  }

  v5 = deviceOrientation;

  return v5;
}

@end