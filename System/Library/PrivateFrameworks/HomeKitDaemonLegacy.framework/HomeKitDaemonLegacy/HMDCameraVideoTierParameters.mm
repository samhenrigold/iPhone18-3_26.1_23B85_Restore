@interface HMDCameraVideoTierParameters
+ (id)logCategory;
- (BOOL)pickBestTier;
- (BOOL)pickHigherTier;
- (BOOL)pickLowerTier;
- (HMDCameraVideoTierParameters)initWithCoder:(id)coder;
- (HMDCameraVideoTierParameters)initWithSessionID:(id)d streamingTierType:(unint64_t)type maximumQuality:(int64_t)quality;
- (id)logIdentifier;
- (void)_generateAllVideoTiers;
- (void)encodeWithCoder:(id)coder;
- (void)selectInitialTierWithAspectRatio:(unint64_t)ratio;
- (void)updateTierOrder:(id)order;
- (void)updateTierParameters:(id)parameters firstPickedParameter:(id)parameter;
@end

@implementation HMDCameraVideoTierParameters

- (id)logIdentifier
{
  sessionID = [(HMDCameraVideoTierParameters *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  tierOrder = [(HMDCameraVideoTierParameters *)self tierOrder];
  [coderCopy encodeObject:tierOrder forKey:@"kVideoTierOrder"];
}

- (HMDCameraVideoTierParameters)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HMDCameraVideoTierParameters;
  v5 = [(HMDCameraVideoTierParameters *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kVideoTierOrder"];
    tierOrder = v5->_tierOrder;
    v5->_tierOrder = v9;
  }

  return v5;
}

- (BOOL)pickBestTier
{
  v28 = *MEMORY[0x277D85DE8];
  tierOrder = [(HMDCameraVideoTierParameters *)self tierOrder];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__HMDCameraVideoTierParameters_pickBestTier__block_invoke;
  v21[3] = &unk_279730950;
  v21[4] = self;
  lastObject = [tierOrder na_firstObjectPassingTest:v21];

  if (!lastObject)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      maximumQuality = [(HMDCameraVideoTierParameters *)selfCopy maximumQuality];
      *buf = 138543618;
      v23 = v8;
      v24 = 2048;
      v25 = maximumQuality;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@No tier available at or below maximum quality: %lu, selecting the lowest available tier", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    tierOrder2 = [(HMDCameraVideoTierParameters *)selfCopy tierOrder];
    lastObject = [tierOrder2 lastObject];
  }

  currentPickedTier = [(HMDCameraVideoTierParameters *)self currentPickedTier];
  v12 = [currentPickedTier isEqual:lastObject];

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Selected tier is the same as the current tier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    if (v16)
    {
      v18 = HMFGetLogIdentifier();
      currentPickedTier2 = [(HMDCameraVideoTierParameters *)selfCopy2 currentPickedTier];
      *buf = 138543874;
      v23 = v18;
      v24 = 2114;
      v25 = currentPickedTier2;
      v26 = 2114;
      v27 = lastObject;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating the current picked tier from %{public}@ to %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCameraVideoTierParameters *)selfCopy2 setCurrentPickedTier:lastObject];
  }

  return v12 ^ 1;
}

- (BOOL)pickHigherTier
{
  v30 = *MEMORY[0x277D85DE8];
  currentPickedTier = [(HMDCameraVideoTierParameters *)self currentPickedTier];
  tierOrder = [(HMDCameraVideoTierParameters *)self tierOrder];
  firstObject = [tierOrder firstObject];
  v6 = [currentPickedTier isEqual:firstObject];

  if (!v6)
  {
    tierOrder2 = [(HMDCameraVideoTierParameters *)self tierOrder];
    currentPickedTier2 = [(HMDCameraVideoTierParameters *)self currentPickedTier];
    v14 = [tierOrder2 indexOfObject:currentPickedTier2];

    tierOrder3 = [(HMDCameraVideoTierParameters *)self tierOrder];
    v16 = [tierOrder3 objectAtIndex:v14 - 1];

    quality = [v16 quality];
    v11 = quality <= [(HMDCameraVideoTierParameters *)self maximumQuality];
    if (v11)
    {
      [(HMDCameraVideoTierParameters *)self setCurrentPickedTier:v16];
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
LABEL_12:

        objc_autoreleasePoolPop(v21);
        return v11;
      }

      v19 = HMFGetLogIdentifier();
      currentPickedTier3 = [(HMDCameraVideoTierParameters *)selfCopy currentPickedTier];
      v26 = 138543618;
      v27 = v19;
      v28 = 2114;
      maximumQuality = currentPickedTier3;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Setting a higher current picked tier to %{public}@", &v26, 0x16u);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v19 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v19;
      v28 = 2048;
      maximumQuality = [(HMDCameraVideoTierParameters *)selfCopy2 maximumQuality];
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Already in the highest tier for maximum quality: %lu", &v26, 0x16u);
    }

    goto LABEL_12;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Already in the highest tier", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  return 0;
}

- (BOOL)pickLowerTier
{
  v24 = *MEMORY[0x277D85DE8];
  currentPickedTier = [(HMDCameraVideoTierParameters *)self currentPickedTier];
  tierOrder = [(HMDCameraVideoTierParameters *)self tierOrder];
  lastObject = [tierOrder lastObject];
  v6 = [currentPickedTier isEqual:lastObject];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Already in the lowest tier", &v20, 0xCu);
    }
  }

  else
  {
    tierOrder2 = [(HMDCameraVideoTierParameters *)self tierOrder];
    currentPickedTier2 = [(HMDCameraVideoTierParameters *)self currentPickedTier];
    v13 = [tierOrder2 indexOfObject:currentPickedTier2];

    tierOrder3 = [(HMDCameraVideoTierParameters *)self tierOrder];
    v15 = [tierOrder3 objectAtIndex:v13 + 1];
    [(HMDCameraVideoTierParameters *)self setCurrentPickedTier:v15];

    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      currentPickedTier3 = [(HMDCameraVideoTierParameters *)selfCopy2 currentPickedTier];
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = currentPickedTier3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Setting a lower current picked tier to %{public}@", &v20, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
  return v6 ^ 1;
}

- (void)selectInitialTierWithAspectRatio:(unint64_t)ratio
{
  v41 = *MEMORY[0x277D85DE8];
  tierOrder = [(HMDCameraVideoTierParameters *)self tierOrder];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __65__HMDCameraVideoTierParameters_selectInitialTierWithAspectRatio___block_invoke;
  v36[3] = &__block_descriptor_40_e28_B16__0__HMDCameraVideoTier_8l;
  v36[4] = ratio;
  v6 = [tierOrder na_filter:v36];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v10;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating the tier order to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCameraVideoTierParameters *)selfCopy setTierOrder:v6];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"initialStreamResolutionQuality", @"com.apple.homed", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v15;
      v39 = 2048;
      v40 = AppIntegerValue;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Initial stream resolution quality preference is set to: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    streamingTierType = [(HMDCameraVideoTierParameters *)selfCopy streamingTierType];
    if (streamingTierType <= 4)
    {
      AppIntegerValue = qword_253D4C120[streamingTierType];
    }
  }

  tierOrder2 = [(HMDCameraVideoTierParameters *)selfCopy tierOrder];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __65__HMDCameraVideoTierParameters_selectInitialTierWithAspectRatio___block_invoke_73;
  v34[3] = &__block_descriptor_40_e28_B16__0__HMDCameraVideoTier_8l;
  v34[4] = AppIntegerValue;
  lastObject = [tierOrder2 na_firstObjectPassingTest:v34];

  if (lastObject)
  {
    quality = [lastObject quality];
    if (quality > [(HMDCameraVideoTierParameters *)selfCopy maximumQuality])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Selecting the best tier from the updated tier order", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [(HMDCameraVideoTierParameters *)v21 pickBestTier];
      goto LABEL_20;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Selecting the lowest tier from the updated tier order", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    tierOrder3 = [(HMDCameraVideoTierParameters *)v25 tierOrder];
    lastObject = [tierOrder3 lastObject];
  }

  [(HMDCameraVideoTierParameters *)selfCopy setCurrentPickedTier:lastObject];
  v29 = objc_autoreleasePoolPush();
  v30 = selfCopy;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    currentPickedTier = [(HMDCameraVideoTierParameters *)v30 currentPickedTier];
    *buf = 138543618;
    v38 = v32;
    v39 = 2112;
    v40 = currentPickedTier;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Updated the current picked tier to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
LABEL_20:
}

BOOL __65__HMDCameraVideoTierParameters_selectInitialTierWithAspectRatio___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 videoResolution];
  v4 = [HMDStreamingCapabilities aspectRatioOfResolution:v3]== *(a1 + 32);

  return v4;
}

- (void)updateTierParameters:(id)parameters firstPickedParameter:(id)parameter
{
  v32 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  parameterCopy = parameter;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    tierOrder = [parametersCopy tierOrder];
    v26 = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = tierOrder;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating the tier order from selected parameters to %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  tierOrder2 = [parametersCopy tierOrder];
  [(HMDCameraVideoTierParameters *)selfCopy setTierOrder:tierOrder2];

  quality = [parameterCopy quality];
  if (quality <= [(HMDCameraVideoTierParameters *)selfCopy maximumQuality])
  {
    [(HMDCameraVideoTierParameters *)selfCopy setCurrentPickedTier:parameterCopy];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      currentPickedTier = [(HMDCameraVideoTierParameters *)v22 currentPickedTier];
      v26 = 138543618;
      v27 = v24;
      v28 = 2112;
      v29 = currentPickedTier;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updated the current picked tier to %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      quality2 = [parameterCopy quality];
      maximumQuality = [(HMDCameraVideoTierParameters *)v16 maximumQuality];
      v26 = 138543874;
      v27 = v18;
      v28 = 2048;
      v29 = quality2;
      v30 = 2048;
      v31 = maximumQuality;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Selected tier quality: %lu is higher than the maximum quality: %lu, selecting new tier", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCameraVideoTierParameters *)v16 pickBestTier];
  }
}

- (void)updateTierOrder:(id)order
{
  v42 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  obj = [(HMDCameraVideoTierParameters *)self tierOrder];
  v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v27)
  {
    v25 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v6 = orderCopy;
        v7 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v29;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v29 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v28 + 1) + 8 * j);
              videoResolution = [v11 videoResolution];
              videoResolution2 = [v5 videoResolution];
              v14 = [videoResolution isEqual:videoResolution2];

              if (v14)
              {
                framerate = [v11 framerate];
                framerate2 = [v5 framerate];

                if (framerate < framerate2)
                {
                  framerate3 = [v11 framerate];
                  [v5 setFramerate:framerate3];
                }

                [array addObject:v5];
                goto LABEL_18;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v27);
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v21;
    v38 = 2112;
    v39 = array;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating the tier order from video attributes to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [(HMDCameraVideoTierParameters *)v19 setTierOrder:array];
}

- (void)_generateAllVideoTiers
{
  v158 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  streamingTierType = [(HMDCameraVideoTierParameters *)self streamingTierType];
  if (streamingTierType <= 1)
  {
    if (!streamingTierType)
    {
      selfCopy5 = self;
      v71 = [[HMDVideoResolution alloc] initWithResolution:11];
      v72 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v71 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v72 forKeyedSubscript:v71];
      [(NSArray *)array addObject:v72];
      v73 = [[HMDVideoResolution alloc] initWithResolution:23];
      v74 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v73 framerate:&unk_286629D88 minBitRate:&unk_286629DD0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      v152 = v73;
      [dictionary setObject:v74 forKeyedSubscript:v73];
      v151 = v74;
      [(NSArray *)array addObject:v74];
      v23 = [[HMDVideoResolution alloc] initWithResolution:7];
      v17 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v23 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v17 forKeyedSubscript:v23];
      [(NSArray *)array addObject:v17];
      v20 = [[HMDVideoResolution alloc] initWithResolution:1];
      v22 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v20 framerate:&unk_286629D88 minBitRate:&unk_286629DD0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v22 forKeyedSubscript:v20];
      [(NSArray *)array addObject:v22];
      v19 = [[HMDVideoResolution alloc] initWithResolution:27];
      v18 = v72;
      v16 = v71;
      v21 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v19 framerate:&unk_286629D88 minBitRate:&unk_286629E00 maxBitRate:&unk_286629E18 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v21 forKeyedSubscript:v19];
      [(NSArray *)array addObject:v21];
      goto LABEL_18;
    }

    if (streamingTierType != 1)
    {
      goto LABEL_19;
    }

    selfCopy5 = self;
    v148 = [[HMDVideoResolution alloc] initWithResolution:13];
    v144 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v148 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629E60 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v144 forKeyedSubscript:v148];
    [(NSArray *)array addObject:v144];
    v24 = [[HMDVideoResolution alloc] initWithResolution:12];
    v25 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v24 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    v152 = v24;
    [dictionary setObject:v25 forKeyedSubscript:v24];
    v151 = v25;
    [(NSArray *)array addObject:v25];
    v141 = [[HMDVideoResolution alloc] initWithResolution:11];
    v137 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v141 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v137 forKeyedSubscript:v141];
    [(NSArray *)array addObject:v137];
    v134 = [[HMDVideoResolution alloc] initWithResolution:20];
    v131 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v134 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EA8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v131 forKeyedSubscript:v134];
    [(NSArray *)array addObject:v131];
    v128 = [[HMDVideoResolution alloc] initWithResolution:21];
    v124 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v128 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v124 forKeyedSubscript:v128];
    [(NSArray *)array addObject:v124];
    v121 = [[HMDVideoResolution alloc] initWithResolution:22];
    v119 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v121 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v119 forKeyedSubscript:v121];
    [(NSArray *)array addObject:v119];
    v117 = [[HMDVideoResolution alloc] initWithResolution:9];
    v115 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v117 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629E60 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v115 forKeyedSubscript:v117];
    [(NSArray *)array addObject:v115];
    v113 = [[HMDVideoResolution alloc] initWithResolution:8];
    v111 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v113 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v111 forKeyedSubscript:v113];
    [(NSArray *)array addObject:v111];
    v109 = [[HMDVideoResolution alloc] initWithResolution:7];
    v107 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v109 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v107 forKeyedSubscript:v109];
    [(NSArray *)array addObject:v107];
    v105 = [[HMDVideoResolution alloc] initWithResolution:5];
    v103 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v105 framerate:&unk_286629E30 minBitRate:&unk_286629EC0 maxBitRate:&unk_286629ED8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v103 forKeyedSubscript:v105];
    [(NSArray *)array addObject:v103];
    v101 = [[HMDVideoResolution alloc] initWithResolution:4];
    v99 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v101 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EA8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v99 forKeyedSubscript:v101];
    [(NSArray *)array addObject:v99];
    v97 = [[HMDVideoResolution alloc] initWithResolution:3];
    v26 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v97 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v26 forKeyedSubscript:v97];
    [(NSArray *)array addObject:v26];
    v27 = [[HMDVideoResolution alloc] initWithResolution:2];
    v28 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v27 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v28 forKeyedSubscript:v27];
    [(NSArray *)array addObject:v28];
    v29 = [[HMDVideoResolution alloc] initWithResolution:25];
    v30 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v29 framerate:&unk_286629E30 minBitRate:&unk_286629EF0 maxBitRate:&unk_286629F08 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v30 forKeyedSubscript:v29];
    [(NSArray *)array addObject:v30];
    v31 = [[HMDVideoResolution alloc] initWithResolution:26];
    v32 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v31 framerate:&unk_286629E30 minBitRate:&unk_286629F20 maxBitRate:&unk_286629F38 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v32 forKeyedSubscript:v31];
    [(NSArray *)array addObject:v32];

    v16 = v148;
    v17 = v137;

    v21 = v124;
    v18 = v144;
  }

  else
  {
    if (streamingTierType == 2)
    {
      selfCopy5 = self;
      if (_os_feature_enabled_impl())
      {
        v33 = [[HMDVideoResolution alloc] initWithResolution:29];
        v34 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v33 framerate:&unk_286629E30 minBitRate:&unk_286629F50 maxBitRate:&unk_286629F68 rtcpInterval:&unk_28662BEA8];
        [dictionary setObject:v34 forKeyedSubscript:v33];
        [(NSArray *)array addObject:v34];
      }

      v35 = [[HMDVideoResolution alloc] initWithResolution:14];
      v36 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v35 framerate:&unk_286629E30 minBitRate:&unk_286629F80 maxBitRate:&unk_286629F98 rtcpInterval:&unk_28662BEA8];
      v149 = v35;
      [dictionary setObject:v36 forKeyedSubscript:v35];
      v145 = v36;
      [(NSArray *)array addObject:v36];
      v37 = [[HMDVideoResolution alloc] initWithResolution:13];
      v38 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v37 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EA8 rtcpInterval:&unk_28662BEA8];
      v152 = v37;
      [dictionary setObject:v38 forKeyedSubscript:v37];
      v151 = v38;
      [(NSArray *)array addObject:v38];
      v39 = [[HMDVideoResolution alloc] initWithResolution:12];
      v40 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v39 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
      v142 = v39;
      [dictionary setObject:v40 forKeyedSubscript:v39];
      v138 = v40;
      [(NSArray *)array addObject:v40];
      v41 = [[HMDVideoResolution alloc] initWithResolution:11];
      v42 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v41 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      v135 = v41;
      [dictionary setObject:v42 forKeyedSubscript:v41];
      v132 = v42;
      [(NSArray *)array addObject:v42];
      v43 = [[HMDVideoResolution alloc] initWithResolution:17];
      v44 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v43 framerate:&unk_286629E30 minBitRate:&unk_286629F98 maxBitRate:&unk_286629FB0 rtcpInterval:&unk_28662BEA8];
      v129 = v43;
      [dictionary setObject:v44 forKeyedSubscript:v43];
      v125 = v44;
      [(NSArray *)array addObject:v44];
      v45 = [[HMDVideoResolution alloc] initWithResolution:18];
      v46 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v45 framerate:&unk_286629E30 minBitRate:&unk_286629E60 maxBitRate:&unk_286629FC8 rtcpInterval:&unk_28662BEA8];
      v122 = v45;
      [dictionary setObject:v46 forKeyedSubscript:v45];
      v120 = v46;
      [(NSArray *)array addObject:v46];
      v47 = [[HMDVideoResolution alloc] initWithResolution:19];
      v48 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v47 framerate:&unk_286629E30 minBitRate:&unk_286629EC0 maxBitRate:&unk_286629ED8 rtcpInterval:&unk_28662BEA8];
      v118 = v47;
      [dictionary setObject:v48 forKeyedSubscript:v47];
      v116 = v48;
      [(NSArray *)array addObject:v48];
      v49 = [[HMDVideoResolution alloc] initWithResolution:20];
      v50 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v49 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629F80 rtcpInterval:&unk_28662BEA8];
      v114 = v49;
      [dictionary setObject:v50 forKeyedSubscript:v49];
      v112 = v50;
      [(NSArray *)array addObject:v50];
      v51 = [[HMDVideoResolution alloc] initWithResolution:21];
      v52 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v51 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      v110 = v51;
      [dictionary setObject:v52 forKeyedSubscript:v51];
      v108 = v52;
      [(NSArray *)array addObject:v52];
      v53 = [[HMDVideoResolution alloc] initWithResolution:22];
      v54 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v53 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      v106 = v53;
      [dictionary setObject:v54 forKeyedSubscript:v53];
      v104 = v54;
      [(NSArray *)array addObject:v54];
      if (_os_feature_enabled_impl())
      {
        v55 = [[HMDVideoResolution alloc] initWithResolution:28];
        v56 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v55 framerate:&unk_286629E30 minBitRate:&unk_286629F50 maxBitRate:&unk_286629F68 rtcpInterval:&unk_28662BEA8];
        [dictionary setObject:v56 forKeyedSubscript:v55];
        [(NSArray *)array addObject:v56];
      }

      v102 = [[HMDVideoResolution alloc] initWithResolution:10];
      v100 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v102 framerate:&unk_286629E30 minBitRate:&unk_286629F80 maxBitRate:&unk_286629F98 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v100 forKeyedSubscript:v102];
      [(NSArray *)array addObject:v100];
      v98 = [[HMDVideoResolution alloc] initWithResolution:9];
      v96 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v98 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EA8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v96 forKeyedSubscript:v98];
      [(NSArray *)array addObject:v96];
      v95 = [[HMDVideoResolution alloc] initWithResolution:8];
      v94 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v95 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v94 forKeyedSubscript:v95];
      [(NSArray *)array addObject:v94];
      v93 = [[HMDVideoResolution alloc] initWithResolution:7];
      v92 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v93 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v92 forKeyedSubscript:v93];
      [(NSArray *)array addObject:v92];
      v91 = [[HMDVideoResolution alloc] initWithResolution:15];
      v90 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v91 framerate:&unk_286629E30 minBitRate:&unk_286629F98 maxBitRate:&unk_286629FB0 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v90 forKeyedSubscript:v91];
      [(NSArray *)array addObject:v90];
      v89 = [[HMDVideoResolution alloc] initWithResolution:16];
      v88 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v89 framerate:&unk_286629E30 minBitRate:&unk_286629E60 maxBitRate:&unk_286629FC8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v88 forKeyedSubscript:v89];
      [(NSArray *)array addObject:v88];
      v87 = [[HMDVideoResolution alloc] initWithResolution:5];
      v86 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v87 framerate:&unk_286629E30 minBitRate:&unk_286629EC0 maxBitRate:&unk_286629ED8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v86 forKeyedSubscript:v87];
      [(NSArray *)array addObject:v86];
      v85 = [[HMDVideoResolution alloc] initWithResolution:4];
      v84 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v85 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629F80 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v84 forKeyedSubscript:v85];
      [(NSArray *)array addObject:v84];
      v83 = [[HMDVideoResolution alloc] initWithResolution:3];
      v82 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v83 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v82 forKeyedSubscript:v83];
      [(NSArray *)array addObject:v82];
      v57 = [[HMDVideoResolution alloc] initWithResolution:2];
      v58 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v57 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v58 forKeyedSubscript:v57];
      [(NSArray *)array addObject:v58];
      v59 = [[HMDVideoResolution alloc] initWithResolution:24];
      v60 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v59 framerate:&unk_286629E30 minBitRate:&unk_286629FE0 maxBitRate:&unk_286629FF8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v60 forKeyedSubscript:v59];
      [(NSArray *)array addObject:v60];
      v61 = [[HMDVideoResolution alloc] initWithResolution:25];
      v62 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v61 framerate:&unk_286629E30 minBitRate:&unk_286629EF0 maxBitRate:&unk_286629F08 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v62 forKeyedSubscript:v61];
      [(NSArray *)array addObject:v62];
      v63 = [[HMDVideoResolution alloc] initWithResolution:26];
      v64 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v63 framerate:&unk_286629E30 minBitRate:&unk_286629F20 maxBitRate:&unk_286629F38 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v64 forKeyedSubscript:v63];
      [(NSArray *)array addObject:v64];

      v18 = v145;
      v16 = v149;
      v17 = v138;
      v23 = v142;
      v22 = v132;
      v20 = v135;
      v21 = v125;
      v19 = v129;
      goto LABEL_18;
    }

    if (streamingTierType != 3)
    {
      if (streamingTierType != 4)
      {
        goto LABEL_19;
      }

      selfCopy5 = self;
      v147 = [[HMDVideoResolution alloc] initWithResolution:13];
      v143 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v147 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v143 forKeyedSubscript:v147];
      [(NSArray *)array addObject:v143];
      v6 = [[HMDVideoResolution alloc] initWithResolution:12];
      v7 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v6 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      v152 = v6;
      [dictionary setObject:v7 forKeyedSubscript:v6];
      v151 = v7;
      [(NSArray *)array addObject:v7];
      v140 = [[HMDVideoResolution alloc] initWithResolution:11];
      v136 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v140 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v136 forKeyedSubscript:v140];
      [(NSArray *)array addObject:v136];
      v133 = [[HMDVideoResolution alloc] initWithResolution:20];
      v130 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v133 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v130 forKeyedSubscript:v133];
      [(NSArray *)array addObject:v130];
      v127 = [[HMDVideoResolution alloc] initWithResolution:21];
      v123 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v127 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v123 forKeyedSubscript:v127];
      [(NSArray *)array addObject:v123];
      v121 = [[HMDVideoResolution alloc] initWithResolution:22];
      v119 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v121 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_28662A010 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v119 forKeyedSubscript:v121];
      [(NSArray *)array addObject:v119];
      v117 = [[HMDVideoResolution alloc] initWithResolution:9];
      v115 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v117 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v115 forKeyedSubscript:v117];
      [(NSArray *)array addObject:v115];
      v113 = [[HMDVideoResolution alloc] initWithResolution:8];
      v111 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v113 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v111 forKeyedSubscript:v113];
      [(NSArray *)array addObject:v111];
      v109 = [[HMDVideoResolution alloc] initWithResolution:7];
      v107 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v109 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v107 forKeyedSubscript:v109];
      [(NSArray *)array addObject:v107];
      v105 = [[HMDVideoResolution alloc] initWithResolution:5];
      v103 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v105 framerate:&unk_286629E30 minBitRate:&unk_28662A028 maxBitRate:&unk_28662A040 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v103 forKeyedSubscript:v105];
      [(NSArray *)array addObject:v103];
      v8 = [[HMDVideoResolution alloc] initWithResolution:4];
      v9 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v8 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v9 forKeyedSubscript:v8];
      [(NSArray *)array addObject:v9];
      v10 = [[HMDVideoResolution alloc] initWithResolution:3];
      v11 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v10 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v11 forKeyedSubscript:v10];
      [(NSArray *)array addObject:v11];
      v12 = [[HMDVideoResolution alloc] initWithResolution:2];
      v13 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v12 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_28662A010 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v13 forKeyedSubscript:v12];
      [(NSArray *)array addObject:v13];
      v14 = [[HMDVideoResolution alloc] initWithResolution:26];
      v15 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v14 framerate:&unk_286629E30 minBitRate:&unk_286629F20 maxBitRate:&unk_286629F38 rtcpInterval:&unk_28662BEA8];
      [dictionary setObject:v15 forKeyedSubscript:v14];
      [(NSArray *)array addObject:v15];

      v16 = v147;
      v17 = v136;

      v18 = v143;
      v19 = v127;

      v20 = v133;
      v21 = v123;

      v22 = v130;
      v23 = v140;
      goto LABEL_16;
    }

    selfCopy5 = self;
    v150 = [[HMDVideoResolution alloc] initWithResolution:13];
    v146 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v150 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v146 forKeyedSubscript:v150];
    [(NSArray *)array addObject:v146];
    v65 = [[HMDVideoResolution alloc] initWithResolution:12];
    v66 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v65 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    v152 = v65;
    [dictionary setObject:v66 forKeyedSubscript:v65];
    v151 = v66;
    [(NSArray *)array addObject:v66];
    v141 = [[HMDVideoResolution alloc] initWithResolution:11];
    v139 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v141 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v139 forKeyedSubscript:v141];
    [(NSArray *)array addObject:v139];
    v134 = [[HMDVideoResolution alloc] initWithResolution:20];
    v131 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v134 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v131 forKeyedSubscript:v134];
    [(NSArray *)array addObject:v131];
    v128 = [[HMDVideoResolution alloc] initWithResolution:21];
    v126 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v128 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v126 forKeyedSubscript:v128];
    [(NSArray *)array addObject:v126];
    v121 = [[HMDVideoResolution alloc] initWithResolution:22];
    v119 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v121 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_28662A010 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v119 forKeyedSubscript:v121];
    [(NSArray *)array addObject:v119];
    v117 = [[HMDVideoResolution alloc] initWithResolution:9];
    v115 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v117 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v115 forKeyedSubscript:v117];
    [(NSArray *)array addObject:v115];
    v113 = [[HMDVideoResolution alloc] initWithResolution:8];
    v111 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v113 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v111 forKeyedSubscript:v113];
    [(NSArray *)array addObject:v111];
    v109 = [[HMDVideoResolution alloc] initWithResolution:7];
    v107 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v109 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v107 forKeyedSubscript:v109];
    [(NSArray *)array addObject:v107];
    v105 = [[HMDVideoResolution alloc] initWithResolution:5];
    v103 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v105 framerate:&unk_286629E30 minBitRate:&unk_28662A028 maxBitRate:&unk_28662A040 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v103 forKeyedSubscript:v105];
    [(NSArray *)array addObject:v103];
    v101 = [[HMDVideoResolution alloc] initWithResolution:4];
    v99 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v101 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v99 forKeyedSubscript:v101];
    [(NSArray *)array addObject:v99];
    v97 = [[HMDVideoResolution alloc] initWithResolution:3];
    v26 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v97 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v26 forKeyedSubscript:v97];
    [(NSArray *)array addObject:v26];
    v27 = [[HMDVideoResolution alloc] initWithResolution:2];
    v28 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v27 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_28662A010 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v28 forKeyedSubscript:v27];
    [(NSArray *)array addObject:v28];
    v67 = [[HMDVideoResolution alloc] initWithResolution:25];
    v68 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v67 framerate:&unk_286629E30 minBitRate:&unk_286629EF0 maxBitRate:&unk_286629F08 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v68 forKeyedSubscript:v67];
    [(NSArray *)array addObject:v68];
    v69 = [[HMDVideoResolution alloc] initWithResolution:26];
    v70 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v69 framerate:&unk_286629E30 minBitRate:&unk_286629F20 maxBitRate:&unk_286629F38 rtcpInterval:&unk_28662BEA8];
    [dictionary setObject:v70 forKeyedSubscript:v69];
    [(NSArray *)array addObject:v70];

    v16 = v150;
    v17 = v139;

    v18 = v146;
    v21 = v126;
  }

  v20 = v134;
  v19 = v128;

  v22 = v131;
  v23 = v141;

LABEL_16:
LABEL_18:

  self = selfCopy5;
LABEL_19:
  v75 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v77 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    v78 = HMFGetLogIdentifier();
    *buf = 138543618;
    v155 = v78;
    v156 = 2112;
    v157 = array;
    _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@Adding video tiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v75);
  v79 = objc_msgSend_copy(dictionary);
  videoTierCombinations = selfCopy6->_videoTierCombinations;
  selfCopy6->_videoTierCombinations = v79;

  tierOrder = selfCopy6->_tierOrder;
  selfCopy6->_tierOrder = array;
}

- (HMDCameraVideoTierParameters)initWithSessionID:(id)d streamingTierType:(unint64_t)type maximumQuality:(int64_t)quality
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = HMDCameraVideoTierParameters;
  v10 = [(HMDCameraVideoTierParameters *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionID, d);
    v11->_maximumQuality = quality;
    v11->_streamingTierType = type;
    [(HMDCameraVideoTierParameters *)v11 _generateAllVideoTiers];
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_159371 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_159371, &__block_literal_global_159372);
  }

  v3 = logCategory__hmf_once_v19_159373;

  return v3;
}

uint64_t __43__HMDCameraVideoTierParameters_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19_159373;
  logCategory__hmf_once_v19_159373 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end