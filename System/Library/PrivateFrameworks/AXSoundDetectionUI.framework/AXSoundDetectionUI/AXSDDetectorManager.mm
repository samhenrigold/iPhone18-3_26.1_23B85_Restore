@interface AXSDDetectorManager
+ (id)detectorRequestForDetector:(id)detector;
+ (id)detectorRequestForGeneralApplianceDetector;
+ (id)modelPathForURL:(id)l detectionType:(id)type;
+ (void)detectorRequestForGeneralApplianceDetector;
+ (void)initializeModelMap;
- (AXSDDetectorManager)init;
- (AXSDDetectorManagerDelegate)delegate;
- (BOOL)_addRequestToAnalyzer:(id)analyzer;
- (BOOL)_startDetectionWithFormat:(id)format;
- (BOOL)_testAudioFile:(id)file;
- (BOOL)addAllDetectors;
- (BOOL)addDetector:(id)detector;
- (BOOL)addDetectorType:(id)type;
- (BOOL)addGeneralApplianceDetector;
- (BOOL)removeDetector:(id)detector;
- (BOOL)removeDetectorType:(id)type;
- (BOOL)removeGeneralApplianceDetector;
- (BOOL)startDetectionWithFormat:(id)format;
- (BOOL)startGeneralApplianceDetectionWithFormat:(id)format;
- (id)_currentRequestForDetectionType:(id)type;
- (id)detectorRequestForDetectionType:(id)type;
- (void)_addCurrentRequest:(id)request withDetector:(id)detector;
- (void)_removeAllRequestsFromAnalyzer;
- (void)_removeCurrentRequestForDetectionType:(id)type;
- (void)_removeRequestFromAnalyzer:(id)analyzer;
- (void)_stopDetection;
- (void)addGeneralApplianceDetector;
- (void)processAudioBuffer:(id)buffer atTime:(id)time;
- (void)removeAllDetectors;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
- (void)stopDetection;
@end

@implementation AXSDDetectorManager

- (AXSDDetectorManager)init
{
  v12.receiver = self;
  v12.super_class = AXSDDetectorManager;
  v2 = [(AXSDDetectorManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    currentAssetIdsByType = v2->_currentAssetIdsByType;
    v2->_currentAssetIdsByType = v3;

    v5 = objc_opt_new();
    currentRequestsByAssetID = v2->_currentRequestsByAssetID;
    v2->_currentRequestsByAssetID = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.accessibility.axhadetector.analyzer", v7);
    analyzerQueue = v2->_analyzerQueue;
    v2->_analyzerQueue = v8;

    +[AXSDDetectorManager initializeModelMap];
    currentGeneralApplianceRequest = v2->_currentGeneralApplianceRequest;
    v2->_currentGeneralApplianceRequest = 0;
  }

  return v2;
}

- (void)_addCurrentRequest:(id)request withDetector:(id)detector
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  detectorCopy = detector;
  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = v17;
    model = [detectorCopy model];
    assetId = [model assetId];
    v21 = 138413058;
    v22 = v17;
    v23 = 2112;
    v24 = detectorCopy;
    v25 = 2112;
    v26 = requestCopy;
    v27 = 2112;
    v28 = assetId;
    _os_log_debug_impl(&dword_23D62D000, v8, OS_LOG_TYPE_DEBUG, "[%@]: Adding current detector: %@, with request: %@, and assetID: %@", &v21, 0x2Au);
  }

  currentAssetIdsByType = self->_currentAssetIdsByType;
  model2 = [detectorCopy model];
  assetId2 = [model2 assetId];
  identifier = [detectorCopy identifier];
  [(NSMutableDictionary *)currentAssetIdsByType setObject:assetId2 forKey:identifier];

  currentRequestsByAssetID = self->_currentRequestsByAssetID;
  model3 = [detectorCopy model];
  assetId3 = [model3 assetId];
  [(NSMutableDictionary *)currentRequestsByAssetID setObject:requestCopy forKey:assetId3];

  v16 = +[AXSDDetectorStore sharedInstance];
  [v16 enableDetector:detectorCopy];
}

- (void)_removeCurrentRequestForDetectionType:(id)type
{
  v18 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_currentAssetIdsByType objectForKey:typeCopy];
  if (v5)
  {
    v6 = +[AXSDDetectorStore sharedInstance];
    v7 = [v6 detectorWithAssetID:v5];

    v8 = +[AXSDDetectorStore sharedInstance];
    [v8 disableDetector:v7];

    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412802;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = typeCopy;
      v16 = 2112;
      v17 = v7;
      v11 = v13;
      _os_log_debug_impl(&dword_23D62D000, v9, OS_LOG_TYPE_DEBUG, "[%@]: removing current detection type: %@ with asset: %@", &v12, 0x20u);
    }

    [(NSMutableDictionary *)self->_currentRequestsByAssetID removeObjectForKey:v5];
    [(NSMutableDictionary *)self->_currentAssetIdsByType removeObjectForKey:typeCopy];
  }

  else
  {
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager _removeCurrentRequestForDetectionType:];
    }

    v7 = +[AXSDDetectorStore sharedInstance];
    [v7 disableDetectorWithIdentifier:typeCopy];
  }
}

- (id)_currentRequestForDetectionType:(id)type
{
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_currentAssetIdsByType objectForKey:typeCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_currentRequestsByAssetID objectForKey:v5];
  }

  else
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager _currentRequestForDetectionType:];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)startDetectionWithFormat:(id)format
{
  formatCopy = format;
  _AXAssertIsMainThread();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AXSDDetectorManager_startDetectionWithFormat___block_invoke;
  block[3] = &unk_278BDD688;
  v9 = formatCopy;
  v10 = &v11;
  block[4] = self;
  v6 = formatCopy;
  dispatch_sync(analyzerQueue, block);
  LOBYTE(formatCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return formatCopy;
}

void *__48__AXSDDetectorManager_startDetectionWithFormat___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _startDetectionWithFormat:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_startDetectionWithFormat:(id)format
{
  v31 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager _startDetectionWithFormat:];
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
      [AXSDDetectorManager _startDetectionWithFormat:?];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    _currentRequests = [(AXSDDetectorManager *)self _currentRequests];
    v14 = [_currentRequests countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(_currentRequests);
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
              [AXSDDetectorManager _startDetectionWithFormat:];
            }

            [(AXSDDetectorManager *)self stopDetection];
            goto LABEL_7;
          }
        }

        v15 = [_currentRequests countByEnumeratingWithState:&v26 objects:v30 count:16];
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
    _currentRequests = AXLogUltron();
    if (os_log_type_enabled(_currentRequests, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager _startDetectionWithFormat:];
    }

LABEL_7:
    v8 = 0;
  }

  return v8;
}

- (void)stopDetection
{
  _AXAssertIsMainThread();
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__AXSDDetectorManager_stopDetection__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(analyzerQueue, block);
}

- (void)_stopDetection
{
  [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeAllRequests];
  streamAnalyzer = self->_streamAnalyzer;
  self->_streamAnalyzer = 0;
}

- (BOOL)addGeneralApplianceDetector
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager addGeneralApplianceDetector];
  }

  _AXAssertIsMainThread();
  if (self->_currentGeneralApplianceRequest)
  {
    v4 = AXLogUltronKShot();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager addGeneralApplianceDetector];
    }

    goto LABEL_15;
  }

  v4 = +[AXSDDetectorManager detectorRequestForGeneralApplianceDetector];
  if (!v4)
  {
    v8 = AXLogUltronKShot();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager addGeneralApplianceDetector];
    }

    goto LABEL_18;
  }

  if ([(AXSDDetectorManager *)self streamAnalyzerIsRunning])
  {
    v5 = AXLogUltronKShot();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager addGeneralApplianceDetector];
    }

    streamAnalyzer = self->_streamAnalyzer;
    v12 = 0;
    [(SNAudioStreamAnalyzer *)streamAnalyzer addRequest:v4 withObserver:self error:&v12];
    v7 = v12;
    if (v7)
    {
      v8 = v7;
      v9 = AXLogUltronKShot();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSDDetectorManager addGeneralApplianceDetector];
      }

LABEL_18:
      v10 = 0;
      goto LABEL_19;
    }
  }

  objc_storeStrong(&self->_currentGeneralApplianceRequest, v4);
LABEL_15:
  v10 = 1;
LABEL_19:

  return v10;
}

- (BOOL)removeGeneralApplianceDetector
{
  _AXAssertIsMainThread();
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager removeGeneralApplianceDetector];
  }

  v4 = self->_currentGeneralApplianceRequest;
  if (v4)
  {
    if ([(AXSDDetectorManager *)self streamAnalyzerIsRunning])
    {
      [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeRequest:v4];
    }

    currentGeneralApplianceRequest = self->_currentGeneralApplianceRequest;
    self->_currentGeneralApplianceRequest = 0;
  }

  else
  {
    currentGeneralApplianceRequest = AXLogUltronKShot();
    if (os_log_type_enabled(currentGeneralApplianceRequest, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager removeGeneralApplianceDetector];
    }
  }

  return 1;
}

- (BOOL)startGeneralApplianceDetectionWithFormat:(id)format
{
  formatCopy = format;
  _AXAssertIsMainThread();
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager startGeneralApplianceDetectionWithFormat:];
  }

  p_streamAnalyzer = &self->_streamAnalyzer;
  streamAnalyzer = self->_streamAnalyzer;
  if (!streamAnalyzer)
  {
    v8 = [objc_alloc(MEMORY[0x277CDC8F0]) initWithFormat:formatCopy];
    v9 = *p_streamAnalyzer;
    *p_streamAnalyzer = v8;

    streamAnalyzer = *p_streamAnalyzer;
  }

  [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
  if (!self->_currentGeneralApplianceRequest && ![(AXSDDetectorManager *)self addGeneralApplianceDetector])
  {
    v14 = AXLogUltronKShot();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager startGeneralApplianceDetectionWithFormat:];
    }

    goto LABEL_21;
  }

  v10 = AXLogUltronKShot();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDDetectorManager *)&self->_currentGeneralApplianceRequest startGeneralApplianceDetectionWithFormat:v10];
  }

  v11 = self->_streamAnalyzer;
  currentGeneralApplianceRequest = self->_currentGeneralApplianceRequest;
  v19 = 0;
  [(SNAudioStreamAnalyzer *)v11 addRequest:currentGeneralApplianceRequest withObserver:self error:&v19];
  v13 = v19;
  v14 = v13;
  if (self->_streamAnalyzer)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  if (!v15)
  {
    v17 = AXLogUltronKShot();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager addGeneralApplianceDetector];
    }

    [(AXSDDetectorManager *)self stopDetection];
LABEL_21:
    v16 = 0;
  }

  return v16;
}

- (BOOL)addDetector:(id)detector
{
  identifier = [detector identifier];
  LOBYTE(self) = [(AXSDDetectorManager *)self addDetectorType:identifier];

  return self;
}

- (BOOL)addDetectorType:(id)type
{
  v23 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  _AXAssertIsMainThread();
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2112;
    *&buf[14] = typeCopy;
    v6 = *&buf[4];
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_INFO, "[%@]: Add Detection Type: %@", buf, 0x16u);
  }

  v7 = [(NSMutableDictionary *)self->_currentAssetIdsByType objectForKeyedSubscript:typeCopy];
  v8 = v7 == 0;

  if (v8)
  {
    v11 = +[AXSDDetectorStore sharedInstance];
    v9 = [v11 detectorWithIdentifier:typeCopy];

    v12 = AXLogUltron();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager addDetectorType:];
    }

    if (v9)
    {
      v13 = [AXSDDetectorManager detectorRequestForDetector:v9];
      v14 = v13;
      if (v13)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v22 = 0;
        analyzerQueue = self->_analyzerQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__AXSDDetectorManager_addDetectorType___block_invoke;
        block[3] = &unk_278BDD688;
        v20 = buf;
        block[4] = self;
        v14 = v13;
        v19 = v14;
        dispatch_sync(analyzerQueue, block);
        [(AXSDDetectorManager *)self _addCurrentRequest:v14 withDetector:v9];

        _Block_object_dispose(buf, 8);
        v10 = 1;
LABEL_18:

        goto LABEL_19;
      }

      v16 = AXLogUltron();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AXSDDetectorManager addDetectorType:];
      }
    }

    else
    {
      v14 = AXLogUltron();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXSDDetectorManager addDetectorType:];
      }
    }

    v10 = 0;
    goto LABEL_18;
  }

  v9 = AXLogUltron();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager addDetectorType:];
  }

  v10 = 1;
LABEL_19:

  return v10;
}

void *__39__AXSDDetectorManager_addDetectorType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _addRequestToAnalyzer:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)removeDetector:(id)detector
{
  identifier = [detector identifier];
  LOBYTE(self) = [(AXSDDetectorManager *)self removeDetectorType:identifier];

  return self;
}

- (BOOL)removeDetectorType:(id)type
{
  typeCopy = type;
  _AXAssertIsMainThread();
  v5 = [(AXSDDetectorManager *)self _currentRequestForDetectionType:typeCopy];
  v6 = v5;
  if (v5)
  {
    analyzerQueue = self->_analyzerQueue;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __42__AXSDDetectorManager_removeDetectorType___block_invoke;
    v13 = &unk_278BDD2C0;
    selfCopy = self;
    v15 = v5;
    dispatch_async(analyzerQueue, &v10);
    [(AXSDDetectorManager *)self _removeCurrentRequestForDetectionType:typeCopy, v10, v11, v12, v13, selfCopy];
  }

  else
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager removeDetectorType:];
    }
  }

  return 1;
}

- (BOOL)_addRequestToAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  if (![(AXSDDetectorManager *)self streamAnalyzerIsRunning])
  {
    goto LABEL_8;
  }

  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager _addRequestToAnalyzer:?];
  }

  streamAnalyzer = self->_streamAnalyzer;
  v12 = 0;
  [(SNAudioStreamAnalyzer *)streamAnalyzer addRequest:analyzerCopy withObserver:self error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = v7;
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager _addRequestToAnalyzer:];
    }

    v10 = 0;
  }

  else
  {
LABEL_8:
    v10 = 1;
  }

  return v10;
}

- (void)_removeRequestFromAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  if ([(AXSDDetectorManager *)self streamAnalyzerIsRunning])
  {
    [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeRequest:analyzerCopy];
  }
}

- (void)_removeAllRequestsFromAnalyzer
{
  if ([(AXSDDetectorManager *)self streamAnalyzerIsRunning])
  {
    streamAnalyzer = self->_streamAnalyzer;

    [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
  }
}

- (BOOL)addAllDetectors
{
  v14 = *MEMORY[0x277D85DE8];
  _AXAssertIsMainThread();
  keyEnumerator = [modelMap keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    v7 = 1;
    *&v5 = 138412290;
    v11 = v5;
    do
    {
      if (![(AXSDDetectorManager *)self addDetectorType:v6, v11])
      {
        v8 = AXLogUltron();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = v11;
          v13 = v6;
          _os_log_error_impl(&dword_23D62D000, v8, OS_LOG_TYPE_ERROR, "Add All Detectors: failed to add %@", buf, 0xCu);
        }

        v7 = 0;
      }

      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)removeAllDetectors
{
  _AXAssertIsMainThread();
  [(NSMutableDictionary *)self->_currentAssetIdsByType removeAllObjects];
  [(NSMutableDictionary *)self->_currentRequestsByAssetID removeAllObjects];
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AXSDDetectorManager_removeAllDetectors__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(analyzerQueue, block);
}

- (void)processAudioBuffer:(id)buffer atTime:(id)time
{
  bufferCopy = buffer;
  timeCopy = time;
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AXSDDetectorManager_processAudioBuffer_atTime___block_invoke;
  block[3] = &unk_278BDD338;
  block[4] = self;
  v12 = bufferCopy;
  v13 = timeCopy;
  v9 = timeCopy;
  v10 = bufferCopy;
  dispatch_async(analyzerQueue, block);
}

uint64_t __49__AXSDDetectorManager_processAudioBuffer_atTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 48) sampleTime];

  return [v2 analyzeAudioBuffer:v1 atAudioFramePosition:v3];
}

+ (id)modelPathForURL:(id)l detectionType:(id)type
{
  lCopy = l;
  v6 = [modelMap objectForKeyedSubscript:type];
  if (v6)
  {
    v7 = [lCopy URLByAppendingPathComponent:v6];
    v8 = [v7 URLByAppendingPathExtension:@"mlmodelc"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)detectorRequestForDetectionType:(id)type
{
  typeCopy = type;
  v5 = +[AXSDDetectorStore sharedInstance];
  v6 = [v5 detectorWithIdentifier:typeCopy];

  if (v6)
  {
    v7 = [AXSDDetectorManager detectorRequestForDetector:v6];
    [(AXSDDetectorManager *)self _addCurrentRequest:v7 withDetector:v6];
  }

  else
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager detectorRequestForDetectionType:];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)detectorRequestForDetector:(id)detector
{
  v39 = *MEMORY[0x277D85DE8];
  detectorCopy = detector;
  identifier = [detectorCopy identifier];
  if (testBundle)
  {
    modelURL = testBundle;
  }

  else
  {
    modelURL = [detectorCopy modelURL];
  }

  v6 = modelURL;
  v7 = AXLogUltron();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = testBundle;
    _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_INFO, "Test bundle - should be null on prod: %@", buf, 0xCu);
  }

  if (v6)
  {
    v8 = [AXSDDetectorManager modelPathForURL:v6 detectionType:identifier];
    if (!v8)
    {
      v11 = AXLogUltron();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[AXSDDetectorManager detectorRequestForDetector:];
      }

      v19 = 0;
      goto LABEL_30;
    }

    v28 = 0;
    v9 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 error:&v28];
    v10 = v28;
    v11 = v10;
    if (v9 && !v10)
    {
      isUsingSoundPrint = [detectorCopy isUsingSoundPrint];
      v13 = objc_alloc(MEMORY[0x277CDC918]);
      v14 = v13;
      if (isUsingSoundPrint)
      {
        v27 = 0;
        v15 = [v13 initWithMLModel:v9 error:&v27];
        v16 = v27;
        if (v16)
        {
          v17 = v16;
          v18 = AXLogUltron();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            *buf = 138413314;
            v30 = v23;
            v31 = 2112;
            v32 = detectorCopy;
            v33 = 2112;
            v34 = v8;
            v35 = 2112;
            v36 = v9;
            v37 = 2112;
            v38 = v17;
            v24 = v23;
            _os_log_error_impl(&dword_23D62D000, v18, OS_LOG_TYPE_ERROR, "[%@]: unable to create SNDetectSoundRequest from mlmodel init. \n\tdetector: %@, path: %@, model: %@, error: %@", buf, 0x34u);
          }

LABEL_23:
          v19 = 0;
LABEL_29:

LABEL_30:
          goto LABEL_31;
        }
      }

      else
      {
        identifier2 = [detectorCopy identifier];
        v15 = [v14 initWithVGGishBasedMLModel:v9 soundIdentifier:identifier2];

        if (!v15)
        {
          v21 = AXLogUltron();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            *buf = 138413058;
            v30 = v25;
            v31 = 2112;
            v32 = detectorCopy;
            v33 = 2112;
            v34 = v8;
            v35 = 2112;
            v36 = v9;
            v26 = v25;
            _os_log_error_impl(&dword_23D62D000, v21, OS_LOG_TYPE_ERROR, "[%@]: unable to create SNDetectSoundRequest from vggish model. \n\tdetector: %@, path: %@, model: %@", buf, 0x2Au);
          }

          v15 = 0;
        }
      }

      v15 = v15;
      v19 = v15;
      goto LABEL_29;
    }

    v15 = AXLogUltron();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v30 = v8;
      v31 = 2112;
      v32 = identifier;
      v33 = 2112;
      v34 = v11;
      _os_log_error_impl(&dword_23D62D000, v15, OS_LOG_TYPE_ERROR, "Unable to create MLModel from path %@ for detectionType %@. error: %@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[AXSDDetectorManager detectorRequestForDetector:];
  }

  v19 = 0;
LABEL_31:

  return v19;
}

+ (id)detectorRequestForGeneralApplianceDetector
{
  v21 = *MEMORY[0x277D85DE8];
  if (testBundle)
  {
    localPathForKShotGeneralApplianceDetector = testBundle;
  }

  else
  {
    v3 = +[AXUltronModelAssetManager sharedInstance];
    localPathForKShotGeneralApplianceDetector = [v3 localPathForKShotGeneralApplianceDetector];
  }

  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = testBundle;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_INFO, "Test bundle - should be null on prod: %@", buf, 0xCu);
  }

  if (localPathForKShotGeneralApplianceDetector)
  {
    v18 = 0;
    v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:localPathForKShotGeneralApplianceDetector error:&v18];
    v6 = v18;
    v7 = v6;
    if (!v5 || v6)
    {
      v14 = AXLogUltron();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[AXSDDetectorManager detectorRequestForGeneralApplianceDetector];
      }

      v13 = 0;
    }

    else
    {
      v8 = +[AXUltronModelAssetManager sharedInstance];
      isKShotUsingSoundPrint = [v8 isKShotUsingSoundPrint];

      if (isKShotUsingSoundPrint)
      {
        v17 = 0;
        v10 = [objc_alloc(MEMORY[0x277CDC918]) initWithMLModel:v5 error:&v17];
        v11 = v17;
        if (v11)
        {
          v12 = AXLogUltron();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            +[AXSDDetectorManager detectorRequestForGeneralApplianceDetector];
          }

          v13 = 0;
        }

        else
        {
          v13 = v10;
        }
      }

      else
      {
        v15 = AXLogUltron();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23D62D000, v15, OS_LOG_TYPE_INFO, "KShot General Appliance is not using Sound Print", buf, 2u);
        }

        v13 = [objc_alloc(MEMORY[0x277CDC918]) initWithVGGishBasedMLModel:v5 soundIdentifier:@"general_appliance"];
      }
    }
  }

  else
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[AXSDDetectorManager detectorRequestForGeneralApplianceDetector];
    }

    v13 = 0;
  }

  return v13;
}

+ (void)initializeModelMap
{
  v13[17] = *MEMORY[0x277D85DE8];
  if (!modelMap)
  {
    v2 = *MEMORY[0x277CE6F18];
    v12[0] = *MEMORY[0x277CE6F30];
    v12[1] = v2;
    v13[0] = @"baby_distressed";
    v13[1] = @"car_horn";
    v3 = *MEMORY[0x277CE6F38];
    v12[2] = *MEMORY[0x277CE6F20];
    v12[3] = v3;
    v13[2] = @"cat_meow";
    v13[3] = @"dog_bark";
    v4 = *MEMORY[0x277CE6F40];
    v12[4] = *MEMORY[0x277CE6F48];
    v12[5] = v4;
    v13[4] = @"door_bell";
    v13[5] = @"door_knock";
    v5 = *MEMORY[0x277CE6F78];
    v12[6] = *MEMORY[0x277CE6F50];
    v12[7] = v5;
    v13[6] = @"fire_alarm";
    v13[7] = @"shout";
    v6 = *MEMORY[0x277CE6F88];
    v12[8] = *MEMORY[0x277CE6F80];
    v12[9] = v6;
    v13[8] = @"siren_alarm";
    v13[9] = @"smoke_alarm";
    v7 = *MEMORY[0x277CE6F00];
    v12[10] = *MEMORY[0x277CE6F90];
    v12[11] = v7;
    v13[10] = @"water_running";
    v13[11] = @"beep";
    v8 = *MEMORY[0x277CE6F08];
    v12[12] = *MEMORY[0x277CE6F10];
    v12[13] = v8;
    v13[12] = @"buzzer";
    v13[13] = @"ding_bell";
    v9 = *MEMORY[0x277CE6F58];
    v12[14] = *MEMORY[0x277CE6F28];
    v12[15] = v9;
    v13[14] = @"cough";
    v13[15] = @"glass_breaking";
    v12[16] = *MEMORY[0x277CE6F68];
    v13[16] = @"kettle";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:17];
    v11 = modelMap;
    modelMap = v10;
  }
}

- (BOOL)_testAudioFile:(id)file
{
  fileCopy = file;
  v18 = 0;
  v5 = [objc_alloc(MEMORY[0x277CDC8D8]) initWithURL:fileCopy error:&v18];
  v6 = v18;
  if (v6)
  {
    v7 = v6;
    NSLog(&cfstr_Error.isa, v6);
    v8 = 0;
  }

  else
  {
    keyEnumerator = [modelMap keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      v11 = nextObject;
      while (1)
      {
        v12 = [(AXSDDetectorManager *)self detectorRequestForDetectionType:v11];
        v17 = 0;
        [v5 addRequest:v12 withObserver:self error:&v17];
        v13 = v17;
        if (v13)
        {
          break;
        }

        nextObject2 = [keyEnumerator nextObject];

        v11 = nextObject2;
        if (!nextObject2)
        {
          goto LABEL_7;
        }
      }

      v7 = v13;
      v15 = AXLogUltron();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AXSDDetectorManager _testAudioFile:];
      }

      v8 = 0;
    }

    else
    {
LABEL_7:
      [v5 analyze];
      v7 = 0;
      v8 = 1;
    }
  }

  return v8;
}

- (void)request:(id)request didProduceResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  if ([resultCopy detected])
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = resultCopy;
LABEL_10:
      _os_log_impl(&dword_23D62D000, v8, OS_LOG_TYPE_DEFAULT, "Results: %@", buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (resultCopy)
  {
    objc_msgSend_timeRange(resultCopy);
    objc_msgSend_timeRange(resultCopy);
    v9 = (v17 / SDWORD2(v14));
  }

  else
  {
    v9 = 0.0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
  }

  if (fmodf(v9, 30.0) == 0.0)
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = resultCopy;
      goto LABEL_10;
    }

LABEL_11:
  }

  if (resultCopy)
  {
    objc_msgSend_timeRange(resultCopy);
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v10 = [(AXSDDetectorManager *)self delegate:v11];
  [v10 receivedObservation:resultCopy forDetector:requestCopy];

LABEL_17:
}

- (void)request:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AXSDDetectorManager request:didFailWithError:];
  }

  delegate = [(AXSDDetectorManager *)self delegate];
  [delegate receivedError:errorCopy fromDetector:requestCopy];
}

- (void)requestDidComplete:(id)complete
{
  completeCopy = complete;
  delegate = [(AXSDDetectorManager *)self delegate];
  [delegate receivedCompletion:completeCopy];
}

- (AXSDDetectorManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_removeCurrentRequestForDetectionType:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_currentRequestForDetectionType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: unable to find SNDetectSoundRequest for Detection Type: %@", v4, v5, v6, v7);
}

- (void)_startDetectionWithFormat:.cold.1()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_startDetectionWithFormat:(void *)a1 .cold.2(void *a1)
{
  v2 = objc_opt_class();
  v3 = [a1 _currentRequests];
  [v3 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_startDetectionWithFormat:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_startDetectionWithFormat:.cold.4()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: Received an invalid input format. %@", v4, v5, v6, v7);
}

- (void)addGeneralApplianceDetector
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startGeneralApplianceDetectionWithFormat:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "KShot Detector Manager: start general appliance detection with format: %@", v1, 0xCu);
}

- (void)startGeneralApplianceDetectionWithFormat:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startGeneralApplianceDetectionWithFormat:(os_log_t)log .cold.3(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_23D62D000, log, OS_LOG_TYPE_DEBUG, "KShot Detector Manager: adding request %@ to stream analyzer: %@", &v5, 0x16u);
}

- (void)addDetectorType:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Add Detector: Detection type %@ has already been added to the request.", v1, 0xCu);
}

- (void)addDetectorType:.cold.2()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)addDetectorType:.cold.3()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: unable to create request for detection type: %@", v4, v5, v6, v7);
}

- (void)addDetectorType:.cold.4()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: no useable detector found for listen type: %@ even though assets are ready", v4, v5, v6, v7);
}

- (void)removeDetectorType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_addRequestToAnalyzer:(uint64_t)a1 .cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_addRequestToAnalyzer:.cold.2()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: unable to add request to stream analyzer: %@", v4, v5, v6, v7);
}

- (void)detectorRequestForDetectionType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: no useable detector found for listen type: %@ even though assets are ready", v4, v5, v6, v7);
}

+ (void)detectorRequestForDetector:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)detectorRequestForDetector:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)detectorRequestForGeneralApplianceDetector
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_testAudioFile:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)request:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v1 = [v0 soundIdentifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "Request failed: %@, %@", v4, v5, v6, v7);
}

@end