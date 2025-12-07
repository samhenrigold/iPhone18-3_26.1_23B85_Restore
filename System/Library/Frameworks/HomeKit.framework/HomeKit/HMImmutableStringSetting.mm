@interface HMImmutableStringSetting
- (BOOL)isEqual:(id)equal;
- (HMImmutableStringSetting)initWithKeyPath:(id)path readOnly:(BOOL)only payload:(id)payload;
- (HMImmutableStringSetting)initWithKeyPath:(id)path readOnly:(BOOL)only stringValue:(id)value;
- (HMImmutableStringSetting)initWithProtoPayload:(id)payload;
- (HMImmutableStringSetting)settingWithSettingValue:(id)value;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (id)settingValue;
@end

@implementation HMImmutableStringSetting

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
    if (v6 && (v11.receiver = self, v11.super_class = HMImmutableStringSetting, [(HMImmutableSetting *)&v11 isEqual:v6]))
    {
      stringValue = [(HMImmutableStringSetting *)self stringValue];
      stringValue2 = [(HMImmutableStringSetting *)v6 stringValue];
      v9 = [stringValue isEqualToString:stringValue2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)attributeDescriptions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMImmutableStringSetting;
  attributeDescriptions = [(HMImmutableSetting *)&v10 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  stringValue = [(HMImmutableStringSetting *)self stringValue];
  v6 = [v4 initWithName:@"stringValue" value:stringValue];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (HMImmutableStringSetting)initWithKeyPath:(id)path readOnly:(BOOL)only payload:(id)payload
{
  onlyCopy = only;
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  payloadCopy = payload;
  v10 = [payloadCopy hmf_stringForKey:@"HMImmutableSettingValuePayloadKey"];
  if (v10)
  {
    selfCopy = [(HMImmutableStringSetting *)self initWithKeyPath:pathCopy readOnly:onlyCopy stringValue:v10];
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
      v20 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode string setting due to no string value in payload: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

- (id)payloadCopy
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = HMImmutableStringSetting;
  payloadCopy = [(HMImmutableSetting *)&v9 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v10[0] = @"HMImmutableSettingTypePayloadKey";
  v10[1] = @"HMImmutableSettingValuePayloadKey";
  v11[0] = &unk_1F0EFD220;
  stringValue = [(HMImmutableStringSetting *)self stringValue];
  v11[1] = stringValue;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];

  return v7;
}

- (id)protoPayload
{
  v11.receiver = self;
  v11.super_class = HMImmutableStringSetting;
  protoPayload = [(HMImmutableSetting *)&v11 protoPayload];
  v4 = objc_alloc_init(HMImmutableSettingsProtoStringSettingEvent);
  [protoPayload setStringSetting:v4];

  v5 = objc_alloc_init(HMImmutableSettingsProtoStringValueEvent);
  stringSetting = [protoPayload stringSetting];
  [stringSetting setValue:v5];

  stringValue = [(HMImmutableStringSetting *)self stringValue];
  stringSetting2 = [protoPayload stringSetting];
  value = [stringSetting2 value];
  [value setValue:stringValue];

  return protoPayload;
}

- (HMImmutableStringSetting)initWithProtoPayload:(id)payload
{
  v23 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (([payloadCopy hasKeyPath] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = payloadCopy;
    v17 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_12:
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, v17, &v19, 0x16u);

    goto LABEL_13;
  }

  if (([payloadCopy hasReadOnly] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = payloadCopy;
    v17 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_12;
  }

  if (![payloadCopy hasStringSetting] || (objc_msgSend(payloadCopy, "stringSetting"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "value"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = payloadCopy;
      v17 = "%{public}@Failed to decode setting missing string value: %@";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_14;
  }

  keyPath = [payloadCopy keyPath];
  readOnly = [payloadCopy readOnly];
  stringSetting = [payloadCopy stringSetting];
  value = [stringSetting value];
  v10Value = [value value];
  selfCopy3 = [(HMImmutableStringSetting *)self initWithKeyPath:keyPath readOnly:readOnly stringValue:v10Value];

  v13 = selfCopy3;
LABEL_14:

  return v13;
}

- (id)settingValue
{
  v3 = [HMSettingStringValue alloc];
  stringValue = [(HMImmutableStringSetting *)self stringValue];
  v5 = [(HMSettingStringValue *)v3 initWithStringValue:stringValue];

  return v5;
}

- (HMImmutableStringSetting)settingWithSettingValue:(id)value
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
    v7 = [HMImmutableStringSetting alloc];
    keyPath = [(HMImmutableSetting *)self keyPath];
    isReadOnly = [(HMImmutableSetting *)self isReadOnly];
    stringValue = [v6 stringValue];
    v11 = [(HMImmutableStringSetting *)v7 initWithKeyPath:keyPath readOnly:isReadOnly stringValue:stringValue];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMImmutableStringSetting)initWithKeyPath:(id)path readOnly:(BOOL)only stringValue:(id)value
{
  onlyCopy = only;
  pathCopy = path;
  valueCopy = value;
  if (valueCopy)
  {
    v10 = valueCopy;
    v17.receiver = self;
    v17.super_class = HMImmutableStringSetting;
    v11 = [(HMImmutableSetting *)&v17 initWithKeyPath:pathCopy readOnly:onlyCopy];
    if (v11)
    {
      v12 = [v10 copy];
      stringValue = v11->_stringValue;
      v11->_stringValue = v12;
    }

    return v11;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    [(HMAccessoryDiagnosticsMetadata *)v15 .cxx_destruct];
  }

  return result;
}

@end