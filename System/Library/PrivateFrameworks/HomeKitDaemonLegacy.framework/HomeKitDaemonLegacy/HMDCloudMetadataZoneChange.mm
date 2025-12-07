@interface HMDCloudMetadataZoneChange
- (HMDCloudMetadataZoneChange)initWithZone:(id)zone temporaryCache:(BOOL)cache;
@end

@implementation HMDCloudMetadataZoneChange

- (HMDCloudMetadataZoneChange)initWithZone:(id)zone temporaryCache:(BOOL)cache
{
  cacheCopy = cache;
  v20 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = zoneCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v15.receiver = self;
    v15.super_class = HMDCloudMetadataZoneChange;
    selfCopy = [(HMDCloudZoneChange *)&v15 initWithZone:v8 temporaryCache:cacheCopy];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = zoneCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Not a metadata zone %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

@end