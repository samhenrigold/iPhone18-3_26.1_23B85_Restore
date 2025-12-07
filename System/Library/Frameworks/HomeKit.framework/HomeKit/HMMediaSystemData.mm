@interface HMMediaSystemData
+ (NSString)defaultGroupName;
+ (NSUUID)unknownDestinationSentinel;
- (BOOL)hasRoleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (HMMediaSystemData)initWithCoder:(id)coder;
- (HMMediaSystemData)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name defaultName:(BOOL)defaultName associatedGroupIdentifier:(id)groupIdentifier leftDestinationIdentifier:(id)destinationIdentifier rightDestinationIdentifier:(id)rightDestinationIdentifier;
- (HMMediaSystemData)initWithProtoBufferData:(id)data;
- (id)attributeDescriptions;
- (id)destinationUniqueIdentifiers;
- (id)encodeToProtoBufferData;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMediaSystemData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMMediaGroup *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMMediaSystemDataIdentifierCodingKey"];

  parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
  [coderCopy encodeObject:parentIdentifier forKey:@"HMMediaSystemDataParentIdentifierCodingKey"];

  name = [(HMMediaGroup *)self name];
  [coderCopy encodeObject:name forKey:@"HMMediaSystemDataNameCodingKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMMediaGroup isDefaultName](self, "isDefaultName")}];
  [coderCopy encodeObject:v8 forKey:@"HMMediaSystemDataDefaultNameCodingKey"];

  associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
  [coderCopy encodeObject:associatedGroupIdentifier forKey:@"HMMediaSystemDataAssociatedGroupIdentifierCodingKey"];

  leftDestinationIdentifier = [(HMMediaSystemData *)self leftDestinationIdentifier];
  [coderCopy encodeObject:leftDestinationIdentifier forKey:@"HMMediaSystemDataLeftDestinationIdentifierCodingKey"];

  rightDestinationIdentifier = [(HMMediaSystemData *)self rightDestinationIdentifier];
  [coderCopy encodeObject:rightDestinationIdentifier forKey:@"HMMediaSystemDataRightDestinationIdentifierCodingKey"];
}

- (HMMediaSystemData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataIdentifierCodingKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataParentIdentifierCodingKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataNameCodingKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataDefaultNameCodingKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataAssociatedGroupIdentifierCodingKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataLeftDestinationIdentifierCodingKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataRightDestinationIdentifierCodingKey"];

  v12 = -[HMMediaSystemData initWithIdentifier:parentIdentifier:name:defaultName:associatedGroupIdentifier:leftDestinationIdentifier:rightDestinationIdentifier:](self, "initWithIdentifier:parentIdentifier:name:defaultName:associatedGroupIdentifier:leftDestinationIdentifier:rightDestinationIdentifier:", v5, v6, v7, [v8 BOOLValue], v9, v10, v11);
  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableMediaSystemData alloc];
  identifier = [(HMMediaGroup *)self identifier];
  parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
  name = [(HMMediaGroup *)self name];
  isDefaultName = [(HMMediaGroup *)self isDefaultName];
  associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
  leftDestinationIdentifier = [(HMMediaSystemData *)self leftDestinationIdentifier];
  rightDestinationIdentifier = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v12 = [(HMMediaSystemData *)v4 initWithIdentifier:identifier parentIdentifier:parentIdentifier name:name defaultName:isDefaultName associatedGroupIdentifier:associatedGroupIdentifier leftDestinationIdentifier:leftDestinationIdentifier rightDestinationIdentifier:rightDestinationIdentifier];

  return v12;
}

+ (NSUUID)unknownDestinationSentinel
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

+ (NSString)defaultGroupName
{
  v2 = +[HMLocalization sharedManager];
  v3 = [v2 getLocalizedString:@"STEREO_PAIR"];

  return v3;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = HMMediaSystemData;
  return [(HMMediaGroup *)&v3 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMMediaSystemData;
    if ([(HMMediaGroup *)&v14 isEqual:equalCopy])
    {
      v5 = equalCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7)
      {
        rightDestinationIdentifier = [(HMMediaSystemData *)self rightDestinationIdentifier];
        rightDestinationIdentifier2 = [(HMMediaSystemData *)v7 rightDestinationIdentifier];
        if ([rightDestinationIdentifier hmf_isEqualToUUID:rightDestinationIdentifier2])
        {
          leftDestinationIdentifier = [(HMMediaSystemData *)self leftDestinationIdentifier];
          leftDestinationIdentifier2 = [(HMMediaSystemData *)v7 leftDestinationIdentifier];
          v12 = [leftDestinationIdentifier hmf_isEqualToUUID:leftDestinationIdentifier2];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = HMMediaSystemData;
  attributeDescriptions = [(HMMediaGroup *)&v13 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  leftDestinationIdentifier = [(HMMediaSystemData *)self leftDestinationIdentifier];
  v7 = [v5 initWithName:@"leftDestinationIdentifier" value:leftDestinationIdentifier];
  v14[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  rightDestinationIdentifier = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v10 = [v8 initWithName:@"rightDestinationIdentifier" value:rightDestinationIdentifier];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v4 addObjectsFromArray:v11];

  return v4;
}

- (id)encodeToProtoBufferData
{
  v3 = [HMMediaGroupProtoMediaGroupData alloc];
  v16.receiver = self;
  v16.super_class = HMMediaSystemData;
  encodeToProtoBufferData = [(HMMediaGroup *)&v16 encodeToProtoBufferData];
  v5 = [(HMMediaGroupProtoMediaGroupData *)v3 initWithData:encodeToProtoBufferData];

  v6 = objc_alloc_init(HMMediaGroupProtoMediaGroupRole);
  v7 = objc_alloc_init(HMMediaGroupProtoMediaSystemRoles);
  [(HMMediaGroupProtoMediaGroupRole *)v6 setMediaSystem:v7];

  rightDestinationIdentifier = [(HMMediaSystemData *)self rightDestinationIdentifier];
  uUIDString = [rightDestinationIdentifier UUIDString];
  mediaSystem = [(HMMediaGroupProtoMediaGroupRole *)v6 mediaSystem];
  [mediaSystem setRightDestinationIdentifier:uUIDString];

  leftDestinationIdentifier = [(HMMediaSystemData *)self leftDestinationIdentifier];
  uUIDString2 = [leftDestinationIdentifier UUIDString];
  mediaSystem2 = [(HMMediaGroupProtoMediaGroupRole *)v6 mediaSystem];
  [mediaSystem2 setLeftDestinationIdentifier:uUIDString2];

  [(HMMediaGroupProtoMediaGroupData *)v5 setGroupRole:v6];
  data = [(HMMediaGroupProtoMediaGroupData *)v5 data];

  return data;
}

- (HMMediaSystemData)initWithProtoBufferData:(id)data
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v37.receiver = self;
  v37.super_class = HMMediaSystemData;
  v5 = [(HMMediaGroup *)&v37 initClassWithProtoBufferData:dataCopy];
  if (!v5)
  {
LABEL_21:
    v24 = v5;
    goto LABEL_22;
  }

  v6 = [[HMMediaGroupProtoMediaGroupData alloc] initWithData:dataCopy];
  v7 = v6;
  if (!v6)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v5;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v21;
    v40 = 2112;
    v41 = 0;
    v22 = "%{public}@Failed to decode event data: %@";
LABEL_11:
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
LABEL_12:

    goto LABEL_13;
  }

  if (![(HMMediaGroupProtoMediaGroupData *)v6 hasGroupRole])
  {
    v18 = objc_autoreleasePoolPush();
    v23 = v5;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v21;
    v40 = 2112;
    v41 = v7;
    v22 = "%{public}@Missing field=groupRole from data=%@";
    goto LABEL_11;
  }

  groupRole = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
  hasMediaSystem = [groupRole hasMediaSystem];

  if (hasMediaSystem)
  {
    groupRole2 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
    mediaSystem = [groupRole2 mediaSystem];
    hasRightDestinationIdentifier = [mediaSystem hasRightDestinationIdentifier];

    if (hasRightDestinationIdentifier)
    {
      v13 = objc_alloc(MEMORY[0x1E696AFB0]);
      groupRole3 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
      mediaSystem2 = [groupRole3 mediaSystem];
      rightDestinationIdentifier = [mediaSystem2 rightDestinationIdentifier];
      v17 = [v13 initWithUUIDString:rightDestinationIdentifier];
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(v5 + 8, v17);
    groupRole4 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
    mediaSystem3 = [groupRole4 mediaSystem];
    hasLeftDestinationIdentifier = [mediaSystem3 hasLeftDestinationIdentifier];

    if (hasLeftDestinationIdentifier)
    {
      v30 = objc_alloc(MEMORY[0x1E696AFB0]);
      groupRole5 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
      mediaSystem4 = [groupRole5 mediaSystem];
      leftDestinationIdentifier = [mediaSystem4 leftDestinationIdentifier];
      v34 = [v30 initWithUUIDString:leftDestinationIdentifier];
    }

    else
    {
      v34 = 0;
    }

    v35 = v5[7];
    v5[7] = v34;

    goto LABEL_21;
  }

  v18 = objc_autoreleasePoolPush();
  v25 = v5;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    groupRole6 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
    *buf = 138543618;
    v39 = v21;
    v40 = 2112;
    v41 = groupRole6;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Missing field=mediaSystem from role=%@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:

  objc_autoreleasePoolPop(v18);
  v24 = 0;
LABEL_22:

  return v24;
}

- (BOOL)hasRoleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  rightDestinationIdentifier = [(HMMediaSystemData *)self rightDestinationIdentifier];
  if ([rightDestinationIdentifier hmf_isEqualToUUID:identifierCopy])
  {
    v6 = 1;
  }

  else
  {
    leftDestinationIdentifier = [(HMMediaSystemData *)self leftDestinationIdentifier];
    v6 = [leftDestinationIdentifier hmf_isEqualToUUID:identifierCopy];
  }

  return v6;
}

- (id)destinationUniqueIdentifiers
{
  v7[2] = *MEMORY[0x1E69E9840];
  leftDestinationIdentifier = [(HMMediaSystemData *)self leftDestinationIdentifier];
  v7[0] = leftDestinationIdentifier;
  rightDestinationIdentifier = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v7[1] = rightDestinationIdentifier;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (HMMediaSystemData)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name defaultName:(BOOL)defaultName associatedGroupIdentifier:(id)groupIdentifier leftDestinationIdentifier:(id)destinationIdentifier rightDestinationIdentifier:(id)rightDestinationIdentifier
{
  defaultNameCopy = defaultName;
  destinationIdentifierCopy = destinationIdentifier;
  rightDestinationIdentifierCopy = rightDestinationIdentifier;
  v21.receiver = self;
  v21.super_class = HMMediaSystemData;
  v18 = [(HMMediaGroup *)&v21 initWithIdentifier:identifier parentIdentifier:parentIdentifier name:name defaultName:defaultNameCopy destinationIdentifiers:MEMORY[0x1E695E0F0] associatedGroupIdentifier:groupIdentifier];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_leftDestinationIdentifier, destinationIdentifier);
    objc_storeStrong(&v19->_rightDestinationIdentifier, rightDestinationIdentifier);
  }

  return v19;
}

@end