@interface HMIPersonSourceUUIDPair
+ (id)personSourceUUIDPairFromPersonLink:(id)link;
- (BOOL)isEqual:(id)equal;
- (HMIPersonSourceUUIDPair)initWithCoder:(id)coder;
- (HMIPersonSourceUUIDPair)initWithPersonUUID:(id)d sourceUUID:(id)iD;
- (HMIPersonSourceUUIDPair)initWithUUIDPairString:(id)string;
- (NSString)UUIDPairString;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIPersonSourceUUIDPair

- (HMIPersonSourceUUIDPair)initWithPersonUUID:(id)d sourceUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HMIPersonSourceUUIDPair;
  v8 = [(HMIPersonSourceUUIDPair *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    personUUID = v8->_personUUID;
    v8->_personUUID = v9;

    v11 = [iDCopy copy];
    sourceUUID = v8->_sourceUUID;
    v8->_sourceUUID = v11;
  }

  return v8;
}

- (HMIPersonSourceUUIDPair)initWithUUIDPairString:(id)string
{
  v4 = [string componentsSeparatedByString:?];
  if ([v4 count] == 2)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    firstObject = [v4 firstObject];
    v7 = [v5 initWithUUIDString:?];

    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    lastObject = [v4 lastObject];
    v10 = [v8 initWithUUIDString:?];

    selfCopy = 0;
    if (v7 && v10)
    {
      self = [HMIPersonSourceUUIDPair initWithPersonUUID:"initWithPersonUUID:sourceUUID:" sourceUUID:?];
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)UUIDPairString
{
  personUUID = [(HMIPersonSourceUUIDPair *)self personUUID];
  uUIDString = [personUUID UUIDString];
  sourceUUID = [(HMIPersonSourceUUIDPair *)self sourceUUID];
  uUIDString2 = [sourceUUID UUIDString];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v6 = [v5 componentsJoinedByString:?];

  return v6;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  personUUID = [(HMIPersonSourceUUIDPair *)self personUUID];
  v9 = [v3 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  sourceUUID = [(HMIPersonSourceUUIDPair *)self sourceUUID];
  v10 = [v5 initWithName:? value:?];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v7;
}

+ (id)personSourceUUIDPairFromPersonLink:(id)link
{
  linkCopy = link;
  v4 = [HMIPersonSourceUUIDPair alloc];
  personUUID = [linkCopy personUUID];
  personManagerUUID = [linkCopy personManagerUUID];

  v7 = [HMIPersonSourceUUIDPair initWithPersonUUID:v4 sourceUUID:"initWithPersonUUID:sourceUUID:"];

  return v7;
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
    personUUID = [(HMIPersonSourceUUIDPair *)self personUUID];
    personUUID2 = [v6 personUUID];
    if ([personUUID isEqual:?])
    {
      sourceUUID = [(HMIPersonSourceUUIDPair *)self sourceUUID];
      sourceUUID2 = [v6 sourceUUID];
      v11 = [sourceUUID isEqual:?];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  personUUID = [(HMIPersonSourceUUIDPair *)self personUUID];
  v3 = [personUUID hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  personUUID = [(HMIPersonSourceUUIDPair *)self personUUID];
  [coderCopy encodeObject:? forKey:?];

  sourceUUID = [(HMIPersonSourceUUIDPair *)self sourceUUID];
  [coderCopy encodeObject:? forKey:?];
}

- (HMIPersonSourceUUIDPair)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  v7 = v6;
  if (!v5)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = 0;
      v13 = "%{public}@Could not initialize from decoded personUUID: %@";
LABEL_8:
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, v13, &v15, 0x16u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v10);
    v9 = 0;
    goto LABEL_10;
  }

  if (!v6)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = 0;
      v13 = "%{public}@Could not initialize from decoded sourceUUID: %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  selfCopy2 = [HMIPersonSourceUUIDPair initWithPersonUUID:"initWithPersonUUID:sourceUUID:" sourceUUID:?];
  v9 = selfCopy2;
LABEL_10:

  return v9;
}

@end