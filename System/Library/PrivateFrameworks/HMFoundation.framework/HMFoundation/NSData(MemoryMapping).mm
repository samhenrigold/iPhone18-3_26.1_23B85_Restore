@interface NSData(MemoryMapping)
- (id)hmf_copyAsMemoryMappedData;
@end

@implementation NSData(MemoryMapping)

- (id)hmf_copyAsMemoryMappedData
{
  v32 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [temporaryDirectory URLByAppendingPathComponent:uUIDString];

  v27 = 0;
  LOBYTE(uUID) = [self writeToURL:v6 options:1 error:&v27];
  v7 = v27;
  if ((uUID & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle(0, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v29 = v11;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_ERROR, "%{public}@[NSData] writeToURL failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v26 = 0;
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:1 error:&v26];
  v13 = v26;
  if (!v12)
  {
    v14 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle(0, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v29 = v17;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_ERROR, "%{public}@[NSData] dataWithContentsOfURL failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  [defaultManager2 removeItemAtURL:v6 error:&v25];
  v19 = v25;

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle(0, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_ERROR, "%{public}@[NSData] removeItemAtURL failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  return v12;
}

@end