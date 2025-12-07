@interface HMDCloudHomeZoneChange
- (HMDCloudHomeZoneChange)initWithZone:(id)zone temporaryCache:(BOOL)cache;
@end

@implementation HMDCloudHomeZoneChange

- (HMDCloudHomeZoneChange)initWithZone:(id)zone temporaryCache:(BOOL)cache
{
  cacheCopy = cache;
  v19 = *MEMORY[0x277D85DE8];
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
    v14.receiver = self;
    v14.super_class = HMDCloudHomeZoneChange;
    self = [(HMDCloudZoneChange *)&v14 initWithZone:v8 temporaryCache:cacheCopy];
    selfCopy = self;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = zoneCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Not a home zone %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    selfCopy = 0;
  }

  return selfCopy;
}

@end