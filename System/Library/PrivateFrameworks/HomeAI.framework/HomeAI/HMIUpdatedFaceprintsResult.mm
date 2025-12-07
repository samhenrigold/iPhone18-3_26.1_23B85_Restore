@interface HMIUpdatedFaceprintsResult
- (HMIUpdatedFaceprintsResult)initWithExistingAtCurrentVersion:(id)version createdAtCurrentVersion:(id)currentVersion existingAtOtherVersions:(id)versions;
- (NSSet)allAtCurrentVersion;
@end

@implementation HMIUpdatedFaceprintsResult

- (HMIUpdatedFaceprintsResult)initWithExistingAtCurrentVersion:(id)version createdAtCurrentVersion:(id)currentVersion existingAtOtherVersions:(id)versions
{
  versionCopy = version;
  currentVersionCopy = currentVersion;
  versionsCopy = versions;
  v15.receiver = self;
  v15.super_class = HMIUpdatedFaceprintsResult;
  v12 = [(HMIUpdatedFaceprintsResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_existingAtCurrentVersion, version);
    objc_storeStrong(&v13->_createdAtCurrentVersion, currentVersion);
    objc_storeStrong(&v13->_existingAtOtherVersions, versions);
  }

  return v13;
}

- (NSSet)allAtCurrentVersion
{
  v3 = [MEMORY[0x277CBEB58] set];
  existingAtCurrentVersion = [(HMIUpdatedFaceprintsResult *)self existingAtCurrentVersion];
  v11 = v3;
  [existingAtCurrentVersion na_each:?];

  createdAtCurrentVersion = [(HMIUpdatedFaceprintsResult *)self createdAtCurrentVersion];
  v9 = MEMORY[0x277D85DD0];
  selfCopy = self;
  v6 = v11;
  [createdAtCurrentVersion na_each:{v9, 3221225472, __49__HMIUpdatedFaceprintsResult_allAtCurrentVersion__block_invoke_149, &unk_278753D48, selfCopy}];

  v7 = [v6 copy];

  return v7;
}

void __49__HMIUpdatedFaceprintsResult_allAtCurrentVersion__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isSentinelFaceprint])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping sentinel faceprint in existingAtCurrentVersion", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 40) addObject:?];
  }
}

void __49__HMIUpdatedFaceprintsResult_allAtCurrentVersion__block_invoke_149(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isSentinelFaceprint])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping sentinel faceprint in createdAtCurrentVersion", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 40) addObject:?];
  }
}

@end