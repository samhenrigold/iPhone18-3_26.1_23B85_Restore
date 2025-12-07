@interface NSDictionary(HMDApplicationData)
- (id)hmd_appDataDictionaryWithError:()HMDApplicationData;
@end

@implementation NSDictionary(HMDApplicationData)

- (id)hmd_appDataDictionaryWithError:()HMDApplicationData
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [self objectForKeyedSubscript:@"kAppDataInformationKey"];
  if (v5)
  {
    v6 = HMFApproximateSizeOfPlistValue();
    if (v6 <= +[HMDApplicationData sizeLimit])
    {
      v11 = v5;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543874;
        v14 = v10;
        v15 = 2048;
        v16 = v6;
        v17 = 2048;
        v18 = +[HMDApplicationData sizeLimit];
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Application data dictionary size %lu exceeds threshold of %lu", &v13, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      if (a3)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:49];
        *a3 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

@end