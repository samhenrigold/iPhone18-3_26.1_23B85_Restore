@interface HMDNaturalLightingCurve
+ (id)logCategory;
+ (int64_t)colorTemperatureMiredsFromKelvins:(int64_t)kelvins;
- (BOOL)isEqual:(id)equal;
- (HMDNaturalLightingCurve)initWithCoder:(id)coder;
- (HMDNaturalLightingCurve)initWithCurve:(id)curve minimumColorTemperature:(int64_t)temperature maximumColorTemperature:(int64_t)colorTemperature;
- (HMDNaturalLightingCurve)initWithVersion:(unint64_t)version transitionPoints:(id)points minimumBrightness:(int64_t)brightness maximumBrightness:(int64_t)maximumBrightness minimumColorTemperature:(int64_t)temperature maximumColorTemperature:(int64_t)colorTemperature;
- (id)attributeDescriptions;
- (id)colorTemperatureForBrightness:(int64_t)brightness millisecondsElapsedSinceStartOfDay:(unint64_t)day;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)transitionPointsWithMillisecondsElapsedSinceStartOfDay:(unint64_t)day;
- (unint64_t)checksum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDNaturalLightingCurve

- (id)transitionPointsWithMillisecondsElapsedSinceStartOfDay:(unint64_t)day
{
  selfCopy = self;
  v92 = *MEMORY[0x277D85DE8];
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  minimumBrightness = [(HMDNaturalLightingCurve *)selfCopy minimumBrightness];
  maximumBrightness = [(HMDNaturalLightingCurve *)selfCopy maximumBrightness];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v8 = transitionPoints;
  v9 = [v8 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v9)
  {
    v10 = v9;
    v75 = maximumBrightness;
    v76 = minimumBrightness;
    v11 = 0;
    dayCopy = 0;
    v13 = 0;
    v14 = *v84;
    v79 = selfCopy;
    obj = v8;
LABEL_3:
    v15 = 0;
    v16 = v11;
    v77 = v11 + v10;
    v17 = dayCopy;
    v18 = v13;
    while (1)
    {
      v82 = v18;
      if (*v84 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v83 + 1) + 8 * v15);
      targetCompletionDuration = [v19 targetCompletionDuration];
      value = [targetCompletionDuration value];
      dayCopy = [value unsignedLongLongValue] + v17;

      if (dayCopy == day)
      {
        break;
      }

      v22 = v82;
      if (v17 <= day && dayCopy > day)
      {
        goto LABEL_15;
      }

      v13 = v19;

      ++v16;
      ++v15;
      v17 = dayCopy;
      v18 = v13;
      if (v10 == v15)
      {
        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
        v11 = v77;
        selfCopy = v79;
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    dayCopy = day;
    v22 = v82;
LABEL_15:
    v23 = v19;
    v8 = obj;

    if (!v23)
    {
      selfCopy = v79;
      goto LABEL_22;
    }

    v24 = dayCopy - day;
    if ((dayCopy - day) >= 0)
    {
      v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count") + 1}];
      if (dayCopy == day)
      {
        v26 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_283E729F8];
        v27 = objc_alloc(MEMORY[0x277CFEAA0]);
        scale = [v23 scale];
        offset = [v23 offset];
        v30 = [v27 initWithScale:scale offset:offset targetCompletionDuration:v26 startDelayDuration:0];

        [v25 addObject:v30];
        for (i = v16 + 1; i < [obj count]; ++i)
        {
          v32 = [obj objectAtIndex:i];
          [v25 addObject:v32];
        }

        if (v16)
        {
          for (j = 1; j <= v16; ++j)
          {
            v59 = [obj objectAtIndex:j];
            [v25 addObject:v59];
          }
        }
      }

      else if (v22)
      {
        targetCompletionDuration2 = [v23 targetCompletionDuration];
        [targetCompletionDuration2 value];
        v44 = v43 = v22;
        v45 = [v44 unsignedLongLongValue] - v24;

        v46 = objc_alloc(MEMORY[0x277CFEC98]);
        v47 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
        v48 = [v46 initWithValue:v47];

        v49 = v43;
        v50 = v48;
        v80 = v45;
        v51 = [MEMORY[0x277CFEAA0] transitionPointWithPreviousTransitionPoint:v49 nextTransitionPoint:v23 timeElapsedSincePreviousTransitionPoint:v45 minimumBrightness:v76 maximumBrightness:v75];
        [v25 addObject:?];
        v52 = objc_alloc(MEMORY[0x277CFEAA0]);
        scale2 = [v23 scale];
        offset2 = [v23 offset];
        v55 = [v52 initWithScale:scale2 offset:offset2 targetCompletionDuration:v48 startDelayDuration:0];

        v78 = v55;
        [v25 addObject:v55];
        for (k = v16 + 1; k < [obj count]; ++k)
        {
          v57 = [obj objectAtIndex:k];
          [v25 addObject:v57];
        }

        if (v16 >= 2)
        {
          for (m = 1; m != v16; ++m)
          {
            v61 = [obj objectAtIndex:m];
            [v25 addObject:v61];
          }
        }

        v62 = objc_alloc(MEMORY[0x277CFEAA0]);
        v63 = v51;
        scale3 = [v51 scale];
        offset3 = [v51 offset];
        v66 = objc_alloc(MEMORY[0x277CFEC98]);
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v80];
        v68 = [v66 initWithValue:v67];
        v69 = [v62 initWithScale:scale3 offset:offset3 targetCompletionDuration:v68 startDelayDuration:0];

        [v25 addObject:v69];
        v22 = v82;
      }

      else
      {
        v70 = objc_autoreleasePoolPush();
        v71 = v79;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = HMFGetLogIdentifier();
          *buf = 138543618;
          v88 = v73;
          v89 = 2048;
          dayCopy3 = day;
          _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@Next transition point for current time: %llums not found", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v70);
      }

      v37 = objc_msgSend_copy(v25);

      goto LABEL_45;
    }

    v38 = objc_autoreleasePoolPush();
    v39 = v79;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v41;
      v89 = 2048;
      dayCopy3 = dayCopy - day;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Time to reach next transition point is negative: %lldms", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
  }

  else
  {
    v13 = 0;
LABEL_13:

    v22 = v13;
LABEL_22:
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v36;
      v89 = 2048;
      dayCopy3 = day;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Next transition point for current time: %llums not found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  v37 = MEMORY[0x277CBEBF8];
LABEL_45:

  return v37;
}

- (id)colorTemperatureForBrightness:(int64_t)brightness millisecondsElapsedSinceStartOfDay:(unint64_t)day
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = [(HMDNaturalLightingCurve *)self transitionPointsWithMillisecondsElapsedSinceStartOfDay:day];
  firstObject = [v7 firstObject];

  if (!firstObject)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if ([(HMDNaturalLightingCurve *)self minimumBrightness]> brightness)
  {
    minimumBrightness = [(HMDNaturalLightingCurve *)self minimumBrightness];
LABEL_7:
    brightness = minimumBrightness;
    goto LABEL_8;
  }

  if ([(HMDNaturalLightingCurve *)self maximumBrightness]< brightness)
  {
    minimumBrightness = [(HMDNaturalLightingCurve *)self maximumBrightness];
    goto LABEL_7;
  }

LABEL_8:
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v14;
    v18 = 2048;
    dayCopy = day;
    v20 = 2112;
    v21 = firstObject;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Transition point for milliseconds elapsed since start of day %llums is %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "colorTemperatureForBrightness:", brightness)}];
LABEL_11:

  return v10;
}

- (unint64_t)checksum
{
  v20 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v4 = [transitionPoints countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(transitionPoints);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        *data = [v8 colorTemperatureForBrightness:{-[HMDNaturalLightingCurve minimumBrightness](self, "minimumBrightness")}];
        CC_SHA256_Update(&c, data, 4u);
        LODWORD(colorTemperatureNotifyIntervalThresholdInMilliseconds) = [v8 colorTemperatureForBrightness:{-[HMDNaturalLightingCurve maximumBrightness](self, "maximumBrightness")}];
        CC_SHA256_Update(&c, &colorTemperatureNotifyIntervalThresholdInMilliseconds, 4u);
        ++v7;
      }

      while (v5 != v7);
      v5 = [transitionPoints countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  colorTemperatureNotifyValueChangeThreshold = [(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold];
  CC_SHA256_Update(&c, &colorTemperatureNotifyValueChangeThreshold, 4u);
  colorTemperatureNotifyIntervalThresholdInMilliseconds = [(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds];
  CC_SHA256_Update(&c, &colorTemperatureNotifyIntervalThresholdInMilliseconds, 8u);
  colorTemperatureUpdateIntervalInMilliseconds = [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
  CC_SHA256_Update(&c, &colorTemperatureUpdateIntervalInMilliseconds, 8u);
  CC_SHA256_Final(data, &c);
  return *data;
}

- (id)attributeDescriptions
{
  v41[11] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNaturalLightingCurve version](self, "version")}];
  v39 = [v3 initWithName:@"Version" value:v40];
  v41[0] = v39;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNaturalLightingCurve minimumBrightness](self, "minimumBrightness")}];
  v37 = [v4 initWithName:@"Minimum Brightness" value:v38];
  v41[1] = v37;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNaturalLightingCurve maximumBrightness](self, "maximumBrightness")}];
  v35 = [v5 initWithName:@"Maximum Brightness" value:v36];
  v41[2] = v35;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v33 = [v7 numberWithUnsignedInteger:{objc_msgSend(transitionPoints, "count")}];
  v32 = [v6 initWithName:@"Transition Points Count" value:v33];
  v41[3] = v32;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  transitionPoints2 = [(HMDNaturalLightingCurve *)self transitionPoints];
  firstObject = [transitionPoints2 firstObject];
  v29 = [v8 initWithName:@"Transition Start Point" value:firstObject];
  v41[4] = v29;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNaturalLightingCurve minimumColorTemperature](self, "minimumColorTemperature")}];
  v27 = [v9 initWithName:@"Minimum Color Temperature" value:v28];
  v41[5] = v27;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNaturalLightingCurve maximumColorTemperature](self, "maximumColorTemperature")}];
  v11 = [v10 initWithName:@"Maximum Color Temperature" value:v26];
  v41[6] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds](self, "colorTemperatureNotifyIntervalThresholdInMilliseconds")}];
  v14 = [v12 initWithName:@"Color Temperature Notify Interval Threshold In Milliseconds" value:v13];
  v41[7] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNaturalLightingCurve colorTemperatureNotifyValueChangeThreshold](self, "colorTemperatureNotifyValueChangeThreshold")}];
  v17 = [v15 initWithName:@"Color Temperature Notify Value Change Threshold" value:v16];
  v41[8] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingCurve colorTemperatureUpdateIntervalInMilliseconds](self, "colorTemperatureUpdateIntervalInMilliseconds")}];
  v20 = [v18 initWithName:@"Color Temperature Update Interval In Milliseconds" value:v19];
  v41[9] = v20;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingCurve checksum](self, "checksum")}];
  v23 = [v21 initWithName:@"Transition Checksum" value:v22];
  v41[10] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:11];

  return v24;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMDMutableNaturalLightingCurve allocWithZone:zone];
  version = [(HMDNaturalLightingCurve *)self version];
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [(HMDNaturalLightingCurve *)v4 initWithVersion:version transitionPoints:transitionPoints minimumBrightness:[(HMDNaturalLightingCurve *)self minimumBrightness] maximumBrightness:[(HMDNaturalLightingCurve *)self maximumBrightness] minimumColorTemperature:[(HMDNaturalLightingCurve *)self minimumColorTemperature] maximumColorTemperature:[(HMDNaturalLightingCurve *)self maximumColorTemperature]];

  [(HMDNaturalLightingCurve *)v7 setColorTemperatureNotifyIntervalThresholdInMilliseconds:[(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds]];
  [(HMDNaturalLightingCurve *)v7 setColorTemperatureNotifyValueChangeThreshold:[(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold]];
  [(HMDNaturalLightingCurve *)v7 setColorTemperatureUpdateIntervalInMilliseconds:[(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds]];
  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_103788 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_103788, &__block_literal_global_103789);
  }

  v3 = logCategory__hmf_once_v20_103790;

  return v3;
}

void __38__HMDNaturalLightingCurve_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v20_103790;
  logCategory__hmf_once_v20_103790 = v0;
}

+ (int64_t)colorTemperatureMiredsFromKelvins:(int64_t)kelvins
{
  if (kelvins)
  {
    return 1000000 / kelvins;
  }

  v4 = _HMFPreconditionFailure();
  return +[(HMDNaturalLightingCurve *)v4];
}

- (unint64_t)hash
{
  version = [(HMDNaturalLightingCurve *)self version];
  v4 = [(HMDNaturalLightingCurve *)self minimumBrightness]^ version;
  v5 = v4 ^ [(HMDNaturalLightingCurve *)self maximumBrightness];
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [transitionPoints count];

  v8 = v5 ^ v7 ^ [(HMDNaturalLightingCurve *)self minimumColorTemperature];
  maximumColorTemperature = [(HMDNaturalLightingCurve *)self maximumColorTemperature];
  v10 = maximumColorTemperature ^ [(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds];
  v11 = v10 ^ [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
  return v8 ^ v11 ^ [(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold];
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
  v7 = v6;
  if (v6 && (v8 = [v6 version], v8 == -[HMDNaturalLightingCurve version](self, "version")) && (v9 = objc_msgSend(v7, "minimumBrightness"), v9 == -[HMDNaturalLightingCurve minimumBrightness](self, "minimumBrightness")) && (v10 = objc_msgSend(v7, "maximumBrightness"), v10 == -[HMDNaturalLightingCurve maximumBrightness](self, "maximumBrightness")))
  {
    transitionPoints = [v7 transitionPoints];
    transitionPoints2 = [(HMDNaturalLightingCurve *)self transitionPoints];
    if ([transitionPoints isEqual:transitionPoints2] && (v13 = objc_msgSend(v7, "minimumColorTemperature"), v13 == -[HMDNaturalLightingCurve minimumColorTemperature](self, "minimumColorTemperature")) && (v14 = objc_msgSend(v7, "maximumColorTemperature"), v14 == -[HMDNaturalLightingCurve maximumColorTemperature](self, "maximumColorTemperature")) && (v15 = objc_msgSend(v7, "colorTemperatureNotifyIntervalThresholdInMilliseconds"), v15 == -[HMDNaturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds](self, "colorTemperatureNotifyIntervalThresholdInMilliseconds")) && (v16 = objc_msgSend(v7, "colorTemperatureNotifyValueChangeThreshold"), v16 == -[HMDNaturalLightingCurve colorTemperatureNotifyValueChangeThreshold](self, "colorTemperatureNotifyValueChangeThreshold")))
    {
      colorTemperatureUpdateIntervalInMilliseconds = [v7 colorTemperatureUpdateIntervalInMilliseconds];
      v18 = colorTemperatureUpdateIntervalInMilliseconds == [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
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

- (void)encodeWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve version](self forKey:{"version"), @"HNLCurve.vk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve minimumBrightness](self forKey:{"minimumBrightness"), @"HNLCurve.mibk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve maximumBrightness](self forKey:{"maximumBrightness"), @"HNLCurve.mabk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve minimumColorTemperature](self forKey:{"minimumColorTemperature"), @"HNLCurve.mictk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve maximumColorTemperature](self forKey:{"maximumColorTemperature"), @"HNLCurve.mactk"}];
  [coderCopy encodeInteger:-[HMDNaturalLightingCurve colorTemperatureNotifyValueChangeThreshold](self forKey:{"colorTemperatureNotifyValueChangeThreshold"), @"HNLCurve.ctnvctk"}];
  [coderCopy encodeInt64:-[HMDNaturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds](self forKey:{"colorTemperatureNotifyIntervalThresholdInMilliseconds"), @"HNLCurve.ctnitk"}];
  [coderCopy encodeInt64:-[HMDNaturalLightingCurve colorTemperatureUpdateIntervalInMilliseconds](self forKey:{"colorTemperatureUpdateIntervalInMilliseconds"), @"HNLCurve.ctuik"}];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  transitionPoints = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [transitionPoints countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(transitionPoints);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v18 = 0;
        v12 = [v11 serializeWithError:&v18];
        v13 = v18;
        if (!v12)
        {
          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543874;
            v24 = v17;
            v25 = 2112;
            v26 = v11;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize transition point %@:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          goto LABEL_13;
        }

        [array addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [transitionPoints countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  transitionPoints = objc_msgSend_copy(array);
  [coderCopy encodeObject:transitionPoints forKey:@"HNLCurve.tpk"];
LABEL_13:
}

- (HMDNaturalLightingCurve)initWithCoder:(id)coder
{
  v63 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HNLCurve.vk"];
  if (v5 != 1)
  {
    v18 = v5;
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543874;
    v58 = v19;
    v59 = 2048;
    v60 = v18;
    v61 = 2048;
    v62 = 1;
    v20 = "%{public}@Curve version is not equal to (%ld != %ld)";
    v21 = v13;
    v22 = 32;
LABEL_14:
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);

    goto LABEL_25;
  }

  v6 = [coderCopy decodeIntegerForKey:@"HNLCurve.mabk"];
  if (v6 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v19;
    v59 = 2048;
    v60 = v6;
    v20 = "%{public}@Maximum brightness is less than or equal to 0: %ld";
    v21 = v13;
    v22 = 22;
    goto LABEL_14;
  }

  v7 = [coderCopy decodeIntegerForKey:@"HNLCurve.mibk"];
  v8 = v7;
  if (v7 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v14;
    v59 = 2048;
    v60 = v8;
    v15 = "%{public}@Minimum brightness is less than or equal to 0: %ld";
LABEL_23:
    v16 = v13;
    v17 = 22;
    goto LABEL_24;
  }

  if (v7 >= v6)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v58 = v23;
      v59 = 2048;
      v60 = v8;
      v61 = 2048;
      v62 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Minimum brightness is greater than equal to maximum brightness (%ld:%ld)", buf, 0x20u);
    }

    goto LABEL_25;
  }

  v9 = [coderCopy decodeIntegerForKey:@"HNLCurve.mictk"];
  if (v9 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v14;
    v59 = 2048;
    v60 = v9;
    v15 = "%{public}@Minimum color temperature is less than or equal to 0: %ld";
    goto LABEL_23;
  }

  v10 = [coderCopy decodeIntegerForKey:@"HNLCurve.mactk"];
  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v14;
    v59 = 2048;
    v60 = 0;
    v15 = "%{public}@Maximum color temperature is less than or equal to 0: %ld";
    goto LABEL_23;
  }

  v11 = v10;
  if (v9 > v10)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v58 = v14;
      v59 = 2048;
      v60 = v9;
      v61 = 2048;
      v62 = v11;
      v15 = "%{public}@Minimum color temperature is greater than maximum color temperature (%ld:%ld)";
      v16 = v13;
      v17 = 32;
LABEL_24:
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }

LABEL_25:

    objc_autoreleasePoolPop(v12);
    selfCopy = 0;
    goto LABEL_26;
  }

  v45 = v10;
  v26 = MEMORY[0x277CBEB98];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v28 = [v26 setWithArray:v27];

  v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"HNLCurve.tpk"];
  if (v29)
  {
    v44 = v9;
    v47 = v28;
    array = [MEMORY[0x277CBEB18] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = v29;
    obj = v29;
    v30 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v52;
      while (2)
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v52 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v51 + 1) + 8 * i);
          v50 = 0;
          v35 = [MEMORY[0x277CFEAA0] parsedFromData:v34 error:&v50];
          v36 = v50;
          if (!v35)
          {
            v38 = objc_autoreleasePoolPush();
            self = self;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = HMFGetLogIdentifier();
              *buf = 138543874;
              v58 = v40;
              v59 = 2112;
              v60 = v34;
              v61 = 2112;
              v62 = v36;
              _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse encoded transition point %@:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v38);
            selfCopy = 0;
            v29 = v46;
            v28 = v47;
            v37 = array;
            goto LABEL_46;
          }

          [array addObject:v35];
        }

        v31 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    v37 = array;
    if ([array count])
    {
      self = [(HMDNaturalLightingCurve *)self initWithVersion:1 transitionPoints:array minimumBrightness:v8 maximumBrightness:v6 minimumColorTemperature:v44 maximumColorTemperature:v45];
      -[HMDNaturalLightingCurve setColorTemperatureNotifyValueChangeThreshold:](self, "setColorTemperatureNotifyValueChangeThreshold:", [coderCopy decodeIntegerForKey:@"HNLCurve.ctnvctk"]);
      -[HMDNaturalLightingCurve setColorTemperatureNotifyIntervalThresholdInMilliseconds:](self, "setColorTemperatureNotifyIntervalThresholdInMilliseconds:", [coderCopy decodeInt64ForKey:@"HNLCurve.ctnitk"]);
      -[HMDNaturalLightingCurve setColorTemperatureUpdateIntervalInMilliseconds:](self, "setColorTemperatureUpdateIntervalInMilliseconds:", [coderCopy decodeInt64ForKey:@"HNLCurve.ctuik"]);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v29 = v46;
    v28 = v47;
LABEL_46:
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    self = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v43;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode transition points", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
    selfCopy = 0;
  }

LABEL_26:
  return selfCopy;
}

- (HMDNaturalLightingCurve)initWithCurve:(id)curve minimumColorTemperature:(int64_t)temperature maximumColorTemperature:(int64_t)colorTemperature
{
  v50 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  v8 = MEMORY[0x277CBEB18];
  transitionPoints = [curveCopy transitionPoints];
  v43 = [v8 arrayWithCapacity:{objc_msgSend(transitionPoints, "count")}];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [curveCopy transitionPoints];
  v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  v10 = 0;
  v11 = 0;
  if (v44)
  {
    v42 = *v46;
    colorTemperatureCopy = colorTemperature;
    v38 = curveCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        v14 = [v13 colorTemperatureForBrightness:{objc_msgSend(curveCopy, "minimumBrightness")}];
        v15 = v14;
        if (v14 <= temperature)
        {
          temperatureCopy = temperature;
        }

        else
        {
          temperatureCopy = v14;
        }

        if (v14 <= colorTemperature)
        {
          colorTemperatureCopy2 = temperatureCopy;
        }

        else
        {
          colorTemperatureCopy2 = colorTemperature;
        }

        v18 = [v13 colorTemperatureForBrightness:{objc_msgSend(curveCopy, "maximumBrightness")}];
        if (v18 <= temperature)
        {
          temperatureCopy2 = temperature;
        }

        else
        {
          temperatureCopy2 = v18;
        }

        if (v18 <= colorTemperature)
        {
          colorTemperatureCopy3 = temperatureCopy2;
        }

        else
        {
          colorTemperatureCopy3 = colorTemperature;
        }

        if (v18 > colorTemperature || v18 < temperature || v15 > colorTemperature || v15 < temperature)
        {
          v41 = MEMORY[0x277CFEAA0];
          minimumBrightness = [curveCopy minimumBrightness];
          maximumBrightness = [curveCopy maximumBrightness];
          targetCompletionDuration = [v13 targetCompletionDuration];
          value = [targetCompletionDuration value];
          unsignedLongLongValue = [value unsignedLongLongValue];
          v28 = maximumBrightness;
          colorTemperature = colorTemperatureCopy;
          v29 = [v41 transitionPointWithMinimumBrightness:minimumBrightness minimumBrightnessColorTemperature:colorTemperatureCopy2 maximumBrightness:v28 maximumBrightnessColorTemperature:colorTemperatureCopy3 targetCompletionDuration:unsignedLongLongValue];

          curveCopy = v38;
        }

        else
        {
          v29 = objc_msgSend_copy(v13);
        }

        [v43 addObject:v29];
        if (colorTemperatureCopy2 >= colorTemperatureCopy3)
        {
          v30 = colorTemperatureCopy3;
        }

        else
        {
          v30 = colorTemperatureCopy2;
        }

        if (v11 >= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v11;
        }

        if (v11 <= 0)
        {
          v11 = v30;
        }

        else
        {
          v11 = v31;
        }

        if (colorTemperatureCopy3 <= colorTemperatureCopy2)
        {
          v32 = colorTemperatureCopy2;
        }

        else
        {
          v32 = colorTemperatureCopy3;
        }

        if (v10 <= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v10;
        }

        if (v10 <= 0)
        {
          v10 = v32;
        }

        else
        {
          v10 = v33;
        }

        ++v12;
      }

      while (v44 != v12);
      v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v44);
  }

  v34 = -[HMDNaturalLightingCurve initWithVersion:transitionPoints:minimumBrightness:maximumBrightness:minimumColorTemperature:maximumColorTemperature:](self, "initWithVersion:transitionPoints:minimumBrightness:maximumBrightness:minimumColorTemperature:maximumColorTemperature:", [curveCopy version], v43, objc_msgSend(curveCopy, "minimumBrightness"), objc_msgSend(curveCopy, "maximumBrightness"), v11, v10);
  -[HMDNaturalLightingCurve setColorTemperatureNotifyIntervalThresholdInMilliseconds:](v34, "setColorTemperatureNotifyIntervalThresholdInMilliseconds:", [curveCopy colorTemperatureNotifyIntervalThresholdInMilliseconds]);
  -[HMDNaturalLightingCurve setColorTemperatureNotifyValueChangeThreshold:](v34, "setColorTemperatureNotifyValueChangeThreshold:", [curveCopy colorTemperatureNotifyValueChangeThreshold]);
  -[HMDNaturalLightingCurve setColorTemperatureUpdateIntervalInMilliseconds:](v34, "setColorTemperatureUpdateIntervalInMilliseconds:", [curveCopy colorTemperatureUpdateIntervalInMilliseconds]);

  return v34;
}

- (HMDNaturalLightingCurve)initWithVersion:(unint64_t)version transitionPoints:(id)points minimumBrightness:(int64_t)brightness maximumBrightness:(int64_t)maximumBrightness minimumColorTemperature:(int64_t)temperature maximumColorTemperature:(int64_t)colorTemperature
{
  pointsCopy = points;
  v20.receiver = self;
  v20.super_class = HMDNaturalLightingCurve;
  v15 = [(HMDNaturalLightingCurve *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_version = version;
    v17 = objc_msgSend_copy(pointsCopy);
    transitionPoints = v16->_transitionPoints;
    v16->_transitionPoints = v17;

    v16->_minimumBrightness = brightness;
    v16->_maximumBrightness = maximumBrightness;
    v16->_minimumColorTemperature = temperature;
    v16->_maximumColorTemperature = colorTemperature;
  }

  return v16;
}

@end