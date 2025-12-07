@interface HMStringListSetting
- (BOOL)isEqual:(id)equal;
- (HMStringListSetting)initWithKeyPath:(id)path readOnly:(BOOL)only payload:(id)payload;
- (HMStringListSetting)initWithKeyPath:(id)path readOnly:(BOOL)only stringListValue:(id)value;
- (id)attributeDescriptions;
- (id)payloadCopy;
@end

@implementation HMStringListSetting

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
    if (v6 && (v15.receiver = self, v15.super_class = HMStringListSetting, [(HMImmutableSetting *)&v15 isEqual:v6]))
    {
      stringListValue = [(HMStringListSetting *)self stringListValue];
      v8 = [stringListValue count];
      stringListValue2 = [(HMStringListSetting *)v6 stringListValue];
      if (v8 == [stringListValue2 count])
      {
        stringListValue3 = [(HMStringListSetting *)self stringListValue];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __31__HMStringListSetting_isEqual___block_invoke;
        v13[3] = &unk_1E7548550;
        v14 = v6;
        v11 = [stringListValue3 na_allObjectsPassTest:v13];
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

uint64_t __31__HMStringListSetting_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringListValue];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)attributeDescriptions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMStringListSetting;
  attributeDescriptions = [(HMImmutableSetting *)&v10 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  stringListValue = [(HMStringListSetting *)self stringListValue];
  v6 = [v4 initWithName:@"stringListValue" value:stringListValue];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (HMStringListSetting)initWithKeyPath:(id)path readOnly:(BOOL)only payload:(id)payload
{
  onlyCopy = only;
  v24[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  payloadCopy = payload;
  v10 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v12 = [v10 setWithArray:v11];
  v13 = [payloadCopy hmf_arrayForKey:@"HMImmutableSettingValuePayloadKey" ofClasses:v12];

  if (v13)
  {
    selfCopy = [(HMStringListSetting *)self initWithKeyPath:pathCopy readOnly:onlyCopy stringListValue:v13];
    v15 = selfCopy;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode string list setting due to invalid payload: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  return v15;
}

- (id)payloadCopy
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = HMStringListSetting;
  payloadCopy = [(HMImmutableSetting *)&v9 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v10[0] = @"HMImmutableSettingTypePayloadKey";
  v10[1] = @"HMImmutableSettingValuePayloadKey";
  v11[0] = &unk_1F0EFCC08;
  stringListValue = [(HMStringListSetting *)self stringListValue];
  v11[1] = stringListValue;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];

  return v7;
}

- (HMStringListSetting)initWithKeyPath:(id)path readOnly:(BOOL)only stringListValue:(id)value
{
  onlyCopy = only;
  pathCopy = path;
  valueCopy = value;
  if (valueCopy)
  {
    v10 = valueCopy;
    v17.receiver = self;
    v17.super_class = HMStringListSetting;
    v11 = [(HMImmutableSetting *)&v17 initWithKeyPath:pathCopy readOnly:onlyCopy];
    if (v11)
    {
      v12 = [v10 copy];
      stringListValue = v11->_stringListValue;
      v11->_stringListValue = v12;
    }

    return v11;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    [(HMAccessoryInfoProtoNetworkServiceEvent *)v15 .cxx_destruct];
  }

  return result;
}

@end