@interface HMFObjectCacheNSString
+ (id)hmf_cachedInstanceForString:(id)string;
+ (id)hmf_setOfCachedInstancesForStrings:(id)strings;
@end

@implementation HMFObjectCacheNSString

+ (id)hmf_cachedInstanceForString:(id)string
{
  v28 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  if (!stringCopy)
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
      v23 = stringCopy;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = objc_opt_class();
      v15 = v27;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ mismatches cache class %@:", &v20, 0x2Au);
    }

    goto LABEL_15;
  }

  if (([stringCopy conformsToProtocol:&unk_283ED34A0] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle(0, v16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier(0);
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = stringCopy;
      v24 = 2112;
      v25 = objc_opt_class();
      v18 = v25;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ does not conform to NSCopying protocol", &v20, 0x20u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v9);
    v8 = stringCopy;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  v5 = qword_280AFC668;
  if (!qword_280AFC668)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:6 capacity:0];
    v7 = qword_280AFC668;
    qword_280AFC668 = v6;

    v5 = qword_280AFC668;
  }

  v8 = [v5 member:stringCopy];
  if (!v8)
  {
    v8 = [stringCopy copy];
    [qword_280AFC668 addObject:v8];
  }

  os_unfair_lock_unlock(&_MergedGlobals_68);
LABEL_16:
  objc_autoreleasePoolPop(v4);

  return v8;
}

+ (id)hmf_setOfCachedInstancesForStrings:(id)strings
{
  if (strings)
  {
    v3 = MEMORY[0x277CBEB58];
    stringsCopy = strings;
    v5 = [v3 setWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__HMFObjectCacheNSString_CollectionSupport__hmf_setOfCachedInstancesForStrings___block_invoke;
    v9[3] = &unk_2786E7DD8;
    v10 = v5;
    v6 = v5;
    [stringsCopy enumerateObjectsUsingBlock:v9];

    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __80__HMFObjectCacheNSString_CollectionSupport__hmf_setOfCachedInstancesForStrings___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [HMFObjectCacheNSString hmf_cachedInstanceForString:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

@end