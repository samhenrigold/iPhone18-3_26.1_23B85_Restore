@interface HMICameraVideoFrameAnalyzerSignificantActivity
+ (NSDictionary)classHierarchyMap;
+ (id)desLabelIndexForEventClass:(Class)class;
+ (id)labelIndexForEventClass:(Class)class;
- (CGRect)regionOfInterestForMotionDetections:(id)detections foregroundEvents:(id)events frameSize:(CGSize)size;
- (CGSize)inputDimensions;
- (HMICameraVideoFrameAnalyzerSignificantActivity)initWithMediumConfidenceThresholds:(id)thresholds highConfidenceThresholds:(id)confidenceThresholds analyzerConfiguration:(id)configuration error:(id *)error;
- (id)_analyzerEventsFromObjectDetections:(id)detections;
- (id)_eventsWithClassificationsFromEvents:(id)events videoFrame:(id)frame regionOfInterest:(CGRect)interest homeUUID:(id)d;
- (id)_eventsWithSessionEntitiesFromEvents:(id)events regionOfInterest:(CGRect)interest timeStamp:(id *)stamp homeUUID:(id)d;
- (id)_filterPackageEvents:(id)events backgroundEvents:(id)backgroundEvents;
- (id)_predictEventsFromCropPixelBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect imageSize:(CGSize)size error:(id *)error;
- (id)_simulatedEventForEventClass:(Class)class;
- (id)_targetEventsSetFromEventTriggers:(int64_t)triggers enableFaceClassification:(BOOL)classification enableTorsoRecognition:(BOOL)recognition;
- (id)analyzeBackgroundFrame:(id)frame packageEvents:(id)events newBackgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest;
- (id)analyzeFrame:(id)frame regionOfInterest:(CGRect)interest;
- (id)analyzePixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGRect)interest error:(id *)error;
- (id)eventsWithFaceEventsFromTorsoEventsFromEvents:(id)events homeUUID:(id)d;
- (id)flushAndGetAnalysisStateUpdateForHome:(id)home enableFaceClassification:(BOOL)classification;
- (id)getAnalyzerEvents:(id)events eventTriggers:(int64_t)triggers enableFaceClassification:(BOOL)classification enableTorsoRecognition:(BOOL)recognition;
- (id)getPackageEvents:(id)events foregroundEvents:(id)foregroundEvents newBackgroundEvents:(id)backgroundEvents backgroundTimeStamp:(id *)stamp;
- (id)recognizeEvents:(id)events frame:(id)frame regionOfInterest:(CGRect)interest homeUUID:(id)d;
@end

@implementation HMICameraVideoFrameAnalyzerSignificantActivity

- (HMICameraVideoFrameAnalyzerSignificantActivity)initWithMediumConfidenceThresholds:(id)thresholds highConfidenceThresholds:(id)confidenceThresholds analyzerConfiguration:(id)configuration error:(id *)error
{
  thresholdsCopy = thresholds;
  confidenceThresholdsCopy = confidenceThresholds;
  configurationCopy = configuration;
  v41.receiver = self;
  v41.super_class = HMICameraVideoFrameAnalyzerSignificantActivity;
  v14 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)&v41 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v14->_analyzerConfiguration, configuration);
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  for (i = 0; i != 7; ++i)
  {
    [v16 setObject:? atIndexedSubscript:?];
  }

  v18 = +[HMICameraVideoFrameAnalyzerSignificantActivity classHierarchyMap];
  v40 = thresholdsCopy;
  v19 = v16;
  [v18 enumerateKeysAndObjectsUsingBlock:?];

  objc_storeStrong(&v15->_mediumConfidenceThresholds, thresholds);
  objc_storeStrong(&v15->_highConfidenceThresholds, confidenceThresholds);
  v20 = [HMISignificantActivityFcosDetector alloc];
  v21 = +[HMISignificantActivityFcosDetector defaultNMSConfiguration];
  v22 = [HMISignificantActivityFcosDetector initWithConfidenceThresholds:v20 nmsConfiguration:"initWithConfidenceThresholds:nmsConfiguration:error:" error:?];
  v23 = 0;
  significantActivityFcosDetector = v15->_significantActivityFcosDetector;
  v15->_significantActivityFcosDetector = v22;

  v25 = MEMORY[0x277CC08F0];
  *&v15->_backgroundTimeStamp.value = *MEMORY[0x277CC08F0];
  v15->_backgroundTimeStamp.epoch = *(v25 + 16);
  array = [MEMORY[0x277CBEB18] array];
  backgroundEvents = v15->_backgroundEvents;
  v15->_backgroundEvents = array;

  if (v15->_significantActivityFcosDetector)
  {
    v28 = +[HMIPreference sharedInstance];
    shouldEnableTorsoRecognition = [v28 shouldEnableTorsoRecognition];

    if (!shouldEnableTorsoRecognition || (v30 = objc_alloc_init(HMITorsoClassifier), torsoClassifier = v15->_torsoClassifier, v15->_torsoClassifier = v30, torsoClassifier, v15->_torsoClassifier))
    {
      v32 = [[HMIFaceClassifierVIP alloc] initWithError:?];
      v33 = v23;

      faceClassifier = v15->_faceClassifier;
      v15->_faceClassifier = v32;

      if (v15->_faceClassifier)
      {
        v35 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:?];
        transaction = v15->_transaction;
        v15->_transaction = v35;

LABEL_9:
        v37 = v15;
        goto LABEL_14;
      }

      v23 = v33;
    }
  }

  if (error)
  {
    v38 = v23;
    *error = v23;
  }

  HMIErrorLog(v15, v23);

  v37 = 0;
LABEL_14:

  return v37;
}

void __138__HMICameraVideoFrameAnalyzerSignificantActivity_initWithMediumConfidenceThresholds_highConfidenceThresholds_analyzerConfiguration_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = *(a1 + 40);
    [v6 integerValue];
    [v5 setObject:? atIndexedSubscript:?];
  }
}

- (CGSize)inputDimensions
{
  significantActivityFcosDetector = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self significantActivityFcosDetector];
  [significantActivityFcosDetector inputDimensions];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)regionOfInterestForMotionDetections:(id)detections foregroundEvents:(id)events frameSize:(CGSize)size
{
  detectionsCopy = detections;
  eventsCopy = events;
  v9 = [HMIMotionDetection firstMotionDetectionInArray:"firstMotionDetectionInArray:withMode:" withMode:?];
  v34 = 0;
  v35 = &v34;
  v36 = 0x4010000000;
  v37 = &unk_22D2C2491;
  v38 = 0u;
  v39 = 0u;
  [v9 motionScore];
  if (v10 <= 0.0)
  {
    v15 = *(MEMORY[0x277CBF398] + 16);
    v38 = *MEMORY[0x277CBF398];
    v39 = v15;
  }

  else
  {
    [v9 boundingBox];
    *&v38 = v11;
    *(&v38 + 1) = v12;
    *&v39 = v13;
    *(&v39 + 1) = v14;
  }

  [eventsCopy na_each:?];
  if (CGRectIsNull(v35[1]))
  {
    width = v35[1].size.width;
    height = v35[1].size.height;
    x = v35[1].origin.x;
    y = v35[1].origin.y;
  }

  else
  {
    [HMIVisionUtilities maintainAspectRatio:"maintainAspectRatio:originalSize:ratioThreshold:" originalSize:? ratioThreshold:?];
    p_x = &v35->origin.x;
    v35[1].origin.x = v21;
    p_x[5] = v22;
    p_x[6] = v23;
    p_x[7] = v24;
    [(HMICameraVideoFrameAnalyzerSignificantActivity *)self inputDimensions];
    [HMIVisionUtilities imposeMinSizeFor:"imposeMinSizeFor:withOriginalSize:minCrop:" withOriginalSize:? minCrop:?];
    x = v25;
    y = v26;
    width = v27;
    height = v28;
    v29 = &v35->origin.x;
    v35[1].origin.x = v25;
    v29[5] = v26;
    v29[6] = v27;
    v29[7] = v28;
  }

  _Block_object_dispose(&v34, 8);

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

void __113__HMICameraVideoFrameAnalyzerSignificantActivity_regionOfInterestForMotionDetections_foregroundEvents_frameSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 boundingBox];
  v20 = v5;
  v21 = v4;
  v7 = v6;
  v9 = v8;
  [v3 boundingBox];
  v10 = CGRectGetWidth(v22) * -0.4;
  [v3 boundingBox];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  v19 = CGRectGetHeight(v23) * -0.4;
  v24.origin.y = v20;
  v24.origin.x = v21;
  v24.size.width = v7;
  v24.size.height = v9;
  v25 = CGRectInset(v24, v10, v19);
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v25);
}

- (id)analyzeFrame:(id)frame regionOfInterest:(CGRect)interest
{
  [frame pixelBuffer];
  v5 = [HMICameraVideoFrameAnalyzerSignificantActivity analyzePixelBuffer:"analyzePixelBuffer:regionOfInterest:error:" regionOfInterest:? error:?];
  v6 = v5;

  return v6;
}

- (id)getAnalyzerEvents:(id)events eventTriggers:(int64_t)triggers enableFaceClassification:(BOOL)classification enableTorsoRecognition:(BOOL)recognition
{
  v41 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v8 = [eventsCopy na_filter:?];
  v9 = +[HMIPreference sharedInstance];
  if ([v9 hasPreferenceForKey:?])
  {
    goto LABEL_6;
  }

  v10 = +[HMIPreference sharedInstance];
  if ([v10 hasPreferenceForKey:?])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v12 = MEMORY[0x277CBEB98];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v14 = [v12 setWithArray:?];

    v15 = [v14 na_map:?];

    v8 = v15;
    goto LABEL_8;
  }

  v11 = +[HMIPreference sharedInstance];
  if ([v11 hasPreferenceForKey:?])
  {

    goto LABEL_5;
  }

  +[HMIPreference sharedInstance];
  v30 = v32 = eventsCopy;
  v31 = [v30 hasPreferenceForKey:?];

  eventsCopy = v32;
  if (v31)
  {
    goto LABEL_7;
  }

LABEL_8:
  v16 = [HMICameraVideoFrameAnalyzerSignificantActivity _targetEventsSetFromEventTriggers:"_targetEventsSetFromEventTriggers:enableFaceClassification:enableTorsoRecognition:" enableFaceClassification:? enableTorsoRecognition:?];
  v17 = [v8 na_filter:?];

  v18 = [HMIFaceUtilities mergedPersonEventsFromEvents:?];

  v19 = +[HMIPreference sharedInstance];
  v20 = [v19 hasPreferenceForKey:?];

  if (v20)
  {
    v21 = +[HMIPreference sharedInstance];
    v22 = [v21 stringPreferenceForKey:? defaultValue:?];

    v23 = [HMIVideoAnalyzerEvent eventsWithContentsOfFile:?];
    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v27;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Reading and injecting synthesized events from path %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = v23;

      v18 = v28;
    }
  }

  return v18;
}

void *__130__HMICameraVideoFrameAnalyzerSignificantActivity_getAnalyzerEvents_eventTriggers_enableFaceClassification_enableTorsoRecognition___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  objc_opt_class();

  return [v2 containsObject:?];
}

- (id)getPackageEvents:(id)events foregroundEvents:(id)foregroundEvents newBackgroundEvents:(id)backgroundEvents backgroundTimeStamp:(id *)stamp
{
  foregroundEventsCopy = foregroundEvents;
  backgroundEventsCopy = backgroundEvents;
  eventsCopy = events;
  v13 = [eventsCopy na_filter:?];
  v14 = [eventsCopy na_filter:?];

  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_3;
  v35 = &unk_2787558C0;
  v36 = v14;
  v37 = backgroundEventsCopy;
  v15 = backgroundEventsCopy;
  v16 = v14;
  v17 = [v13 na_filter:?];

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_6;
  v30 = &unk_278755120;
  v31 = foregroundEventsCopy;
  v18 = foregroundEventsCopy;
  v19 = [v17 na_filter:?];

  [&time1 backgroundTimeStamp];
  v25 = *stamp;
  if (CMTimeCompare(&time1, &v25))
  {
    time1 = *stamp;
    [(HMICameraVideoFrameAnalyzerSignificantActivity *)self setBackgroundTimeStamp:?];
    backgroundEvents = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
    [backgroundEvents removeAllObjects];
  }

  backgroundEvents2 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
  v22 = [backgroundEvents2 copy];
  v23 = [HMICameraVideoFrameAnalyzerSignificantActivity _filterPackageEvents:"_filterPackageEvents:backgroundEvents:" backgroundEvents:?];

  return v23;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v3 == objc_opt_class() && [v2 confidenceLevel] == 2;

  return v4;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v4 == v5)
  {
    v2 = [v3 confidence];
    [v2 value];
    if (v6 > 0.41)
    {
      v7 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v9 = [v3 confidence];
    [v9 value];
    v7 = v10 > 0.44;
  }

  else
  {
    v7 = 0;
  }

  if (v4 == v5)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

uint64_t __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 confidence];
  [v4 value];
  if (v5 <= 0.24)
  {
  }

  else
  {
    v6 = *(a1 + 32);
    v12 = v3;
    LODWORD(v6) = [v6 na_any:?];

    if (v6)
    {
      [*(a1 + 40) addObject:?];
    }
  }

  v7 = *(a1 + 32);
  v10 = MEMORY[0x277D85DD0];
  v11 = v3;
  v8 = v3;
  LODWORD(v7) = [v7 na_any:{v10, 3221225472, __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_5, &unk_278755120}];

  return v7 ^ 1;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [*(a1 + 32) boundingBox];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v3 boundingBox];
    v20.origin.x = v14;
    v20.origin.y = v15;
    v20.size.width = v16;
    v20.size.height = v17;
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    v5 = CGRectIntersectsRect(v19, v20);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class() || (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    [*(a1 + 32) boundingBox];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v3 boundingBox];
    v21.origin.x = v15;
    v21.origin.y = v16;
    v21.size.width = v17;
    v21.size.height = v18;
    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v12;
    v20.size.height = v14;
    v6 = CGRectIntersectsRect(v20, v21);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *__124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_7;
  v11 = &unk_278755120;
  v12 = v3;
  v5 = v3;
  v6 = [v4 na_any:?];

  return v6;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 boundingBox];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  HMICGRectIntersectionOverUnion(v5, v7, v9, v11, v13, v15, v17, v19);
  return v20 > 0.2;
}

- (id)analyzeBackgroundFrame:(id)frame packageEvents:(id)events newBackgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest
{
  backgroundEventsCopy = backgroundEvents;
  eventsCopy = events;
  [frame pixelBuffer];
  v11 = [HMICameraVideoFrameAnalyzerSignificantActivity analyzePixelBuffer:"analyzePixelBuffer:regionOfInterest:error:" regionOfInterest:? error:?];
  v12 = [v11 na_filter:?];

  [backgroundEventsCopy unionSet:?];
  v13 = [HMICameraVideoFrameAnalyzerSignificantActivity _filterPackageEvents:"_filterPackageEvents:backgroundEvents:" backgroundEvents:?];

  backgroundEvents = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
  allObjects = [backgroundEventsCopy allObjects];
  [backgroundEvents addObjectsFromArray:?];

  backgroundEvents2 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
  v17 = [backgroundEvents2 count];

  if (v17 >= 0x65)
  {
    do
    {
      backgroundEvents3 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
      [backgroundEvents3 hmf_removeFirstObject];

      backgroundEvents4 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
      v20 = [backgroundEvents4 count];
    }

    while (v20 > 0x64);
  }

  return v13;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_analyzeBackgroundFrame_packageEvents_newBackgroundEvents_regionOfInterest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v4 == v5)
  {
    v6 = [v3 confidence];
    [v6 value];
    if (v7 > 0.41)
    {
      v8 = 1;
LABEL_20:

      goto LABEL_21;
    }

    v21 = v6;
  }

  v9 = objc_opt_class();
  v10 = objc_opt_class();
  if (v9 == v10)
  {
    v11 = [v3 confidence];
    [v11 value];
    if (v12 > 0.44)
    {

      v8 = 1;
      goto LABEL_19;
    }

    v20 = v11;
  }

  v13 = objc_opt_class();
  v14 = objc_opt_class();
  if (v13 == v14 && ([v3 confidence], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "value"), v15 > 0.42))
  {

    v8 = 1;
  }

  else
  {
    v16 = objc_opt_class();
    if (v16 == objc_opt_class())
    {
      v17 = [v3 confidence];
      [v17 value];
      v8 = v18 > 0.24;
    }

    else
    {
      v8 = 0;
    }

    if (v13 == v14)
    {
    }
  }

  if (v9 == v10)
  {
  }

LABEL_19:
  v6 = v21;
  if (v4 == v5)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v8;
}

- (id)recognizeEvents:(id)events frame:(id)frame regionOfInterest:(CGRect)interest homeUUID:(id)d
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  frameCopy = frame;
  dCopy = d;
  eventsCopy = events;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectIsNull(v22);
  v16 = [HMICameraVideoFrameAnalyzerSignificantActivity _eventsWithClassificationsFromEvents:"_eventsWithClassificationsFromEvents:videoFrame:regionOfInterest:homeUUID:" videoFrame:? regionOfInterest:? homeUUID:?];

  if (frameCopy)
  {
    [v20 presentationTimeStamp];
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  v17 = [HMICameraVideoFrameAnalyzerSignificantActivity _eventsWithSessionEntitiesFromEvents:"_eventsWithSessionEntitiesFromEvents:regionOfInterest:timeStamp:homeUUID:" regionOfInterest:? timeStamp:? homeUUID:?];

  v18 = [HMICameraVideoFrameAnalyzerSignificantActivity eventsWithFaceEventsFromTorsoEventsFromEvents:"eventsWithFaceEventsFromTorsoEventsFromEvents:homeUUID:" homeUUID:?];

  return v18;
}

- (id)analyzePixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGRect)interest error:(id *)error
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  if (CGRectIsNull(interest))
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    Size = HMICVPixelBufferGetSize(buffer);
    HMICGRectPixelFromNormalized(x, y, width, height, Size, v13);
    [(HMICameraVideoFrameAnalyzerSignificantActivity *)self inputDimensions];
    v14 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:crop:size:pixelFormat:options:error:" crop:? size:? pixelFormat:? options:? error:?];
    HMICVPixelBufferGetSize(buffer);
    v11 = [HMICameraVideoFrameAnalyzerSignificantActivity _predictEventsFromCropPixelBuffer:"_predictEventsFromCropPixelBuffer:cropRect:imageSize:error:" cropRect:? imageSize:? error:?];
    CVPixelBufferRelease(v14);
  }

  return v11;
}

- (id)_predictEventsFromCropPixelBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect imageSize:(CGSize)size error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  significantActivityFcosDetector = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self significantActivityFcosDetector];
  v9 = [significantActivityFcosDetector predict:? detectedObjects:? error:?];

  if (v9)
  {
    v10 = [HMIObjectDetectionUtils convertObjectDetections:"convertObjectDetections:cropRect:originalImageSize:" cropRect:? originalImageSize:?];
    v11 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self _analyzerEventsFromObjectDetections:?];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  return v11;
}

- (id)flushAndGetAnalysisStateUpdateForHome:(id)home enableFaceClassification:(BOOL)classification
{
  classificationCopy = classification;
  v23 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = 0;
  if (homeCopy && classificationCopy)
  {
    v8 = +[HMIPreference sharedInstance];
    shouldEnableTorsoRecognition = [v8 shouldEnableTorsoRecognition];

    if (!shouldEnableTorsoRecognition)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_10;
    }

    sessionEntityManager = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self sessionEntityManager];
    v11 = [sessionEntityManager updateTorsoModelAndGetTorsoAnnotationsForHome:?];

    if ([v11 hmf_isEmpty])
    {

      goto LABEL_6;
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v15;
      v21 = 2048;
      v22 = [v11 count];
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_INFO, "%{public}@Creating analysis state update with %lu torso annotations", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [HMIAnalysisStateUpdate alloc];
    v17 = [MEMORY[0x277CBEB98] setWithArray:?];
    v7 = [(HMIAnalysisStateUpdate *)v16 initWithTorsoAnnotations:?];
  }

LABEL_10:

  return v7;
}

- (id)eventsWithFaceEventsFromTorsoEventsFromEvents:(id)events homeUUID:(id)d
{
  dCopy = d;
  v9 = MEMORY[0x277D85DD0];
  v10 = dCopy;
  v6 = dCopy;
  v7 = [events na_map:{v9, 3221225472, __105__HMICameraVideoFrameAnalyzerSignificantActivity_eventsWithFaceEventsFromTorsoEventsFromEvents_homeUUID___block_invoke, &unk_278755910}];

  return v7;
}

HMIVideoAnalyzerEventPerson *__105__HMICameraVideoFrameAnalyzerSignificantActivity_eventsWithFaceEventsFromTorsoEventsFromEvents_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 torso];
  v7 = [v6 torsoRecognition];
  v8 = [v7 classification];
  v9 = [v8 personUUID];

  if (v9)
  {
    v10 = [v5 face];
    v11 = [(HMIVideoAnalyzerEventFace *)v10 faceRecognition];
    if (!v11)
    {
      v11 = [(HMIVideoAnalyzerEvent *)v10 userInfo];
      v12 = [v11 objectForKeyedSubscript:?];
      v13 = HMIFaceFilteredStateAsString(2);
      if (([v12 isEqualToString:?] & 1) == 0)
      {
        v81 = a1;
        v16 = [(HMIVideoAnalyzerEvent *)v10 userInfo];
        v17 = [v16 objectForKeyedSubscript:?];
        v18 = HMIFaceFilteredStateAsString(4);
        v19 = [v17 isEqualToString:?];

        if ((v19 & 1) == 0)
        {
          v80 = [v5 torso];
          v79 = [v80 torsoRecognition];
          v20 = [v79 classification];
          v21 = +[HMIPersonsModelManager sharedInstance];
          v22 = v81;
          v23 = [v20 personUUID];
          v24 = [v20 sourceUUID];
          v25 = [v21 faceCropFromTorsoModelForHomeUUID:? personUUID:? sourceUUID:?];

          v78 = v25;
          if (v25)
          {
            v26 = [MEMORY[0x277CCAD78] UUID];
            v27 = [MEMORY[0x277CCAD78] UUID];
            v28 = [MEMORY[0x277CCAD78] UUID];
            v72 = [HMIFaceprint sentinelFaceprintWithUUID:"sentinelFaceprintWithUUID:modelUUID:faceCropUUID:" modelUUID:? faceCropUUID:?];

            v29 = [HMIPersonsModelPrediction alloc];
            v30 = [v20 sourceUUID];
            v31 = [v20 personUUID];
            v32 = MEMORY[0x277CCABB0];
            [v20 confidence];
            v33 = [v32 numberWithDouble:?];
            v34 = [HMIPersonsModelPrediction initWithSourceUUID:v29 personUUID:"initWithSourceUUID:personUUID:confidence:linkedEntityUUID:" confidence:? linkedEntityUUID:?];

            v35 = +[HMIPersonsModelManager sharedInstance];
            v75 = v34;
            v36 = [v35 linkedPredictionsForPrediction:? homeUUID:? error:?];
            v74 = 0;

            if (!v36 || [v36 hmf_isEmpty])
            {
              v76 = v36;
              v37 = objc_autoreleasePoolPush();
              v38 = *(v81 + 40);
              v39 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = HMFGetLogIdentifier();
                v41 = [v20 personUUID];
                v42 = *(v81 + 32);
                *buf = 138544130;
                v86 = v40;
                v87 = 2112;
                v88 = v41;
                v89 = 2112;
                v90 = v42;
                v91 = 2112;
                v92 = v74;
                _os_log_impl(&dword_22D12F000, v39, OS_LOG_TYPE_ERROR, "%{public}@Couldn't retrieve linked predictions from torsomodel for personUUID: %@ homeUUID: %@ error: %@", buf, 0x2Au);

                v22 = v81;
              }

              objc_autoreleasePoolPop(v37);
              v36 = [MEMORY[0x277CBEB98] setWithObject:?];
            }

            if (v10)
            {
              v43 = objc_autoreleasePoolPush();
              v44 = *(v22 + 40);
              v45 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = HMFGetLogIdentifier();
                *buf = 138543618;
                v86 = v46;
                v87 = 2112;
                v88 = v10;
                _os_log_impl(&dword_22D12F000, v45, OS_LOG_TYPE_INFO, "%{public}@Dropping Face event: %@ due to torso recognition", buf, 0x16u);

                v22 = v81;
              }

              objc_autoreleasePoolPop(v43);
              v47 = [*(v22 + 40) analyzerConfiguration];
              v48 = [v47 camera];
              [HMIAnalytics sendEventForFaceEvent:"sendEventForFaceEvent:homePersonManagerUUID:camera:" homePersonManagerUUID:? camera:?];
            }

            v73 = v20;
            v82 = v79;
            v83 = v78;
            v84 = v72;
            v77 = v36;
            v49 = [v36 na_map:?];
            v50 = [HMIFaceRecognition alloc];
            v51 = [v82 predictedLinkedEntityUUIDs];
            [v82 sessionEntityAssignment];
            v52 = [v82 sessionEntityUUID];
            v53 = v49;
            v54 = [HMIFaceRecognition initWithFaceCrop:v50 faceprint:"initWithFaceCrop:faceprint:classifications:predictedLinkedEntityUUIDs:faceQualityScore:sessionEntityAssignment:sessionEntityUUID:" classifications:? predictedLinkedEntityUUIDs:? faceQualityScore:? sessionEntityAssignment:? sessionEntityUUID:?];

            v55 = [HMIVideoAnalyzerEventFace alloc];
            v56 = [v80 confidence];
            [v80 boundingBox];
            v57 = [HMIVideoAnalyzerEventFace initWithConfidence:v55 boundingBox:"initWithConfidence:boundingBox:faceRecognition:" faceRecognition:?];

            v58 = objc_autoreleasePoolPush();
            v59 = *(v81 + 40);
            v60 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v61 = HMFGetLogIdentifier();
              *buf = 138543874;
              v86 = v61;
              v87 = 2112;
              v88 = v57;
              v89 = 2112;
              v90 = v80;
              _os_log_impl(&dword_22D12F000, v60, OS_LOG_TYPE_INFO, "%{public}@Creating face recognition event: %@ from torso recognition event: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v58);
            v62 = [HMIVideoAnalyzerEventPerson alloc];
            v63 = [v5 confidence];
            [v5 boundingBox];
            v64 = [v5 torso];
            v14 = [HMIVideoAnalyzerEventPerson initWithConfidence:v62 boundingBox:"initWithConfidence:boundingBox:face:torso:" face:? torso:?];

            v65 = v79;
            v20 = v73;
          }

          else
          {
            v66 = objc_autoreleasePoolPush();
            v67 = *(v81 + 40);
            v68 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v69 = HMFGetLogIdentifier();
              v70 = [v20 personUUID];
              v71 = *(v81 + 32);
              *buf = 138543874;
              v86 = v69;
              v87 = 2112;
              v88 = v70;
              v89 = 2112;
              v90 = v71;
              _os_log_impl(&dword_22D12F000, v68, OS_LOG_TYPE_ERROR, "%{public}@Error while retrieving facecrop from torsomodel for personUUID: %@ homeUUID: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v66);
            v14 = v5;
            v65 = v79;
          }

          goto LABEL_10;
        }

LABEL_9:
        v14 = v5;
LABEL_10:

        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  v14 = v3;
LABEL_12:

  return v14;
}

HMIFaceClassification *__105__HMICameraVideoFrameAnalyzerSignificantActivity_eventsWithFaceEventsFromTorsoEventsFromEvents_homeUUID___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMIFaceClassification alloc];
  v5 = [v3 personUUID];
  v6 = [v3 sourceUUID];
  v7 = [*(a1 + 32) sessionEntityUUID];
  v8 = [v3 confidence];

  [v8 doubleValue];
  v9 = [HMIFaceClassification initWithUUID:v4 sourceUUID:"initWithUUID:sourceUUID:sessionEntityUUID:faceCrop:faceprint:confidence:fromTorsoClassification:familiarity:" sessionEntityUUID:2 faceCrop:? faceprint:? confidence:? fromTorsoClassification:? familiarity:?];

  return v9;
}

- (id)_simulatedEventForEventClass:(Class)class
{
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v6 = [v5 objectForKeyedSubscript:?];
  if (!v6)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v7 = +[HMIPreference sharedInstance];
  v8 = [v7 valuePreferenceForKey:? defaultValue:? withParser:?];

  v9 = [MEMORY[0x277CBEB98] setWithArray:?];
  v10 = [v9 containsObject:?];

  if (v10)
  {
    v11 = [&unk_284075B08 objectForKeyedSubscript:?];
    integerValue = [v11 integerValue];

    if (objc_opt_class() != class || integerValue != 1)
    {
      if (integerValue == 1)
      {
        highConfidenceThresholds = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self highConfidenceThresholds];
        v15 = [highConfidenceThresholds objectForKeyedSubscript:?];
        [v15 doubleValue];
      }

      mediumConfidenceThresholds = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self mediumConfidenceThresholds];
      v26 = [mediumConfidenceThresholds objectForKeyedSubscript:?];
      highConfidenceThresholds2 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self highConfidenceThresholds];
      v27 = [highConfidenceThresholds2 objectForKeyedSubscript:?];
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

      if (objc_opt_class() == class)
      {
        v19 = HMIVideoAnalyzerEventPerson;
      }

      else
      {
        if (objc_opt_class() == class)
        {
          v23 = [HMIVideoAnalyzerEventFace alloc];
          v21 = [HMIConfidence initWithValue:"initWithValue:levelThresholds:" levelThresholds:?];
          v22 = [HMIVideoAnalyzerEventFace initWithConfidence:v23 boundingBox:"initWithConfidence:boundingBox:yaw:roll:faceRecognition:userInfo:" yaw:? roll:? faceRecognition:? userInfo:?];
          goto LABEL_20;
        }

        if (objc_opt_class() == class)
        {
          v24 = [HMIVideoAnalyzerEventTorso alloc];
          v21 = [HMIConfidence initWithValue:"initWithValue:levelThresholds:" levelThresholds:?];
          v22 = [HMIVideoAnalyzerEventTorso initWithConfidence:v24 boundingBox:"initWithConfidence:boundingBox:roll:torsoRecognition:" roll:? torsoRecognition:?];
          goto LABEL_20;
        }

        if (objc_opt_class() == class)
        {
          v19 = HMIVideoAnalyzerEventPet;
        }

        else if (objc_opt_class() == class)
        {
          v19 = HMIVideoAnalyzerEventVehicle;
        }

        else
        {
          if (objc_opt_class() != class)
          {
            v13 = 0;
LABEL_21:

            goto LABEL_22;
          }

          v19 = HMIVideoAnalyzerEventPackage;
        }
      }

      v20 = [v19 alloc];
      v21 = [HMIConfidence initWithValue:"initWithValue:levelThresholds:" levelThresholds:?];
      v22 = [v20 initWithConfidence:? boundingBox:?];
LABEL_20:
      v13 = v22;

      goto LABEL_21;
    }
  }

  v13 = 0;
LABEL_22:

LABEL_23:

  return v13;
}

__CFString *__79__HMICameraVideoFrameAnalyzerSignificantActivity__simulatedEventForEventClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 lowercaseString];
LABEL_7:
    v6 = v3;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 BOOLValue];
    v5 = @"none";
    if (v4)
    {
      v5 = @"high";
    }

    v3 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_targetEventsSetFromEventTriggers:(int64_t)triggers enableFaceClassification:(BOOL)classification enableTorsoRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  classificationCopy = classification;
  triggersCopy = triggers;
  v8 = [MEMORY[0x277CBEB58] set];
  if ((triggersCopy & 2) != 0)
  {
    objc_opt_class();
    [v8 addObject:?];
    if (classificationCopy)
    {
      objc_opt_class();
      [v8 addObject:?];
      if (recognitionCopy)
      {
        objc_opt_class();
        [v8 addObject:?];
      }
    }
  }

  if ((triggersCopy & 4) != 0)
  {
    objc_opt_class();
    [v8 addObject:?];
    if ((triggersCopy & 8) == 0)
    {
LABEL_7:
      if ((triggersCopy & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((triggersCopy & 8) == 0)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  [v8 addObject:?];
  if ((triggersCopy & 0x10) != 0)
  {
LABEL_8:
    objc_opt_class();
    [v8 addObject:?];
  }

LABEL_9:
  v9 = [v8 copy];

  return v9;
}

- (id)_analyzerEventsFromObjectDetections:(id)detections
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [detections na_map:?];
  v5 = [v3 setWithArray:?];

  return v5;
}

HMIVideoAnalyzerEventFace *__86__HMICameraVideoFrameAnalyzerSignificantActivity__analyzerEventsFromObjectDetections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 labelIndex];
  v4 = objc_opt_class();
  v5 = v4;
  v6 = [*(a1 + 32) mediumConfidenceThresholds];
  v21 = [v6 objectForKeyedSubscript:?];
  v7 = [*(a1 + 32) highConfidenceThresholds];
  v22 = [v7 objectForKeyedSubscript:?];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  if (v4 != objc_opt_class())
  {
    if (v4 == objc_opt_class())
    {
      v14 = [HMIVideoAnalyzerEventFace alloc];
      v15 = [HMIConfidence alloc];
      [v3 confidence];
      v13 = [HMIConfidence initWithValue:v15 levelThresholds:"initWithValue:levelThresholds:"];
      [v3 boundingBox];
      v16 = [v3 yaw];
      v17 = [v3 roll];
      v9 = [HMIVideoAnalyzerEventFace initWithConfidence:v14 boundingBox:"initWithConfidence:boundingBox:yaw:roll:faceRecognition:userInfo:" yaw:? roll:? faceRecognition:? userInfo:?];
    }

    else
    {
      if (v4 != objc_opt_class())
      {
        if (v4 == objc_opt_class())
        {
          v10 = HMIVideoAnalyzerEventPet;
        }

        else if (v4 == objc_opt_class())
        {
          v10 = HMIVideoAnalyzerEventVehicle;
        }

        else
        {
          if (v4 != objc_opt_class())
          {
            v9 = 0;
            goto LABEL_14;
          }

          v10 = HMIVideoAnalyzerEventPackage;
        }

        goto LABEL_9;
      }

      v18 = [HMIVideoAnalyzerEventTorso alloc];
      v19 = [HMIConfidence alloc];
      [v3 confidence];
      v13 = [HMIConfidence initWithValue:v19 levelThresholds:"initWithValue:levelThresholds:"];
      [v3 boundingBox];
      v16 = [v3 roll];
      v9 = [HMIVideoAnalyzerEventTorso initWithConfidence:v18 boundingBox:"initWithConfidence:boundingBox:roll:torsoRecognition:" roll:? torsoRecognition:?];
    }

    goto LABEL_13;
  }

  v10 = HMIVideoAnalyzerEventPerson;
LABEL_9:
  v11 = [v10 alloc];
  v12 = [HMIConfidence alloc];
  [v3 confidence];
  v13 = [HMIConfidence initWithValue:v12 levelThresholds:"initWithValue:levelThresholds:"];
  [v3 boundingBox];
  v9 = [v11 initWithConfidence:? boundingBox:?];
LABEL_13:

LABEL_14:

  return v9;
}

- (id)_filterPackageEvents:(id)events backgroundEvents:(id)backgroundEvents
{
  backgroundEventsCopy = backgroundEvents;
  v5 = backgroundEventsCopy;
  v6 = [events na_filter:?];

  return v6;
}

uint64_t __88__HMICameraVideoFrameAnalyzerSignificantActivity__filterPackageEvents_backgroundEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __88__HMICameraVideoFrameAnalyzerSignificantActivity__filterPackageEvents_backgroundEvents___block_invoke_2;
  v10 = &unk_278755120;
  v11 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 na_any:?];

  return v4 ^ 1;
}

BOOL __88__HMICameraVideoFrameAnalyzerSignificantActivity__filterPackageEvents_backgroundEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [*(a1 + 32) boundingBox];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [v3 boundingBox];
    HMICGRectIntersectionOverUnion(v21, v23, v25, v27, v28, v29, v30, v31);
    v7 = v32 > 0.4;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
    {
      [*(a1 + 32) boundingBox];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v3 boundingBox];
      v35.origin.x = v16;
      v35.origin.y = v17;
      v35.size.width = v18;
      v35.size.height = v19;
      v34.origin.x = v9;
      v34.origin.y = v11;
      v34.size.width = v13;
      v34.size.height = v15;
      v7 = CGRectIntersectsRect(v34, v35);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_eventsWithClassificationsFromEvents:(id)events videoFrame:(id)frame regionOfInterest:(CGRect)interest homeUUID:(id)d
{
  eventsCopy = events;
  frameCopy = frame;
  dCopy = d;
  v11 = [MEMORY[0x277CBEB58] set];
  if (!+[HMIPreference isProductTypeJ105](HMIPreference, "isProductTypeJ105") || (+[HMIThermalMonitor sharedInstance](HMIThermalMonitor, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 thermalLevel], v12, v13 <= 1))
  {
    +[HMIPreference isProductTypeB238];
  }

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v16 = v11;
  v17 = frameCopy;
  v18 = dCopy;
  [eventsCopy enumerateObjectsUsingBlock:?];
  v14 = [v16 copy];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  return v14;
}

void __124__HMICameraVideoFrameAnalyzerSignificantActivity__eventsWithClassificationsFromEvents_videoFrame_regionOfInterest_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    [*(a1 + 32) addObject:?];
    goto LABEL_30;
  }

  v6 = [v5 face];
  if (!v6 || (v7 = *(*(a1 + 64) + 8), v8 = *(v7 + 24), v8 > 4))
  {
    v11 = 0;
    goto LABEL_18;
  }

  *(v7 + 24) = v8 + 1;
  v9 = [[HMISignpost alloc] initWithName:?];
  v10 = *(*(a1 + 40) + 40);
  [*(a1 + 48) pixelBuffer];
  v11 = [v10 classifyFaceEvent:? pixelBuffer:? fastMode:? homeUUID:? error:?];
  v12 = 0;
  [(HMISignpost *)v9 end];
  if (!v11)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v17 = v33 = v14;
      *buf = 138543874;
      v36 = v17;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v12;
      v18 = "%{public}@Faceprinting failed for face: %@, error: %@";
      v19 = v16;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 32;
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v14);
    goto LABEL_17;
  }

  v13 = [v11 faceRecognition];

  if (!v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v17 = v33 = v14;
      *buf = 138543618;
      v36 = v17;
      v37 = 2112;
      v38 = v6;
      v18 = "%{public}@Face: %@ didn't produce any classifications";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 22;
LABEL_15:
      _os_log_impl(&dword_22D12F000, v19, v20, v18, buf, v21);

      v14 = v33;
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v22 = [v5 torso];
  if (v22 && (v23 = *(*(a1 + 72) + 8), v24 = *(v23 + 24), v24 <= 4))
  {
    *(v23 + 24) = v24 + 1;
    v25 = [[HMISignpost alloc] initWithName:?];
    v26 = *(*(a1 + 40) + 48);
    [*(a1 + 48) pixelBuffer];
    v27 = [v26 classifyTorsoEvent:? regionOfInterest:? pixelBuffer:? homeUUID:? error:?];
    v28 = 0;
    [(HMISignpost *)v25 end];
    if (!v27)
    {
      context = objc_autoreleasePoolPush();
      v34 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v31;
        v37 = 2112;
        v38 = v22;
        v39 = 2112;
        v40 = v28;
        _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_ERROR, "%{public}@Torsoprinting failed for torso: %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    v27 = 0;
  }

  if (v11 | v27)
  {
    v30 = [v5 copyWithFaceEvent:? torso:?];
    [*(a1 + 32) addObject:?];
  }

  else
  {
    [*(a1 + 32) addObject:?];
  }

LABEL_30:
}

- (id)_eventsWithSessionEntitiesFromEvents:(id)events regionOfInterest:(CGRect)interest timeStamp:(id *)stamp homeUUID:(id)d
{
  dCopy = d;
  v10 = MEMORY[0x277CBEB58];
  eventsCopy = events;
  v12 = [v10 set];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = v12;
  [eventsCopy na_each:?];

  sessionEntityManager = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self sessionEntityManager];

  if (!sessionEntityManager)
  {
    v16 = objc_alloc_init(HMISessionEntityManager);
    sessionEntityManager = self->_sessionEntityManager;
    self->_sessionEntityManager = v16;
  }

  if (([v13 hmf_isEmpty] & 1) == 0)
  {
    sessionEntityManager2 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self sessionEntityManager];
    v19 = [sessionEntityManager2 assignSessionEntitiesToPersonEvents:*&stamp->var0 regionOfInterest:stamp->var3 timeStamp:? homeUUID:?];

    [v14 unionSet:?];
  }

  v20 = [v14 copy];

  return v20;
}

void __123__HMICameraVideoFrameAnalyzerSignificantActivity__eventsWithSessionEntitiesFromEvents_regionOfInterest_timeStamp_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = *(a1 + 40);
  }

  [v5 addObject:?];
}

+ (NSDictionary)classHierarchyMap
{
  if (classHierarchyMap_onceToken != -1)
  {
    +[HMICameraVideoFrameAnalyzerSignificantActivity classHierarchyMap];
  }

  v3 = classHierarchyMap_hierarchyMap;

  return v3;
}

void __67__HMICameraVideoFrameAnalyzerSignificantActivity_classHierarchyMap__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = &unk_284075390;
  v8 = objc_opt_class();
  v3 = &unk_2840753D8;
  v9 = objc_opt_class();
  v4 = &unk_2840753A8;
  v10 = objc_opt_class();
  v5 = &unk_2840753F0;
  v11 = objc_opt_class();
  v6 = &unk_284075408;
  v12 = objc_opt_class();
  v7 = &unk_284075420;
  v13 = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = classHierarchyMap_hierarchyMap;
  classHierarchyMap_hierarchyMap = v0;
}

+ (id)labelIndexForEventClass:(Class)class
{
  if (labelIndexForEventClass__onceToken != -1)
  {
    +[HMICameraVideoFrameAnalyzerSignificantActivity labelIndexForEventClass:];
  }

  v3 = labelIndexForEventClass__map;

  return [v3 objectForKeyedSubscript:?];
}

void __74__HMICameraVideoFrameAnalyzerSignificantActivity_labelIndexForEventClass___block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v8 = &unk_284075390;
  v3 = objc_opt_class();
  v9 = &unk_2840753A8;
  v4 = objc_opt_class();
  v10 = &unk_2840753D8;
  v5 = objc_opt_class();
  v11 = &unk_2840753F0;
  v6 = objc_opt_class();
  v12 = &unk_284075408;
  v7 = objc_opt_class();
  v13 = &unk_284075420;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = labelIndexForEventClass__map;
  labelIndexForEventClass__map = v0;
}

+ (id)desLabelIndexForEventClass:(Class)class
{
  if (desLabelIndexForEventClass__onceToken != -1)
  {
    +[HMICameraVideoFrameAnalyzerSignificantActivity desLabelIndexForEventClass:];
  }

  v3 = desLabelIndexForEventClass__map;

  return [v3 objectForKeyedSubscript:?];
}

void __77__HMICameraVideoFrameAnalyzerSignificantActivity_desLabelIndexForEventClass___block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v5 = &unk_284075390;
  v3 = objc_opt_class();
  v6 = &unk_284075438;
  v4 = objc_opt_class();
  v7 = &unk_2840753D8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = desLabelIndexForEventClass__map;
  desLabelIndexForEventClass__map = v0;
}

@end