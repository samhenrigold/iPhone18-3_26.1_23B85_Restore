@interface HMIVideoFrameTracker
+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)buffer;
- (HMIVideoFrameTracker)initWithConfiguration:(id)configuration workQueue:(id)queue;
- (HMIVideoFrameTrackerDelegate)delegate;
- (id)_motionDetectionsFromTarget:(opaqueCMSampleBuffer *)target reference:(opaqueCMSampleBuffer *)reference dynamicConfiguration:(id)configuration motionScore:(float *)score;
- (id)_tracksFromTarget:(opaqueCMSampleBuffer *)target reference:(opaqueCMSampleBuffer *)reference background:(opaqueCMSampleBuffer *)background dynamicConfiguration:(id)configuration motionDetections:(id)detections;
- (opaqueCMSampleBuffer)_backgroundAtTimeStamp:(id *)stamp;
- (opaqueCMSampleBuffer)prepareSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_addCandidateForTarget:(opaqueCMSampleBuffer *)target motionScore:(float)score motionDetections:(id)detections tracks:(id)tracks;
- (void)_appendTarget:(opaqueCMSampleBuffer *)target timeStamp:(id *)stamp motionDetections:(id)detections;
- (void)_drainCandidateThatExpiredBefore:(id *)before;
- (void)_drainResizedBuffersThatExpiredBefore:(id *)before;
- (void)_synthesizeMotionDetectionWithTarget:(opaqueCMSampleBuffer *)target;
- (void)_visualizeFrames:(id)frames targetEvents:(id)events backgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest;
- (void)_visualizeTargetEvents:(id)events backgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest targetTimeStamp:(id *)stamp;
- (void)_visualizeTargetsThatExpiredBefore:(id *)before;
- (void)dealloc;
- (void)flush;
- (void)handleFrameAnalyzerResult:(id)result;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer reference:(opaqueCMSampleBuffer *)reference;
@end

@implementation HMIVideoFrameTracker

- (HMIVideoFrameTracker)initWithConfiguration:(id)configuration workQueue:(id)queue
{
  configurationCopy = configuration;
  v31.receiver = self;
  v31.super_class = HMIVideoFrameTracker;
  v7 = [(HMIVideoAnalyzerProcessingNode *)&v31 initWithConfiguration:configurationCopy workQueue:queue];
  if (v7)
  {
    CMTimeMakeWithSeconds(&v30, 2.0, 1000);
    v8 = *&v30.value;
    *(v7 + 18) = v30.epoch;
    *(v7 + 8) = v8;
    v9 = *(v7 + 10);
    *(v7 + 10) = 0;

    *(v7 + 9) = 0;
    v10 = +[HMIPreference sharedInstance];
    v11 = [v10 numberPreferenceForKey:? defaultValue:?];
    *(v7 + 8) = [v11 unsignedIntegerValue];

    v12 = objc_alloc_init(HMIMotionDetector);
    v13 = *(v7 + 7);
    *(v7 + 7) = v12;

    CMTimeMakeWithSeconds(&v30, 3.0, 1000);
    v14 = *&v30.value;
    *(v7 + 21) = v30.epoch;
    *(v7 + 152) = v14;
    v15 = MEMORY[0x277CC08F0];
    *(v7 + 11) = *MEMORY[0x277CC08F0];
    *(v7 + 24) = *(v15 + 16);
    *(v7 + 12) = 0;
    CMTimeMake(&v30, 100, 1000);
    v16 = *&v30.value;
    *(v7 + 27) = v30.epoch;
    *(v7 + 200) = v16;
    *(v7 + 13) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if ([configurationCopy saveAnalyzerResultsToDisk])
    {
      v17 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v17 setDateFormat:?];
      v18 = [MEMORY[0x277CBEAA8] now];
      v19 = [v17 stringFromDate:?];

      v20 = MEMORY[0x277CCACA8];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v23 = [uUIDString substringToIndex:?];
      v24 = [v20 stringWithFormat:v19, v23];

      v25 = [HMIHTMLReport initWithTitle:"initWithTitle:outputPath:" outputPath:?];
      v26 = *(v7 + 14);
      *(v7 + 14) = v25;

      array = [MEMORY[0x277CBEB18] array];
      v28 = *(v7 + 15);
      *(v7 + 15) = array;
    }
  }

  return v7;
}

- (void)flush
{
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  workQueue2 = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMIVideoFrameTracker_flush__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_sync(workQueue2, block);
}

void __29__HMIVideoFrameTracker_flush__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CC08B0];
  [v2 _drainCandidateThatExpiredBefore:{v3, *(MEMORY[0x277CC08B0] + 16)}];
  CFArrayRemoveAllValues(*(*(a1 + 32) + 104));
}

- (void)dealloc
{
  background = self->_background;
  if (background)
  {
    CFRelease(background);
  }

  CFRelease(self->_resizedSampleBuffers);
  report = [(HMIVideoFrameTracker *)self report];

  if (report)
  {
    v5[1] = *MEMORY[0x277CC08B0];
    v6 = *(MEMORY[0x277CC08B0] + 16);
    [(HMIVideoFrameTracker *)self _visualizeTargetsThatExpiredBefore:?];
  }

  v5[0].receiver = self;
  v5[0].super_class = HMIVideoFrameTracker;
  [(objc_super *)v5 dealloc];
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer reference:(opaqueCMSampleBuffer *)reference
{
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dynamicConfiguration = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];

  if (dynamicConfiguration)
  {
    v9 = +[HMIPreference sharedInstance];
    v10 = [v9 hasPreferenceForKey:?];

    if (v10)
    {

      [(HMIVideoFrameTracker *)self _synthesizeMotionDetectionWithTarget:?];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
      CMSampleBufferGetPresentationTimeStamp(&v25, buffer);
      memset(&v24, 0, sizeof(v24));
      CMSampleBufferGetPresentationTimeStamp(&v24, reference);
      v11 = [(HMIVideoFrameTracker *)self prepareSampleBuffer:?];
      v23 = 0;
      dynamicConfiguration2 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
      v13 = [HMIVideoFrameTracker _motionDetectionsFromTarget:"_motionDetectionsFromTarget:reference:dynamicConfiguration:motionScore:" reference:? dynamicConfiguration:? motionScore:?];

      dynamicConfiguration3 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
      v15 = [HMIVideoFrameTracker _tracksFromTarget:"_tracksFromTarget:reference:background:dynamicConfiguration:motionDetections:" reference:? background:? dynamicConfiguration:? motionDetections:?];

      [HMIVideoFrameTracker _addCandidateForTarget:"_addCandidateForTarget:motionScore:motionDetections:tracks:" motionScore:? motionDetections:? tracks:?];
      report = [(HMIVideoFrameTracker *)self report];

      if (report)
      {
        v22 = v25;
        [HMIVideoFrameTracker _appendTarget:"_appendTarget:timeStamp:motionDetections:" timeStamp:? motionDetections:?];
      }

      lhs = v25;
      expirationInterval = self->_expirationInterval;
      CMTimeSubtract(&v22, &lhs, &expirationInterval);
      [(HMIVideoFrameTracker *)self _drainCandidateThatExpiredBefore:?];
      v22 = v24;
      [(HMIVideoFrameTracker *)self _drainResizedBuffersThatExpiredBefore:?];
      CFRelease(v11);
    }
  }

  else
  {
    v17 = [HMIVideoFrameAnalyzer handleSampleBuffer:background:motionDetections:tracks:];
    [(HMIVideoFrameTracker *)v17 handleSampleBuffer:v18, v19];
  }
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetPresentationTimeStamp(&v9, buffer);
  lhs = v9;
  expirationInterval = self->_expirationInterval;
  CMTimeSubtract(&v8, &lhs, &expirationInterval);
  [(HMIVideoFrameTracker *)self _drainCandidateThatExpiredBefore:?];
}

- (void)handleFrameAnalyzerResult:(id)result
{
  resultCopy = result;
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  backgroundEstimator = [(HMIVideoFrameTracker *)self backgroundEstimator];

  if (backgroundEstimator)
  {
    backgroundEstimator2 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    events = [resultCopy events];
    frame = [resultCopy frame];
    if (frame)
    {
      [&v16 presentationTimeStamp];
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    [backgroundEstimator2 assignForegroundEvents:? timeStamp:?];

    backgroundEstimator3 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    backgroundEvents = [resultCopy backgroundEvents];
    if (resultCopy)
    {
      [&v16 backgroundTimeStamp];
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    [backgroundEstimator3 assignBackgroundEvents:? timeStamp:?];
  }

  report = [(HMIVideoFrameTracker *)self report];

  if (report)
  {
    events2 = [resultCopy events];
    backgroundEvents2 = [resultCopy backgroundEvents];
    [resultCopy regionOfInterest];
    frame2 = [resultCopy frame];
    if (frame2)
    {
      [&v16 presentationTimeStamp];
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    [HMIVideoFrameTracker _visualizeTargetEvents:"_visualizeTargetEvents:backgroundEvents:regionOfInterest:targetTimeStamp:" backgroundEvents:? regionOfInterest:? targetTimeStamp:?];
  }
}

- (opaqueCMSampleBuffer)prepareSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  memset(&v17, 0, sizeof(v17));
  CMSampleBufferGetPresentationTimeStamp(&v17, buffer);
  if (CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]) < 1)
  {
    goto LABEL_6;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex([(HMIVideoFrameTracker *)self resizedSampleBuffers], v6);
    memset(&v16, 0, sizeof(v16));
    CMSampleBufferGetPresentationTimeStamp(&v16, ValueAtIndex);
    time1 = v17;
    time2 = v16;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time2 = v16;
      approximationInterval = self->_approximationInterval;
      CMTimeAdd(&time1, &time2, &approximationInterval);
      time2 = v17;
      if (CMTimeCompare(&time2, &time1) < 0)
      {
        break;
      }
    }

    if (++v6 >= CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]))
    {
      goto LABEL_6;
    }
  }

  CopyWithPixelBuffer = CFRetain(ValueAtIndex);
  if (!CopyWithPixelBuffer)
  {
LABEL_6:
    CMSampleBufferGetImageBuffer(buffer);
    v8 = [HMIVideoFrameTracker resizePixelBuffer:?];
    if (v8)
    {
      v9 = v8;
      CopyWithPixelBuffer = HMICMSampleBufferCreateCopyWithPixelBuffer(buffer, v8);
      CVPixelBufferRelease(v9);
      CFArrayAppendValue([(HMIVideoFrameTracker *)self resizedSampleBuffers], CopyWithPixelBuffer);
      resizedSampleBuffers = [(HMIVideoFrameTracker *)self resizedSampleBuffers];
      v18.length = CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]);
      v18.location = 0;
      CFArraySortValues(resizedSampleBuffers, v18, HMICMSampleBufferTimeAscendingComparator, 0);
    }

    else
    {
      return 0;
    }
  }

  return CopyWithPixelBuffer;
}

+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)buffer
{
  v22 = *MEMORY[0x277D85DE8];
  Size = HMICVPixelBufferGetSize(buffer);
  v6 = v5;
  v7 = HMIAspectRatioMake(Size, v5);
  if (HMIAspectRatioEqualToAspectRatio(v7, 0x900000010))
  {
    v8 = 180.0;
LABEL_3:
    v9 = 0x4074000000000000;
LABEL_4:
    v10 = *&v9;
    goto LABEL_7;
  }

  if (HMIAspectRatioEqualToAspectRatio(v7, 0x1000000009))
  {
    v8 = 320.0;
    v10 = 180.0;
  }

  else
  {
    if (HMIAspectRatioEqualToAspectRatio(v7, 0x300000004))
    {
      v8 = 240.0;
      goto LABEL_3;
    }

    if (HMIAspectRatioEqualToAspectRatio(v7, 0x400000003))
    {
      v8 = 320.0;
      v9 = 0x406E000000000000;
      goto LABEL_4;
    }

    if (!HMIAspectRatioEqualToAspectRatio(v7, 0x100000001))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v17 = v15;
        v18 = 1024;
        v19 = v7;
        v20 = 1024;
        v21 = HIDWORD(v7);
        _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unsupported aspect ratio: (%d, %d)", buf, 0x18u);
      }

      objc_autoreleasePoolPop(v13);
      v8 = (320.0 / (v7 / SHIDWORD(v7)));
      goto LABEL_3;
    }

    v10 = 240.0;
    v8 = 240.0;
  }

LABEL_7:
  v11 = Size == v10 && v6 == v8;
  if (v11 && CVPixelBufferGetPixelFormatType(buffer) == 875704438)
  {
    return CVPixelBufferRetain(buffer);
  }

  else
  {
    return [HMIVisionUtilities resizePixelBuffer:"resizePixelBuffer:size:pixelFormat:options:error:" size:? pixelFormat:? options:? error:?];
  }
}

- (void)_addCandidateForTarget:(opaqueCMSampleBuffer *)target motionScore:(float)score motionDetections:(id)detections tracks:(id)tracks
{
  v26 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  tracksCopy = tracks;
  v10 = [HMIVideoFrameTrackerFrameCandidate initWithSampleBuffer:"initWithSampleBuffer:score:motionDetections:tracks:" score:? motionDetections:? tracks:?];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v14;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Adding Candidate: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  ++selfCopy->_numCandidates;
  candidate = [(HMIVideoFrameTracker *)selfCopy candidate];
  if (!candidate || (v16 = candidate, -[HMIVideoFrameTracker candidate](selfCopy, "candidate"), v17 = objc_claimAutoreleasedReturnValue(), [v17 score], v19 = v18, -[HMIVideoFrameTrackerFrameCandidate score](v10, "score"), v21 = v20, v17, v16, v19 < v21))
  {
    objc_storeStrong(&selfCopy->_candidate, v10);
  }
}

- (void)_drainCandidateThatExpiredBefore:(id *)before
{
  v26 = *MEMORY[0x277D85DE8];
  candidate = [(HMIVideoFrameTracker *)self candidate];
  v6 = candidate;
  if (candidate)
  {
    memset(&v24, 0, sizeof(v24));
    CMSampleBufferGetPresentationTimeStamp(&v24, [candidate sbuf]);
    numCandidates = [(HMIVideoFrameTracker *)self numCandidates];
    if (numCandidates >= [(HMIVideoFrameTracker *)self maxCandidates]|| (time1 = v24, time2 = *before, CMTimeCompare(&time1, &time2) < 0))
    {
      [v6 score];
      v9 = v8;
      if (v8 <= 0.0)
      {
        tracks = [v6 tracks];
        if ([tracks count])
        {
          time1 = v24;
          time2 = self->_trackAnalysisPTS;
          v11 = CMTimeCompare(&time1, &time2);

          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_7;
          }
        }

        else
        {
        }

LABEL_12:
        candidate = self->_candidate;
        self->_candidate = 0;

        self->_numCandidates = 0;
        goto LABEL_13;
      }

LABEL_7:
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v15;
        LOWORD(time1.flags) = 2112;
        *(&time1.flags + 2) = v6;
        _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Selected: %@", &time1, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      delegate = [(HMIVideoFrameTracker *)selfCopy delegate];
      [v6 sbuf];
      time1 = v24;
      [(HMIVideoFrameTracker *)selfCopy _backgroundAtTimeStamp:?];
      motionDetections = [v6 motionDetections];
      tracks2 = [v6 tracks];
      [delegate frameTracker:? didTrackFrame:? background:? motionDetections:? tracks:?];

      if (v9 <= 0.0)
      {
        time2 = v24;
        v19 = *&selfCopy->_trackInterval.value;
        v22.epoch = selfCopy->_trackInterval.epoch;
        *&v22.value = v19;
        CMTimeAdd(&time1, &time2, &v22);
        v20 = *&time1.value;
        selfCopy->_trackAnalysisPTS.epoch = time1.epoch;
        *&selfCopy->_trackAnalysisPTS.value = v20;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_drainResizedBuffersThatExpiredBefore:(id *)before
{
  if (CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]) >= 1)
  {
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex([(HMIVideoFrameTracker *)self resizedSampleBuffers], 0);
      memset(&v8, 0, sizeof(v8));
      CMSampleBufferGetPresentationTimeStamp(&v8, ValueAtIndex);
      time1 = v8;
      v6 = *before;
      if ((CMTimeCompare(&time1, &v6) & 0x80000000) == 0)
      {
        break;
      }

      CFArrayRemoveValueAtIndex([(HMIVideoFrameTracker *)self resizedSampleBuffers], 0);
    }

    while (CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]) > 0);
  }
}

- (void)_synthesizeMotionDetectionWithTarget:(opaqueCMSampleBuffer *)target
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMICMSampleBufferTinyDescription(target);
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Synthesizing Motion Detections, Target: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [HMIMotionDetection initWithBoundingBox:"initWithBoundingBox:size:motionVectors:motionScore:motionMode:" size:? motionVectors:? motionScore:? motionMode:?];
  v14 = [HMIMotionDetection initWithBoundingBox:"initWithBoundingBox:size:motionVectors:motionScore:motionMode:" size:v10 motionVectors:? motionScore:? motionMode:?];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  delegate = [(HMIVideoFrameTracker *)selfCopy delegate];
  v13 = [MEMORY[0x277CBEB98] set];
  [delegate frameTracker:? didTrackFrame:? background:? motionDetections:? tracks:?];
}

- (id)_motionDetectionsFromTarget:(opaqueCMSampleBuffer *)target reference:(opaqueCMSampleBuffer *)reference dynamicConfiguration:(id)configuration motionScore:(float *)score
{
  configurationCopy = configuration;
  [configurationCopy eventTriggers];
  if ([configurationCopy eventTriggers])
  {
    activityZones = [configurationCopy activityZones];
  }

  else
  {
    activityZones = MEMORY[0x277CBEBF8];
  }

  motionDetector = [(HMIVideoFrameTracker *)self motionDetector];
  CMSampleBufferGetImageBuffer(reference);
  CMSampleBufferGetImageBuffer(target);
  v13 = [motionDetector detectWithGlobalMotionScore:? referencePixelBuffer:? targetPixelBuffer:? activityZones:? detectorMode:?];

  v14 = [HMIMotionDetection firstMotionDetectionInArray:"firstMotionDetectionInArray:withMode:" withMode:?];
  [v14 motionScore];
  *score = v15;

  return v13;
}

- (id)_tracksFromTarget:(opaqueCMSampleBuffer *)target reference:(opaqueCMSampleBuffer *)reference background:(opaqueCMSampleBuffer *)background dynamicConfiguration:(id)configuration motionDetections:(id)detections
{
  detectionsCopy = detections;
  if (([configuration eventTriggers] & 0x10) != 0)
  {
    backgroundEstimator = [(HMIVideoFrameTracker *)self backgroundEstimator];

    if (!backgroundEstimator)
    {
      v16 = [HMIBackgroundEstimator alloc];
      configuration = [(HMIVideoAnalyzerProcessingNode *)self configuration];
      v18 = [(HMIBackgroundEstimator *)v16 initWithConfiguration:?];
      [(HMIVideoFrameTracker *)self setBackgroundEstimator:?];

      backgroundEstimator2 = [(HMIVideoFrameTracker *)self backgroundEstimator];
      CMSampleBufferGetImageBuffer(reference);
      CMSampleBufferGetPresentationTimeStamp(&v27, reference);
      v20 = [backgroundEstimator2 analyzePixelBuffer:? timeStamp:?];
    }

    memset(&v27, 0, sizeof(v27));
    CMSampleBufferGetPresentationTimeStamp(&v27, target);
    backgroundEstimator3 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    [backgroundEstimator3 handleMotionDetection:? inFrame:?];

    backgroundEstimator4 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    CMSampleBufferGetImageBuffer(target);
    v14 = [backgroundEstimator4 analyzePixelBuffer:v27.value timeStamp:{*&v27.timescale, v27.epoch}];

    backgroundEstimator5 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    hasNewBackground = [backgroundEstimator5 hasNewBackground];

    if (hasNewBackground)
    {
      background = self->_background;
      if (background)
      {
        CFRelease(background);
      }

      self->_background = CFRetain(background);
    }
  }

  else
  {
    if ([(HMIVideoFrameTracker *)self background])
    {
      CFRelease(self->_background);
      self->_background = 0;
    }

    backgroundEstimator6 = [(HMIVideoFrameTracker *)self backgroundEstimator];

    if (backgroundEstimator6)
    {
      [(HMIVideoFrameTracker *)self setBackgroundEstimator:?];
    }

    v14 = [MEMORY[0x277CBEB98] set];
  }

  return v14;
}

- (opaqueCMSampleBuffer)_backgroundAtTimeStamp:(id *)stamp
{
  result = [(HMIVideoFrameTracker *)self background];
  if (result)
  {
    CMSampleBufferGetPresentationTimeStamp(&time2, [(HMIVideoFrameTracker *)self background]);
    v6 = *stamp;
    if (CMTimeCompare(&v6, &time2) < 1)
    {
      return 0;
    }

    else
    {
      return [(HMIVideoFrameTracker *)self background];
    }
  }

  return result;
}

- (void)_appendTarget:(opaqueCMSampleBuffer *)target timeStamp:(id *)stamp motionDetections:(id)detections
{
  detectionsCopy = detections;
  array = [MEMORY[0x277CBEB18] array];
  v10 = [HMIVideoFrame alloc];
  CMSampleBufferGetImageBuffer(target);
  v11 = [(HMIVideoFrame *)v10 initWithPixelBuffer:*&stamp->var0 presentationTimeStamp:stamp->var3];
  [array addObject:?];
  motionDetector = [(HMIVideoFrameTracker *)self motionDetector];
  [(HMIVideoFrame *)v11 size];
  if (v11)
  {
    [&v23 presentationTimeStamp];
  }

  else
  {
    v23 = 0uLL;
    v24 = 0;
  }

  v13 = [motionDetector visualizeMotionDetections:v23 frameSize:v24 timeStamp:?];
  [array addObject:?];

  backgroundEstimator = [(HMIVideoFrameTracker *)self backgroundEstimator];

  if (backgroundEstimator)
  {
    backgroundEstimator2 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    visualizeBackgroundMean = [backgroundEstimator2 visualizeBackgroundMean];
    [array addObject:?];

    backgroundEstimator3 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    visualizeBackgroundStd = [backgroundEstimator3 visualizeBackgroundStd];
    [array addObject:?];

    backgroundEstimator4 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    visualizeForegroundAssignment = [backgroundEstimator4 visualizeForegroundAssignment];
    [array addObject:?];
  }

  reportBuffer = [(HMIVideoFrameTracker *)self reportBuffer];
  v22 = [array copy];
  [reportBuffer addObject:?];
}

- (void)_visualizeTargetsThatExpiredBefore:(id *)before
{
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = *&before->var0;
  [HMIVideoFrameTracker _visualizeTargetEvents:"_visualizeTargetEvents:backgroundEvents:regionOfInterest:targetTimeStamp:" backgroundEvents:v7 regionOfInterest:before->var3 targetTimeStamp:?];
}

- (void)_visualizeTargetEvents:(id)events backgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest targetTimeStamp:(id *)stamp
{
  eventsCopy = events;
  backgroundEventsCopy = backgroundEvents;
  reportBuffer = [(HMIVideoFrameTracker *)self reportBuffer];
  v12 = [reportBuffer count];

  if (v12)
  {
    while (1)
    {
      reportBuffer2 = [(HMIVideoFrameTracker *)self reportBuffer];
      firstObject = [reportBuffer2 firstObject];

      v14FirstObject = [firstObject firstObject];
      if (v14FirstObject)
      {
        [&time1 presentationTimeStamp];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v22 = *stamp;
      v16 = CMTimeCompare(&time1, &v22);

      if (v16 >= 1)
      {
        break;
      }

      if (v16)
      {
        v17 = [MEMORY[0x277CBEB98] set];
        v18 = [MEMORY[0x277CBEB98] set];
        [HMIVideoFrameTracker _visualizeFrames:"_visualizeFrames:targetEvents:backgroundEvents:regionOfInterest:" targetEvents:? backgroundEvents:? regionOfInterest:?];
      }

      else
      {
        [HMIVideoFrameTracker _visualizeFrames:"_visualizeFrames:targetEvents:backgroundEvents:regionOfInterest:" targetEvents:? backgroundEvents:? regionOfInterest:?];
      }

      reportBuffer3 = [(HMIVideoFrameTracker *)self reportBuffer];
      [reportBuffer3 hmf_removeFirstObject];

      reportBuffer4 = [(HMIVideoFrameTracker *)self reportBuffer];
      v21 = [reportBuffer4 count];

      if (!v21)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
}

- (void)_visualizeFrames:(id)frames targetEvents:(id)events backgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  framesCopy = frames;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __88__HMIVideoFrameTracker__visualizeFrames_targetEvents_backgroundEvents_regionOfInterest___block_invoke;
  v29 = &unk_278755468;
  v30 = framesCopy;
  selfCopy = self;
  v14 = framesCopy;
  backgroundEventsCopy = backgroundEvents;
  eventsCopy = events;
  v17 = MEMORY[0x2318CB8E0](&v26);
  (v17)[2](v17, 0, eventsCopy, @"Target", x, y, width, height);

  (v17)[2](v17, 2, backgroundEventsCopy, @"Mean", x, y, width, height);
  v18 = [MEMORY[0x277CBEB98] set];
  v19 = *MEMORY[0x277CBF398];
  v20 = *(MEMORY[0x277CBF398] + 8);
  v21 = *(MEMORY[0x277CBF398] + 16);
  v22 = *(MEMORY[0x277CBF398] + 24);
  (v17)[2](v17, 3, v18, @"Std", *MEMORY[0x277CBF398], v20, v21, v22);

  v23 = [MEMORY[0x277CBEB98] set];
  (v17)[2](v17, 1, v23, @"Motion", v19, v20, v21, v22);

  v24 = [MEMORY[0x277CBEB98] set];
  (v17)[2](v17, 4, v24, @"Assign", v19, v20, v21, v22);

  report = [(HMIVideoFrameTracker *)self report];
  [report appendText:?];
}

void __88__HMIVideoFrameTracker__visualizeFrames_targetEvents_backgroundEvents_regionOfInterest___block_invoke(uint64_t a1, unint64_t a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v11 = a3;
  v12 = a4;
  if ([*(a1 + 32) count] > a2)
  {
    v13 = [*(a1 + 32) objectAtIndexedSubscript:?];
    if (v13)
    {
      [&time presentationTimeStamp];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    v15 = [*(a1 + 40) report];
    v16 = [HMIVideoAnalyzerFrameResult alloc];
    v17 = [*(a1 + 32) objectAtIndexedSubscript:?];
    v18 = [HMIVideoAnalyzerFrameResult initWithFrame:v16 events:"initWithFrame:events:regionOfInterest:" regionOfInterest:?];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:*&Seconds, v12];
    [v15 appendFrameResult:? frameTruth:? description:?];
  }
}

- (HMIVideoFrameTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end