@interface HMDPersonModel
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
- (HMDPersonModel)initWithPerson:(id)person;
- (NSSet)personLinks;
- (id)createPerson;
- (void)setPersonLinks:(id)links;
@end

@implementation HMDPersonModel

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_156405 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_156405, &__block_literal_global_10_156406);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_156407;

  return v3;
}

void __36__HMDPersonModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0F42F4A3-0819-4FE2-AF6C-498767A95771"];
  v1 = sentinelParentUUID_sentinelParentUUID_156407;
  sentinelParentUUID_sentinelParentUUID_156407 = v0;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_156413 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_156413, &__block_literal_global_156414);
  }

  v3 = hmbProperties_properties_156415;

  return v3;
}

void __31__HMDPersonModel_hmbProperties__block_invoke()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D17100] fieldWithClass:objc_opt_class()];
  v1 = [v0 mutableCopy];

  [v1 setLoggingVisibility:1];
  v6[0] = @"name";
  v2 = objc_msgSend_copy(v1);
  v6[1] = @"personLinksData";
  v7[0] = v2;
  v3 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = hmbProperties_properties_156415;
  hmbProperties_properties_156415 = v4;
}

- (id)createPerson
{
  v3 = objc_alloc(MEMORY[0x277CD1C70]);
  hmbModelID = [(HMBModel *)self hmbModelID];
  v5 = [v3 initWithUUID:hmbModelID];

  name = [(HMDPersonModel *)self name];
  [v5 setName:name];

  personLinks = [(HMDPersonModel *)self personLinks];
  [v5 setPersonLinks:personLinks];

  v8 = objc_msgSend_copy(v5);

  return v8;
}

- (HMDPersonModel)initWithPerson:(id)person
{
  personCopy = person;
  uUID = [personCopy UUID];
  sentinelParentUUID = [objc_opt_class() sentinelParentUUID];
  v7 = [(HMBModel *)self initWithModelID:uUID parentModelID:sentinelParentUUID];

  name = [personCopy name];
  [(HMDPersonModel *)v7 setName:name];

  personLinks = [personCopy personLinks];

  [(HMDPersonModel *)v7 setPersonLinks:personLinks];
  return v7;
}

- (void)setPersonLinks:(id)links
{
  v16 = *MEMORY[0x277D85DE8];
  linksCopy = links;
  v11 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:linksCopy requiringSecureCoding:1 error:&v11];
  v6 = v11;
  if (v5)
  {
    [(HMDPersonModel *)self setPersonLinksData:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to encode person links: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (NSSet)personLinks
{
  v22[2] = *MEMORY[0x277D85DE8];
  personLinksData = [(HMDPersonModel *)self personLinksData];
  if (personLinksData)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v7 = [v5 setWithArray:v6];
    v17 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:personLinksData error:&v17];
    v9 = v17;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode person links: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v10 = [MEMORY[0x277CBEB98] set];
    }

    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  return v11;
}

@end