@interface HMAccessCodeModificationResponseValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessCodeModificationResponseValue)initWithAccessoryUUID:(id)d accessoryAccessCodeValue:(id)value accessCodeValue:(id)codeValue operationType:(int64_t)type error:(id)error;
- (HMAccessCodeModificationResponseValue)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessCodeModificationResponseValue

- (NSArray)attributeDescriptions
{
  v20[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMAccessCodeModificationResponseValue *)self accessoryUUID];
  v4 = [v3 initWithName:@"accessoryUUID" value:accessoryUUID];
  v20[0] = v4;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryAccessCodeValue = [(HMAccessCodeModificationResponseValue *)self accessoryAccessCodeValue];
  v7 = [v5 initWithName:@"accessoryAccessCodeValue" value:accessoryAccessCodeValue];
  v20[1] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessCodeValue = [(HMAccessCodeModificationResponseValue *)self accessCodeValue];
  v10 = [v8 initWithName:@"accessCodeValue" value:accessCodeValue];
  v20[2] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessCodeModificationResponseValue operationType](self, "operationType")}];
  v13 = [v11 initWithName:@"operationType" value:v12];
  v20[3] = v13;
  v14 = objc_alloc(MEMORY[0x1E69A29C8]);
  error = [(HMAccessCodeModificationResponseValue *)self error];
  v16 = [v14 initWithName:@"error" value:error];
  v20[4] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];

  return v17;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessCodeModificationResponseValue)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessoryUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessoryAccessCodeValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessCodeValue"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyOperationType"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyError"];
  if (v5 && v8)
  {
    selfCopy = -[HMAccessCodeModificationResponseValue initWithAccessoryUUID:accessoryAccessCodeValue:accessCodeValue:operationType:error:](self, "initWithAccessoryUUID:accessoryAccessCodeValue:accessCodeValue:operationType:error:", v5, v6, v7, [v8 integerValue], v9);
    v11 = selfCopy;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryUUID: %@, operationType: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryUUID = [(HMAccessCodeModificationResponseValue *)self accessoryUUID];
  [coderCopy encodeObject:accessoryUUID forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessoryUUID"];

  accessoryAccessCodeValue = [(HMAccessCodeModificationResponseValue *)self accessoryAccessCodeValue];
  [coderCopy encodeObject:accessoryAccessCodeValue forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessoryAccessCodeValue"];

  accessCodeValue = [(HMAccessCodeModificationResponseValue *)self accessCodeValue];
  [coderCopy encodeObject:accessCodeValue forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessCodeValue"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessCodeModificationResponseValue operationType](self, "operationType")}];
  [coderCopy encodeObject:v8 forKey:@"HMAccessCodeModificationResponseValueCodingKeyOperationType"];

  error = [(HMAccessCodeModificationResponseValue *)self error];
  [coderCopy encodeObject:error forKey:@"HMAccessCodeModificationResponseValueCodingKeyError"];
}

- (unint64_t)hash
{
  accessoryUUID = [(HMAccessCodeModificationResponseValue *)self accessoryUUID];
  v4 = [accessoryUUID hash];
  accessoryAccessCodeValue = [(HMAccessCodeModificationResponseValue *)self accessoryAccessCodeValue];
  v6 = [accessoryAccessCodeValue hash] ^ v4;
  accessCodeValue = [(HMAccessCodeModificationResponseValue *)self accessCodeValue];
  v8 = [accessCodeValue hash];
  v9 = v6 ^ v8 ^ [(HMAccessCodeModificationResponseValue *)self operationType];
  error = [(HMAccessCodeModificationResponseValue *)self error];
  v11 = [error hash];

  return v9 ^ v11;
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
    accessoryUUID = [(HMAccessCodeModificationResponseValue *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    if ([accessoryUUID isEqual:accessoryUUID2] && (-[HMAccessCodeModificationResponseValue accessoryAccessCodeValue](self, "accessoryAccessCodeValue"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "accessoryAccessCodeValue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11) && (-[HMAccessCodeModificationResponseValue accessCodeValue](self, "accessCodeValue"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "accessCodeValue"), v13 = objc_claimAutoreleasedReturnValue(), v14 = HMFEqualObjects(), v13, v12, v14) && (v15 = -[HMAccessCodeModificationResponseValue operationType](self, "operationType"), v15 == objc_msgSend(v6, "operationType")))
    {
      error = [(HMAccessCodeModificationResponseValue *)self error];
      error2 = [v6 error];
      v18 = HMFEqualObjects();
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (HMAccessCodeModificationResponseValue)initWithAccessoryUUID:(id)d accessoryAccessCodeValue:(id)value accessCodeValue:(id)codeValue operationType:(int64_t)type error:(id)error
{
  dCopy = d;
  valueCopy = value;
  codeValueCopy = codeValue;
  errorCopy = error;
  v24.receiver = self;
  v24.super_class = HMAccessCodeModificationResponseValue;
  v16 = [(HMAccessCodeModificationResponseValue *)&v24 init];
  if (v16)
  {
    v17 = [dCopy copy];
    accessoryUUID = v16->_accessoryUUID;
    v16->_accessoryUUID = v17;

    v19 = [valueCopy copy];
    accessoryAccessCodeValue = v16->_accessoryAccessCodeValue;
    v16->_accessoryAccessCodeValue = v19;

    v21 = [codeValueCopy copy];
    accessCodeValue = v16->_accessCodeValue;
    v16->_accessCodeValue = v21;

    v16->_operationType = type;
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end