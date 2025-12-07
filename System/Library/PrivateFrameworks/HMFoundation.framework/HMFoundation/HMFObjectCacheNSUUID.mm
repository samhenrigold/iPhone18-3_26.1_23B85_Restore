@interface HMFObjectCacheNSUUID
+ (id)hmf_cachedInstanceForNSString:(id)string;
+ (id)hmf_cachedInstanceForNSUUID:(id)d;
@end

@implementation HMFObjectCacheNSUUID

+ (id)hmf_cachedInstanceForNSUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  if (!dCopy)
  {
    v8 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle(0, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier(0);
      v13 = objc_opt_class();
      v14 = v13;
      v20 = 138544130;
      v21 = v12;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = objc_opt_class();
      v15 = v27;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ mismatches cache class %@:", &v20, 0x2Au);
    }

    goto LABEL_15;
  }

  if (([dCopy conformsToProtocol:&unk_283ED34A0] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle(0, v16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier(0);
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = objc_opt_class();
      v18 = v25;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ does not conform to NSCopying protocol", &v20, 0x20u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v9);
    v8 = dCopy;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  v5 = qword_280AFC628;
  if (!qword_280AFC628)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:6 capacity:0];
    v7 = qword_280AFC628;
    qword_280AFC628 = v6;

    v5 = qword_280AFC628;
  }

  v8 = [v5 member:dCopy];
  if (!v8)
  {
    v8 = [dCopy copy];
    [qword_280AFC628 addObject:v8];
  }

  os_unfair_lock_unlock(&_MergedGlobals_64);
LABEL_16:
  objc_autoreleasePoolPop(v4);

  return v8;
}

+ (id)hmf_cachedInstanceForNSString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:stringCopy];
    if (!v5)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle(selfCopy, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier(selfCopy);
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = stringCopy;
        _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Expecting to be able to convert %@ into a UUID.", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }

    v11 = [self hmf_cachedInstanceForNSUUID:v5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end