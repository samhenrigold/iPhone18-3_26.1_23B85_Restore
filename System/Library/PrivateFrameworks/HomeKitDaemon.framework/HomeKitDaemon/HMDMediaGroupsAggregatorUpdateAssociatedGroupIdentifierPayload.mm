@interface HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload
- (BOOL)isEqual:(id)equal;
- (HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload)initWithGroupIdentifier:(id)identifier associatedGroupIdentifier:(id)groupIdentifier;
- (HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload)initWithPayload:(id)payload;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
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
      groupIdentifier = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self groupIdentifier];
      groupIdentifier2 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)v6 groupIdentifier];
      if ([groupIdentifier hmf_isEqualToUUID:groupIdentifier2])
      {
        associatedGroupIdentifier = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self associatedGroupIdentifier];
        associatedGroupIdentifier2 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)v6 associatedGroupIdentifier];
        v11 = HMFEqualObjects();
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
  }

  return v11;
}

- (unint64_t)hash
{
  groupIdentifier = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self groupIdentifier];
  v3 = [groupIdentifier hash];

  return v3;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"groupIdentifier";
  groupIdentifier = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self groupIdentifier];
  uUIDString = [groupIdentifier UUIDString];
  v11[1] = @"associatedGroupIdentifier";
  v12[0] = uUIDString;
  associatedGroupIdentifier = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self associatedGroupIdentifier];
  uUIDString2 = [associatedGroupIdentifier UUIDString];
  v7 = uUIDString2;
  v8 = &stru_283CF9D50;
  if (uUIDString2)
  {
    v8 = uUIDString2;
  }

  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload)initWithPayload:(id)payload
{
  v19 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_UUIDForKey:@"groupIdentifier"];
  v6 = [payloadCopy hmf_UUIDForKey:@"associatedGroupIdentifier"];
  if (v5)
  {
    selfCopy = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self initWithGroupIdentifier:v5 associatedGroupIdentifier:v6];
    v8 = selfCopy;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = 0;
      v17 = 2112;
      v18 = payloadCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to get decode dependencies group identifier: %@ payload: %@ due", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  groupIdentifier = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self groupIdentifier];
  v5 = [v3 initWithName:@"groupIdentifier" value:groupIdentifier];
  v13[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  associatedGroupIdentifier = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self associatedGroupIdentifier];
  v8 = associatedGroupIdentifier;
  if (associatedGroupIdentifier)
  {
    v9 = associatedGroupIdentifier;
  }

  else
  {
    v9 = @"nil";
  }

  v10 = [v6 initWithName:@"associatedGroupIdentifier" value:v9];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  return v11;
}

- (HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload)initWithGroupIdentifier:(id)identifier associatedGroupIdentifier:(id)groupIdentifier
{
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  if (identifierCopy)
  {
    v9 = groupIdentifierCopy;
    v15.receiver = self;
    v15.super_class = HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload;
    v10 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_groupIdentifier, identifier);
      objc_storeStrong(&v11->_associatedGroupIdentifier, groupIdentifier);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)v13];
  }
}

@end