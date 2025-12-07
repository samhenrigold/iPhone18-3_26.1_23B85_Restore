@interface HMIPersonFaceCrop
- (BOOL)isEqual:(id)equal;
- (HMIPersonFaceCrop)initWithCoder:(id)coder;
- (HMIPersonFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personUUID:(id)iD source:(int64_t)source;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIPersonFaceCrop

- (HMIPersonFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personUUID:(id)iD source:(int64_t)source
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  dCopy = d;
  representationCopy = representation;
  createdCopy = created;
  iDCopy = iD;
  if (!dCopy)
  {
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_9;
  }

  if (!representationCopy)
  {
LABEL_9:
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_10;
  }

  if (!createdCopy)
  {
LABEL_10:
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_11;
  }

  v21 = iDCopy;
  if (!iDCopy)
  {
LABEL_11:
    v26 = [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    return [(HMIPersonFaceCrop *)v26 attributeDescriptions];
  }

  v28.receiver = self;
  v28.super_class = HMIPersonFaceCrop;
  height = [(HMIFaceCrop *)&v28 initWithUUID:dCopy dataRepresentation:representationCopy dateCreated:createdCopy faceBoundingBox:x, y, width, height];
  if (height)
  {
    v23 = [v21 copy];
    personUUID = height->_personUUID;
    height->_personUUID = v23;

    height->_source = source;
  }

  return height;
}

- (id)attributeDescriptions
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HMIPersonFaceCrop;
  attributeDescriptions = [(HMIFaceCrop *)&v13 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  personUUID = [(HMIPersonFaceCrop *)self personUUID];
  v6 = [v4 initWithName:? value:?];
  v14 = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = HMIPersonFaceCropSourceAsString([(HMIPersonFaceCrop *)self source]);
  v9 = [v7 initWithName:? value:?];
  v15 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:?];

  return v11;
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
  if (v6 && (v12.receiver = self, v12.super_class = HMIPersonFaceCrop, [(HMIFaceCrop *)&v12 isEqual:v6]))
  {
    personUUID = [(HMIPersonFaceCrop *)self personUUID];
    personUUID2 = [v6 personUUID];
    if ([personUUID isEqual:?])
    {
      source = [(HMIPersonFaceCrop *)self source];
      v10 = source == [v6 source];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMIPersonFaceCrop;
  coderCopy = coder;
  [(HMIFaceCrop *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMIPersonFaceCrop *)self personUUID:v6.receiver];
  [coderCopy encodeObject:? forKey:?];

  [(HMIPersonFaceCrop *)self source];
  [coderCopy encodeInteger:? forKey:?];
}

- (HMIPersonFaceCrop)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMIFaceCrop alloc] initWithCoder:?];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    if (v6)
    {
      if ([coderCopy containsValueForKey:?])
      {
        [coderCopy decodeIntegerForKey:?];
      }

      uUID = [(HMIFaceCrop *)v5 UUID];
      dataRepresentation = [(HMIFaceCrop *)v5 dataRepresentation];
      dateCreated = [(HMIFaceCrop *)v5 dateCreated];
      [(HMIFaceCrop *)v5 faceBoundingBox];
      self = [HMIPersonFaceCrop initWithUUID:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:" dataRepresentation:? dateCreated:? faceBoundingBox:? personUUID:? source:?];

      selfCopy = self;
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      self = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = 0;
        _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded personUUID: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end