@interface HMITorsoRecognition
- (HMITorsoRecognition)initWithCoder:(id)coder;
- (HMITorsoRecognition)initWithTorsoprint:(id)torsoprint classification:(id)classification predictedLinkedEntityUUIDs:(id)ds sessionEntityAssignment:(int64_t)assignment sessionEntityUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMITorsoRecognition

- (HMITorsoRecognition)initWithTorsoprint:(id)torsoprint classification:(id)classification predictedLinkedEntityUUIDs:(id)ds sessionEntityAssignment:(int64_t)assignment sessionEntityUUID:(id)d
{
  torsoprintCopy = torsoprint;
  classificationCopy = classification;
  dsCopy = ds;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = HMITorsoRecognition;
  v17 = [(HMITorsoRecognition *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_torsoprint, torsoprint);
    objc_storeStrong(&v18->_classification, classification);
    objc_storeStrong(&v18->_predictedLinkedEntityUUIDs, ds);
    v18->_sessionEntityAssignment = assignment;
    objc_storeStrong(&v18->_sessionEntityUUID, d);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  classification = [(HMITorsoRecognition *)self classification];
  [coderCopy encodeObject:? forKey:?];

  torsoprint = [(HMITorsoRecognition *)self torsoprint];
  [coderCopy encodeObject:? forKey:?];

  [(HMITorsoRecognition *)self sessionEntityAssignment];
  [coderCopy encodeInteger:? forKey:?];
  sessionEntityUUID = [(HMITorsoRecognition *)self sessionEntityUUID];
  [coderCopy encodeObject:? forKey:?];
}

- (HMITorsoRecognition)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  [coderCopy decodeIntegerForKey:?];
  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];

  v8 = [MEMORY[0x277CBEB98] set];
  v9 = [HMITorsoRecognition initWithTorsoprint:"initWithTorsoprint:classification:predictedLinkedEntityUUIDs:sessionEntityAssignment:sessionEntityUUID:" classification:? predictedLinkedEntityUUIDs:? sessionEntityAssignment:? sessionEntityUUID:?];

  return v9;
}

@end