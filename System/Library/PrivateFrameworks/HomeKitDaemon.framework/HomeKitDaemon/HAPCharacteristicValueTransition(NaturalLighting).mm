@interface HAPCharacteristicValueTransition(NaturalLighting)
+ (BOOL)canCoalesceTransitionPoint1:()NaturalLighting transitionPoint2:ofCurve:;
+ (id)naturalLightingValueTransitionWithLightProfile:()NaturalLighting naturalLightingEnabled:startDate:dataSource:;
+ (id)transitionPointsByCoalescingTransitionPoints:()NaturalLighting ofCurve:;
+ (uint64_t)updateTransition:()NaturalLighting withCurve:brightnessCharacteristic:millisecondsElapsedSinceStartOfDay:transitionStartTimeInMilliseconds:;
- (HMDNaturalLightingActiveTransitionContext)naturalLightingActiveTransitionContextForCharacteristic:()NaturalLighting;
- (id)naturalLightingActiveTransitionContextLightProfile:()NaturalLighting;
@end

@implementation HAPCharacteristicValueTransition(NaturalLighting)

- (id)naturalLightingActiveTransitionContextLightProfile:()NaturalLighting
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  service = [v4 service];
  v6 = *MEMORY[0x277CCF7D8];
  v7 = [service findCharacteristicWithType:*MEMORY[0x277CCF7D8]];
  if (v7)
  {
    v8 = [self naturalLightingActiveTransitionContextForCharacteristic:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = service;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Color Temperature Characteristic %@:%@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

- (HMDNaturalLightingActiveTransitionContext)naturalLightingActiveTransitionContextForCharacteristic:()NaturalLighting
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  controllerContext = [self controllerContext];
  if (controllerContext || ([self endBehavior], (controllerContext = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(self, "linearTransition"), (controllerContext = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    linearDerivedTransition = [self linearDerivedTransition];

    if (!linearDerivedTransition)
    {
      goto LABEL_20;
    }
  }

  linearDerivedTransition2 = [self linearDerivedTransition];
  transitionPoints = [linearDerivedTransition2 transitionPoints];
  v8 = [transitionPoints count];

  if (v8)
  {
    controllerContext2 = [self controllerContext];
    v28 = 0;
    v10 = [MEMORY[0x277CFEAC8] parsedFromData:controllerContext2 error:&v28];
    v11 = v28;
    if (!v10)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v30 = v22;
        v31 = 2112;
        v32 = controllerContext2;
        v33 = 2112;
        v34 = v11;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode controller context %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v19 = 0;
      goto LABEL_18;
    }

    startTime = [v10 startTime];
    value = [startTime value];

    if (value)
    {
      if ([v10 isNaturalLightingEnabled])
      {
        v14 = MEMORY[0x277CBEAA8];
        [value doubleValue];
        v16 = [v14 dateWithTimeIntervalSinceReferenceDate:v15 / 1000.0];
        transitionChecksum = [v10 transitionChecksum];
        value2 = [transitionChecksum value];

        v19 = [[HMDNaturalLightingActiveTransitionContext alloc] initWithStartDate:v16 millisecondsElapsedSinceStartDate:0 transitionChecksum:value2];
LABEL_17:

LABEL_18:
        goto LABEL_21;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v25;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Start time missing in the controller context %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }

    v19 = 0;
    goto LABEL_17;
  }

LABEL_20:
  v19 = 0;
LABEL_21:

  return v19;
}

+ (BOOL)canCoalesceTransitionPoint1:()NaturalLighting transitionPoint2:ofCurve:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 colorTemperatureForBrightness:{objc_msgSend(v9, "minimumBrightness")}];
  if (v10 == [v8 colorTemperatureForBrightness:{objc_msgSend(v9, "minimumBrightness")}])
  {
    v11 = [v7 colorTemperatureForBrightness:{objc_msgSend(v9, "maximumBrightness")}];
    v12 = v11 == [v8 colorTemperatureForBrightness:{objc_msgSend(v9, "maximumBrightness")}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (uint64_t)updateTransition:()NaturalLighting withCurve:brightnessCharacteristic:millisecondsElapsedSinceStartOfDay:transitionStartTimeInMilliseconds:
{
  v77[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v66 = a5;
  v13 = [objc_alloc(MEMORY[0x277CFEAD0]) initWithValue:1];
  v14 = objc_alloc(MEMORY[0x277CFEC98]);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7];
  v16 = [v14 initWithValue:v15];

  v77[0] = 0;
  v77[1] = 0;
  v64 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C4F33DA9-63C9-4C0F-8B89-6C36A33EEF9E"];
  [v64 getUUIDBytes:v77];
  v17 = [MEMORY[0x277CBEA90] dataWithBytes:v77 length:16];
  v18 = objc_alloc(MEMORY[0x277CFEAC8]);
  v19 = objc_alloc(MEMORY[0x277CFEC98]);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "checksum")}];
  v21 = [v19 initWithValue:v20];
  v63 = v17;
  v65 = v16;
  v22 = [v18 initWithIdentifier:v17 startTime:v16 transitionChecksum:v21];

  v68 = 0;
  v23 = [v22 serializeWithError:&v68];
  v24 = v68;
  v25 = v24;
  if (v23)
  {
    v59 = v22;
    v60 = v24;
    [v11 setControllerContext:v23];
    v61 = v11;
    [v11 setEndBehavior:v13];
    v26 = [v12 transitionPointsWithMillisecondsElapsedSinceStartOfDay:a6];
    hmf_isEmpty = [v26 hmf_isEmpty];
    v28 = v13;
    if (hmf_isEmpty)
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v32 = hmf_isEmpty;
        v34 = v33 = v28;
        *buf = 138543618;
        v70 = v34;
        v71 = 2112;
        v72 = v26;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@No transition points found: %@", buf, 0x16u);

        v28 = v33;
        hmf_isEmpty = v32;
      }

      objc_autoreleasePoolPop(v29);
      v11 = v61;
      v35 = v66;
    }

    else
    {
      v42 = a6;
      v58 = v28;
      v43 = [objc_opt_class() transitionPointsByCoalescingTransitionPoints:v26 ofCurve:v12];

      v44 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        v48 = [v43 count];
        firstObject = [v43 firstObject];
        *buf = 138544130;
        v70 = v47;
        v71 = 2048;
        v72 = v48;
        v73 = 2112;
        v74 = firstObject;
        v75 = 2048;
        v76 = v42;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Sending coalesced transition points to accessory, transition points count: %lu, start transition point: %@, time elapsed since start of the day: %llums", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v44);
      *buf = [v12 minimumBrightness];
      v50 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
      maximumBrightness = [v12 maximumBrightness];
      v51 = [MEMORY[0x277CBEA90] dataWithBytes:&maximumBrightness length:4];
      v52 = [objc_alloc(MEMORY[0x277CFEAA8]) initWithLowerBound:v50 upperBound:v51];
      v53 = objc_alloc(MEMORY[0x277CFEC98]);
      v35 = v66;
      instanceID = [v66 instanceID];
      v55 = [v53 initWithValue:instanceID];

      v56 = [objc_alloc(MEMORY[0x277CFEA98]) initWithTransitionPoints:v43 sourceHAPInstanceID:v55 sourceValueRange:v52];
      v11 = v61;
      [v61 setLinearDerivedTransition:v56];

      v26 = v43;
      v28 = v58;
      hmf_isEmpty = 0;
    }

    v22 = v59;
    v41 = hmf_isEmpty ^ 1u;

    v25 = v60;
  }

  else
  {
    v28 = v13;
    v36 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v40 = v39 = v25;
      *buf = 138543874;
      v70 = v40;
      v71 = 2112;
      v72 = v22;
      v73 = 2112;
      v74 = v39;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize controller context %@:%@", buf, 0x20u);

      v25 = v39;
    }

    objc_autoreleasePoolPop(v36);
    v41 = 0;
    v35 = v66;
  }

  return v41;
}

+ (id)transitionPointsByCoalescingTransitionPoints:()NaturalLighting ofCurve:
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v39 = a4;
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count] == 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v11 = 0;
    v12 = 0;
    *&v6 = 138544386;
    v37 = v6;
    v38 = v5;
    do
    {
      v9 = [v5 objectAtIndex:{v12, v37}];
      if (v10 && [self canCoalesceTransitionPoint1:v9 transitionPoint2:v10 ofCurve:v39])
      {
        targetCompletionDuration = [v9 targetCompletionDuration];
        value = [targetCompletionDuration value];
        unsignedLongLongValue = [value unsignedLongLongValue];

        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v20 = v19 = v8;
          *buf = v37;
          v43 = v20;
          v44 = 2112;
          v45 = v9;
          v46 = 2048;
          v47 = v12 + 1;
          v48 = 2112;
          v49 = v10;
          v50 = 2048;
          v51 = v12;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Coalescing transition point: %@ at index: %lu with transition point: %@ at index: %lu", buf, 0x34u);

          v8 = v19;
          v5 = v38;
        }

        v8 += unsignedLongLongValue;

        objc_autoreleasePoolPop(v16);
        v21 = v9;

        v7 = v21;
      }

      else
      {
        v22 = v9;
        v23 = v22;
        if (v11)
        {
          v24 = objc_msgSend_copy(v22);

          v25 = objc_alloc(MEMORY[0x277CFEC98]);
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
          v27 = [v25 initWithValue:v26];
          [v24 setStartDelayDuration:v27];

          v8 = 0;
          v11 = v24;
        }

        else
        {
          v11 = v22;
        }

        [v40 addObject:v11];
        v28 = v23;

        v7 = 0;
      }

      ++v12;
      v10 = v9;
      v11 = v7;
    }

    while (v12 < [v5 count] - 1);
  }

  lastObject = [v5 lastObject];
  v30 = lastObject;
  if (v7)
  {
    v31 = objc_msgSend_copy(lastObject);

    v32 = objc_alloc(MEMORY[0x277CFEC98]);
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    v34 = [v32 initWithValue:v33];
    [v31 setStartDelayDuration:v34];

    v30 = v31;
  }

  [v40 addObject:v30];
  v35 = objc_msgSend_copy(v40);

  return v35;
}

+ (id)naturalLightingValueTransitionWithLightProfile:()NaturalLighting naturalLightingEnabled:startDate:dataSource:
{
  v77 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  accessory = [v10 accessory];
  home = [accessory home];
  naturalLightingContext = [home naturalLightingContext];

  timeZone = [naturalLightingContext timeZone];
  if (!timeZone)
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v44;
      v73 = 2112;
      v74 = naturalLightingContext;
      v45 = "%{public}@Time zone missing in natural lighting context: %@";
LABEL_20:
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, v45, buf, 0x16u);
    }

LABEL_21:

    objc_autoreleasePoolPop(v41);
    v39 = 0;
    goto LABEL_38;
  }

  [v11 timeIntervalSinceReferenceDate];
  v18 = (v17 * 1000.0);
  if (v18 <= 0)
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v44;
      v73 = 2112;
      v74 = v11;
      v45 = "%{public}@Date is initialized in the past: %@";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v19 = [v12 millisecondsElapsedSinceStartOfDayWithDate:v11 timeZone:timeZone];
  naturalLightingCurve = [v10 naturalLightingCurve];
  if (!naturalLightingCurve)
  {
    v46 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543874;
      v72 = v49;
      v73 = 2112;
      v74 = 0;
      v75 = 2112;
      v76 = v10;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting curve is not set on light profile %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v46);
    v39 = 0;
    v29 = 0;
    goto LABEL_37;
  }

  v68 = v11;
  service = [v10 service];
  v21 = *MEMORY[0x277CCF7D8];
  v69 = [service findCharacteristicWithType:*MEMORY[0x277CCF7D8]];
  if (!v69)
  {
    v50 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543874;
      v72 = v53;
      v73 = 2112;
      v74 = service;
      v75 = 2112;
      v76 = v21;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Color Temperature Characteristic %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v50);
    v39 = 0;
    v29 = naturalLightingCurve;
    goto LABEL_36;
  }

  v22 = *MEMORY[0x277CCF788];
  v67 = service;
  v23 = [service findCharacteristicWithType:*MEMORY[0x277CCF788]];
  v66 = v23;
  if (!v23)
  {
    v54 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = HMFGetLogIdentifier();
      *buf = 138543874;
      v72 = v57;
      v73 = 2112;
      v74 = service;
      v75 = 2112;
      v76 = v22;
      _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support brightness Characteristic %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v54);
    v39 = 0;
    v29 = naturalLightingCurve;
    goto LABEL_35;
  }

  v24 = v23;
  v65 = v12;
  v25 = objc_alloc(MEMORY[0x277CFEC98]);
  instanceID = [v69 instanceID];
  v27 = [v25 initWithValue:instanceID];

  v28 = objc_alloc_init(MEMORY[0x277CFEAB0]);
  [v28 setHAPInstanceID:v27];
  if (a4)
  {
    v64 = v28;
    v29 = naturalLightingCurve;
    if (([objc_opt_class() updateTransition:v28 withCurve:naturalLightingCurve brightnessCharacteristic:v24 millisecondsElapsedSinceStartOfDay:v19 transitionStartTimeInMilliseconds:v18] & 1) == 0)
    {
      v63 = v27;
      v58 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543362;
        v72 = v61;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to update transition with Natural Lighting Curve", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v58);
      v39 = 0;
      v40 = v64;
      v12 = v65;
      v27 = v63;
      goto LABEL_34;
    }

    if ([naturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds])
    {
      v30 = objc_alloc(MEMORY[0x277CFEC98]);
      v31 = v27;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(naturalLightingCurve, "colorTemperatureNotifyIntervalThresholdInMilliseconds")}];
      v33 = [v30 initWithValue:v32];
      [v64 setNotifyTimeIntervalThreshold:v33];

      v27 = v31;
    }

    if ([naturalLightingCurve colorTemperatureUpdateIntervalInMilliseconds])
    {
      v34 = objc_alloc(MEMORY[0x277CFEC98]);
      v35 = v27;
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(naturalLightingCurve, "colorTemperatureUpdateIntervalInMilliseconds")}];
      v37 = [v34 initWithValue:v36];
      [v64 setValueUpdateTimeInterval:v37];

      v27 = v35;
    }

    *buf = [naturalLightingCurve colorTemperatureNotifyValueChangeThreshold];
    if (*buf >= 1)
    {
      v38 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
      [v64 setNotifyValueChangeThreshold:v38];
    }

    v28 = v64;
  }

  v39 = v28;
  v40 = v28;
  v12 = v65;
  v29 = naturalLightingCurve;
LABEL_34:

LABEL_35:
  service = v67;

LABEL_36:
  v11 = v68;
LABEL_37:

LABEL_38:

  return v39;
}

@end