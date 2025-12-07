@interface HMDSiriEndpointProfileAccessorySettingFields
+ (id)keyPaths;
+ (id)logCategory;
- (HMDSiriEndpointProfileAccessorySettingFields)init;
- (id)attributeDescriptions;
- (id)serializeFields;
- (void)setBoolValue:(BOOL)value forKeyPath:(id)path;
- (void)setLanguageValue:(id)value forKeyPath:(id)path;
- (void)setNumberValue:(id)value forKeyPath:(id)path;
@end

@implementation HMDSiriEndpointProfileAccessorySettingFields

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  serializeFields = [(HMDSiriEndpointProfileAccessorySettingFields *)self serializeFields];
  v5 = [v3 initWithName:@"serializedFields" value:serializeFields];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)serializeFields
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_serializeFields);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLanguageValue:(id)value forKeyPath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  v8 = +[HMDSiriEndpointProfileAccessorySettingFields languageValueKeyPaths];
  v9 = [v8 containsObject:pathCopy];

  if (v9)
  {
    v10 = [HMDSiriEndpointProfileAccessorySettingFields fieldKeyForKeyPath:pathCopy];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, @"_inputLanguageCode"];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, @"_outputVoiceLanguageCode"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, @"_outputVoiceGenderCode"];
    os_unfair_lock_lock_with_options();
    serializeFields = self->_serializeFields;
    inputLanguageCode = [valueCopy inputLanguageCode];
    [(NSMutableDictionary *)serializeFields setObject:inputLanguageCode forKey:v23];

    v15 = self->_serializeFields;
    outputVoiceLanguageCode = [valueCopy outputVoiceLanguageCode];
    [(NSMutableDictionary *)v15 setObject:outputVoiceLanguageCode forKey:v11];

    v17 = self->_serializeFields;
    outputVoiceGenderCode = [valueCopy outputVoiceGenderCode];
    [(NSMutableDictionary *)v17 setObject:outputVoiceGenderCode forKey:v12];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v22;
      v26 = 2112;
      v27 = valueCopy;
      v28 = 2112;
      v29 = pathCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to store language value: %@ for keypath: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (void)setNumberValue:(id)value forKeyPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  v8 = +[HMDSiriEndpointProfileAccessorySettingFields numberValueKeyPaths];
  v9 = [v8 containsObject:pathCopy];

  if (v9)
  {
    v10 = [HMDSiriEndpointProfileAccessorySettingFields fieldKeyForKeyPath:pathCopy];
    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_serializeFields setObject:valueCopy forKey:v10];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v14;
      v17 = 2112;
      v18 = valueCopy;
      v19 = 2112;
      v20 = pathCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to store integer value: %@ for keypath: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)setBoolValue:(BOOL)value forKeyPath:(id)path
{
  valueCopy = value;
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = +[HMDSiriEndpointProfileAccessorySettingFields BOOLeanValueKeyPaths];
  v8 = [v7 containsObject:pathCopy];

  if (v8)
  {
    v9 = [HMDSiriEndpointProfileAccessorySettingFields fieldKeyForKeyPath:pathCopy];
    os_unfair_lock_lock_with_options();
    serializeFields = self->_serializeFields;
    v11 = [MEMORY[0x277CCABB0] numberWithBool:valueCopy];
    [(NSMutableDictionary *)serializeFields setObject:v11 forKey:v9];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFBooleanToString();
      v17 = 138543874;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = pathCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to store BOOLean value: %@ for keypath: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (HMDSiriEndpointProfileAccessorySettingFields)init
{
  v7.receiver = self;
  v7.super_class = HMDSiriEndpointProfileAccessorySettingFields;
  v2 = [(HMDSiriEndpointProfileAccessorySettingFields *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serializeFields = v3->_serializeFields;
    v3->_serializeFields = v4;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_56196 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_56196, &__block_literal_global_56197);
  }

  v3 = logCategory__hmf_once_v8_56198;

  return v3;
}

uint64_t __59__HMDSiriEndpointProfileAccessorySettingFields_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_56198;
  logCategory__hmf_once_v8_56198 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)keyPaths
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = +[HMDSiriEndpointProfileAccessorySettingFields BOOLeanValueKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[HMDSiriEndpointProfileAccessorySettingFields numberValueKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[HMDSiriEndpointProfileAccessorySettingFields languageValueKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = objc_msgSend_copy(v2);

  return v6;
}

@end