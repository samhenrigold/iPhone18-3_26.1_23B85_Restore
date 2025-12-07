@interface HMCameraSignificantEvent
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCameraSignificantEvent)initWithCoder:(id)coder;
- (HMCameraSignificantEvent)initWithUniqueIdentifier:(id)identifier reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level cameraProfileUUID:(id)d faceClassification:(id)classification;
- (HMCameraSignificantEvent)initWithUniqueIdentifier:(id)identifier reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level faceClassification:(id)classification;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraSignificantEvent

- (HMCameraSignificantEvent)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ui"];
  v6 = [coderCopy decodeIntegerForKey:@"r"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doc"];
  v8 = [coderCopy decodeIntegerForKey:@"cl"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cpu"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fc"];
  if (v5 && v7 && v8)
  {
    selfCopy = [(HMCameraSignificantEvent *)self initWithUniqueIdentifier:v5 reason:v6 dateOfOccurrence:v7 confidenceLevel:v8 cameraProfileUUID:v9 faceClassification:v10];
    v12 = selfCopy;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMStringFromCameraSignificantEventConfidenceLevel(v8);
      v18 = 138544130;
      v19 = v15;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded uniqueIdentifier: %@ dateOfOccurrence: %@ confidence level: %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(HMCameraSignificantEvent *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"ui"];

  [coderCopy encodeInteger:-[HMCameraSignificantEvent reason](self forKey:{"reason"), @"r"}];
  dateOfOccurrence = [(HMCameraSignificantEvent *)self dateOfOccurrence];
  [coderCopy encodeObject:dateOfOccurrence forKey:@"doc"];

  [coderCopy encodeInteger:-[HMCameraSignificantEvent confidenceLevel](self forKey:{"confidenceLevel"), @"cl"}];
  cameraProfileUUID = [(HMCameraSignificantEvent *)self cameraProfileUUID];
  [coderCopy encodeObject:cameraProfileUUID forKey:@"cpu"];

  faceClassification = [(HMCameraSignificantEvent *)self faceClassification];
  [coderCopy encodeObject:faceClassification forKey:@"fc"];
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HMCameraSignificantEvent *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
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
    uniqueIdentifier = [(HMCameraSignificantEvent *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    if ([uniqueIdentifier isEqual:uniqueIdentifier2] && (v9 = -[HMCameraSignificantEvent reason](self, "reason"), v9 == objc_msgSend(v6, "reason")))
    {
      dateOfOccurrence = [(HMCameraSignificantEvent *)self dateOfOccurrence];
      dateOfOccurrence2 = [v6 dateOfOccurrence];
      if ([dateOfOccurrence isEqualToDate:dateOfOccurrence2] && (v12 = -[HMCameraSignificantEvent confidenceLevel](self, "confidenceLevel"), v12 == objc_msgSend(v6, "confidenceLevel")))
      {
        cameraProfileUUID = [(HMCameraSignificantEvent *)self cameraProfileUUID];
        cameraProfileUUID2 = [v6 cameraProfileUUID];
        if ([cameraProfileUUID isEqual:cameraProfileUUID2])
        {
          faceClassification = [(HMCameraSignificantEvent *)self faceClassification];
          faceClassification2 = [v6 faceClassification];
          v16 = HMFEqualObjects();
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSArray)attributeDescriptions
{
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMCameraSignificantEvent *)self uniqueIdentifier];
  v21 = [v3 initWithName:@"ID" value:uniqueIdentifier];
  v23[0] = v21;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v20 = HMStringFromCameraSignificantEventReason([(HMCameraSignificantEvent *)self reason]);
  v5 = [v4 initWithName:@"Reason" value:v20];
  v23[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  dateOfOccurrence = [(HMCameraSignificantEvent *)self dateOfOccurrence];
  v8 = [v6 initWithName:@"Date" value:dateOfOccurrence];
  v23[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = HMStringFromCameraSignificantEventConfidenceLevel([(HMCameraSignificantEvent *)self confidenceLevel]);
  v11 = [v9 initWithName:@"Confidence level" value:v10];
  v23[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  cameraProfileUUID = [(HMCameraSignificantEvent *)self cameraProfileUUID];
  v14 = [v12 initWithName:@"Camera Profile UUID" value:cameraProfileUUID];
  v23[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  faceClassification = [(HMCameraSignificantEvent *)self faceClassification];
  v17 = [v15 initWithName:@"Face Classification" value:faceClassification];
  v23[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:6];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCameraSignificantEvent)initWithUniqueIdentifier:(id)identifier reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level faceClassification:(id)classification
{
  v12 = MEMORY[0x1E696AFB0];
  classificationCopy = classification;
  occurrenceCopy = occurrence;
  identifierCopy = identifier;
  uUID = [v12 UUID];
  v17 = [(HMCameraSignificantEvent *)self initWithUniqueIdentifier:identifierCopy reason:reason dateOfOccurrence:occurrenceCopy confidenceLevel:level cameraProfileUUID:uUID faceClassification:classificationCopy];

  return v17;
}

- (HMCameraSignificantEvent)initWithUniqueIdentifier:(id)identifier reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level cameraProfileUUID:(id)d faceClassification:(id)classification
{
  identifierCopy = identifier;
  occurrenceCopy = occurrence;
  dCopy = d;
  classificationCopy = classification;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!occurrenceCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dCopy)
  {
LABEL_9:
    v22 = _HMFPreconditionFailure();
    return +[(HMCameraSignificantEvent *)v22];
  }

  v18 = classificationCopy;
  v25.receiver = self;
  v25.super_class = HMCameraSignificantEvent;
  v19 = [(HMCameraSignificantEvent *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uniqueIdentifier, identifier);
    v20->_reason = reason;
    objc_storeStrong(&v20->_dateOfOccurrence, occurrence);
    v20->_confidenceLevel = level;
    objc_storeStrong(&v20->_cameraProfileUUID, d);
    objc_storeStrong(&v20->_faceClassification, classification);
  }

  return v20;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end