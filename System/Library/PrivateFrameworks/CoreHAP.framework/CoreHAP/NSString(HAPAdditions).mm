@interface NSString(HAPAdditions)
- (id)hap_validatedAndNormalizedUUIDString;
@end

@implementation NSString(HAPAdditions)

- (id)hap_validatedAndNormalizedUUIDString
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-1000-8000-0026BB765291"];
    v4 = [v2 isEqual:v3];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = self;
        v8 = "%{public}@### UUID type %@ is using the HAP Base UUID";
LABEL_8:
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    uUIDString = [v2 UUIDString];
  }

  else
  {
    if ([self characterAtIndex:0] == 48)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = self;
        v8 = "%{public}@### UUID type %@ starts with a '0'";
        goto LABEL_8;
      }

LABEL_9:

LABEL_10:
      objc_autoreleasePoolPop(v5);
      uUIDString = 0;
      goto LABEL_12;
    }

    memset(v30, 0, sizeof(v30));
    [self UTF8String];
    v11 = NormalizeUUIDString();
    if (v11)
    {
      v12 = v11;
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      memset(buf, 0, sizeof(buf));
      DebugGetErrorString();
      v5 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138544130;
        v17 = v14;
        v18 = 1024;
        v19 = v12;
        v20 = 2080;
        v21 = buf;
        v22 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@### Error: %d(%s) creating UUID string from type: %@.", &v16, 0x26u);
      }

      goto LABEL_10;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
    uUIDString = [v15 uppercaseString];
  }

LABEL_12:

  return uUIDString;
}

@end