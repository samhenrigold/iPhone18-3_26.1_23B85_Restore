@interface NSDictionary(ASDTConfig)
+ (BOOL)asdtGetFourCC:()ASDTConfig forObject:withDefault:;
- (BOOL)asdtControlClassID:()ASDTConfig;
- (double)asdtManagerRunningLogPeriod;
- (id)asdtArrayForKey:()ASDTConfig;
- (id)asdtArrayOfDictionariesForKey:()ASDTConfig;
- (id)asdtArrayOfNumbersForKey:()ASDTConfig;
- (id)asdtArrayOfStringsForKey:()ASDTConfig;
- (id)asdtBundleClass;
- (id)asdtBundleExtension;
- (id)asdtDeviceModel;
- (id)asdtExclavesSensorName;
- (id)asdtFactorySubclass;
- (id)asdtFormats;
- (id)asdtFormatsWithSamplingRates:()ASDTConfig;
- (id)asdtInputLatenciesForSamplingRates:()ASDTConfig;
- (id)asdtLatenciesForSamplingRates:()ASDTConfig;
- (id)asdtLatenciesForSamplingRates:()ASDTConfig latencyUsKey:latencyDictKey:;
- (id)asdtNumberForKey:()ASDTConfig;
- (id)asdtOutputLatenciesForSamplingRates:()ASDTConfig;
- (id)asdtPropertyAddress;
- (id)asdtRelatedDeviceUIDs;
- (id)asdtServiceID;
- (id)asdtStringForKey:()ASDTConfig;
- (id)asdtSubclass;
- (objc_class)asdtDeviceManager;
- (uint64_t)asdtAddNonSecurePathEnable;
- (uint64_t)asdtBoolForKey:()ASDTConfig;
- (uint64_t)asdtClockDomain;
- (uint64_t)asdtDirection:()ASDTConfig;
- (uint64_t)asdtFourCCForKey:()ASDTConfig withDefault:;
- (uint64_t)asdtGetSelector:()ASDTConfig;
- (uint64_t)asdtIsSettable;
- (uint64_t)asdtIsolatedUseCaseID;
- (uint64_t)asdtManagerAudioObjectMaxCount;
- (uint64_t)asdtManagerInitializationWaitUs;
- (uint64_t)asdtManagerVerboseLogging;
- (uint64_t)asdtNumericCount;
- (uint64_t)asdtNumericIsVectorWithCount:()ASDTConfig;
- (uint64_t)asdtNumericType;
- (uint64_t)asdtPMActionWaiterTimeoutUs;
- (uint64_t)asdtPMOrder:()ASDTConfig forPowerUp:allowDefault:;
- (uint64_t)asdtPMOrderWithDefaultForPowerUp:()ASDTConfig;
- (uint64_t)asdtPropertyCacheMode;
- (uint64_t)asdtPropertyDataSizeBytes;
- (uint64_t)asdtPropertyIsPList;
- (uint64_t)asdtSamplingRate:()ASDTConfig andSamplingRates:withDefault:;
- (uint64_t)asdtSelectorControlItemSelected;
- (uint64_t)asdtSelectorControlItemValue:()ASDTConfig;
- (uint64_t)asdtStartingChannel;
@end

@implementation NSDictionary(ASDTConfig)

- (id)asdtArrayForKey:()ASDTConfig
{
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v8 = ASDTBaseLogType(isKindOfClass, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtArrayForKey:];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)asdtArrayOfDictionariesForKey:()ASDTConfig
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [self asdtArrayForKey:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v12 = ASDTBaseLogType(isKindOfClass, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtArrayOfDictionariesForKey:];
          }

          v7 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v7 = v5;
  }

LABEL_13:

  return v7;
}

- (id)asdtArrayOfNumbersForKey:()ASDTConfig
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [self asdtArrayForKey:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v12 = ASDTBaseLogType(isKindOfClass, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtArrayOfNumbersForKey:];
          }

          v7 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v7 = v5;
  }

LABEL_13:

  return v7;
}

- (id)asdtArrayOfStringsForKey:()ASDTConfig
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [self asdtArrayForKey:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v12 = ASDTBaseLogType(isKindOfClass, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtArrayOfStringsForKey:];
          }

          v7 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v7 = v5;
  }

LABEL_13:

  return v7;
}

- (id)asdtNumberForKey:()ASDTConfig
{
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v8 = ASDTBaseLogType(isKindOfClass, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtNumberForKey:];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)asdtBoolForKey:()ASDTConfig
{
  v1 = [self asdtNumberForKey:?];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)asdtStringForKey:()ASDTConfig
{
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v8 = ASDTBaseLogType(isKindOfClass, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtStringForKey:];
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)asdtGetFourCC:()ASDTConfig forObject:withDefault:
{
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 length];
    v10 = v9 < 5;
    if (v9 < 5)
    {
      uTF8String = [v8 UTF8String];
      if (uTF8String)
      {
        v12 = 0;
        a5 = 0;
        do
        {
          if (!*(uTF8String + v12))
          {
            break;
          }

          a5 = *(uTF8String + v12++) | (a5 << 8);
        }

        while (v12 != 4);
      }

      else
      {
        a5 = 0;
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a5 = [v7 unsignedIntValue];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a3)
  {
    *a3 = a5;
  }

  return v10;
}

- (uint64_t)asdtFourCCForKey:()ASDTConfig withDefault:
{
  v6 = a3;
  v11 = a4;
  v7 = objc_opt_class();
  v8 = [self objectForKey:v6];
  [v7 asdtGetFourCC:&v11 forObject:v8 withDefault:a4];

  v9 = v11;
  return v9;
}

- (id)asdtSubclass
{
  v1 = [self asdtStringForKey:@"Subclass"];
  v2 = v1;
  if (v1)
  {
    v3 = NSClassFromString(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)asdtFactorySubclass
{
  v2 = [self asdtStringForKey:@"FactorySubclass"];
  if (!v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [self asdtStringForKey:@"Subclass"];
    v2 = [v3 stringWithFormat:@"%@Factory", v4];
  }

  v5 = NSClassFromString(v2);

  return v5;
}

- (id)asdtServiceID
{
  v2 = [self asdtStringForKey:@"Identifier"];
  if (v2)
  {
    v3 = [self asdtNumberForKey:@"ClientType"];
    unsignedIntValue = [v3 unsignedIntValue];

    v5 = [ASDTIOServiceID forIdentifier:v2 andClientType:unsignedIntValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)asdtBundleExtension
{
  v1 = [self asdtStringForKey:@"BundleExt"];
  v2 = [v1 substringWithRange:{0, 1}];
  v3 = [v2 isEqualToString:@"."];

  if (v3)
  {
    v4 = [v1 substringFromIndex:1];

    v1 = v4;
  }

  return v1;
}

- (id)asdtBundleClass
{
  v1 = [self asdtStringForKey:@"BundleClass"];
  v2 = v1;
  if (v1)
  {
    v3 = NSClassFromString(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)asdtClockDomain
{
  v1 = [self asdtStringForKey:@"ClockDomain"];
  v5 = v1;
  if (v1)
  {
    uTF8String = [v1 UTF8String];
    DomainForFourCC = ASDT::Clock::GetDomainForFourCC(uTF8String, v7, v8, v9);
  }

  else
  {
    DomainForFourCC = ASDT::Clock::GetSynchronousClockDomain(0, v2, v3, v4);
  }

  v11 = DomainForFourCC;

  return v11;
}

- (id)asdtLatenciesForSamplingRates:()ASDTConfig latencyUsKey:latencyDictKey:
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v28 = a4;
  v29 = a5;
  v30 = v8;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v10 = [self objectForKey:v29];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count])
  {
    allKeys = [v10 allKeys];
    v12 = [allKeys asdtNumericSortAscending:1];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v8;
    v13 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v13)
    {
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = [v10 objectForKey:{v16, v28}];
          if (!v17)
          {
            v18 = [v12 asdtNearestNumberToNumber:v16];
            v17 = [v10 objectForKey:v18];

            if (!v17)
            {
              continue;
            }
          }

          v19 = [ASDTUtils latencyFramesForSamplingRate:v16 andMicroseconds:v17];
          [v9 setObject:v19 forKey:v16];
        }

        v13 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v12 = [self asdtNumberForKey:{v28, v28}];
    if (!v12)
    {
      goto LABEL_23;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v21)
    {
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = [ASDTUtils latencyFramesForSamplingRate:v24 andMicroseconds:v12];
          [v9 setObject:v25 forKey:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v21);
    }
  }

LABEL_23:
  if ([v9 count])
  {
    v26 = [v9 copy];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)asdtInputLatenciesForSamplingRates:()ASDTConfig
{
  v3 = [self asdtLatenciesForSamplingRates:a3 latencyUsKey:@"InputLatencyUs" latencyDictKey:@"InputLatencies"];

  return v3;
}

- (id)asdtOutputLatenciesForSamplingRates:()ASDTConfig
{
  v3 = [self asdtLatenciesForSamplingRates:a3 latencyUsKey:@"OutputLatencyUs" latencyDictKey:@"OutputLatencies"];

  return v3;
}

- (id)asdtDeviceModel
{
  v2 = [self asdtStringForKey:@"DeviceModel"];
  if (!v2)
  {
    v2 = [self asdtStringForKey:@"DeviceUID"];
  }

  return v2;
}

- (uint64_t)asdtPMOrderWithDefaultForPowerUp:()ASDTConfig
{
  v4 = 1000;
  [self asdtPMOrder:&v4 forPowerUp:a3 allowDefault:1];
  return v4;
}

- (uint64_t)asdtSamplingRate:()ASDTConfig andSamplingRates:withDefault:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v9 = [self asdtNumberForKey:@"SamplingRate"];
  v10 = [self asdtArrayOfNumbersForKey:@"SamplingRates"];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v10)
    {
      v9 = [v10 objectAtIndexedSubscript:0];
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  }

  v34[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
LABEL_8:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v13)
  {
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v23 + 1) + 8 * i) isEqualToNumber:{v9, v23}])
        {

          if (a4)
          {
            [v9 doubleValue];
            *a4 = v20;
          }

          if (a5)
          {
            v21 = v12;
            *a5 = v12;
          }

          v19 = 1;
          goto LABEL_24;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = ASDTBaseLogType(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v28 = @"SamplingRates";
    v29 = 2112;
    v30 = @"SamplingRate";
    v31 = 2112;
    v32 = v9;
    _os_log_error_impl(&dword_241659000, v18, OS_LOG_TYPE_ERROR, "%@ array must contain %@ value '%@'", buf, 0x20u);
  }

  v19 = 0;
LABEL_24:

  return v19;
}

- (id)asdtRelatedDeviceUIDs
{
  v1 = [self asdtArrayOfStringsForKey:@"RelatedDeviceUIDs"];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEB98] setWithArray:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)asdtExclavesSensorName
{
  v1 = [self asdtStringForKey:@"ExclavesSensorName"];
  if (!v1)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sensors.mic"];
  }

  return v1;
}

- (uint64_t)asdtIsSettable
{
  v1 = [self asdtNumberForKey:@"IsSettable"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (uint64_t)asdtGetSelector:()ASDTConfig
{
  v5 = objc_opt_class();
  v6 = [self objectForKey:@"Selector"];
  v7 = [v5 asdtGetFourCC:a3 forObject:v6 withDefault:0];

  if ((v7 & 1) == 0)
  {
    v10 = ASDTBaseLogType(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtGetSelector:];
    }
  }

  return v7;
}

- (id)asdtPropertyAddress
{
  v5 = 0;
  if ([self asdtGetSelector:&v5])
  {
    v2 = objc_alloc(MEMORY[0x277CEFB68]);
    v3 = [v2 initWithSelector:v5 scope:objc_msgSend(self element:{"asdtScope"), objc_msgSend(self, "asdtElement")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)asdtAddNonSecurePathEnable
{
  v1 = [self asdtNumberForKey:@"AddNonSecurePathEnable"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (BOOL)asdtControlClassID:()ASDTConfig
{
  v4 = [self asdtFourCCForKey:@"ClassID" withDefault:0];
  v6 = v4;
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v7 = ASDTBaseLogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtControlClassID:];
    }
  }

  return v6 != 0;
}

- (uint64_t)asdtSelectorControlItemValue:()ASDTConfig
{
  v5 = objc_opt_class();
  v6 = [self objectForKey:@"Value"];
  v7 = [v5 asdtGetFourCC:a3 forObject:v6 withDefault:0];

  if ((v7 & 1) == 0)
  {
    v10 = ASDTBaseLogType(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtSelectorControlItemValue:];
    }
  }

  return v7;
}

- (uint64_t)asdtSelectorControlItemSelected
{
  v1 = [self asdtNumberForKey:@"Selected"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)asdtPropertyCacheMode
{
  v1 = [self asdtStringForKey:@"CacheMode"];
  v2 = v1;
  if (v1)
  {
    if (![v1 caseInsensitiveCompare:@"Never"])
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (![v2 caseInsensitiveCompare:@"Always"])
    {
      v6 = 2;
      goto LABEL_11;
    }

    v3 = [v2 caseInsensitiveCompare:@"Explicit"];
    if (v3)
    {
      v5 = ASDTBaseLogType(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtPropertyCacheMode];
      }
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (uint64_t)asdtPropertyDataSizeBytes
{
  v1 = [self asdtNumberForKey:@"DataSize"];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (uint64_t)asdtPropertyIsPList
{
  if ([self asdtBoolForKey:@"IsPList"])
  {
    return 1886155636;
  }

  else
  {
    return 1918990199;
  }
}

- (uint64_t)asdtNumericType
{
  v1 = [self asdtStringForKey:@"NumericType"];
  v2 = v1;
  if (!v1)
  {
    goto LABEL_24;
  }

  if (([v1 isEqualToString:@"float"] & 1) == 0)
  {
    if ([v2 isEqualToString:@"double"])
    {
      v3 = 2;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"int8_t"])
    {
      v3 = 3;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"int16_t"])
    {
      v3 = 4;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"int32_t"])
    {
      v3 = 5;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"int64_t"])
    {
      v3 = 6;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"uint8_t"])
    {
      v3 = 7;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"uint16_t"])
    {
      v3 = 8;
      goto LABEL_25;
    }

    if (([v2 isEqualToString:@"uint32_t"] & 1) == 0)
    {
      v4 = [v2 isEqualToString:@"uint64_t"];
      if (v4)
      {
        v3 = 10;
        goto LABEL_25;
      }

      v6 = ASDTBaseLogType(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtNumericType];
      }
    }

LABEL_24:
    v3 = 9;
    goto LABEL_25;
  }

  v3 = 1;
LABEL_25:

  return v3;
}

- (uint64_t)asdtNumericCount
{
  v1 = [self asdtNumberForKey:@"NumericCount"];
  unsignedIntValue = [v1 unsignedIntValue];
  if (unsignedIntValue <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = unsignedIntValue;
  }

  return v3;
}

- (uint64_t)asdtNumericIsVectorWithCount:()ASDTConfig
{
  v4 = [self asdtNumberForKey:@"NumericIsVector"];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = a3 > 1;
  }

  return bOOLValue;
}

- (uint64_t)asdtDirection:()ASDTConfig
{
  if (a3)
  {
    v4 = [self asdtStringForKey:@"Direction"];
    v6 = v4;
    if (v4)
    {
      if ([v4 caseInsensitiveCompare:@"input"])
      {
        v7 = [v6 caseInsensitiveCompare:@"output"];
        if (v7)
        {
          v9 = ASDTBaseLogType(v7, v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtDirection:];
          }

LABEL_10:

          v10 = 0;
LABEL_14:

          return v10;
        }

        v11 = 1869968496;
      }

      else
      {
        v11 = 1768845428;
      }

      *a3 = v11;
      v10 = 1;
      goto LABEL_14;
    }

    v9 = ASDTBaseLogType(0, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtDirection:];
    }

    goto LABEL_10;
  }

  return 0;
}

- (id)asdtFormats
{
  v2 = [self asdtArrayOfDictionariesForKey:@"Formats"];
  if (!v2)
  {
    v3 = ASDTBaseLogType(0, v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtFormats];
    }
  }

  return v2;
}

- (id)asdtLatenciesForSamplingRates:()ASDTConfig
{
  v3 = [self asdtLatenciesForSamplingRates:a3 latencyUsKey:@"LatencyUs" latencyDictKey:@"Latencies"];

  return v3;
}

- (uint64_t)asdtStartingChannel
{
  v1 = [self asdtNumberForKey:@"StartingChannel"];
  unsignedIntValue = [v1 unsignedIntValue];
  if (unsignedIntValue <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = unsignedIntValue;
  }

  return v3;
}

- (uint64_t)asdtIsolatedUseCaseID
{
  v1 = [self asdtNumberForKey:@"IsolatedUseCaseID"];
  unsignedLongLongValue = [v1 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)asdtFormatsWithSamplingRates:()ASDTConfig
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v5)
  {
    v6 = *v52;
    v7 = 0.0;
    v8 = INFINITY;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v52 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v51 + 1) + 8 * i) doubleValue];
        if (v10 < v8)
        {
          v8 = v10;
        }

        if (v10 > v7)
        {
          v7 = v10;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = INFINITY;
  }

  v45 = 0;
  v46 = xmmword_2416A4C20;
  v47 = 0;
  v48 = 0;
  v49 = v8;
  v50 = v7;
  v11 = [self asdtNumberForKey:@"AlignedHigh"];
  v40 = v11;
  if (v11)
  {
    if ([v11 BOOLValue])
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 16;
  }

  DWORD1(v46) |= v12;
  v13 = [self asdtNumberForKey:@"Channels"];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_24;
  }

  unsignedIntValue = [v13 unsignedIntValue];
  v17 = unsignedIntValue;
  if ((unsignedIntValue - 33) <= 0xFFFFFFDF)
  {
    v18 = ASDTBaseLogType(unsignedIntValue, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtFormatsWithSamplingRates:];
    }

LABEL_24:
    v17 = 2;
  }

  v19 = [self asdtStringForKey:@"DataFormat"];
  v20 = v19;
  if (!v19 || ![v19 caseInsensitiveCompare:@"lf32"])
  {
LABEL_33:
    v24 = 32;
    v25 = 1;
    goto LABEL_38;
  }

  if ([v20 caseInsensitiveCompare:@"li16"])
  {
    if ([v20 caseInsensitiveCompare:@"li24"])
    {
      v21 = [v20 caseInsensitiveCompare:@"li32"];
      if (v21)
      {
        v23 = ASDTBaseLogType(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [NSDictionary(ASDTConfig) asdtFormatsWithSamplingRates:];
        }

        goto LABEL_33;
      }

      v24 = 32;
    }

    else
    {
      v24 = 24;
    }
  }

  else
  {
    v24 = 16;
  }

  v25 = 4;
LABEL_38:
  DWORD1(v46) |= v25;
  v26 = [self asdtNumberForKey:@"BitsPerSample"];
  unsignedIntValue2 = [v26 unsignedIntValue];

  if (unsignedIntValue2 <= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = unsignedIntValue2;
  }

  if (unsignedIntValue2 > 0x20)
  {
    v28 = v24;
  }

  if (v24 == v28)
  {
    DWORD1(v46) |= 8u;
  }

  HIDWORD(v47) = v17;
  LODWORD(v48) = v24;
  LODWORD(v47) = (v28 >> 3) * v17;
  DWORD2(v46) = v47;
  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = v4;
  v31 = [v30 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v31)
  {
    v32 = *v42;
    while (2)
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v41 + 1) + 8 * j) doubleValue];
        v45 = v34;
        v36 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamRangedDescription:&v45];
        if (!v36)
        {
          v38 = ASDTBaseLogType(0, v35);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtFormatsWithSamplingRates:];
          }

          v37 = 0;
          goto LABEL_57;
        }

        [v29 addObject:v36];
      }

      v31 = [v30 countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v37 = [v29 copy];
LABEL_57:

  return v37;
}

- (uint64_t)asdtPMOrder:()ASDTConfig forPowerUp:allowDefault:
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  LODWORD(v5) = a5;
  v8 = kASDTConfigKeyDevicePMOrderPowerUp;
  if (!a4)
  {
    v8 = kASDTConfigKeyDevicePMOrderPowerDown;
  }

  v9 = *v8;
  v10 = [self asdtNumberForKey:v9];
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"PMOrder";

    v10 = [self asdtNumberForKey:v11];
  }

  unsignedIntValue = [v10 unsignedIntValue];
  if (v10)
  {
    v14 = unsignedIntValue >= 0x7D1;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v14)
  {
    v5 = v5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v15)
    {
      v16 = unsignedIntValue;
    }

    else
    {
      v16 = 1000;
    }

    *a3 = v16;
  }

  else
  {
    v17 = ASDTBaseLogType(unsignedIntValue, v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [self objectForKey:v11];
      [(NSDictionary(ASDTConfig) *)v11 asdtPMOrder:v18 forPowerUp:v20 allowDefault:v17];
    }
  }

  return v5;
}

- (uint64_t)asdtPMActionWaiterTimeoutUs
{
  v1 = [self asdtNumberForKey:@"WaiterTimeoutUs"];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (objc_class)asdtDeviceManager
{
  v1 = [self asdtStringForKey:@"DeviceManager"];
  v3 = v1;
  if (v1)
  {
    v5 = NSClassFromString(v1);
    if (v5)
    {
      v6 = [(objc_class *)v5 isSubclassOfClass:objc_opt_class()];
      if (v6)
      {
        v8 = v5;
        goto LABEL_12;
      }

      v9 = ASDTBaseLogType(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtDeviceManager];
      }
    }

    else
    {
      v9 = ASDTBaseLogType(0, v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtDeviceManager];
      }
    }
  }

  else
  {
    v9 = ASDTBaseLogType(0, v2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtDeviceManager];
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (uint64_t)asdtManagerVerboseLogging
{
  v1 = [self asdtNumberForKey:@"VerboseLogging"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (uint64_t)asdtManagerInitializationWaitUs
{
  v1 = [self asdtNumberForKey:@"InitializationWaitUs"];
  v2 = v1;
  if (v1)
  {
    unsignedIntValue = [v1 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 100000;
  }

  return unsignedIntValue;
}

- (double)asdtManagerRunningLogPeriod
{
  v1 = [self asdtNumberForKey:@"RunningLogPeriodSec"];
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 60.0;
  }

  return v4;
}

- (uint64_t)asdtManagerAudioObjectMaxCount
{
  v1 = [self asdtNumberForKey:@"AudioObjectMaxCount"];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (void)asdtPMOrder:()ASDTConfig forPowerUp:allowDefault:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  *(buf + 11) = 1024;
  *(buf + 6) = 2000;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "Invalid %@ value: %@. Valid range: [0 - %u]", buf, 0x1Cu);
}

@end