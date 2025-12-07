@interface HMIAnalytics
+ (BOOL)sendEventWithName:(id)name payloadBuilder:(id)builder;
+ (BOOL)upload;
+ (id)payloadWithCamera:(id)camera;
+ (int64_t)bucketForValue:(int64_t)value usingBuckets:(id)buckets;
+ (void)sendEventForClusteringTask:(id)task;
+ (void)sendEventForFaceEvent:(id)event homePersonManagerUUID:(id)d camera:(id)camera;
+ (void)sendEventForPersonRecognitionType:(int64_t)type camera:(id)camera;
+ (void)sendEventForPersonsModels:(id)models;
+ (void)sendEventsForFragmentResult:(id)result;
+ (void)videoAnalyzerDidAnalyzeFragmentWithResult:(id)result state:(id)state;
+ (void)videoAnalyzerDidCreateTimelapseFragment:(id)fragment state:(id)state;
+ (void)videoAnalyzerDidFindFaceEvent:(id)event homePersonManagerUUID:(id)d camera:(id)camera;
+ (void)videoAnalyzerDidTerminateWithError:(id)error state:(id)state;
+ (void)videoPackageAnalyzerDidClassifyCandidateAsPackage:(BOOL)package camera:(id)camera;
+ (void)videoPackageAnalyzerDidResetReferenceImageWithInterval:(double)interval camera:(id)camera;
@end

@implementation HMIAnalytics

+ (BOOL)upload
{
  v2 = +[HMIPreference sharedInstance];
  v3 = [v2 BOOLPreferenceForKey:? defaultValue:?];

  return v3;
}

+ (BOOL)sendEventWithName:(id)name payloadBuilder:(id)builder
{
  nameCopy = name;
  builderCopy = builder;
  if ([self upload])
  {
    if ([self lazyPayloads])
    {
      v8 = AnalyticsSendEventLazy();
    }

    else
    {
      v9 = builderCopy[2](builderCopy);
      AnalyticsSendEvent();

      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)payloadWithCamera:(id)camera
{
  cameraCopy = camera;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  manufacturer = [cameraCopy manufacturer];

  if (manufacturer)
  {
    manufacturer2 = [cameraCopy manufacturer];
    [dictionary setObject:? forKeyedSubscript:?];
  }

  model = [cameraCopy model];

  if (model)
  {
    model2 = [cameraCopy model];
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v9 = MEMORY[0x277CCABB0];
  [cameraCopy hasBattery];
  v10 = [v9 numberWithBool:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v11 = [dictionary copy];

  return v11;
}

+ (void)sendEventForPersonRecognitionType:(int64_t)type camera:(id)camera
{
  cameraCopy = camera;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (cameraCopy)
  {
    v8 = [HMIAnalytics payloadWithCamera:?];
    [dictionary addEntriesFromDictionary:?];
  }

  if (type <= 1)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v10 = dictionary;
  v9 = dictionary;
  [self sendEventWithName:? payloadBuilder:?];
}

+ (void)videoAnalyzerDidFindFaceEvent:(id)event homePersonManagerUUID:(id)d camera:(id)camera
{
  eventCopy = event;
  dCopy = d;
  cameraCopy = camera;
  faceRecognition = [eventCopy faceRecognition];
  classifications = [faceRecognition classifications];
  v11 = [classifications na_any:?];

  faceRecognition2 = [eventCopy faceRecognition];
  classifications2 = [faceRecognition2 classifications];
  v14 = [classifications2 na_any:?];

  if (v11)
  {
    [HMIAnalytics sendEventForPersonRecognitionType:"sendEventForPersonRecognitionType:camera:" camera:?];
  }

  if (v14)
  {
    [HMIAnalytics sendEventForPersonRecognitionType:"sendEventForPersonRecognitionType:camera:" camera:?];
  }

  else
  {
    [HMIAnalytics sendEventForFaceEvent:"sendEventForFaceEvent:homePersonManagerUUID:camera:" homePersonManagerUUID:? camera:?];
  }
}

BOOL __75__HMIAnalytics_videoAnalyzerDidFindFaceEvent_homePersonManagerUUID_camera___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 fromTorsoClassification] & 1) == 0 && objc_msgSend(v2, "familiarity") == 2;

  return v3;
}

BOOL __75__HMIAnalytics_videoAnalyzerDidFindFaceEvent_homePersonManagerUUID_camera___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 fromTorsoClassification])
  {
    v3 = [v2 familiarity] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)sendEventForFaceEvent:(id)event homePersonManagerUUID:(id)d camera:(id)camera
{
  eventCopy = event;
  dCopy = d;
  cameraCopy = camera;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (cameraCopy)
  {
    v12 = [HMIAnalytics payloadWithCamera:?];
    [dictionary addEntriesFromDictionary:?];
  }

  v13 = MEMORY[0x277CCABB0];
  confidence = [eventCopy confidence];
  [confidence value];
  v15 = [v13 numberWithDouble:?];
  [dictionary setObject:? forKeyedSubscript:?];

  userInfo = [eventCopy userInfo];
  v17 = [userInfo objectForKeyedSubscript:?];

  if (v17)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  faceRecognition = [eventCopy faceRecognition];

  if (faceRecognition)
  {
    selfCopy = self;
    v19 = [MEMORY[0x277CBEB58] set];
    faceRecognition2 = [eventCopy faceRecognition];
    classifications = [faceRecognition2 classifications];
    v32 = dCopy;
    v22 = dictionary;
    v23 = v19;
    [classifications na_each:?];

    if ([v23 count])
    {
      allObjects = [v23 allObjects];
      v25 = [allObjects sortedArrayUsingComparator:?];

      firstObject = [v25 firstObject];
      v27 = HMIFaceFamiliarityAsString([firstObject integerValue]);
      [v22 setObject:? forKeyedSubscript:?];
    }

    faceRecognition3 = [eventCopy faceRecognition];
    v29 = HMISessionEntityAssignmentAsString([faceRecognition3 sessionEntityAssignment]);
    [v22 setObject:? forKeyedSubscript:?];

    self = selfCopy;
  }

  v30 = dictionary;
  [self sendEventWithName:? payloadBuilder:?];
}

void __67__HMIAnalytics_sendEventForFaceEvent_homePersonManagerUUID_camera___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceUUID];
  v5 = [v4 isEqual:?];

  if (v5)
  {
    v6 = [v3 familiarity];

    v9 = HMIFaceFamiliarityAsString(v6);
    [*(a1 + 40) setObject:? forKeyedSubscript:?];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = MEMORY[0x277CCABB0];
    [v3 familiarity];

    v9 = [v8 numberWithInteger:?];
    [v7 addObject:?];
  }
}

BOOL __67__HMIAnalytics_sendEventForFaceEvent_homePersonManagerUUID_camera___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 integerValue];
  v6 = [v4 integerValue];

  return v5 > v6;
}

+ (void)sendEventForClusteringTask:(id)task
{
  taskCopy = task;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CCABB0];
  [taskCopy numberOfFaceprintsClustered];
  v7 = [v6 numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v8 = MEMORY[0x277CCABB0];
  [taskCopy numberOfClusters];
  v9 = [v8 numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v10 = MEMORY[0x277CCABB0];
  [taskCopy numberOfPersonsCreated];
  v11 = [v10 numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v12 = MEMORY[0x277CCABB0];
  [taskCopy numberOfUnknownFaceprintsAssociated];
  v13 = [v12 numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v14 = MEMORY[0x277CCABB0];
  [taskCopy faceprintingDuration];
  v15 = [v14 numberWithDouble:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v16 = MEMORY[0x277CCABB0];
  [taskCopy clusteringDuration];
  v17 = [v16 numberWithDouble:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v18 = MEMORY[0x277CCABB0];
  [taskCopy totalDuration];
  v19 = [v18 numberWithDouble:?];
  [dictionary setObject:? forKeyedSubscript:?];

  error = [taskCopy error];

  if (error)
  {
    v21 = MEMORY[0x277CCABB0];
    error2 = [taskCopy error];
    [error2 code];
    v23 = [v21 numberWithInteger:?];
    [dictionary setObject:? forKeyedSubscript:?];

    error3 = [taskCopy error];
    v25 = [error3 description];
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __43__HMIAnalytics_sendEventForClusteringTask___block_invoke;
  v30 = &unk_2787549B0;
  v31 = dictionary;
  v26 = dictionary;
  [self sendEventWithName:? payloadBuilder:?];
}

+ (void)sendEventForPersonsModels:(id)models
{
  v48 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  array2 = [MEMORY[0x277CBEB18] array];
  modelSummaries = [modelsCopy modelSummaries];
  v7 = array;
  v8 = array2;
  [modelSummaries na_each:?];

  v9 = MEMORY[0x277CCABB0];
  [v7 count];
  [HMIAnalytics bucketForValue:"bucketForValue:usingBuckets:" usingBuckets:?];
  v27 = [v9 numberWithInteger:?];
  v10 = [v7 valueForKeyPath:?];
  v11 = MEMORY[0x277CCABB0];
  [v10 integerValue];
  [HMIAnalytics bucketForValue:"bucketForValue:usingBuckets:" usingBuckets:?];
  v12 = [v11 numberWithInteger:?];

  if (v31[3])
  {
    v13 = MEMORY[0x277CCABB0];
    [v8 count];
    v14 = [v13 numberWithUnsignedInteger:?];
  }

  else
  {
    v14 = &unk_284075138;
  }

  v15 = MEMORY[0x277CCABB0];
  [v14 integerValue];
  [HMIAnalytics bucketForValue:"bucketForValue:usingBuckets:" usingBuckets:?];
  v16 = [v15 numberWithInteger:?];

  v17 = [v8 valueForKeyPath:?];
  v18 = MEMORY[0x277CCABB0];
  [v17 integerValue];
  [HMIAnalytics bucketForValue:"bucketForValue:usingBuckets:" usingBuckets:?];
  v19 = [v18 numberWithInteger:?];

  v20 = MEMORY[0x277CCABB0];
  [modelsCopy homeToExternalEquivalencies];
  [HMIAnalytics bucketForValue:"bucketForValue:usingBuckets:" usingBuckets:?];
  v21 = [v20 numberWithInteger:?];
  v22 = MEMORY[0x277CCABB0];
  [modelsCopy externalToExternalEquivalencies];
  [HMIAnalytics bucketForValue:"bucketForValue:usingBuckets:" usingBuckets:?];
  v23 = [v22 numberWithInteger:?];
  v34 = @"externalLibraries";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v41 = v24;
  v42 = v27;
  v35 = @"homeIdentities";
  v36 = @"averageExternalIdentities";
  v43 = v16;
  v44 = v12;
  v37 = @"averageHomeFaceCrops";
  v38 = @"averageExternalFaceCrops";
  v45 = v19;
  v46 = v21;
  v39 = @"homeToExternal";
  v40 = @"externalToExternal";
  v47 = v23;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v29 = v25;
  [selfCopy sendEventWithName:? payloadBuilder:?];

  _Block_object_dispose(&v30, 8);
}

void __42__HMIAnalytics_sendEventForPersonsModels___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isExternalLibrary])
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v4 = [v3 faceCountsByPerson];

    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __42__HMIAnalytics_sendEventForPersonsModels___block_invoke_3;
    v9 = &unk_278754A20;
    v5 = &v10;
    v10 = *(a1 + 40);
  }

  else
  {
    v4 = [v3 faceCountsByPerson];

    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __42__HMIAnalytics_sendEventForPersonsModels___block_invoke_2;
    v14 = &unk_278754A20;
    v5 = &v15;
    v15 = *(a1 + 32);
  }

  [v4 na_each:{v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
}

+ (int64_t)bucketForValue:(int64_t)value usingBuckets:(id)buckets
{
  bucketsCopy = buckets;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __44__HMIAnalytics_bucketForValue_usingBuckets___block_invoke;
  v15 = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  valueCopy = value;
  v6 = [bucketsCopy na_firstObjectPassingTest:?];
  v7 = v6;
  if (v6)
  {
    lastObject = v6;
  }

  else
  {
    lastObject = [bucketsCopy lastObject];
  }

  v9 = lastObject;

  integerValue = [v9 integerValue];
  return integerValue;
}

+ (void)sendEventsForFragmentResult:(id)result
{
  resultCopy = result;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  configuration = [resultCopy configuration];
  activityZones = [configuration activityZones];

  if ([activityZones count])
  {
    v7 = [activityZones objectAtIndexedSubscript:?];
    isInclusion = [v7 isInclusion];

    if (isInclusion)
    {
      v9 = @"inclusion";
    }

    else
    {
      v9 = @"exclusion";
    }
  }

  else
  {
    v9 = @"None";
  }

  frameResults = [resultCopy frameResults];
  [frameResults na_each:?];

  if (v12[6] >= 1)
  {
    [self sendEventWithName:? payloadBuilder:?];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v15, 8);
}

void __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke_2;
  v7 = &unk_278754AB8;
  v8 = *(a1 + 32);
  [v3 na_each:{MEMORY[0x277D85DD0], 3221225472}];
}

void __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    [v5 motionScore];
    *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

id __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke_3(void *a1, double a2)
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v2;
}

+ (void)videoAnalyzerDidTerminateWithError:(id)error state:(id)state
{
  errorCopy = error;
  stateCopy = state;
  v10 = MEMORY[0x277D85DD0];
  v11 = stateCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = stateCopy;
  [self sendEventWithName:v10 payloadBuilder:{3221225472, __57__HMIAnalytics_videoAnalyzerDidTerminateWithError_state___block_invoke, &unk_278754B30}];
}

id __57__HMIAnalytics_videoAnalyzerDidTerminateWithError_state___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 camera];

  if (v4)
  {
    v5 = [HMIAnalytics payloadWithCamera:?];
    [v2 addEntriesFromDictionary:?];
  }

  [v2 setObject:? forKeyedSubscript:?];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = HMIErrorCodeName([v6 code]);
    [v2 setObject:? forKeyedSubscript:?];

    v8 = [*(a1 + 40) userInfo];
    v9 = [v8 objectForKeyedSubscript:?];

    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(v9, "code")];
      [v2 setObject:? forKeyedSubscript:?];
    }
  }

  v11 = MEMORY[0x277CCABB0];
  [*(a1 + 32) timeSinceAnalyzerStarted];
  v12 = [v11 numberWithDouble:?];
  [v2 setObject:? forKeyedSubscript:?];

  v13 = MEMORY[0x277CCABB0];
  [*(a1 + 32) averageAnalysisTime];
  v14 = [v13 numberWithDouble:?];
  [v2 setObject:? forKeyedSubscript:?];

  v15 = MEMORY[0x277CCABB0];
  [*(a1 + 32) delay];
  v16 = [v15 numberWithDouble:?];
  [v2 setObject:? forKeyedSubscript:?];

  return v2;
}

+ (void)videoAnalyzerDidCreateTimelapseFragment:(id)fragment state:(id)state
{
  fragmentCopy = fragment;
  stateCopy = state;
  v10 = MEMORY[0x277D85DD0];
  v11 = stateCopy;
  v12 = fragmentCopy;
  v8 = fragmentCopy;
  v9 = stateCopy;
  [self sendEventWithName:v10 payloadBuilder:{3221225472, __62__HMIAnalytics_videoAnalyzerDidCreateTimelapseFragment_state___block_invoke, &unk_278754B30}];
}

id __62__HMIAnalytics_videoAnalyzerDidCreateTimelapseFragment_state___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 camera];

  if (v4)
  {
    v5 = [HMIAnalytics payloadWithCamera:?];
    [v2 addEntriesFromDictionary:?];
  }

  if (*(a1 + 40))
  {
    [&time duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  if (CMTimeGetSeconds(&time))
  {
    v6 = [*(a1 + 40) separableSegment];
    [v6 length];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v2 setObject:? forKeyedSubscript:?];
  }

  return v2;
}

+ (void)videoAnalyzerDidAnalyzeFragmentWithResult:(id)result state:(id)state
{
  resultCopy = result;
  stateCopy = state;
  v10 = MEMORY[0x277D85DD0];
  v11 = stateCopy;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = stateCopy;
  [self sendEventWithName:v10 payloadBuilder:{3221225472, __64__HMIAnalytics_videoAnalyzerDidAnalyzeFragmentWithResult_state___block_invoke, &unk_278754B30}];
}

id __64__HMIAnalytics_videoAnalyzerDidAnalyzeFragmentWithResult_state___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 camera];

  if (v4)
  {
    v5 = [HMIAnalytics payloadWithCamera:?];
    [v2 addEntriesFromDictionary:?];
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) dynamicConfiguration];
  [v7 recognizeFaces];
  v8 = [v6 numberWithBool:?];
  [v2 setObject:? forKeyedSubscript:?];

  v9 = [*(a1 + 32) dynamicConfiguration];
  v10 = [v9 eventTriggers];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __64__HMIAnalytics_videoAnalyzerDidAnalyzeFragmentWithResult_state___block_invoke_2;
  v39[3] = &unk_278754B58;
  v11 = v2;
  v40 = v11;
  v42 = v10;
  v41 = *(a1 + 40);
  v12 = MEMORY[0x2318CB8E0](v39);
  v13 = objc_opt_class();
  (v12)[2](v12, @"motion", 1, v13);
  v14 = objc_opt_class();
  (v12)[2](v12, @"pet", 4, v14);
  v15 = objc_opt_class();
  (v12)[2](v12, @"person", 2, v15);
  v16 = objc_opt_class();
  (v12)[2](v12, @"vehicle", 8, v16);
  v17 = objc_opt_class();
  (v12)[2](v12, @"package", 16, v17);
  v18 = MEMORY[0x277CCABB0];
  v19 = [*(a1 + 32) configuration];
  [v19 transcode];
  v20 = [v18 numberWithBool:?];
  [v11 setObject:? forKeyedSubscript:?];

  v21 = MEMORY[0x277CCABB0];
  [*(a1 + 32) analysisFPS];
  v22 = [v21 numberWithDouble:?];
  [v11 setObject:? forKeyedSubscript:?];

  v23 = MEMORY[0x277CCABB0];
  v24 = [*(a1 + 40) fragment];
  [v24 sequenceNumber];
  [HMIAnalytics bucketForValue:"bucketForValue:usingBuckets:" usingBuckets:?];
  v25 = [v23 numberWithInteger:?];
  [v11 setObject:? forKeyedSubscript:?];

  v26 = MEMORY[0x277CCABB0];
  v27 = [*(a1 + 40) outcome];
  [v27 code];
  v28 = [v26 numberWithUnsignedInteger:?];
  [v11 setObject:? forKeyedSubscript:?];

  v29 = MEMORY[0x277CCABB0];
  [*(a1 + 32) activeAnalyzerCount];
  v30 = [v29 numberWithUnsignedInteger:?];
  [v11 setObject:? forKeyedSubscript:?];

  v31 = MEMORY[0x277CCABB0];
  [*(a1 + 32) systemResourceUsageLevel];
  v32 = [v31 numberWithInteger:?];
  [v11 setObject:? forKeyedSubscript:?];

  v33 = MEMORY[0x277CCABB0];
  [*(a1 + 32) thermalLevel];
  v34 = [v33 numberWithUnsignedInteger:?];
  [v11 setObject:? forKeyedSubscript:?];

  v35 = MEMORY[0x277CCABB0];
  [*(a1 + 32) isThermalAndSystemResourceUsageLevelIgnored];
  v36 = [v35 numberWithBool:?];
  [v11 setObject:? forKeyedSubscript:?];

  v37 = v11;
  return v11;
}

void __64__HMIAnalytics_videoAnalyzerDidAnalyzeFragmentWithResult_state___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = a2;
  v8 = [v6 stringWithFormat:v7];
  [v5 setObject:? forKeyedSubscript:?];

  v9 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 40) maxConfidenceEventForEventClass:?];
  v10 = [v9 numberWithInt:?];
  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:v7];

  [v11 setObject:? forKeyedSubscript:?];
}

+ (void)videoPackageAnalyzerDidClassifyCandidateAsPackage:(BOOL)package camera:(id)camera
{
  cameraCopy = camera;
  v8 = MEMORY[0x277D85DD0];
  v9 = cameraCopy;
  packageCopy = package;
  v7 = cameraCopy;
  [self sendEventWithName:v8 payloadBuilder:{3221225472, __73__HMIAnalytics_videoPackageAnalyzerDidClassifyCandidateAsPackage_camera___block_invoke, &unk_278754B80}];
}

id __73__HMIAnalytics_videoPackageAnalyzerDidClassifyCandidateAsPackage_camera___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a1 + 32))
  {
    v3 = [HMIAnalytics payloadWithCamera:?];
    [v2 addEntriesFromDictionary:?];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [v2 setObject:? forKeyedSubscript:?];

  return v2;
}

+ (void)videoPackageAnalyzerDidResetReferenceImageWithInterval:(double)interval camera:(id)camera
{
  cameraCopy = camera;
  v7 = MEMORY[0x277D85DD0];
  v8 = cameraCopy;
  v6 = cameraCopy;
  [self sendEventWithName:v7 payloadBuilder:{3221225472, __78__HMIAnalytics_videoPackageAnalyzerDidResetReferenceImageWithInterval_camera___block_invoke, &unk_278754BA8}];
}

id __78__HMIAnalytics_videoPackageAnalyzerDidResetReferenceImageWithInterval_camera___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a1 + 32))
  {
    v3 = [HMIAnalytics payloadWithCamera:?];
    [v2 addEntriesFromDictionary:?];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v2 setObject:? forKeyedSubscript:?];

  return v2;
}

@end