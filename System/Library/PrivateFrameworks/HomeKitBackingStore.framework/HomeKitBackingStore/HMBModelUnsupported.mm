@interface HMBModelUnsupported
- (id)debugString:(BOOL)string;
- (void)dumpDebug:(id)debug;
@end

@implementation HMBModelUnsupported

- (void)dumpDebug:(id)debug
{
  v28 = *MEMORY[0x277D85DE8];
  debugCopy = debug;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(HMBModelUnsupported *)self debugString:0];
  v5 = [v4 componentsSeparatedByString:@"\n"];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543874;
          v22 = v14;
          v23 = 2112;
          v24 = debugCopy;
          v25 = 2112;
          v26 = v10;
          _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@%@%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }
}

- (id)debugString:(BOOL)string
{
  v31 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  hmbCanonicalType = [(HMBModel *)self hmbCanonicalType];
  hmbCanonicalTypeInferred = [(HMBModel *)self hmbCanonicalTypeInferred];
  v7 = &stru_283EAC008;
  if (hmbCanonicalTypeInferred)
  {
    v7 = @" (inferred)";
  }

  [string appendFormat:@"values: (%@%@)", hmbCanonicalType, v7];

  hmbModelID = [(HMBModel *)self hmbModelID];
  uUIDString = [hmbModelID UUIDString];
  [string appendFormat:@"\n  uuid: %@", uUIDString];

  hmbParentModelID = [(HMBModel *)self hmbParentModelID];
  uUIDString2 = [hmbParentModelID UUIDString];
  [string appendFormat:@"\n  parent: %@", uUIDString2];

  hmbDataVersion = [(HMBModel *)self hmbDataVersion];
  v25 = string;
  [string appendFormat:@"\n  version: %@", hmbDataVersion];

  v13 = +[HMBModel hmbShouldLogPrivateInformation];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  hmbReserved = [(HMBModel *)self hmbReserved];
  allKeys = [hmbReserved allKeys];

  v16 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        if (([v20 hasPrefix:@"_"] & 1) == 0)
        {
          hmbReserved2 = [(HMBModel *)self hmbReserved];
          v22 = [hmbReserved2 valueForKey:v20];

          if (v22)
          {
            v23 = @"...";
            if (v13)
            {
              v23 = [HMBModel formattedStringForValue:v22];
            }

            [v25 appendFormat:@"\n  %@ (read-only) (unsupported): %@", v20, v23];
          }
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  return v25;
}

@end