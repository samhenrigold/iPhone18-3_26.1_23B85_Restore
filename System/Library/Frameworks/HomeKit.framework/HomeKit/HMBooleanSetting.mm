@interface HMBooleanSetting
- (BOOL)isEqual:(id)equal;
- (HMBooleanSetting)initWithKeyPath:(id)path readOnly:(BOOL)only BOOLValue:(BOOL)value;
- (HMBooleanSetting)initWithKeyPath:(id)path readOnly:(BOOL)only payload:(id)payload;
- (HMBooleanSetting)initWithProtoPayload:(id)payload;
- (HMBooleanSetting)settingWithSettingValue:(id)value;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (id)settingValue;
@end

@implementation HMBooleanSetting

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
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
    if (v6 && (v10.receiver = self, v10.super_class = HMBooleanSetting, [(HMImmutableSetting *)&v10 isEqual:v6]))
    {
      bOOLValue = [(HMBooleanSetting *)self BOOLValue];
      v8 = bOOLValue ^ [(HMBooleanSetting *)v6 BOOLValue]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)attributeDescriptions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMBooleanSetting;
  attributeDescriptions = [(HMImmutableSetting *)&v10 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMBooleanSetting *)self BOOLValue];
  v5 = HMFBooleanToString();
  v6 = [v4 initWithName:@"BOOLValue" value:v5];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (HMBooleanSetting)initWithKeyPath:(id)path readOnly:(BOOL)only payload:(id)payload
{
  onlyCopy = only;
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  payloadCopy = payload;
  v18 = 0;
  v10 = [payloadCopy hmf_BOOLForKey:@"HMImmutableSettingValuePayloadKey" error:&v18];
  v11 = v18;
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = payloadCopy;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode BOOLean setting due to no BOOL value in payload: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = 0;
  }

  else
  {
    selfCopy = [(HMBooleanSetting *)self initWithKeyPath:pathCopy readOnly:onlyCopy BOOLValue:v10];
    v16 = selfCopy;
  }

  return v16;
}

- (id)payloadCopy
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = HMBooleanSetting;
  payloadCopy = [(HMImmutableSetting *)&v9 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v10[0] = @"HMImmutableSettingTypePayloadKey";
  v10[1] = @"HMImmutableSettingValuePayloadKey";
  v11[0] = &unk_1F0EFD298;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBooleanSetting BOOLValue](self, "BOOLValue")}];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];

  return v7;
}

- (id)protoPayload
{
  v11.receiver = self;
  v11.super_class = HMBooleanSetting;
  protoPayload = [(HMImmutableSetting *)&v11 protoPayload];
  v4 = objc_alloc_init(HMImmutableSettingsProtoBoolSettingEvent);
  [protoPayload setBoolSetting:v4];

  v5 = objc_alloc_init(HMImmutableSettingsProtoBoolValueEvent);
  bOOLSetting = [protoPayload BOOLSetting];
  [bOOLSetting setValue:v5];

  bOOLValue = [(HMBooleanSetting *)self BOOLValue];
  bOOLSetting2 = [protoPayload BOOLSetting];
  value = [bOOLSetting2 value];
  [value setValue:bOOLValue];

  return protoPayload;
}

- (HMBooleanSetting)initWithProtoPayload:(id)payload
{
  v22 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (([payloadCopy hasKeyPath] & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v15;
    v20 = 2112;
    v21 = payloadCopy;
    v16 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_12:
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, v16, &v18, 0x16u);

    goto LABEL_13;
  }

  if (([payloadCopy hasReadOnly] & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v15;
    v20 = 2112;
    v21 = payloadCopy;
    v16 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_12;
  }

  if (![payloadCopy hasBoolSetting] || (objc_msgSend(payloadCopy, "BOOLSetting"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasValue"), v5, (v6 & 1) == 0))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = payloadCopy;
      v16 = "%{public}@Failed to decode setting missing BOOL value: %@";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v13);
    v12 = 0;
    goto LABEL_14;
  }

  keyPath = [payloadCopy keyPath];
  readOnly = [payloadCopy readOnly];
  bOOLSetting = [payloadCopy BOOLSetting];
  value = [bOOLSetting value];
  selfCopy3 = -[HMBooleanSetting initWithKeyPath:readOnly:BOOLValue:](self, "initWithKeyPath:readOnly:BOOLValue:", keyPath, readOnly, [value value]);

  v12 = selfCopy3;
LABEL_14:

  return v12;
}

- (id)settingValue
{
  v2 = [[HMSettingBooleanValue alloc] initWithBoolValue:[(HMBooleanSetting *)self BOOLValue]];

  return v2;
}

- (HMBooleanSetting)settingWithSettingValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [HMBooleanSetting alloc];
    keyPath = [(HMImmutableSetting *)self keyPath];
    v9 = -[HMBooleanSetting initWithKeyPath:readOnly:BOOLValue:](v7, "initWithKeyPath:readOnly:BOOLValue:", keyPath, -[HMImmutableSetting isReadOnly](self, "isReadOnly"), [v6 BOOLValue]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMBooleanSetting)initWithKeyPath:(id)path readOnly:(BOOL)only BOOLValue:(BOOL)value
{
  v7.receiver = self;
  v7.super_class = HMBooleanSetting;
  result = [(HMImmutableSetting *)&v7 initWithKeyPath:path readOnly:only];
  if (result)
  {
    result->_BOOLValue = value;
  }

  return result;
}

@end