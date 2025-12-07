@interface HMIPerson
+ (id)personFromHomePerson:(id)person;
- (BOOL)isEqual:(id)equal;
- (HMIPerson)initWithCoder:(id)coder;
- (HMIPerson)initWithUUID:(id)d name:(id)name;
- (HMIPerson)initWithUUID:(id)d name:(id)name personLinks:(id)links;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIPerson

- (HMIPerson)initWithUUID:(id)d name:(id)name
{
  v6 = MEMORY[0x277CBEB98];
  nameCopy = name;
  dCopy = d;
  v9 = [v6 set];
  v10 = [HMIPerson initWithUUID:"initWithUUID:name:personLinks:" name:? personLinks:?];

  return v10;
}

- (HMIPerson)initWithUUID:(id)d name:(id)name personLinks:(id)links
{
  dCopy = d;
  nameCopy = name;
  linksCopy = links;
  if (dCopy)
  {
    v11 = linksCopy;
    v22.receiver = self;
    v22.super_class = HMIPerson;
    v12 = [(HMIPerson *)&v22 init];
    if (v12)
    {
      v13 = [dCopy copy];
      UUID = v12->_UUID;
      v12->_UUID = v13;

      v15 = [nameCopy copy];
      name = v12->_name;
      v12->_name = v15;

      v17 = [v11 copy];
      personLinks = v12->_personLinks;
      v12->_personLinks = v17;
    }

    return v12;
  }

  else
  {
    v20 = [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    return [(HMIPerson *)v20 attributeDescriptions];
  }
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uUID = [(HMIPerson *)self UUID];
  v5 = [v3 initWithName:? value:?];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMIPerson *)self name];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v13 = [v6 initWithName:? value:? options:? formatter:?];
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  personLinks = [(HMIPerson *)self personLinks];
  v14 = [v9 initWithName:? value:?];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v11;
}

+ (id)personFromHomePerson:(id)person
{
  personCopy = person;
  personLinks = [personCopy personLinks];
  v5 = [personLinks na_map:?];

  v6 = [HMIPerson alloc];
  uUID = [personCopy UUID];
  name = [personCopy name];

  v9 = [HMIPerson initWithUUID:v6 name:"initWithUUID:name:personLinks:" personLinks:?];

  return v9;
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
    uUID = [(HMIPerson *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:?] && (-[HMIPerson name](self, "name"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      personLinks = [(HMIPerson *)self personLinks];
      personLinks2 = [v6 personLinks];
      v14 = HMFEqualObjects();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  uUID = [(HMIPerson *)self UUID];
  v3 = [uUID hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(HMIPerson *)self UUID];
  [coderCopy encodeObject:? forKey:?];

  name = [(HMIPerson *)self name];
  [coderCopy encodeObject:? forKey:?];

  personLinks = [(HMIPerson *)self personLinks];
  [coderCopy encodeObject:? forKey:?];
}

- (HMIPerson)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  v7 = MEMORY[0x277CBEB98];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v9 = [v7 setWithArray:?];

  v10 = [coderCopy decodeObjectOfClasses:? forKey:?];
  if (v5)
  {
    selfCopy = [HMIPerson initWithUUID:"initWithUUID:name:personLinks:" name:? personLinks:?];
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
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

@end