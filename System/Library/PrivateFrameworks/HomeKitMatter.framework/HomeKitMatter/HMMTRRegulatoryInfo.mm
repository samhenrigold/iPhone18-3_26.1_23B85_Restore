@interface HMMTRRegulatoryInfo
+ (id)logCategory;
- (id)countryCode;
- (id)iso3166_1FromISO3166_2CountryCode:(id)code;
@end

@implementation HMMTRRegulatoryInfo

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_1442 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_1442, &__block_literal_global_1443);
  }

  v3 = logCategory__hmf_once_v4_1444;

  return v3;
}

uint64_t __34__HMMTRRegulatoryInfo_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4_1444;
  logCategory__hmf_once_v4_1444 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)iso3166_1FromISO3166_2CountryCode:(id)code
{
  v16 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if ([codeCopy length] < 2)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_8;
  }

  if ([codeCopy length] == 2)
  {
    v6 = codeCopy;
  }

  else
  {
    if ([codeCopy characterAtIndex:2] != 45)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = 138543618;
        v13 = v11;
        v14 = 2112;
        v15 = codeCopy;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Malformatted ISO-3166-2 country code: %@", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      goto LABEL_2;
    }

    v6 = [codeCopy substringToIndex:2];
  }

  v5 = v6;
LABEL_8:

  return v5;
}

- (id)countryCode
{
  v22 = *MEMORY[0x277D85DE8];
  currentEstimates = [MEMORY[0x277D443A8] currentEstimates];
  if (![currentEstimates count])
  {
    lastKnownEstimates = [MEMORY[0x277D443A8] lastKnownEstimates];

    currentEstimates = lastKnownEstimates;
  }

  v5 = [currentEstimates count];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [currentEstimates objectAtIndexedSubscript:0];
      countryCode = [v11 countryCode];
      v18 = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = countryCode;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Estimated country code: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = [currentEstimates objectAtIndexedSubscript:0];
    countryCode2 = [v13 countryCode];
    v15 = [(HMMTRRegulatoryInfo *)selfCopy iso3166_1FromISO3166_2CountryCode:countryCode2];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@No RDEstimate available", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v15 = 0;
  }

  return v15;
}

@end