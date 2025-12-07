@interface HMBCloudID
- (BOOL)isEqual:(id)equal;
- (HMBCloudID)initWithCoder:(id)coder;
- (HMBCloudID)initWithContainerID:(id)d scope:(int64_t)scope;
- (HMBCloudID)initWithContainerID:(id)d scope:(int64_t)scope name:(id)name modelID:(id)iD;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBCloudID

- (unint64_t)hash
{
  modelID = [(HMBCloudID *)self modelID];
  v3 = [modelID hash];

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
    modelID = [(HMBCloudID *)self modelID];
    modelID2 = [v6 modelID];
    v9 = [modelID isEqual:modelID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMBCloudID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBCID.c"];
  v6 = [coderCopy decodeIntegerForKey:@"HMBCID.s"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBCID.n"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBCID.m"];

  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HMBCloudID *)self initWithContainerID:v5 scope:v6 name:v7 modelID:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  containerID = [(HMBCloudID *)self containerID];
  [coderCopy encodeObject:containerID forKey:@"HMBCID.c"];

  [coderCopy encodeInteger:-[HMBCloudID scope](self forKey:{"scope"), @"HMBCID.s"}];
  name = [(HMBCloudID *)self name];
  [coderCopy encodeObject:name forKey:@"HMBCID.n"];

  modelID = [(HMBCloudID *)self modelID];
  [coderCopy encodeObject:modelID forKey:@"HMBCID.m"];
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMBCloudID *)self name];
  v5 = [v3 initWithName:@"Name" value:name];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  modelID = [(HMBCloudID *)self modelID];
  v8 = [v6 initWithName:@"Model ID" value:modelID];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (HMBCloudID)initWithContainerID:(id)d scope:(int64_t)scope name:(id)name modelID:(id)iD
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = HMBCloudID;
  v14 = [(HMBCloudID *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_containerID, d);
    v15->_scope = scope;
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v15->_modelID, iD);
  }

  return v15;
}

- (HMBCloudID)initWithContainerID:(id)d scope:(int64_t)scope
{
  v29[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  [dCopy environment];
  v6 = CKContainerEnvironmentString();
  containerIdentifier = [dCopy containerIdentifier];
  scopeCopy = scope;
  v8 = CKDatabaseScopeString();
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", v6, v8, containerIdentifier];
  v29[0] = v6;
  v29[1] = containerIdentifier;
  v29[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  data = [MEMORY[0x277CBEB28] data];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v24 + 1) + 8 * v15) dataUsingEncoding:4];
        [data appendData:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"759390E3-198F-48EB-AD00-31296DACBBA6"];
  v18 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v17 data:data];
  v19 = [(HMBCloudID *)self initWithContainerID:dCopy scope:scopeCopy name:v21 modelID:v18];

  return v19;
}

@end