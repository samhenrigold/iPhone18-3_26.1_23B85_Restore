@interface HMLanguageValueListSetting
- (BOOL)isEqual:(id)equal;
- (HMLanguageValueListSetting)initWithKeyPath:(id)path readOnly:(BOOL)only languageValues:(id)values;
- (HMLanguageValueListSetting)initWithKeyPath:(id)path readOnly:(BOOL)only payload:(id)payload;
- (HMLanguageValueListSetting)initWithProtoPayload:(id)payload;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMLanguageValueListSetting

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
    if (v6 && (v15.receiver = self, v15.super_class = HMLanguageValueListSetting, [(HMImmutableSetting *)&v15 isEqual:v6]))
    {
      languageValues = [(HMLanguageValueListSetting *)self languageValues];
      v8 = [languageValues count];
      languageValues2 = [(HMLanguageValueListSetting *)v6 languageValues];
      if (v8 == [languageValues2 count])
      {
        languageValues3 = [(HMLanguageValueListSetting *)self languageValues];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __38__HMLanguageValueListSetting_isEqual___block_invoke;
        v13[3] = &unk_1E7547480;
        v14 = v6;
        v11 = [languageValues3 na_allObjectsPassTest:v13];
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

uint64_t __38__HMLanguageValueListSetting_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 languageValues];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (unint64_t)hash
{
  languageValues = [(HMLanguageValueListSetting *)self languageValues];
  v4 = [languageValues hash];
  v7.receiver = self;
  v7.super_class = HMLanguageValueListSetting;
  v5 = [(HMImmutableSetting *)&v7 hash];

  return v5 ^ v4;
}

- (id)attributeDescriptions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMLanguageValueListSetting;
  attributeDescriptions = [(HMImmutableSetting *)&v10 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  languageValues = [(HMLanguageValueListSetting *)self languageValues];
  v6 = [v4 initWithName:@"languageValues" value:languageValues];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (HMLanguageValueListSetting)initWithKeyPath:(id)path readOnly:(BOOL)only payload:(id)payload
{
  onlyCopy = only;
  v27 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  payloadCopy = payload;
  v10 = [payloadCopy hmf_arrayForKey:@"HMImmutableSettingValuePayloadKey"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 na_map:&__block_literal_global_16];
    v13 = [v11 count];
    if (v13 == [v12 count])
    {
      selfCopy2 = [(HMLanguageValueListSetting *)self initWithKeyPath:pathCopy readOnly:onlyCopy languageValues:v12];
      v15 = selfCopy2;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode language value list setting due to invalid language value payloads: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v15 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode language value list setting due to no language values in payload: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  return v15;
}

id __63__HMLanguageValueListSetting_initWithKeyPath_readOnly_payload___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMSettingLanguageValue alloc] initWithPayload:v2];

  v4 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v3];

  return v4;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x1E69E9840];
  languageValues = [(HMLanguageValueListSetting *)self languageValues];
  v4 = [languageValues na_map:&__block_literal_global_9];

  v10.receiver = self;
  v10.super_class = HMLanguageValueListSetting;
  payloadCopy = [(HMImmutableSetting *)&v10 payloadCopy];
  v6 = [payloadCopy mutableCopy];

  v11[0] = @"HMImmutableSettingTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFCCF8;
  v12[1] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v6 addEntriesFromDictionary:v7];

  v8 = [v6 copy];

  return v8;
}

- (id)protoPayload
{
  v10.receiver = self;
  v10.super_class = HMLanguageValueListSetting;
  protoPayload = [(HMImmutableSetting *)&v10 protoPayload];
  languageValues = [(HMLanguageValueListSetting *)self languageValues];
  v5 = [languageValues na_map:&__block_literal_global_10395];

  v6 = objc_alloc_init(HMImmutableSettingsProtoAvailableLanguageListEvent);
  [protoPayload setAvailableLanguages:v6];

  v7 = [v5 mutableCopy];
  availableLanguages = [protoPayload availableLanguages];
  [availableLanguages setLanguages:v7];

  return protoPayload;
}

HMImmutableSettingsProtoLanguageValueEvent *__42__HMLanguageValueListSetting_protoPayload__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(HMImmutableSettingsProtoLanguageValueEvent);
  v4 = [v2 inputLanguageCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v3 setInputLanguageCode:v4];

  v5 = [v2 outputVoiceLanguageCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v3 setOutputVoiceLanguageCode:v5];

  v6 = [v2 outputVoiceGenderCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v3 setOutputVoiceGenderCode:v6];

  v7 = [v2 voiceName];

  [(HMImmutableSettingsProtoLanguageValueEvent *)v3 setVoiceName:v7];

  return v3;
}

- (HMLanguageValueListSetting)initWithProtoPayload:(id)payload
{
  v29 = *MEMORY[0x1E69E9840];
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
    *buf = 138543618;
    v26 = v16;
    v27 = 2112;
    v28 = payloadCopy;
    v17 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_12:
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);

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
    *buf = 138543618;
    v26 = v16;
    v27 = 2112;
    v28 = payloadCopy;
    v17 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_12;
  }

  if (![payloadCopy hasAvailableLanguages] || (objc_msgSend(payloadCopy, "availableLanguages"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v16;
      v27 = 2112;
      v28 = payloadCopy;
      v17 = "%{public}@Failed to decode setting missing available languages: %@";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_14;
  }

  availableLanguages = [payloadCopy availableLanguages];
  languages = [availableLanguages languages];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __51__HMLanguageValueListSetting_initWithProtoPayload___block_invoke;
  v22 = &unk_1E75473F8;
  selfCopy4 = self;
  v23 = selfCopy4;
  v9 = payloadCopy;
  v24 = v9;
  v10 = [languages na_map:&v19];
  keyPath = [v9 keyPath];
  selfCopy3 = -[HMLanguageValueListSetting initWithKeyPath:readOnly:languageValues:](selfCopy4, "initWithKeyPath:readOnly:languageValues:", keyPath, [v9 readOnly], v10);

  v13 = selfCopy3;
LABEL_14:

  return v13;
}

id __51__HMLanguageValueListSetting_initWithProtoPayload___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 hasInputLanguageCode] && objc_msgSend(v3, "hasOutputVoiceLanguageCode") && (objc_msgSend(v3, "hasOutputVoiceGenderCode") & 1) != 0)
  {
    v4 = [HMSettingLanguageValue alloc];
    v5 = [v3 inputLanguageCode];
    v6 = [v3 outputVoiceLanguageCode];
    v7 = [v3 outputVoiceGenderCode];
    v8 = [v3 voiceName];
    v9 = [(HMSettingLanguageValue *)v4 initWithInputLanguageCode:v5 outputVoiceLanguageCode:v6 outputVoiceGenderCode:v7 voiceName:v8];
    v10 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Language value is missing required attributes: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

- (HMLanguageValueListSetting)initWithKeyPath:(id)path readOnly:(BOOL)only languageValues:(id)values
{
  onlyCopy = only;
  valuesCopy = values;
  v13.receiver = self;
  v13.super_class = HMLanguageValueListSetting;
  v9 = [(HMImmutableSetting *)&v13 initWithKeyPath:path readOnly:onlyCopy];
  if (v9)
  {
    v10 = [valuesCopy copy];
    languageValues = v9->_languageValues;
    v9->_languageValues = v10;
  }

  return v9;
}

@end