@interface HMIPreference
+ (BOOL)isAudioAccessory;
+ (HMIPreference)sharedInstance;
+ (NSDictionary)qosMap;
+ (int)productType;
- (BOOL)BOOLPreferenceForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)hasPreferenceForKey:(id)key;
- (BOOL)shouldEnableTorsoRecognition;
- (BOOL)shouldUseCPUOnlyForVisionFaceDetection;
- (BOOL)usesCPUOnly;
- (HMIPreference)init;
- (NSDictionary)preferenceOverrides;
- (double)maxAnalysisFPSForCurrentPeakPowerPressureLevel;
- (double)maxAnalysisFPSForCurrentThermalLevel;
- (double)maxAnalysisFPSForSystemResourceUsageLevel:(int64_t)level;
- (id)numberPreferenceForKey:(id)key;
- (id)numberPreferenceForKey:(id)key defaultValue:(id)value;
- (id)numberPreferenceForKey:(id)key defaultValue:(id)value withMap:(id)map;
- (id)numberPreferenceForKey:(id)key defaultValue:(id)value withParser:(id)parser;
- (id)stringPreferenceForKey:(id)key defaultValue:(id)value;
- (id)systemPreferenceValueForKey:(id)key;
- (id)valuePreferenceForKey:(id)key defaultValue:(id)value withMap:(id)map;
- (id)valuePreferenceForKey:(id)key defaultValue:(id)value withParser:(id)parser;
- (unint64_t)maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel;
- (unint64_t)maxConcurrentAnalyzersForCurrentThermalLevel;
- (unint64_t)maxConcurrentAnalyzersForSystemResourceUsageLevel:(int64_t)level;
- (unsigned)analysisQOS;
- (void)addPreferenceOverrideFromDictionary:(id)dictionary;
- (void)logPreferenceForKey:(id)key value:(id)value;
- (void)removeAllPreferenceOverrides;
- (void)setPreferenceOverrideFromDictionary:(id)dictionary;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIPreference

+ (HMIPreference)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMIPreference_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

uint64_t __31__HMIPreference_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSDictionary)qosMap
{
  if (qosMap_onceToken != -1)
  {
    +[HMIPreference qosMap];
  }

  v3 = qosMap_map;

  return v3;
}

void __23__HMIPreference_qosMap__block_invoke()
{
  v0 = qosMap_map;
  qosMap_map = &unk_284075AB8;
}

+ (int)productType
{
  pretendProductType = [self pretendProductType];

  if (pretendProductType)
  {
    pretendProductType2 = [self pretendProductType];
    longLongValue = [pretendProductType2 longLongValue];

    return longLongValue;
  }

  else
  {

    return MEMORY[0x2821F5C78]();
  }
}

+ (BOOL)isAudioAccessory
{
  if (+[HMIPreference isProductTypeB238](HMIPreference, "isProductTypeB238") || +[HMIPreference isProductTypeB520])
  {
    return 1;
  }

  return +[HMIPreference isProductTypeB620];
}

- (BOOL)usesCPUOnly
{
  +[HMIPreference isProductTypeJ105];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v4 = [HMIPreference numberPreferenceForKey:"numberPreferenceForKey:defaultValue:withMap:" defaultValue:? withMap:?];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldUseCPUOnlyForVisionFaceDetection
{
  if (+[HMIPreference isProductTypeB520])
  {
    return 1;
  }

  return +[HMIPreference isProductTypeB620];
}

- (unint64_t)maxConcurrentAnalyzersForCurrentThermalLevel
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[HMIThermalMonitor sharedInstance];
  thermalLevel = [v2 thermalLevel];

  if (+[HMIPreference isProductTypeJ105])
  {
    result = 0;
    v5 = xmmword_22D298430;
    v6 = xmmword_22D298440;
    v7 = 0x3FF0000000000000;
    do
    {
      if (*(&v5 + result) <= thermalLevel)
      {
        break;
      }

      ++result;
    }

    while (result != 5);
  }

  else if (+[HMIPreference isProductTypeB238])
  {
    result = 0;
    while (dbl_22D298450[result] > thermalLevel)
    {
      if (++result == 3)
      {
        return 2;
      }
    }
  }

  else if (+[HMIPreference isProductTypeB520])
  {
    return 2 * (thermalLevel < 10);
  }

  else if (+[HMIPreference isProductTypeB620])
  {
    if (thermalLevel <= 9)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else if (+[HMIPreference isProductTypeJ255])
  {
    result = 0;
    v5 = xmmword_22D298410;
    v6 = xmmword_22D298420;
    v7 = 0x4010000000000000;
    do
    {
      if (*(&v5 + result) <= thermalLevel)
      {
        break;
      }

      ++result;
    }

    while (result != 5);
  }

  else
  {
    return 5;
  }

  return result;
}

- (unint64_t)maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel
{
  v2 = +[HMIPeakPowerPressureMonitor sharedInstance];
  peakPowerPressureLevel = [v2 peakPowerPressureLevel];

  if (+[HMIPreference isProductTypeJ255]&& peakPowerPressureLevel - 1 <= 3)
  {
    return qword_22D298468[peakPowerPressureLevel - 1];
  }

  else
  {
    return 5;
  }
}

- (unint64_t)maxConcurrentAnalyzersForSystemResourceUsageLevel:(int64_t)level
{
  [(HMIPreference *)self maxConcurrentAnalyzersForCurrentThermalLevel];
  [(HMIPreference *)self maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel];
  +[HMIPreference isProductTypeJ105];
  +[HMIPreference isAudioAccessory];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  [productInfo productClass];

  v5 = +[HMIPreference sharedInstance];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [v5 numberPreferenceForKey:? defaultValue:?];
  intValue = [v7 intValue];

  return intValue;
}

- (BOOL)shouldEnableTorsoRecognition
{
  if (+[HMIPreference isProductTypeB238](HMIPreference, "isProductTypeB238") || +[HMIPreference isProductTypeJ42])
  {
    return 0;
  }

  v3 = +[HMIPreference sharedInstance];
  v4 = [v3 BOOLPreferenceForKey:? defaultValue:?];

  return v4;
}

- (double)maxAnalysisFPSForCurrentThermalLevel
{
  v2 = +[HMIThermalMonitor sharedInstance];
  thermalLevel = [v2 thermalLevel];

  if (!+[HMIPreference isProductTypeB238]|| (result = 0.125, thermalLevel <= 3) && (result = 0.25, thermalLevel != 3) && (result = 0.5, thermalLevel <= 1))
  {
    if (!+[HMIPreference isProductTypeJ105]|| (result = 0.125, thermalLevel <= 3) && (result = 0.25, thermalLevel != 3) && (result = 0.5, thermalLevel <= 1))
    {
      if (!+[HMIPreference isProductTypeB520]|| (result = 0.125, thermalLevel <= 7) && (result = 0.25, thermalLevel != 7) && (result = 0.5, thermalLevel <= 5))
      {
        if (!+[HMIPreference isProductTypeB620]|| (result = 0.125, thermalLevel <= 7) && (result = 0.25, thermalLevel != 7) && (result = 0.5, thermalLevel <= 5))
        {
          if (!+[HMIPreference isProductTypeJ255])
          {
            return 1.0;
          }

          result = 0.125;
          if (thermalLevel <= 3)
          {
            result = 0.25;
            if (thermalLevel != 3)
            {
              result = 0.5;
              if (thermalLevel <= 1)
              {
                return 1.0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (double)maxAnalysisFPSForCurrentPeakPowerPressureLevel
{
  v2 = +[HMIPeakPowerPressureMonitor sharedInstance];
  peakPowerPressureLevel = [v2 peakPowerPressureLevel];

  v4 = +[HMIPreference isProductTypeJ255];
  result = 1.0;
  if (v4)
  {
    if (peakPowerPressureLevel - 2 <= 2)
    {
      return dbl_22D298488[peakPowerPressureLevel - 2];
    }
  }

  return result;
}

- (double)maxAnalysisFPSForSystemResourceUsageLevel:(int64_t)level
{
  [(HMIPreference *)self maxAnalysisFPSForCurrentThermalLevel];
  [(HMIPreference *)self maxAnalysisFPSForCurrentPeakPowerPressureLevel];
  +[HMIPreference isProductTypeJ105];
  v4 = +[HMIPreference sharedInstance];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v6 = [v4 numberPreferenceForKey:? defaultValue:?];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (unsigned)analysisQOS
{
  v2 = +[HMIPreference sharedInstance];
  v3 = +[HMIPreference qosMap];
  v4 = [v2 numberPreferenceForKey:? defaultValue:? withMap:?];
  intValue = [v4 intValue];

  return intValue;
}

- (HMIPreference)init
{
  v13.receiver = self;
  v13.super_class = HMIPreference;
  v2 = [(HMIPreference *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:? options:?];
    preferenceCacheFlushTimer = v3->_preferenceCacheFlushTimer;
    v3->_preferenceCacheFlushTimer = v4;

    [(HMFTimer *)v3->_preferenceCacheFlushTimer setDelegate:?];
    [(HMFTimer *)v3->_preferenceCacheFlushTimer resume];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    preferenceCache = v3->_preferenceCache;
    v3->_preferenceCache = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    preferenceLoggedValues = v3->_preferenceLoggedValues;
    v3->_preferenceLoggedValues = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    preferenceOverridesInternal = v3->_preferenceOverridesInternal;
    v3->_preferenceOverridesInternal = dictionary3;
  }

  return v3;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  preferenceCache = [(HMIPreference *)self preferenceCache];
  [preferenceCache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v4);
}

- (NSDictionary)preferenceOverrides
{
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  v4 = [preferenceOverridesInternal copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)addPreferenceOverrideFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  [preferenceOverridesInternal addEntriesFromDictionary:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferenceOverrideFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  [preferenceOverridesInternal removeAllObjects];

  preferenceOverridesInternal2 = [(HMIPreference *)self preferenceOverridesInternal];
  [preferenceOverridesInternal2 addEntriesFromDictionary:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllPreferenceOverrides
{
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  [preferenceOverridesInternal removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)logPreferenceForKey:(id)key value:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  preferenceLoggedValues = [(HMIPreference *)self preferenceLoggedValues];
  v9 = [preferenceLoggedValues objectForKeyedSubscript:?];

  if (v9 != valueCopy && ([v9 isEqual:?] & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138544130;
      v16 = v13;
      v17 = 2112;
      v18 = keyCopy;
      v19 = 2112;
      v20 = valueCopy;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Preference %@ is now %@, previously was %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    preferenceLoggedValues2 = [(HMIPreference *)selfCopy preferenceLoggedValues];
    if (valueCopy)
    {
      [preferenceLoggedValues2 setObject:? forKeyedSubscript:?];
    }

    else
    {
      [preferenceLoggedValues2 removeObjectForKey:?];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)systemPreferenceValueForKey:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  value = [preferenceOverridesInternal objectForKeyedSubscript:?];

  os_unfair_lock_unlock(&self->_lock);
  if (value)
  {
    goto LABEL_2;
  }

  os_unfair_lock_lock_with_options();
  preferenceCache = [(HMIPreference *)self preferenceCache];
  value = [preferenceCache objectForKeyedSubscript:?];

  if (value)
  {
    null = [MEMORY[0x277CBEB68] null];

    if (value == null)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D0F918]) initWithKey:? options:? domain:? defaultValue:?];
    value = [v11 value];

    if (!value)
    {
      value = [MEMORY[0x277CBEB68] null];
      preferenceCache2 = [(HMIPreference *)self preferenceCache];
      [preferenceCache2 setObject:? forKeyedSubscript:?];

LABEL_16:
      os_unfair_lock_unlock(&self->_lock);
      value = 0;
      goto LABEL_2;
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = keyCopy;
      v23 = 2112;
      v24 = value;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_INFO, "%{public}@Override set for preference: %@ value: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    preferenceCache3 = [(HMIPreference *)selfCopy preferenceCache];
    [preferenceCache3 setObject:? forKeyedSubscript:?];
  }

  os_unfair_lock_unlock(&self->_lock);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
      objc_exception_throw(v17);
    }
  }

LABEL_2:
  v7 = value;

  return v7;
}

- (id)numberPreferenceForKey:(id)key defaultValue:(id)value withParser:(id)parser
{
  keyCopy = key;
  valueCopy = value;
  parserCopy = parser;
  v11 = valueCopy;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:?];
  v13 = v11;
  if (v12)
  {
    v14 = parserCopy[2](parserCopy, v12);
    v15 = v14;
    v13 = v11;
    if (v14)
    {
      v13 = v14;
    }
  }

  [HMIPreference logPreferenceForKey:"logPreferenceForKey:value:" value:?];

  return v13;
}

- (id)numberPreferenceForKey:(id)key defaultValue:(id)value withMap:(id)map
{
  keyCopy = key;
  valueCopy = value;
  mapCopy = map;
  v11 = valueCopy;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:?];
  v13 = objectAsString(v12);

  v14 = v11;
  if (v13)
  {
    v22 = mapCopy;
    v15 = mapCopy;
    v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
    v14 = v11;
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0];
      v14 = v11;
      do
      {
        for (i = 0; i != v17; i = (i + 1))
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (![v13 caseInsensitiveCompare:?])
          {
            v20 = [v15 objectForKeyedSubscript:?];

            v14 = v20;
          }
        }

        v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }

    mapCopy = v22;
  }

  [HMIPreference logPreferenceForKey:"logPreferenceForKey:value:" value:?];

  return v14;
}

- (id)valuePreferenceForKey:(id)key defaultValue:(id)value withParser:(id)parser
{
  keyCopy = key;
  valueCopy = value;
  parserCopy = parser;
  v11 = valueCopy;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:?];
  v13 = v11;
  if (v12)
  {
    v14 = parserCopy[2](parserCopy, v12);
    v15 = v14;
    v13 = v11;
    if (v14)
    {
      v13 = v14;
    }
  }

  [HMIPreference logPreferenceForKey:"logPreferenceForKey:value:" value:?];

  return v13;
}

- (id)valuePreferenceForKey:(id)key defaultValue:(id)value withMap:(id)map
{
  keyCopy = key;
  valueCopy = value;
  mapCopy = map;
  v11 = valueCopy;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:?];
  v13 = objectAsString(v12);

  v14 = v11;
  if (v13)
  {
    v22 = mapCopy;
    v15 = mapCopy;
    v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
    v14 = v11;
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0];
      v14 = v11;
      do
      {
        for (i = 0; i != v17; i = (i + 1))
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (![v13 caseInsensitiveCompare:?])
          {
            v20 = [v15 objectForKeyedSubscript:?];

            v14 = v20;
          }
        }

        v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }

    mapCopy = v22;
  }

  [HMIPreference logPreferenceForKey:"logPreferenceForKey:value:" value:?];

  return v14;
}

- (id)numberPreferenceForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = [(HMIPreference *)self systemPreferenceValueForKey:?];
  v9 = objectAsNumber(v8);

  v10 = valueCopy;
  if (v9)
  {
    v10 = v9;
  }

  [HMIPreference logPreferenceForKey:"logPreferenceForKey:value:" value:?];

  return v10;
}

- (id)numberPreferenceForKey:(id)key
{
  v3 = [(HMIPreference *)self systemPreferenceValueForKey:?];
  v4 = objectAsNumber(v3);

  return v4;
}

- (BOOL)hasPreferenceForKey:(id)key
{
  v3 = [(HMIPreference *)self systemPreferenceValueForKey:?];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)BOOLPreferenceForKey:(id)key defaultValue:(BOOL)value
{
  v5 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v7 = [v5 numberWithBool:?];
  v8 = [HMIPreference numberPreferenceForKey:"numberPreferenceForKey:defaultValue:" defaultValue:?];

  LOBYTE(v5) = [v8 BOOLValue];
  return v5;
}

- (id)stringPreferenceForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = [(HMIPreference *)self systemPreferenceValueForKey:?];
  v9 = objectAsString(v8);

  v10 = valueCopy;
  if (v9)
  {
    v10 = v9;
  }

  [HMIPreference logPreferenceForKey:"logPreferenceForKey:value:" value:?];

  return v10;
}

@end