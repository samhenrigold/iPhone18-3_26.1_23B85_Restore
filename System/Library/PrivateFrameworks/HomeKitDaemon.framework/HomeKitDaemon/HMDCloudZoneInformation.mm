@interface HMDCloudZoneInformation
+ (id)cloudZoneInformationWithCloudZones:(id)zones;
+ (id)cloudZonesArrayWithCloudZones:(id)zones;
+ (id)cloudZonesWithDictionary:(id)dictionary;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMDCloudZoneInformation)init;
- (HMDCloudZoneInformation)initWithCoder:(id)coder;
- (HMDCloudZoneInformation)initWithOwnerName:(id)name uuid:(id)uuid;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)emptyModelObjectWithChangeType:(unint64_t)type parent:(id)parent;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version parent:(id)parent;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateCloudZoneInformationWithModel:(id)model message:(id)message;
@end

@implementation HMDCloudZoneInformation

- (id)emptyModelObjectWithChangeType:(unint64_t)type parent:(id)parent
{
  parentCopy = parent;
  v7 = [HMDCloudZoneInformationModel alloc];
  uuid = [(HMDCloudZoneInformation *)self uuid];
  v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:type uuid:uuid parentUUID:parentCopy];

  return v9;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version parent:(id)parent
{
  v6 = [(HMDCloudZoneInformation *)self emptyModelObjectWithChangeType:type parent:parent];
  ownerName = [(HMDCloudZoneInformation *)self ownerName];
  [v6 setOwnerName:ownerName];

  return v6;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valuesCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDCloudZoneInformation *)self updateCloudZoneInformationWithModel:v9 message:messageCopy];
    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];
    [messageCopy respondWithPayload:0];
  }
}

- (void)updateCloudZoneInformationWithModel:(id)model message:(id)message
{
  modelCopy = model;
  [(HMDCloudZoneInformation *)self setZoneCreated:1];
  setProperties = [modelCopy setProperties];
  v6 = [setProperties containsObject:@"ownerName"];

  if (v6)
  {
    ownerName = [modelCopy ownerName];
    [(HMDCloudZoneInformation *)self setOwnerName:ownerName];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDCloudZoneInformation *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"HM.zoneUUID"];

  ownerName = [(HMDCloudZoneInformation *)self ownerName];
  [coderCopy encodeObject:ownerName forKey:@"HM.zoneOwner"];

  [coderCopy encodeBool:-[HMDCloudZoneInformation didFetchFailed](self forKey:{"didFetchFailed"), @"HM.zoneFetchFailed"}];
  [coderCopy encodeBool:-[HMDCloudZoneInformation isZoneCreated](self forKey:{"isZoneCreated"), @"HM.zoneZoneCreated"}];
  [coderCopy encodeInteger:-[HMDCloudZoneInformation schemaVersion](self forKey:{"schemaVersion"), @"HM.zoneSchemaVersion"}];
}

- (HMDCloudZoneInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.zoneUUID"];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.zoneOwner"];
  v8 = [(HMDCloudZoneInformation *)self initWithOwnerName:v7 uuid:v6];
  if (v8)
  {
    if ([coderCopy containsValueForKey:@"HM.zoneFetchFailed"])
    {
      v8->_fetchFailed = [coderCopy decodeBoolForKey:@"HM.zoneFetchFailed"];
    }

    if ([coderCopy containsValueForKey:@"HM.zoneZoneCreated"])
    {
      v8->_zoneCreated = [coderCopy decodeBoolForKey:@"HM.zoneZoneCreated"];
    }

    else
    {
      v8->_zoneCreated = 1;
    }

    if ([coderCopy containsValueForKey:@"HM.zoneSchemaVersion"])
    {
      v8->_schemaVersion = [coderCopy decodeIntegerForKey:@"HM.zoneSchemaVersion"];
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(HMDCloudZoneInformation *)equalCopy uuid];
      uuid2 = [(HMDCloudZoneInformation *)self uuid];
      v7 = [uuid isEqual:uuid2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  uuid = [(HMDCloudZoneInformation *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudZoneInformation *)self shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  ownerName = [(HMDCloudZoneInformation *)self ownerName];
  v9 = [v5 stringWithFormat:@"<%@%@, Owner = %@>", shortDescription, v7, ownerName];

  if (pointerCopy)
  {
  }

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  uuid = [(HMDCloudZoneInformation *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (HMDCloudZoneInformation)initWithOwnerName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v16.receiver = self;
  v16.super_class = HMDCloudZoneInformation;
  v8 = [(HMDCloudZoneInformation *)&v16 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(nameCopy);
    ownerName = v8->_ownerName;
    v8->_ownerName = v9;

    if (uuidCopy)
    {
      uUID = objc_msgSend_copy(uuidCopy);
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    v12 = uUID;
    v13 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:uUID];
    uuid = v8->_uuid;
    v8->_uuid = v13;

    v8->_schemaVersion = 2;
    v8->_firstFetch = 1;
  }

  return v8;
}

- (HMDCloudZoneInformation)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)cloudZonesArrayWithCloudZones:(id)zones
{
  v18 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(zonesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = zonesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uuid = [*(*(&v13 + 1) + 8 * i) uuid];
        uUIDString = [uuid UUIDString];

        [v4 addObject:uUIDString];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)cloudZoneInformationWithCloudZones:(id)zones
{
  v39 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(zonesCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = zonesCopy;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v29;
    *&v6 = 138543618;
    v24 = v6;
    v25 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        uuid = [v10 uuid];
        uUIDString = [uuid UUIDString];

        ownerName = [v10 ownerName];
        v14 = ownerName;
        if (uUIDString)
        {
          v15 = ownerName == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = v8;
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = v24;
            v33 = v20;
            v34 = 2112;
            v35 = v10;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert zone information to zone information dictionary, %@", buf, 0x16u);

            v4 = v25;
          }

          objc_autoreleasePoolPop(v17);
          v8 = v16;
        }

        else
        {
          v36[0] = @"HM.zoneOwner";
          v36[1] = @"HM.zoneHandlesRecord";
          v37[0] = ownerName;
          v37[1] = MEMORY[0x277CBEC38];
          v36[2] = @"HM.zoneSchemaVersion";
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "schemaVersion")}];
          v37[2] = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
          [v27 setObject:v22 forKeyedSubscript:uUIDString];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v7);
  }

  return v27;
}

+ (id)cloudZonesWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [dictionaryCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [dictionaryCopy objectForKeyedSubscript:v9];
        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
        v12 = [v10 objectForKeyedSubscript:@"HM.zoneOwner"];
        v13 = [[HMDCloudZoneInformation alloc] initWithOwnerName:v12 uuid:v11];
        v14 = [v10 objectForKeyedSubscript:@"HM.zoneFetchFailed"];

        if (v14)
        {
          [(HMDCloudZoneInformation *)v13 setFetchFailed:1];
        }

        v15 = [v10 objectForKeyedSubscript:@"HM.zoneHandlesRecord"];

        if (v15)
        {
          [(HMDCloudZoneInformation *)v13 setHandlesCloudRecord:1];
        }

        v16 = [v10 hmf_numberForKey:@"HM.zoneSchemaVersion"];
        v17 = v16;
        if (v16)
        {
          integerValue = [v16 integerValue];
        }

        else
        {
          integerValue = 1;
        }

        [(HMDCloudZoneInformation *)v13 setSchemaVersion:integerValue];
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v4;
}

@end