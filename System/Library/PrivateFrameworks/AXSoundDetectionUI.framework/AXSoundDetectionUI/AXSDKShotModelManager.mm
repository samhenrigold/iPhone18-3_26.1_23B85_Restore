@interface AXSDKShotModelManager
+ (id)requestForDetector:(id)detector;
- (AXSDKShotModelManager)init;
- (AXSDKShotModelManagerDelegate)delegate;
- (BOOL)addCustomDetector:(id)detector;
- (BOOL)removeCustomDetector:(id)detector;
- (BOOL)startDetectionWithFormat:(id)format;
- (void)processAudioBuffer:(id)buffer atTime:(id)time;
- (void)removeAllDetectors;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
- (void)stopDetection;
@end

@implementation AXSDKShotModelManager

- (AXSDKShotModelManager)init
{
  v9.receiver = self;
  v9.super_class = AXSDKShotModelManager;
  v2 = [(AXSDKShotModelManager *)&v9 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentRequests = v2->_currentRequests;
    v2->_currentRequests = dictionary;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("kshot_ultron_audio", v5);
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v6;
  }

  return v2;
}

- (BOOL)startDetectionWithFormat:(id)format
{
  v31 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  _AXAssertIsMainThread();
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDKShotModelManager startDetectionWithFormat:];
  }

  if ([formatCopy channelCount] && (objc_msgSend(formatCopy, "sampleRate"), v6 != 0.0))
  {
    streamAnalyzer = self->_streamAnalyzer;
    if (!streamAnalyzer)
    {
      v11 = [objc_alloc(MEMORY[0x277CDC8F0]) initWithFormat:formatCopy];
      v12 = self->_streamAnalyzer;
      self->_streamAnalyzer = v11;

      streamAnalyzer = self->_streamAnalyzer;
    }

    [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
    v13 = AXLogUltron();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AXSDKShotModelManager startDetectionWithFormat:?];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allValues = [(NSMutableDictionary *)self->_currentRequests allValues];
    v14 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(allValues);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = self->_streamAnalyzer;
          v25 = 0;
          [(SNAudioStreamAnalyzer *)v19 addRequest:v18 withObserver:self error:&v25];
          v20 = v25;
          if (self->_streamAnalyzer)
          {
            v21 = v20 == 0;
          }

          else
          {
            v21 = 0;
          }

          if (!v21)
          {
            v22 = v20;
            v23 = AXLogUltron();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [AXSDKShotModelManager startDetectionWithFormat:];
            }

            [(AXSDKShotModelManager *)self stopDetection];
            goto LABEL_7;
          }
        }

        v15 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
        v8 = 1;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    allValues = AXLogUltron();
    if (os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotModelManager startDetectionWithFormat:];
    }

LABEL_7:
    v8 = 0;
  }

  return v8;
}

- (void)stopDetection
{
  _AXAssertIsMainThread();
  [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeAllRequests];
  streamAnalyzer = self->_streamAnalyzer;
  self->_streamAnalyzer = 0;
}

- (BOOL)addCustomDetector:(id)detector
{
  detectorCopy = detector;
  _AXAssertIsMainThread();
  currentRequests = self->_currentRequests;
  identifier = [detectorCopy identifier];
  v7 = [(NSMutableDictionary *)currentRequests objectForKeyedSubscript:identifier];

  if (!v7)
  {
    v8 = [AXSDKShotModelManager requestForDetector:detectorCopy];
    if (v8)
    {
      if (![(AXSDKShotModelManager *)self streamAnalyzerIsRunning])
      {
        goto LABEL_12;
      }

      v9 = AXLogUltron();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [AXSDKShotModelManager addCustomDetector:v9];
      }

      streamAnalyzer = self->_streamAnalyzer;
      v20 = 0;
      [(SNAudioStreamAnalyzer *)streamAnalyzer addRequest:v8 withObserver:self error:&v20];
      v11 = v20;
      if (!v11)
      {
LABEL_12:
        v14 = self->_currentRequests;
        identifier2 = [detectorCopy identifier];
        [(NSMutableDictionary *)v14 setObject:v8 forKeyedSubscript:identifier2];

        v16 = AXLogUltron();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [AXSDKShotModelManager addCustomDetector:detectorCopy];
        }

        goto LABEL_15;
      }

      v12 = v11;
      v13 = AXLogUltron();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AXSDKShotModelManager addCustomDetector:];
      }
    }

    else
    {
      v18 = AXLogUltron();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AXSDKShotModelManager addCustomDetector:detectorCopy];
      }
    }

    v17 = 0;
    goto LABEL_20;
  }

  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXSDKShotModelManager addCustomDetector:detectorCopy];
  }

LABEL_15:
  v17 = 1;
LABEL_20:

  return v17;
}

- (BOOL)removeCustomDetector:(id)detector
{
  detectorCopy = detector;
  _AXAssertIsMainThread();
  currentRequests = self->_currentRequests;
  identifier = [detectorCopy identifier];
  v7 = [(NSMutableDictionary *)currentRequests objectForKeyedSubscript:identifier];

  if (v7)
  {
    if ([(AXSDKShotModelManager *)self streamAnalyzerIsRunning])
    {
      [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeRequest:v7];
    }

    v8 = self->_currentRequests;
    identifier2 = [detectorCopy identifier];
    [(NSMutableDictionary *)v8 removeObjectForKey:identifier2];
  }

  else
  {
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AXSDKShotModelManager removeCustomDetector:detectorCopy];
    }
  }

  return 1;
}

- (void)removeAllDetectors
{
  _AXAssertIsMainThread();
  [(NSMutableDictionary *)self->_currentRequests removeAllObjects];
  if ([(AXSDKShotModelManager *)self streamAnalyzerIsRunning])
  {
    streamAnalyzer = self->_streamAnalyzer;

    [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
  }
}

+ (id)requestForDetector:(id)detector
{
  detectorCopy = detector;
  mlModel = [detectorCopy mlModel];
  if (mlModel)
  {
    v21 = 0;
    v5 = [objc_alloc(MEMORY[0x277CDC900]) initWithMLModel:mlModel error:&v21];
    v6 = v21;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      modelDescription = [mlModel modelDescription];
      inputDescriptionsByName = [modelDescription inputDescriptionsByName];
      v12 = [inputDescriptionsByName objectForKeyedSubscript:@"td_audio"];
      multiArrayConstraint = [v12 multiArrayConstraint];
      shape = [multiArrayConstraint shape];
      lastObject = [shape lastObject];
      int64ValueSafe = [lastObject int64ValueSafe];

      CMTimeMake(&v20, int64ValueSafe, 16000);
      v19 = v20;
      [v5 setWindowDuration:&v19];
      [v5 setOverlapFactor:((int64ValueSafe + -7800.0) / int64ValueSafe)];
      v10 = v5;
    }

    else
    {
      v9 = AXLogUltron();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSDKShotModelManager requestForDetector:detectorCopy];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotModelManager requestForDetector:detectorCopy];
    }

    v10 = 0;
  }

  return v10;
}

- (void)processAudioBuffer:(id)buffer atTime:(id)time
{
  bufferCopy = buffer;
  timeCopy = time;
  audioQueue = self->_audioQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AXSDKShotModelManager_processAudioBuffer_atTime___block_invoke;
  block[3] = &unk_278BDD338;
  block[4] = self;
  v12 = bufferCopy;
  v13 = timeCopy;
  v9 = timeCopy;
  v10 = bufferCopy;
  dispatch_async(audioQueue, block);
}

uint64_t __51__AXSDKShotModelManager_processAudioBuffer_atTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 48) sampleTime];

  return [v2 analyzeAudioBuffer:v1 atAudioFramePosition:v3];
}

- (void)request:(id)request didProduceResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  v8 = resultCopy;
  if (resultCopy)
  {
    objc_msgSend_timeRange(resultCopy);
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v9 = [(AXSDKShotModelManager *)self delegate:v10];
  [v9 receivedObservation:v8 forDetector:requestCopy];

LABEL_6:
}

- (void)request:(id)request didFailWithError:(id)error
{
  errorCopy = error;
  requestCopy = request;
  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AXSDKShotModelManager request:didFailWithError:];
  }

  delegate = [(AXSDKShotModelManager *)self delegate];
  [delegate receivedError:errorCopy fromDetector:requestCopy];
}

- (void)requestDidComplete:(id)complete
{
  completeCopy = complete;
  delegate = [(AXSDKShotModelManager *)self delegate];
  [delegate receivedCompletion:completeCopy];
}

- (AXSDKShotModelManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startDetectionWithFormat:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Custom Detection Controller: startDetectionWithFormat: %@", v1, 0xCu);
}

- (void)startDetectionWithFormat:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = [*(a1 + 24) allValues];
  [v1 count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addCustomDetector:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addCustomDetector:(void *)a1 .cold.4(void *a1)
{
  v2 = [a1 name];
  v8 = [a1 identifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)addCustomDetector:(void *)a1 .cold.5(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)removeCustomDetector:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)requestForDetector:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 name];
  v8 = [a1 identifier];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

+ (void)requestForDetector:(void *)a1 .cold.2(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end