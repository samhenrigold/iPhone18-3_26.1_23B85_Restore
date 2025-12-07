@interface HMIVideoTemporalEventFilter
- (BOOL)_resetPreviousFrameResult:(id)result expirationPTS:(id *)s regionOfInterest:(CGRect)interest;
- (HMIVideoTemporalEventFilter)init;
- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents motionDetection:(id)detection;
- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents motionDetection:(id)detection prevFrameResult:(id)result regionOfInterest:(CGRect)interest;
- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents stationaryObjects:(id)objects expirationPTS:(id *)s imageSize:(CGSize)size;
- (id)applyFilterWithFrameResult:(id)result motionDetection:(id)detection;
@end

@implementation HMIVideoTemporalEventFilter

- (HMIVideoTemporalEventFilter)init
{
  v17 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HMIVideoTemporalEventFilter;
  v2 = [(HMIVideoTemporalEventFilter *)&v10 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    stationaryObjects = v2->_stationaryObjects;
    v2->_stationaryObjects = array;

    CMTimeMakeWithSeconds(&v9, 10.0, 1000);
    v5 = *&v9.value;
    v2->_timeInterval.epoch = v9.epoch;
    *&v2->_timeInterval.value = v5;
    v11 = objc_opt_class();
    v14 = &unk_284075240;
    v12 = objc_opt_class();
    v15 = &unk_284075258;
    v13 = objc_opt_class();
    v16 = &unk_284075270;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    targetEventClassRanks = v2->_targetEventClassRanks;
    v2->_targetEventClassRanks = v6;
  }

  return v2;
}

- (id)applyFilterWithFrameResult:(id)result motionDetection:(id)detection
{
  resultCopy = result;
  detectionCopy = detection;
  events = [resultCopy events];
  v46 = MEMORY[0x277D85DD0];
  v47 = 3221225472;
  v48 = __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke;
  v49 = &unk_278755120;
  selfCopy = self;
  v9 = [events na_filter:?];

  events2 = [resultCopy events];
  allObjects = [events2 allObjects];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_2;
  v44 = &unk_278755120;
  selfCopy2 = self;
  v12 = [allObjects na_filter:?];
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_3;
  v39 = &unk_278755148;
  selfCopy3 = self;
  v13 = [v12 sortedArrayUsingComparator:?];

  memset(&v35, 0, sizeof(v35));
  frame = [resultCopy frame];
  if (frame)
  {
    [&v35 presentationTimeStamp];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  memset(&v34, 0, sizeof(v34));
  [&rhs timeInterval];
  lhs = v35;
  CMTimeSubtract(&v34, &lhs, &rhs);
  array = [MEMORY[0x277CBEB18] array];
  v16 = [HMIVideoTemporalEventFilter _filterEvents:"_filterEvents:stationaryEvents:motionDetection:" stationaryEvents:? motionDetection:?];

  stationaryObjects = [(HMIVideoTemporalEventFilter *)self stationaryObjects];
  frame2 = [resultCopy frame];
  [frame2 size];
  rhs = v34;
  v19 = [HMIVideoTemporalEventFilter _filterEvents:"_filterEvents:stationaryEvents:stationaryObjects:expirationPTS:imageSize:" stationaryEvents:? stationaryObjects:? expirationPTS:? imageSize:?];

  prevFrameResult = [(HMIVideoTemporalEventFilter *)self prevFrameResult];
  if (prevFrameResult)
  {
    v21 = prevFrameResult;
    prevFrameResult2 = [(HMIVideoTemporalEventFilter *)self prevFrameResult];
    [resultCopy regionOfInterest];
    rhs = v34;
    v23 = [HMIVideoTemporalEventFilter _resetPreviousFrameResult:"_resetPreviousFrameResult:expirationPTS:regionOfInterest:" expirationPTS:? regionOfInterest:?];

    if (v23)
    {
      [(HMIVideoTemporalEventFilter *)self setPrevFrameResult:?];
    }
  }

  prevFrameResult3 = [(HMIVideoTemporalEventFilter *)self prevFrameResult];
  [resultCopy regionOfInterest];
  v25 = [HMIVideoTemporalEventFilter _filterEvents:"_filterEvents:stationaryEvents:motionDetection:prevFrameResult:regionOfInterest:" stationaryEvents:? motionDetection:? prevFrameResult:? regionOfInterest:?];

  redactedCopy = [resultCopy redactedCopy];
  [(HMIVideoTemporalEventFilter *)self setPrevFrameResult:?];

  [array na_each:{MEMORY[0x277D85DD0], 3221225472, __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_4, &unk_278755170, self, *&v35.value, v35.epoch}];
  v27 = [HMIVideoAnalyzerFrameResult alloc];
  frame3 = [resultCopy frame];
  v29 = [v9 setByAddingObjectsFromArray:?];
  [resultCopy regionOfInterest];
  v30 = [HMIVideoAnalyzerFrameResult initWithFrame:v27 events:"initWithFrame:events:regionOfInterest:" regionOfInterest:?];

  return v30;
}

BOOL __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 targetEventClassRanks];
  objc_opt_class();

  v5 = [v4 objectForKeyedSubscript:?];
  v6 = v5 == 0;

  return v6;
}

BOOL __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 targetEventClassRanks];
  objc_opt_class();

  v5 = [v4 objectForKeyedSubscript:?];
  v6 = v5 != 0;

  return v6;
}

BOOL __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 targetEventClassRanks];
  objc_opt_class();

  v9 = [v8 objectForKeyedSubscript:?];
  LODWORD(v7) = [v9 intValue];
  v10 = [*(a1 + 32) targetEventClassRanks];
  objc_opt_class();

  v11 = [v10 objectForKeyedSubscript:?];
  v12 = v7 > [v11 intValue];

  return v12;
}

void __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 stationaryObjects];
  v6 = [HMIStationaryObject alloc];
  v8 = *(a1 + 40);
  v7 = [(HMIStationaryObject *)v6 initWithEvent:v8 time:*(a1 + 56)];

  [v5 addObject:?];
}

- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents motionDetection:(id)detection
{
  stationaryEventsCopy = stationaryEvents;
  detectionCopy = detection;
  v9 = detectionCopy;
  if (detectionCopy)
  {
    v12 = detectionCopy;
    v13 = stationaryEventsCopy;
    v10 = [events na_filter:?];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

uint64_t __78__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  [v3 boundingBox];
  objc_opt_class();
  v5 = [v3 confidence];
  [v5 value];
  v6 = [v4 applyEventTypeAndCheckIfSubBoundingIsStatic:? eventClass:? confidence:?];

  if (v6)
  {
    v7 = objc_opt_class();
    if (v7 == objc_opt_class())
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v3 shortDescription];
        v14 = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Add motion-vector stationary event %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 48) addObject:?];
    }
  }

  return v6 ^ 1;
}

- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents stationaryObjects:(id)objects expirationPTS:(id *)s imageSize:(CGSize)size
{
  eventsCopy = events;
  stationaryEventsCopy = stationaryEvents;
  objectsCopy = objects;
  if (([objectsCopy hmf_isEmpty] & 1) == 0)
  {
    do
    {
      firstObject = [objectsCopy firstObject];
      if (firstObject)
      {
        [&time1 time];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time2 = *s;
      v14 = CMTimeCompare(&time1, &time2);

      if ((v14 & 0x80000000) == 0)
      {
        break;
      }

      [objectsCopy hmf_removeFirstObject];
    }

    while (![objectsCopy hmf_isEmpty]);
  }

  v19 = objectsCopy;
  v20 = stationaryEventsCopy;
  v15 = stationaryEventsCopy;
  v16 = objectsCopy;
  v17 = [eventsCopy na_filter:?];

  return v17;
}

BOOL __104__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_stationaryObjects_expirationPTS_imageSize___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:?];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[5];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 shortDescription];
      v12 = [v6 event];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Replace matched stationary event %@ for %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] addObject:?];
    [a1[4] removeObject:?];
  }

  return v6 == 0;
}

BOOL __104__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_stationaryObjects_expirationPTS_imageSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 event];
  if (v4 == objc_opt_class())
  {
    [*(a1 + 32) boundingBox];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v3 event];
    [v15 boundingBox];
    v6 = HMICGRectMaxParallelEdgeDistance(v8, v10, v12, v14, v16, v17, v18, v19, *(a1 + 40), *(a1 + 48)) < 1.86;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents motionDetection:(id)detection prevFrameResult:(id)result regionOfInterest:(CGRect)interest
{
  stationaryEventsCopy = stationaryEvents;
  detectionCopy = detection;
  resultCopy = result;
  if (resultCopy)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = detectionCopy;
    v17 = resultCopy;
    v18 = stationaryEventsCopy;
    v13 = [events na_filter:{v15, 3221225472, __111__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection_prevFrameResult_regionOfInterest___block_invoke_2, &unk_278755238}];
  }

  else
  {
    v13 = [events na_filter:?];
  }

  return v13;
}

BOOL __111__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection_prevFrameResult_regionOfInterest___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = *(a1 + 32);
    if (v6 && ([v3 boundingBox], objc_opt_class(), objc_msgSend(v3, "confidence"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "value"), objc_msgSend(v6, "scoreForSubBoundingBox:eventClass:confidence:"), v9 = v8, v7, v9 <= 15.0) || (objc_msgSend(v3, "boundingBox"), HMICGRectMinElementwiseDistance(v10, v11, v12, v13, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)) < 0.02))
    {
      v5 = 0;
    }

    else
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v14 = [*(a1 + 40) frame];
      [v14 size];
      v16 = v15;

      v17 = [*(a1 + 40) frame];
      [v17 size];
      v19 = v18;

      if (v16 >= v19)
      {
        v20 = v16;
      }

      else
      {
        v20 = v19;
      }

      v21 = v20;
      v35 = v21;
      v22 = [*(a1 + 40) events];
      v23 = v3;
      v31 = *(a1 + 40);
      [v22 na_each:?];

      v24 = v33[6];
      v5 = v24 >= 1.86;
      if (v24 < 1.86)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = *(a1 + 48);
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = HMFGetLogIdentifier();
          v29 = [v23 shortDescription];
          *buf = 138543618;
          v37 = v28;
          v38 = 2112;
          v39 = v29;
          _os_log_impl(&dword_22D12F000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Add edge-distance stationary event %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        [*(a1 + 56) addObject:?];
      }

      _Block_object_dispose(&v32, 8);
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __111__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection_prevFrameResult_regionOfInterest___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    [*(a1 + 32) boundingBox];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v26 boundingBox];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [*(a1 + 40) frame];
    [v20 size];
    v23 = HMICGRectMaxParallelEdgeDistance(v5, v7, v9, v11, v13, v15, v17, v19, v21, v22);

    v24 = *(*(a1 + 48) + 8);
    v25 = *(v24 + 24);
    if (v23 < v25)
    {
      v25 = v23;
    }

    *(v24 + 24) = v25;
  }
}

- (BOOL)_resetPreviousFrameResult:(id)result expirationPTS:(id *)s regionOfInterest:(CGRect)interest
{
  resultCopy = result;
  frame = [resultCopy frame];
  if (frame)
  {
    [&time1 presentationTimeStamp];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v13 = *s;
  v8 = CMTimeCompare(&time1, &v13);

  if (v8 < 0)
  {
    v11 = 1;
  }

  else
  {
    events = [resultCopy events];
    v10 = [events na_any:?];

    v11 = v10 ^ 1;
  }

  return v11;
}

@end