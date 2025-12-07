@interface HMIAnalysisStateUpdate
- (BOOL)isEqual:(id)equal;
- (HMIAnalysisStateUpdate)initWithCoder:(id)coder;
- (HMIAnalysisStateUpdate)initWithTorsoAnnotations:(id)annotations;
- (HMIAnalysisStateUpdate)initWithTorsoAnnotationsArray:(id)array;
- (id)attributeDescriptions;
- (id)stateUpdateByMergingStateUpdate:(id)update;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIAnalysisStateUpdate

- (HMIAnalysisStateUpdate)initWithTorsoAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  v9.receiver = self;
  v9.super_class = HMIAnalysisStateUpdate;
  v5 = [(HMIAnalysisStateUpdate *)&v9 init];
  if (v5)
  {
    v6 = [annotationsCopy copy];
    torsoAnnotations = v5->_torsoAnnotations;
    v5->_torsoAnnotations = v6;
  }

  return v5;
}

- (HMIAnalysisStateUpdate)initWithTorsoAnnotationsArray:(id)array
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:?];
  v5 = [(HMIAnalysisStateUpdate *)self initWithTorsoAnnotations:?];

  return v5;
}

- (id)stateUpdateByMergingStateUpdate:(id)update
{
  updateCopy = update;
  torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  torsoAnnotations2 = [updateCopy torsoAnnotations];

  v7 = [torsoAnnotations setByAddingObjectsFromSet:?];

  v8 = [[HMIAnalysisStateUpdate alloc] initWithTorsoAnnotations:?];

  return v8;
}

- (id)attributeDescriptions
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  v5 = [v3 initWithName:? value:?];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:v8];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
    torsoAnnotations2 = [v6 torsoAnnotations];
    v9 = [torsoAnnotations isEqual:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  v3 = [torsoAnnotations hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  [coderCopy encodeObject:? forKey:?];
}

- (HMIAnalysisStateUpdate)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v7 = [v5 setWithArray:?];
  v8 = [coderCopy decodeObjectOfClasses:? forKey:?];

  if (v8)
  {
    selfCopy = [(HMIAnalysisStateUpdate *)self initWithTorsoAnnotations:?];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not decode torsoAnnotations", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

@end