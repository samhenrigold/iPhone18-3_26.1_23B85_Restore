@interface COClusterMember
+ (id)memberForCurrentDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMember:(id)member;
- (BOOL)isSameDeviceAsMember:(id)member;
- (COClusterMember)initWithCoder:(id)coder;
- (COClusterMember)initWithHomeKitIdentifier:(id)identifier;
- (COClusterMember)initWithType:(unint64_t)type deviceMetadata:(id)metadata;
- (id)IDSIdentifier;
- (id)description;
- (id)homeKitIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COClusterMember

+ (id)memberForCurrentDevice
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"legacyIdentifier";
  v6[0] = &stru_2857AE980;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [[COClusterMember alloc] initWithType:1 deviceMetadata:v2];

  return v3;
}

- (COClusterMember)initWithHomeKitIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = COClusterMember;
  v5 = [(COClusterMember *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_memberType = 3;
    v12 = @"accessory";
    uUIDString = [identifierCopy UUIDString];
    v13[0] = uUIDString;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    deviceMetadata = v6->_deviceMetadata;
    v6->_deviceMetadata = v8;
  }

  return v6;
}

- (COClusterMember)initWithType:(unint64_t)type deviceMetadata:(id)metadata
{
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = COClusterMember;
  v7 = [(COClusterMember *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_memberType = type;
    v9 = [metadataCopy copy];
    deviceMetadata = v8->_deviceMetadata;
    v8->_deviceMetadata = v9;
  }

  return v8;
}

- (id)description
{
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  v4 = [deviceMetadata description];

  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v7 = [v6 componentsJoinedByString:&stru_2857AE980];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@: %p, type = %lu, metadata=%@>", v10, self, -[COClusterMember memberType](self, "memberType"), v7];

  return v11;
}

- (id)IDSIdentifier
{
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  v3 = [deviceMetadata objectForKey:@"IDS"];

  return v3;
}

- (id)homeKitIdentifier
{
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  v3 = [deviceMetadata objectForKey:@"accessory"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COClusterMember *)self isEqualToMember:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMember:(id)member
{
  memberCopy = member;
  memberType = [(COClusterMember *)self memberType];
  if (memberType == [memberCopy memberType])
  {
    deviceMetadata = [(COClusterMember *)self deviceMetadata];
    deviceMetadata2 = [memberCopy deviceMetadata];
    if ([deviceMetadata isEqual:deviceMetadata2])
    {
      isStale = [(COClusterMember *)self isStale];
      v9 = isStale ^ [memberCopy isStale] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isSameDeviceAsMember:(id)member
{
  memberCopy = member;
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  deviceMetadata2 = [memberCopy deviceMetadata];

  LOBYTE(memberCopy) = [deviceMetadata isEqual:deviceMetadata2];
  return memberCopy;
}

- (unint64_t)hash
{
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  v3 = [deviceMetadata hash];

  return v3;
}

- (COClusterMember)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  if ([coderCopy containsValueForKey:@"deviceMetadata"])
  {
    [coderCopy decodeObjectOfClasses:v8 forKey:@"deviceMetadata"];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v26 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = v8;
      v22 = v5;
      v12 = *v24;
      v13 = 1;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [v9 objectForKey:*(*(&v23 + 1) + 8 * v14)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v13 = 0;
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v11);
      v16 = v9;
      v8 = v21;
      v5 = v22;
    }

    else
    {
      v13 = 1;
      v16 = v9;
    }
  }

  else
  {
    if (![coderCopy containsValueForKey:@"identifier"])
    {
      v16 = 0;
      selfCopy = 0;
      goto LABEL_22;
    }

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v9 = v17;
    v13 = v17 != 0;
    if (v17)
    {
      v27 = @"legacyIdentifier";
      v28 = v17;
      v13 = 1;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    }

    else
    {
      v16 = 0;
    }
  }

  selfCopy = 0;
  if (v13 && v16)
  {
    self = -[COClusterMember initWithType:deviceMetadata:](self, "initWithType:deviceMetadata:", [v5 unsignedIntegerValue], v16);
    selfCopy = self;
  }

LABEL_22:
  v19 = selfCopy;

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[COClusterMember memberType](self, "memberType")}];
  [coderCopy encodeObject:v4 forKey:@"type"];
  deviceMetadata = [(COClusterMember *)self deviceMetadata];
  [coderCopy encodeObject:deviceMetadata forKey:@"deviceMetadata"];

  deviceMetadata2 = [(COClusterMember *)self deviceMetadata];
  v7 = [deviceMetadata2 objectForKey:@"legacyIdentifier"];

  if (v7)
  {
    [coderCopy encodeObject:v7 forKey:@"identifier"];
  }
}

@end