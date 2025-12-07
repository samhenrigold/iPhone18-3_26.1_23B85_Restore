@interface HMDCameraClipAddSignificantEventOperation
+ (id)logCategory;
- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event;
- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event dataSource:(id)source;
- (id)attributeDescriptions;
- (id)modelsToAdd;
- (void)updateMirrorOutputModel:(id)model;
@end

@implementation HMDCameraClipAddSignificantEventOperation

- (id)attributeDescriptions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HMDCameraClipAddSignificantEventOperation;
  attributeDescriptions = [(HMDCameraClipOperation *)&v10 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  significantEvent = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v6 = [v4 initWithName:@"Significant Event" value:significantEvent];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (void)updateMirrorOutputModel:(id)model
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = modelCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  hmbModelID = [v6 hmbModelID];
  significantEvent = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  uUID = [significantEvent UUID];
  v10 = [hmbModelID isEqual:uUID];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Adding assets to significant event model for mirror output: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    significantEvent2 = [(HMDCameraClipAddSignificantEventOperation *)selfCopy significantEvent];
    heroFrameData = [significantEvent2 heroFrameData];

    if (heroFrameData)
    {
      v17 = [objc_alloc(MEMORY[0x277CBC190]) initWithAssetContent:heroFrameData itemTypeHint:@"jpg"];
      [v6 setHeroFrameAsset:v17];
    }

    significantEvent3 = [(HMDCameraClipAddSignificantEventOperation *)selfCopy significantEvent];
    faceCropData = [significantEvent3 faceCropData];

    if (faceCropData)
    {
      v20 = [objc_alloc(MEMORY[0x277CBC190]) initWithAssetContent:faceCropData itemTypeHint:@"jpg"];
      [v6 setFaceCropAsset:v20];
    }
  }
}

- (id)modelsToAdd
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [HMDCameraSignificantEventNotificationModel alloc];
  significantEvent = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  uUID = [significantEvent UUID];
  clipModelID = [(HMDCameraClipOperation *)self clipModelID];
  v8 = [(HMBModel *)v4 initWithModelID:uUID parentModelID:clipModelID];

  significantEvent2 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  dateOfOccurrence = [significantEvent2 dateOfOccurrence];
  [(HMDCameraSignificantEventNotificationModel *)v8 setDateOfOccurrence:dateOfOccurrence];

  v11 = MEMORY[0x277CCABB0];
  significantEvent3 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(significantEvent3, "reason")}];
  [(HMDCameraSignificantEventNotificationModel *)v8 setSignificantEvent:v13];

  v14 = MEMORY[0x277CCABB0];
  significantEvent4 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(significantEvent4, "confidenceLevel")}];
  [(HMDCameraSignificantEventNotificationModel *)v8 setConfidenceLevel:v16];

  v17 = MEMORY[0x277CCABB0];
  significantEvent5 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  [significantEvent5 timeOffsetWithinClip];
  v19 = [v17 numberWithDouble:?];
  [(HMDCameraSignificantEventNotificationModel *)v8 setTimeOffsetWithinClip:v19];

  v20 = objc_alloc(MEMORY[0x277D170A0]);
  clipModelID2 = [(HMDCameraClipOperation *)self clipModelID];
  v22 = [v20 initWithModelID:clipModelID2 action:1];
  [(HMDCameraSignificantEventNotificationModel *)v8 setAssociatedClip:v22];

  v52 = v3;
  v53 = v8;
  [v3 addObject:v8];
  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [(HMBModel *)v8 debugDescription];
    *buf = 138543618;
    v61 = v26;
    v62 = 2112;
    v63 = v27;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Updating significant event model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  significantEvent6 = [(HMDCameraClipAddSignificantEventOperation *)selfCopy significantEvent];
  faceClassifications = [significantEvent6 faceClassifications];

  obj = faceClassifications;
  v30 = [faceClassifications countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v56;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v56 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v55 + 1) + 8 * i);
        v35 = [HMDCameraSignificantEventFaceClassificationModel alloc];
        uUID2 = [v34 UUID];
        hmbModelID = [(HMBModel *)v53 hmbModelID];
        v38 = [(HMBModel *)v35 initWithModelID:uUID2 parentModelID:hmbModelID];

        personManagerUUID = [v34 personManagerUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v38 setPersonManagerUUID:personManagerUUID];

        personUUID = [v34 personUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v38 setPersonUUID:personUUID];

        personName = [v34 personName];
        [(HMDCameraSignificantEventFaceClassificationModel *)v38 setPersonName:personName];

        unassociatedFaceCropUUID = [v34 unassociatedFaceCropUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v38 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

        [v52 addObject:v38];
        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [(HMBModel *)v38 debugDescription];
          *buf = 138543618;
          v61 = v46;
          v62 = 2112;
          v63 = v47;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating face classification model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
      }

      v31 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v31);
  }

  v54.receiver = selfCopy;
  v54.super_class = HMDCameraClipAddSignificantEventOperation;
  modelsToAdd = [(HMDCameraClipAddModelsOperation *)&v54 modelsToAdd];
  v49 = [modelsToAdd setByAddingObjectsFromSet:v52];

  return v49;
}

- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event dataSource:(id)source
{
  dCopy = d;
  zoneCopy = zone;
  eventCopy = event;
  sourceCopy = source;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!zoneCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!eventCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    return [(HMDCameraClipAddSignificantEventOperation *)v19 initWithClipModelID:v20 localZone:v21 significantEvent:v22, v23];
  }

  v24.receiver = self;
  v24.super_class = HMDCameraClipAddSignificantEventOperation;
  v15 = [(HMDCameraClipOperation *)&v24 initWithClipModelID:dCopy localZone:zoneCopy dataSource:sourceCopy];
  if (v15)
  {
    v16 = objc_msgSend_copy(eventCopy);
    significantEvent = v15->_significantEvent;
    v15->_significantEvent = v16;
  }

  return v15;
}

- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event
{
  eventCopy = event;
  zoneCopy = zone;
  dCopy = d;
  v11 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v12 = [(HMDCameraClipAddSignificantEventOperation *)self initWithClipModelID:dCopy localZone:zoneCopy significantEvent:eventCopy dataSource:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_140955 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_140955, &__block_literal_global_140956);
  }

  v3 = logCategory__hmf_once_v5_140957;

  return v3;
}

void __56__HMDCameraClipAddSignificantEventOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_140957;
  logCategory__hmf_once_v5_140957 = v0;
}

@end