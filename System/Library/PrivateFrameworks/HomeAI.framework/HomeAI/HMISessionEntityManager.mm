@interface HMISessionEntityManager
+ (id)updatePersonEventWithPersonEvent:(id)event sessionEntityUUID:(id)d predictedLinkedEntityUUIDs:(id)ds sessionEntityAssignment:(int64_t)assignment;
- (HMISessionEntityManager)init;
- (id)assignSessionEntitiesToPersonEvents:(id)events regionOfInterest:(CGRect)interest timeStamp:(id *)stamp homeUUID:(id)d;
- (id)assignSessionEntityToFaceRecognition:(id)recognition torsoRecognition:(id)torsoRecognition predictedLinkedEntityUUIDs:(id)ds availableSessionEntityUUIDs:(id)iDs sessionEntityAssignment:(int64_t *)assignment;
- (id)clusterSessionEntityToFaceRecognition:(id)recognition torsoRecognition:(id)torsoRecognition predictedLinkedEntityUUIDs:(id)ds availableSessionEntityUUIDs:(id)iDs sessionEntityAssignment:(int64_t *)assignment;
- (id)updateTorsoModelAndGetTorsoAnnotationsForHome:(id)home;
- (void)createSessionEntityWithUUID:(id)d faceRecognition:(id)recognition torsoRecognition:(id)torsoRecognition predictedLinkedEntityUUIDs:(id)ds sessionEntityAssignment:(int64_t *)assignment;
- (void)submitTorsoprintsToModelManagerForHome:(id)home withTorsoAnnotations:(id)annotations;
- (void)updatePreviousPrintsForSessionEntityUUID:(id)d faceRecognition:(id)recognition torsoRecognition:(id)torsoRecognition;
@end

@implementation HMISessionEntityManager

- (HMISessionEntityManager)init
{
  v15.receiver = self;
  v15.super_class = HMISessionEntityManager;
  v2 = [(HMISessionEntityManager *)&v15 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessionEntities = v2->_sessionEntities;
    v2->_sessionEntities = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    sessionUUIDToPreviousFaceprints = v2->_sessionUUIDToPreviousFaceprints;
    v2->_sessionUUIDToPreviousFaceprints = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    sessionUUIDToPreviousTorsoprints = v2->_sessionUUIDToPreviousTorsoprints;
    v2->_sessionUUIDToPreviousTorsoprints = dictionary3;

    v9 = objc_alloc_init(HMIPersonTracker);
    personTracker = v2->_personTracker;
    v2->_personTracker = v9;

    v11 = +[HMIPreference sharedInstance];
    v12 = [v11 numberPreferenceForKey:? defaultValue:?];
    [v12 doubleValue];
    v2->_faceVIPThresholdForTorsoAnnotation = v13;
  }

  return v2;
}

- (void)submitTorsoprintsToModelManagerForHome:(id)home withTorsoAnnotations:(id)annotations
{
  v16 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  annotationsCopy = annotations;
  if ([annotationsCopy count])
  {
    v8 = +[HMIPersonsModelManager sharedInstance];
    v13 = 0;
    [v8 updateTorsoModelForHome:? torsoAnnotations:? error:?];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v12;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@No torso annotations -- skipping torso model update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (id)assignSessionEntitiesToPersonEvents:(id)events regionOfInterest:(CGRect)interest timeStamp:(id *)stamp homeUUID:(id)d
{
  v7 = MEMORY[0x277CBEB58];
  eventsCopy = events;
  sessionEntities = [(HMISessionEntityManager *)self sessionEntities];
  allKeys = [sessionEntities allKeys];
  v11 = [v7 setWithArray:?];

  v12 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
  v22 = v11;
  v23 = v12;
  v13 = v11;
  v14 = array;
  [eventsCopy na_each:?];

  personTracker = self->_personTracker;
  v16 = [v14 copy];
  allObjects = [v23 allObjects];
  [HMIPersonTracker trackNewPersons:"trackNewPersons:knownPersons:regionOfInterest:timeStamp:" knownPersons:? regionOfInterest:? timeStamp:?];

  v18 = v23;
  [v14 enumerateObjectsUsingBlock:?];
  [v18 na_each:?];
  v19 = [v18 copy];

  return v19;
}

void __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke(id *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 face];
  if (v4)
  {
    v5 = [v3 face];
    v6 = [v5 faceRecognition];
    if (v6)
    {
      v7 = [v3 face];
      v8 = [v7 faceRecognition];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 torso];
  v10 = [v9 torsoRecognition];
  v11 = [v10 torsoprint];
  if ([v11 unrecognizable])
  {
    v12 = 0;
  }

  else
  {
    v13 = [v3 torso];
    v12 = [v13 torsoRecognition];
  }

  if (v8 | v12)
  {
    v14 = [MEMORY[0x277CBEB98] set];
    if (v8)
    {
      v15 = [v8 predictedLinkedEntityUUIDs];

      if (v15)
      {
        v16 = [v8 predictedLinkedEntityUUIDs];

        v14 = v16;
      }

      v17 = [a1[5] assignSessionEntityToFaceRecognition:? torsoRecognition:? predictedLinkedEntityUUIDs:? availableSessionEntityUUIDs:? sessionEntityAssignment:?];
      if (!v17)
      {
        v17 = [a1[5] clusterSessionEntityToFaceRecognition:? torsoRecognition:? predictedLinkedEntityUUIDs:? availableSessionEntityUUIDs:? sessionEntityAssignment:?];
      }

      if (v17 && v12)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = a1[5];
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v21;
          v43 = 2112;
          v44 = v17;
          _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Adding torso to existing sessionEntityUUID: %@ (face)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v22 = [a1[5] sessionEntities];
        v23 = [v22 objectForKeyedSubscript:?];
        v40 = [v12 torsoprint];
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        [v23 addTorsoprints:?];
      }

      v25 = [v8 predictedLinkedEntityUUIDs];
      v26 = [v25 hmf_isEmpty] ^ 1;

      if (!v17 && v26 && v12)
      {
        v27 = [a1[5] clusterSessionEntityToFaceRecognition:? torsoRecognition:? predictedLinkedEntityUUIDs:? availableSessionEntityUUIDs:? sessionEntityAssignment:?];
        if (v27)
        {
          v17 = v27;
          v28 = objc_autoreleasePoolPush();
          v29 = a1[5];
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543618;
            v42 = v31;
            v43 = 2112;
            v44 = v17;
            _os_log_impl(&dword_22D12F000, v30, OS_LOG_TYPE_INFO, "%{public}@Adding face to existing sessionEntityUUID: %@ (torso)", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v32 = [a1[5] sessionEntities];
          v33 = [v32 objectForKeyedSubscript:?];
          v39 = [v8 faceprint];
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
          [v33 addFaceprints:?];

          goto LABEL_39;
        }

LABEL_40:
        [a1[4] addObject:?];
        goto LABEL_41;
      }
    }

    else
    {
      LOBYTE(v26) = 0;
      v17 = 0;
    }

    if ((v26 & 1) == 0 && v12 && !v17)
    {
      v35 = [v12 predictedLinkedEntityUUIDs];

      if (v35)
      {
        v36 = [v12 predictedLinkedEntityUUIDs];

        v14 = v36;
      }

      v37 = [a1[5] assignSessionEntityToFaceRecognition:? torsoRecognition:? predictedLinkedEntityUUIDs:? availableSessionEntityUUIDs:? sessionEntityAssignment:?];
      if (v37)
      {
        v17 = v37;
        goto LABEL_39;
      }

      v17 = [a1[5] clusterSessionEntityToFaceRecognition:? torsoRecognition:? predictedLinkedEntityUUIDs:? availableSessionEntityUUIDs:? sessionEntityAssignment:?];
    }

    if (!v17)
    {
      goto LABEL_40;
    }

LABEL_39:
    [a1[6] removeObject:?];
    v38 = [HMISessionEntityManager updatePersonEventWithPersonEvent:"updatePersonEventWithPersonEvent:sessionEntityUUID:predictedLinkedEntityUUIDs:sessionEntityAssignment:" sessionEntityUUID:? predictedLinkedEntityUUIDs:? sessionEntityAssignment:?];
    [a1[7] addObject:?];

LABEL_41:
    goto LABEL_42;
  }

  [a1[4] addObject:?];
LABEL_42:
}

void __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_157(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 sessionEntityUUID];

  if (!v5)
  {
    [*(a1 + 32) addObject:?];
    goto LABEL_16;
  }

  v6 = [*(*(a1 + 40) + 24) getBlobIDAtIndex:?];
  v7 = [v4 torso];
  v8 = [v7 torsoRecognition];
  v9 = [v8 torsoprint];
  if ([v9 unrecognizable])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v4 torso];
    v10 = [v11 torsoRecognition];
  }

  v12 = [MEMORY[0x277CBEB98] set];
  v13 = [v4 face];
  v14 = [v13 faceRecognition];
  v15 = [v14 predictedLinkedEntityUUIDs];
  v16 = [v15 hmf_isEmpty];

  if ((v16 & 1) == 0)
  {
    v20 = [v4 face];
    v21 = [v20 faceRecognition];
    v19 = [v21 predictedLinkedEntityUUIDs];

    v12 = v20;
    goto LABEL_10;
  }

  v17 = [v10 predictedLinkedEntityUUIDs];
  v18 = [v17 hmf_isEmpty];

  if ((v18 & 1) == 0)
  {
    v19 = [v10 predictedLinkedEntityUUIDs];
LABEL_10:

    v12 = v19;
  }

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v22 = [v4 face];
  v23 = [v22 faceRecognition];
  v24 = v23 | v10;

  if (v24)
  {
    v25 = *(a1 + 40);
    v26 = [v4 face];
    v27 = [v26 faceRecognition];
    [v25 createSessionEntityWithUUID:? faceRecognition:? torsoRecognition:? predictedLinkedEntityUUIDs:? sessionEntityAssignment:?];
  }

  v28 = [HMISessionEntityManager updatePersonEventWithPersonEvent:"updatePersonEventWithPersonEvent:sessionEntityUUID:predictedLinkedEntityUUIDs:sessionEntityAssignment:" sessionEntityUUID:? predictedLinkedEntityUUIDs:? sessionEntityAssignment:?];
  [*(a1 + 32) addObject:?];

LABEL_16:
}

void __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sessionEntityUUID];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 face];
    v7 = [v6 faceRecognition];
    v8 = [v3 torso];
    v9 = [v8 torsoRecognition];
    [v5 updatePreviousPrintsForSessionEntityUUID:? faceRecognition:? torsoRecognition:?];

    v10 = [v3 face];
    v11 = [v10 faceRecognition];

    if (v11)
    {
      v12 = [v11 predictedLinkedEntityUUIDs];
      v13 = [v12 hmf_isEmpty] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(a1 + 32) sessionEntities];
    v15 = [v14 objectForKeyedSubscript:?];

    if (v13)
    {
      v16 = [v15 faceRecognition];

      if (v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v20;
          v38 = 2112;
          v39 = v4;
          _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_INFO, "%{public}@Session entity %@ already has a face recognition, skipping subsequent match", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = objc_autoreleasePoolPush();
        v22 = *(a1 + 32);
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [v15 faceRecognition];
          *buf = 138543618;
          v37 = v24;
          v38 = 2112;
          v39 = v25;
          _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Existing face classification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v26 = objc_autoreleasePoolPush();
        v27 = *(a1 + 32);
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v29;
          v38 = 2112;
          v39 = v11;
          _os_log_impl(&dword_22D12F000, v28, OS_LOG_TYPE_DEBUG, "%{public}@New face classification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }

      else
      {
        v30 = [v11 classifications];
        v31 = [v30 na_any:?];

        if (v31)
        {
          v32 = objc_autoreleasePoolPush();
          v33 = *(a1 + 32);
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543874;
            v37 = v35;
            v38 = 2112;
            v39 = v4;
            v40 = 2112;
            v41 = v11;
            _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Assigning session entity %@ the face classification: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v32);
          [v15 setFaceRecognition:?];
        }
      }
    }
  }
}

BOOL __99__HMISessionEntityManager_assignSessionEntitiesToPersonEvents_regionOfInterest_timeStamp_homeUUID___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 confidence];
  v5 = v4;
  [*(a1 + 32) faceVIPThresholdForTorsoAnnotation];
  v7 = v5 >= v6 && [v3 familiarity] == 2;

  return v7;
}

- (id)updateTorsoModelAndGetTorsoAnnotationsForHome:(id)home
{
  v20 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = homeCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@updateTorsoModelAndGetTorsoAnnotationsForHome: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  array = [MEMORY[0x277CBEB18] array];
  sessionEntities = [(HMISessionEntityManager *)selfCopy sessionEntities];
  v15 = MEMORY[0x277D85DD0];
  v11 = array;
  [sessionEntities na_each:{v15, 3221225472, __73__HMISessionEntityManager_updateTorsoModelAndGetTorsoAnnotationsForHome___block_invoke, &unk_2787544C0, selfCopy}];

  if (([v11 hmf_isEmpty] & 1) == 0)
  {
    v12 = [v11 copy];
    [HMISessionEntityManager submitTorsoprintsToModelManagerForHome:selfCopy withTorsoAnnotations:"submitTorsoprintsToModelManagerForHome:withTorsoAnnotations:"];
  }

  v13 = [v11 copy];

  return v13;
}

void __73__HMISessionEntityManager_updateTorsoModelAndGetTorsoAnnotationsForHome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 faceRecognition];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 torsoprints];
    v10 = [v9 hmf_isEmpty];

    if ((v10 & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v6 torsoprints];
        v20 = 138543618;
        v21 = v14;
        v22 = 2048;
        v23 = [v15 count];
        _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating torso annotation with %lu torsoprints", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [HMITorsoAnnotation alloc];
      v17 = [v6 faceRecognition];
      v18 = [v6 torsoprints];
      v19 = [HMITorsoAnnotation initWithFaceRecognition:v16 torsoprints:"initWithFaceRecognition:torsoprints:"];

      [*(a1 + 40) addObject:?];
      [v6 flushTorsoprints];
    }
  }
}

- (id)assignSessionEntityToFaceRecognition:(id)recognition torsoRecognition:(id)torsoRecognition predictedLinkedEntityUUIDs:(id)ds availableSessionEntityUUIDs:(id)iDs sessionEntityAssignment:(int64_t *)assignment
{
  v70 = *MEMORY[0x277D85DE8];
  recognitionCopy = recognition;
  torsoRecognitionCopy = torsoRecognition;
  dsCopy = ds;
  iDsCopy = iDs;
  if (!(recognitionCopy | torsoRecognitionCopy))
  {
    [HMISessionEntityManager assignSessionEntityToFaceRecognition:torsoRecognition:predictedLinkedEntityUUIDs:availableSessionEntityUUIDs:sessionEntityAssignment:];
    __break(1u);
  }

  assignmentCopy = assignment;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__5;
  v62 = __Block_byref_object_dispose__5;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__5;
  v56 = __Block_byref_object_dispose__5;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 2139095039;
  v16 = iDsCopy;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  selfCopy = self;
  v17 = dsCopy;
  v18 = recognitionCopy;
  v19 = torsoRecognitionCopy;
  [v16 na_each:?];
  v20 = v59[5];
  if (v20)
  {
    if (*(v45 + 24))
    {
      v21 = &kHMIPersonTrackerFaceDistanceMinThreshold;
    }

    else
    {
      v21 = &kHMIPersonTrackerTorsoDistanceMinThreshold;
    }

    if (v49[6] < *v21)
    {
      if (recognitionCopy)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v26 = v59[5];
          *buf = 138543618;
          v67 = v25;
          v68 = 2112;
          v69 = v26;
          _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Adding face to existing sessionEntityUUID: %@ (VIP)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v27 = v53[5];
        faceprint = [v18 faceprint];
        v65 = faceprint;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        [v27 addFaceprints:?];
      }

      if (torsoRecognitionCopy)
      {
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v34 = v59[5];
          *buf = 138543618;
          v67 = v33;
          v68 = 2112;
          v69 = v34;
          _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_INFO, "%{public}@Adding torso to existing sessionEntityUUID: %@ (VIP)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        v35 = v53[5];
        torsoprint = [v19 torsoprint];
        v64 = torsoprint;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        [v35 addTorsoprints:?];
      }
    }

    v38 = v53[5];
    allObjects = [v17 allObjects];
    [v38 addLinkedEntityUUIDs:?];

    *assignmentCopy = 1;
    v20 = v59[5];
  }

  v40 = v20;

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v58, 8);

  return v40;
}

void __160__HMISessionEntityManager_assignSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v4 = [*(a1 + 32) sessionEntities];
  v5 = [v4 objectForKeyedSubscript:?];

  v6 = *(a1 + 40);
  v7 = [v5 linkedEntityUUIDs];
  LODWORD(v6) = [v6 intersectsSet:?];

  if (v6)
  {
    if (*(a1 + 48) && [v5 faceCount])
    {
      v8 = [*(a1 + 48) faceprint];
      v9 = [v8 data];
      v10 = [v5 faceCentroid];
      v11 = [v10 data];
      [HMIGreedyClustering faceDistanceFromDescriptor:"faceDistanceFromDescriptor:toDescriptor:" toDescriptor:?];
      v13 = v12;
    }

    else
    {
      v13 = 3.4028e38;
    }

    if (*(a1 + 56) && [v5 torsoCount])
    {
      v14 = [*(a1 + 56) torsoprint];
      v15 = [v14 data];
      v16 = [v5 torsoCentroid];
      v17 = [v16 data];
      [HMIGreedyClustering faceDistanceFromDescriptor:"faceDistanceFromDescriptor:toDescriptor:" toDescriptor:?];
      v19 = v18;
    }

    else
    {
      v19 = 3.4028e38;
    }

    v20 = v13 >= v19 ? v19 : v13;
    if (v20 < *(*(*(a1 + 64) + 8) + 24))
    {
      *(*(*(a1 + 72) + 8) + 24) = v13 <= v19;
      *(*(*(a1 + 64) + 8) + 24) = v20;
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), a2);
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), v5);
    }
  }
}

- (id)clusterSessionEntityToFaceRecognition:(id)recognition torsoRecognition:(id)torsoRecognition predictedLinkedEntityUUIDs:(id)ds availableSessionEntityUUIDs:(id)iDs sessionEntityAssignment:(int64_t *)assignment
{
  v57 = *MEMORY[0x277D85DE8];
  recognitionCopy = recognition;
  torsoRecognitionCopy = torsoRecognition;
  dsCopy = ds;
  iDsCopy = iDs;
  if (!(recognitionCopy | torsoRecognitionCopy))
  {
    [HMISessionEntityManager assignSessionEntityToFaceRecognition:torsoRecognition:predictedLinkedEntityUUIDs:availableSessionEntityUUIDs:sessionEntityAssignment:];
    __break(1u);
  }

  v15 = iDsCopy;
  v48 = 0;
  v49[0] = &v48;
  v49[1] = 0x3032000000;
  v49[2] = __Block_byref_object_copy__5;
  v49[3] = __Block_byref_object_dispose__5;
  v50 = 0;
  v45 = 0;
  v46[0] = &v45;
  v46[1] = 0x3032000000;
  v46[2] = __Block_byref_object_copy__5;
  v46[3] = __Block_byref_object_dispose__5;
  v47 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 2139095039;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 2139095039;
  v16 = recognitionCopy;
  v17 = torsoRecognitionCopy;
  [v15 na_each:?];
  if (v42[6] >= 0.17)
  {
    if (v38[6] >= 0.15)
    {
      v19 = 0;
      goto LABEL_17;
    }

    v18 = v46;
  }

  else
  {
    v18 = v49;
  }

  *assignment = 3;
  v19 = *(*v18 + 40);
  if (v19)
  {
    sessionEntities = [(HMISessionEntityManager *)self sessionEntities];
    v21 = [sessionEntities objectForKeyedSubscript:?];

    if (recognitionCopy)
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v24;
        v55 = 2112;
        v56 = v19;
        _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_INFO, "%{public}@Adding face to existing sessionEntityUUID: %@ (NN)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      faceprint = [v16 faceprint];
      v52 = faceprint;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      [v21 addFaceprints:?];
    }

    if (torsoRecognitionCopy)
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v30;
        v55 = 2112;
        v56 = v19;
        _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_INFO, "%{public}@Adding torso to existing sessionEntityUUID: %@ (NN)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      torsoprint = [v17 torsoprint];
      v51 = torsoprint;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      [v21 addTorsoprints:?];
    }

    allObjects = [dsCopy allObjects];
    [v21 addLinkedEntityUUIDs:?];
  }

LABEL_17:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v48, 8);

  return v19;
}

void __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:?];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_2;
    v16 = &unk_278754510;
    v17 = *(a1 + 32);
    v19 = *(a1 + 56);
    v18 = v3;
    [v4 na_each:?];
  }

  if (*(a1 + 48))
  {
    v5 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:?];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_3;
    v9 = &unk_278754538;
    v10 = *(a1 + 48);
    v12 = *(a1 + 72);
    v11 = v3;
    [v5 na_each:{v6, 3221225472, __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_3, &unk_278754538}];
  }
}

void __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 faceprint];
  v6 = [v5 data];
  v7 = [v4 data];

  [HMIGreedyClustering faceDistanceFromDescriptor:"faceDistanceFromDescriptor:toDescriptor:" toDescriptor:?];
  v9 = v8;

  v10 = *(a1[6] + 8);
  if (v9 < *(v10 + 24))
  {
    *(v10 + 24) = v9;
    v11 = a1[5];
    v12 = (*(a1[7] + 8) + 40);

    objc_storeStrong(v12, v11);
  }
}

void __161__HMISessionEntityManager_clusterSessionEntityToFaceRecognition_torsoRecognition_predictedLinkedEntityUUIDs_availableSessionEntityUUIDs_sessionEntityAssignment___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 torsoprint];
  v6 = [v5 data];
  v7 = [v4 data];

  [HMIGreedyClustering faceDistanceFromDescriptor:"faceDistanceFromDescriptor:toDescriptor:" toDescriptor:?];
  v9 = v8;

  v10 = *(a1[6] + 8);
  if (v9 < *(v10 + 24))
  {
    *(v10 + 24) = v9;
    v11 = a1[5];
    v12 = (*(a1[7] + 8) + 40);

    objc_storeStrong(v12, v11);
  }
}

- (void)createSessionEntityWithUUID:(id)d faceRecognition:(id)recognition torsoRecognition:(id)torsoRecognition predictedLinkedEntityUUIDs:(id)ds sessionEntityAssignment:(int64_t *)assignment
{
  v59 = *MEMORY[0x277D85DE8];
  dCopy = d;
  recognitionCopy = recognition;
  torsoRecognitionCopy = torsoRecognition;
  dsCopy = ds;
  if (!(recognitionCopy | torsoRecognitionCopy))
  {
    [HMISessionEntityManager assignSessionEntityToFaceRecognition:torsoRecognition:predictedLinkedEntityUUIDs:availableSessionEntityUUIDs:sessionEntityAssignment:];
  }

  v16 = dsCopy;
  sessionEntities = [(HMISessionEntityManager *)self sessionEntities];
  v18 = [sessionEntities objectForKeyedSubscript:?];

  if (!v18)
  {
    *assignment = 5;
    sessionEntities2 = [(HMISessionEntityManager *)self sessionEntities];
    v31 = [sessionEntities2 count];

    if (v31 > 0x3B)
    {
      goto LABEL_26;
    }

    if (recognitionCopy)
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v35;
        v57 = 2112;
        v58 = dCopy;
        _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Adding new face sessionEntityUUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v36 = [HMIMutableCluster alloc];
      faceprint = [recognitionCopy faceprint];
      v38 = [(HMIMutableCluster *)v36 initWithFaceprint:?];

      if (!torsoRecognitionCopy)
      {
        goto LABEL_25;
      }

      v52 = v16;
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v42;
        v57 = 2112;
        v58 = dCopy;
        _os_log_impl(&dword_22D12F000, v41, OS_LOG_TYPE_INFO, "%{public}@Adding new torso sessionEntityUUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      torsoprint = [torsoRecognitionCopy torsoprint];
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      [(HMIMutableCluster *)v38 addTorsoprints:?];

      v16 = v52;
    }

    else
    {
      if (!torsoRecognitionCopy)
      {
        v38 = 0;
        goto LABEL_25;
      }

      v45 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v48;
        v57 = 2112;
        v58 = dCopy;
        _os_log_impl(&dword_22D12F000, v47, OS_LOG_TYPE_INFO, "%{public}@Adding new torso sessionEntityUUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v45);
      v49 = [HMIMutableCluster alloc];
      torsoprint = [torsoRecognitionCopy torsoprint];
      v38 = [(HMIMutableCluster *)v49 initWithTorsoprint:?];
    }

LABEL_25:
    allObjects = [v16 allObjects];
    [(HMIMutableCluster *)v38 addLinkedEntityUUIDs:?];

    sessionEntities3 = [(HMISessionEntityManager *)self sessionEntities];
    [sessionEntities3 setObject:? forKeyedSubscript:?];

    goto LABEL_26;
  }

  if (recognitionCopy)
  {
    v52 = v16;
    v19 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v22;
      v57 = 2112;
      v58 = dCopy;
      _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_INFO, "%{public}@Adding face to existing sessionEntityUUID: %@ (track)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    faceprint2 = [recognitionCopy faceprint];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [v18 addFaceprints:?];

    v16 = v52;
  }

  if (torsoRecognitionCopy)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v27;
      v57 = 2112;
      v58 = dCopy;
      _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_INFO, "%{public}@Adding torso to existing sessionEntityUUID: %@ (track)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    torsoprint2 = [torsoRecognitionCopy torsoprint];
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [v18 addTorsoprints:?];
  }

  allObjects2 = [v16 allObjects];
  [v18 addLinkedEntityUUIDs:?];

  *assignment = 2;
LABEL_26:
}

- (void)updatePreviousPrintsForSessionEntityUUID:(id)d faceRecognition:(id)recognition torsoRecognition:(id)torsoRecognition
{
  dCopy = d;
  recognitionCopy = recognition;
  torsoRecognitionCopy = torsoRecognition;
  if (recognitionCopy)
  {
    v10 = [(NSMutableDictionary *)self->_sessionUUIDToPreviousFaceprints objectForKeyedSubscript:?];
    if (v10)
    {
      array = v10;
      if ([v10 count] == 5)
      {
        [array removeObjectAtIndex:?];
      }
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    faceprint = [recognitionCopy faceprint];
    [array addObject:?];
  }

  if (torsoRecognitionCopy)
  {
    v13 = [(NSMutableDictionary *)self->_sessionUUIDToPreviousTorsoprints objectForKeyedSubscript:?];
    if (v13)
    {
      array2 = v13;
      if ([v13 count] == 5)
      {
        [array2 removeObjectAtIndex:?];
      }
    }

    else
    {
      array2 = [MEMORY[0x277CBEB18] array];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    torsoprint = [torsoRecognitionCopy torsoprint];
    [array2 addObject:?];
  }
}

+ (id)updatePersonEventWithPersonEvent:(id)event sessionEntityUUID:(id)d predictedLinkedEntityUUIDs:(id)ds sessionEntityAssignment:(int64_t)assignment
{
  eventCopy = event;
  dCopy = d;
  dsCopy = ds;
  face = [eventCopy face];
  face2 = [eventCopy face];
  if (face2)
  {
    v13 = face2;
    face3 = [eventCopy face];
    faceRecognition = [face3 faceRecognition];

    if (faceRecognition)
    {
      face4 = [eventCopy face];
      faceRecognition2 = [face4 faceRecognition];

      classifications = [faceRecognition2 classifications];
      v70 = dCopy;
      v65 = [classifications na_map:?];

      v19 = [HMIFaceRecognition alloc];
      v66 = faceRecognition2;
      faceCrop = [faceRecognition2 faceCrop];
      [faceRecognition2 faceprint];
      v21 = v68 = face;
      [faceRecognition2 faceQualityScore];
      v62 = [HMIFaceRecognition initWithFaceCrop:v19 faceprint:"initWithFaceCrop:faceprint:classifications:predictedLinkedEntityUUIDs:faceQualityScore:sessionEntityAssignment:sessionEntityUUID:" classifications:? predictedLinkedEntityUUIDs:? faceQualityScore:? sessionEntityAssignment:? sessionEntityUUID:?];

      v60 = [HMIVideoAnalyzerEventFace alloc];
      face5 = [eventCopy face];
      confidence = [face5 confidence];
      face6 = [eventCopy face];
      [face6 boundingBox];
      face7 = [eventCopy face];
      v23 = [face7 yaw];
      face8 = [eventCopy face];
      [face8 roll];
      v26 = v25 = dsCopy;
      face9 = [eventCopy face];
      userInfo = [face9 userInfo];
      v61 = [HMIVideoAnalyzerEventFace initWithConfidence:v60 boundingBox:"initWithConfidence:boundingBox:yaw:roll:faceRecognition:torsoAnnotation:userInfo:" yaw:? roll:? faceRecognition:? torsoAnnotation:? userInfo:?];

      dsCopy = v25;
      face = v61;
    }
  }

  torso = [eventCopy torso];
  torso2 = [eventCopy torso];
  if (torso2)
  {
    v31 = torso2;
    torso3 = [eventCopy torso];
    torsoRecognition = [torso3 torsoRecognition];

    if (torsoRecognition)
    {
      v67 = dsCopy;
      v69 = face;
      torso4 = [eventCopy torso];
      torsoRecognition2 = [torso4 torsoRecognition];
      torsoprint = [torsoRecognition2 torsoprint];
      unrecognizable = [torsoprint unrecognizable];

      if (unrecognizable)
      {
        v38 = 0;
      }

      else
      {
        torso5 = [eventCopy torso];
        torsoRecognition3 = [torso5 torsoRecognition];

        v41 = [HMITorsoClassification alloc];
        classification = [torsoRecognition3 classification];
        personUUID = [classification personUUID];
        classification2 = [torsoRecognition3 classification];
        sourceUUID = [classification2 sourceUUID];
        classification3 = [torsoRecognition3 classification];
        [classification3 confidence];
        v47 = [HMITorsoClassification initWithPersonUUID:v41 sourceUUID:"initWithPersonUUID:sourceUUID:confidence:" confidence:?];

        v48 = [HMITorsoRecognition alloc];
        torsoprint2 = [torsoRecognition3 torsoprint];
        v38 = [HMITorsoRecognition initWithTorsoprint:v48 classification:"initWithTorsoprint:classification:predictedLinkedEntityUUIDs:sessionEntityAssignment:sessionEntityUUID:" predictedLinkedEntityUUIDs:? sessionEntityAssignment:? sessionEntityUUID:?];
      }

      v50 = [HMIVideoAnalyzerEventTorso alloc];
      torso6 = [eventCopy torso];
      confidence2 = [torso6 confidence];
      torso7 = [eventCopy torso];
      [torso7 boundingBox];
      torso8 = [eventCopy torso];
      roll = [torso8 roll];
      v56 = [HMIVideoAnalyzerEventTorso initWithConfidence:v50 boundingBox:"initWithConfidence:boundingBox:roll:torsoRecognition:" roll:? torsoRecognition:?];

      torso = v56;
      dsCopy = v67;
      face = v69;
    }
  }

  v57 = [eventCopy copyWithFaceEvent:? torso:?];

  return v57;
}

HMIFaceClassification *__129__HMISessionEntityManager_updatePersonEventWithPersonEvent_sessionEntityUUID_predictedLinkedEntityUUIDs_sessionEntityAssignment___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMIFaceClassification alloc];
  v5 = [v3 personUUID];
  v6 = [v3 sourceUUID];
  v7 = [v3 faceCrop];
  v8 = [v3 faceprint];
  [v3 confidence];
  [v3 fromTorsoClassification];
  v9 = -[HMIFaceClassification initWithUUID:sourceUUID:sessionEntityUUID:faceCrop:faceprint:confidence:fromTorsoClassification:familiarity:](v4, "initWithUUID:sourceUUID:sessionEntityUUID:faceCrop:faceprint:confidence:fromTorsoClassification:familiarity:", [v3 familiarity]);

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);

  return v9;
}

@end