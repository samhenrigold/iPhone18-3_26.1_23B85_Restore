@interface HMIVideoFrameAnalyzer
- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks;
- (HMIVideoFrameAnalyzer)initWithConfiguration:(id)configuration workQueue:(id)queue;
- (HMIVideoFrameAnalyzerDelegate)delegate;
- (void)flush;
@end

@implementation HMIVideoFrameAnalyzer

- (HMIVideoFrameAnalyzer)initWithConfiguration:(id)configuration workQueue:(id)queue
{
  v31 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = HMIVideoFrameAnalyzer;
  v8 = [(HMIVideoAnalyzerProcessingNode *)&v29 initWithConfiguration:configurationCopy workQueue:queueCopy];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [[MovingAverage alloc] initWithWindowSize:?];
  analysisTime = v8->_analysisTime;
  v8->_analysisTime = v9;

  v11 = [HMICameraVideoFrameAnalyzerSignificantActivity alloc];
  v12 = +[HMIVideoAnalyzerEvent eventConfidenceThresholdsMedium];
  v13 = +[HMIVideoAnalyzerEvent eventConfidenceThresholdsHigh];
  v28 = 0;
  v14 = [HMICameraVideoFrameAnalyzerSignificantActivity initWithMediumConfidenceThresholds:v11 highConfidenceThresholds:"initWithMediumConfidenceThresholds:highConfidenceThresholds:analyzerConfiguration:error:" analyzerConfiguration:? error:?];
  v15 = v28;
  cameraVideoFrameAnalyzer = v8->_cameraVideoFrameAnalyzer;
  v8->_cameraVideoFrameAnalyzer = v14;

  cameraVideoFrameAnalyzer = [(HMIVideoFrameAnalyzer *)v8 cameraVideoFrameAnalyzer];

  if (cameraVideoFrameAnalyzer)
  {
    v18 = [HMIVideoFrameIntervalSampler alloc];
    CMTimeMake(&v30, 10, 1);
    v19 = [(HMIVideoFrameIntervalSampler *)v18 initWithInterval:?];
    frameSampler = v8->_frameSampler;
    v8->_frameSampler = &v19->super;

    frameSampler = [(HMIVideoFrameAnalyzer *)v8 frameSampler];
    [frameSampler setDelegate:?];

LABEL_4:
    v22 = v8;
    goto LABEL_8;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = v8;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    LODWORD(v30.value) = 138543618;
    *(&v30.value + 4) = v26;
    LOWORD(v30.flags) = 2112;
    *(&v30.flags + 2) = v15;
    _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_ERROR, "%{public}@Error creating frame analyzer: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v22 = 0;
LABEL_8:

  return v22;
}

- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks
{
  v84 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  tracksCopy = tracks;
  dynamicConfiguration = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];

  if (!dynamicConfiguration)
  {
    [HMIVideoFrameAnalyzer handleSampleBuffer:background:motionDetections:tracks:];
  }

  v12 = 0x277CBE000uLL;
  date = [MEMORY[0x277CBEAA8] date];
  v80 = [MEMORY[0x277CBEB58] set];
  v79 = [MEMORY[0x277CBEB58] set];
  v81 = [[HMIVideoFrame alloc] initWithSampleBuffer:?];
  dynamicConfiguration2 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  eventTriggers = [dynamicConfiguration2 eventTriggers];

  v78 = tracksCopy;
  if ((eventTriggers & 0x1E) == 0)
  {
    v21 = *MEMORY[0x277CBF398];
    v22 = *(MEMORY[0x277CBF398] + 8);
    v23 = *(MEMORY[0x277CBF398] + 16);
    v24 = *(MEMORY[0x277CBF398] + 24);
    if ((eventTriggers & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v77 = date;
  v16 = v81;
  v82 = v16;
  v17 = [tracksCopy na_map:?];
  configuration = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  packageClassifierMode = [configuration packageClassifierMode];

  backgroundCopy = background;
  if (packageClassifierMode)
  {
    v20 = v17;
  }

  else
  {
    [v80 unionSet:?];
    v20 = [MEMORY[0x277CBEB98] set];
  }

  cameraVideoFrameAnalyzer = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  [(HMIVideoFrame *)v16 size];
  v75 = detectionsCopy;
  [cameraVideoFrameAnalyzer regionOfInterestForMotionDetections:? foregroundEvents:? frameSize:?];
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v24 = v29;

  cameraVideoFrameAnalyzer2 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  v31 = [cameraVideoFrameAnalyzer2 analyzeFrame:? regionOfInterest:?];

  cameraVideoFrameAnalyzer3 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  dynamicConfiguration3 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  [dynamicConfiguration3 recognizeFaces];
  v34 = +[HMIPreference sharedInstance];
  [v34 shouldEnableTorsoRecognition];
  v35 = [cameraVideoFrameAnalyzer3 getAnalyzerEvents:? eventTriggers:? enableFaceClassification:? enableTorsoRecognition:?];

  dynamicConfiguration4 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  if ([dynamicConfiguration4 recognizeFaces])
  {
    configuration2 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
    homeUUID = [configuration2 homeUUID];

    if (homeUUID)
    {
      cameraVideoFrameAnalyzer4 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
      configuration3 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
      homeUUID2 = [configuration3 homeUUID];
      v42 = [cameraVideoFrameAnalyzer4 recognizeEvents:? frame:? regionOfInterest:? homeUUID:?];

      v35 = v42;
LABEL_18:
      date = v77;
      goto LABEL_19;
    }
  }

  else
  {
  }

  dynamicConfiguration5 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  if (([dynamicConfiguration5 recognizeFaces] & 1) == 0)
  {

    goto LABEL_18;
  }

  configuration4 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  homeUUID3 = [configuration4 homeUUID];

  date = v77;
  if (homeUUID3)
  {
LABEL_19:
    background = backgroundCopy;
    goto LABEL_20;
  }

  v46 = objc_autoreleasePoolPush();
  selfCopy = self;
  v48 = HMFGetOSLogHandle();
  background = backgroundCopy;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v49 = v74 = v46;
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = v49;
    _os_log_impl(&dword_22D12F000, v48, OS_LOG_TYPE_ERROR, "%{public}@Face Classification is enabled, but homeUUID is nil, skipping face recognition", &buf, 0xCu);

    v46 = v74;
  }

  objc_autoreleasePoolPop(v46);
  date = v77;
LABEL_20:
  v12 = 0x277CBE000;
  if ((eventTriggers & 0x10) != 0)
  {
    v50 = [v20 count];
    if (background)
    {
      if (v50)
      {
        v51 = [[HMIVideoFrame alloc] initWithSampleBuffer:?];
        cameraVideoFrameAnalyzer5 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
        if (v51)
        {
          [&buf presentationTimeStamp];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v53 = [cameraVideoFrameAnalyzer5 getPackageEvents:? foregroundEvents:? newBackgroundEvents:? backgroundTimeStamp:?];

        if ([v53 count])
        {
          cameraVideoFrameAnalyzer6 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
          v55 = [cameraVideoFrameAnalyzer6 analyzeBackgroundFrame:? packageEvents:? newBackgroundEvents:? regionOfInterest:?];

          [v80 unionSet:?];
          v53 = v55;
          background = backgroundCopy;
        }

        v12 = 0x277CBE000uLL;

        date = v77;
      }
    }
  }

  [v80 unionSet:?];

  detectionsCopy = v75;
  if (eventTriggers)
  {
LABEL_30:
    v56 = [HMIMotionDetection firstMotionDetectionInArray:"firstMotionDetectionInArray:withMode:" withMode:?];
    v57 = v56;
    if (v56)
    {
      [v56 motionScore];
      if (v58 > 1.0)
      {
        v59 = v12;
        v60 = [HMIConfidence initWithValue:"initWithValue:levelThresholds:" levelThresholds:?];
        v61 = [HMIVideoAnalyzerEventMotion alloc];
        [v57 boundingBox];
        [v57 motionScore];
        v62 = [HMIVideoAnalyzerEventMotion initWithConfidence:v61 boundingBox:"initWithConfidence:boundingBox:motionScore:" motionScore:?];
        [v80 addObject:?];

        v85.origin.x = v21;
        v85.origin.y = v22;
        v85.size.width = v23;
        v85.size.height = v24;
        CGRectIsNull(v85);

        v12 = v59;
      }
    }
  }

LABEL_34:
  analysisTime = self->_analysisTime;
  v64 = MEMORY[0x277CCABB0];
  date2 = [*(v12 + 2728) date];
  [date2 timeIntervalSinceDate:?];
  v66 = [v64 numberWithDouble:?];
  [(MovingAverage *)analysisTime addNumber:?];

  v67 = objc_autoreleasePoolPush();
  configuration5 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  LODWORD(date2) = [configuration5 redactFrames];

  if (date2)
  {
    redactedCopy = [(HMIVideoFrame *)v81 redactedCopy];

    v81 = redactedCopy;
  }

  memset(&buf, 0, sizeof(buf));
  if (background)
  {
    CMSampleBufferGetPresentationTimeStamp(&buf, background);
  }

  else
  {
    buf = **&MEMORY[0x277CC08F0];
  }

  v70 = [HMIVideoFrameAnalyzerResult initWithFrame:"initWithFrame:events:backgroundEvents:backgroundTimeStamp:regionOfInterest:motionDetections:" events:? backgroundEvents:? backgroundTimeStamp:? regionOfInterest:? motionDetections:?];
  delegate = [(HMIVideoFrameAnalyzer *)self delegate];
  [delegate frameAnalyzer:? didAnalyzeFrame:?];

  objc_autoreleasePoolPop(v67);
  frameSampler = [(HMIVideoFrameAnalyzer *)self frameSampler];
  [frameSampler handleSampleBuffer:?];

  return 1;
}

id __79__HMIVideoFrameAnalyzer_handleSampleBuffer_background_motionDetections_tracks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    [v6 presentationTimeStamp];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [v3 createPackageEventAtTimeStamp:?];

  return v4;
}

- (void)flush
{
  cameraVideoFrameAnalyzer = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  configuration = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  homeUUID = [configuration homeUUID];
  dynamicConfiguration = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  [dynamicConfiguration recognizeFaces];
  v8 = [cameraVideoFrameAnalyzer flushAndGetAnalysisStateUpdateForHome:? enableFaceClassification:?];

  if (v8)
  {
    delegate = [(HMIVideoFrameAnalyzer *)self delegate];
    [delegate frameAnalyzer:? didProduceAnalysisStateUpdate:?];
  }
}

- (HMIVideoFrameAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end