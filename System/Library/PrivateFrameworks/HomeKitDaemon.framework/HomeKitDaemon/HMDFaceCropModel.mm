@interface HMDFaceCropModel
+ (HMBModelInfiniteQuery)faceCropsForPersonUUIDQuery;
+ (HMBModelInfiniteQuery)faceCropsWithUnassociatedFaceCropUUIDQuery;
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
+ (id)hmbQueries;
- (CGRect)faceBoundingBox;
- (HMDFaceCropModel)initWithPersonFaceCrop:(id)crop;
- (id)createPersonFaceCrop;
- (int64_t)source;
- (void)setFaceBoundingBox:(CGRect)box;
- (void)setSource:(int64_t)source;
@end

@implementation HMDFaceCropModel

+ (HMBModelInfiniteQuery)faceCropsWithUnassociatedFaceCropUUIDQuery
{
  if (faceCropsWithUnassociatedFaceCropUUIDQuery_onceToken != -1)
  {
    dispatch_once(&faceCropsWithUnassociatedFaceCropUUIDQuery_onceToken, &__block_literal_global_44);
  }

  v3 = faceCropsWithUnassociatedFaceCropUUIDQuery_query;

  return v3;
}

void __62__HMDFaceCropModel_faceCropsWithUnassociatedFaceCropUUIDQuery__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v5 = @"unassociatedFaceCropUUID";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"unassociatedFaceCropUUID"];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v0 queryWithSQLPredicate:@"unassociatedFaceCropUUID == :unassociatedFaceCropUUID" sequenceArgumentName:@"unassociatedFaceCropUUID" indexedProperties:&unk_283E754B8 arguments:v2];
  v4 = faceCropsWithUnassociatedFaceCropUUIDQuery_query;
  faceCropsWithUnassociatedFaceCropUUIDQuery_query = v3;
}

+ (HMBModelInfiniteQuery)faceCropsForPersonUUIDQuery
{
  if (faceCropsForPersonUUIDQuery_onceToken != -1)
  {
    dispatch_once(&faceCropsForPersonUUIDQuery_onceToken, &__block_literal_global_37);
  }

  v3 = faceCropsForPersonUUIDQuery_query;

  return v3;
}

void __47__HMDFaceCropModel_faceCropsForPersonUUIDQuery__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v5 = @"personUUID";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"personUUID"];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v0 queryWithSQLPredicate:@"personUUID == :personUUID" sequenceArgumentName:@"personUUID" indexedProperties:&unk_283E754A0 arguments:v2];
  v4 = faceCropsForPersonUUIDQuery_query;
  faceCropsForPersonUUIDQuery_query = v3;
}

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken, &__block_literal_global_32);
  }

  v3 = sentinelParentUUID_sentinelParentUUID;

  return v3;
}

void __38__HMDFaceCropModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C8C08B78-9E10-41CD-AC46-E879D4DF6FFA"];
  v1 = sentinelParentUUID_sentinelParentUUID;
  sentinelParentUUID_sentinelParentUUID = v0;
}

+ (id)hmbQueries
{
  v7[2] = *MEMORY[0x277D85DE8];
  faceCropsForPersonUUIDQuery = [self faceCropsForPersonUUIDQuery];
  v7[0] = faceCropsForPersonUUIDQuery;
  faceCropsWithUnassociatedFaceCropUUIDQuery = [self faceCropsWithUnassociatedFaceCropUUIDQuery];
  v7[1] = faceCropsWithUnassociatedFaceCropUUIDQuery;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken != -1)
  {
    dispatch_once(&hmbProperties_onceToken, &__block_literal_global_553);
  }

  v3 = hmbProperties_properties;

  return v3;
}

void __33__HMDFaceCropModel_hmbProperties__block_invoke()
{
  v26[7] = *MEMORY[0x277D85DE8];
  v25[0] = @"dataRepresentation";
  v21 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v26[0] = v21;
  v25[1] = @"dateCreated";
  v20 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v26[1] = v20;
  v25[2] = @"faceBoundingBoxData";
  v19 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v26[2] = v19;
  v25[3] = @"person";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v18 = [MEMORY[0x277D170C0] externalRecordField:@"r00"];
  v24[0] = v18;
  v17 = [MEMORY[0x277D170C0] queryableField];
  v24[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v15 = [v0 fieldWithClass:v1 options:v16];
  v26[3] = v15;
  v25[4] = @"personUUID";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277D170C0] queryableField];
  v23 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v6 = [v2 fieldWithClass:v3 options:v5];
  v26[4] = v6;
  v25[5] = @"unassociatedFaceCropUUID";
  v7 = MEMORY[0x277D170B8];
  v8 = objc_opt_class();
  v9 = [MEMORY[0x277D170C0] queryableField];
  v22 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v11 = [v7 fieldWithClass:v8 options:v10];
  v26[5] = v11;
  v25[6] = @"sourceField";
  v12 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v26[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];
  v14 = hmbProperties_properties;
  hmbProperties_properties = v13;
}

- (void)setSource:(int64_t)source
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  [(HMDFaceCropModel *)self setSourceField:v4];
}

- (int64_t)source
{
  sourceField = [(HMDFaceCropModel *)self sourceField];
  if (sourceField)
  {
    sourceField2 = [(HMDFaceCropModel *)self sourceField];
    integerValue = [sourceField2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setFaceBoundingBox:(CGRect)box
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAE60] valueWithRect:{box.origin.x, box.origin.y, box.size.width, box.size.height}];
  v11 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v11];
  v6 = v11;
  if (v5)
  {
    [(HMDFaceCropModel *)self setFaceBoundingBoxData:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not serialize face bounding box value %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (CGRect)faceBoundingBox
{
  v27 = *MEMORY[0x277D85DE8];
  faceBoundingBoxData = [(HMDFaceCropModel *)self faceBoundingBoxData];
  if (faceBoundingBoxData)
  {
    v22 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:faceBoundingBoxData error:&v22];
    v5 = v22;
    if (v4)
    {
      [v4 rectValue];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v17;
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not deserialize face bounding box value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v7 = *MEMORY[0x277CBF3A0];
      v9 = *(MEMORY[0x277CBF3A0] + 8);
      v11 = *(MEMORY[0x277CBF3A0] + 16);
      v13 = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)createPersonFaceCrop
{
  v24 = *MEMORY[0x277D85DE8];
  dataRepresentation = [(HMDFaceCropModel *)self dataRepresentation];
  dateCreated = [(HMDFaceCropModel *)self dateCreated];
  personUUID = [(HMDFaceCropModel *)self personUUID];
  v6 = personUUID;
  if (personUUID)
  {
    hmbModelID = personUUID;
  }

  else
  {
    person = [(HMDFaceCropModel *)self person];
    hmbModelID = [person hmbModelID];
  }

  if (dataRepresentation && dateCreated && hmbModelID)
  {
    v9 = objc_alloc(MEMORY[0x277CD1C78]);
    hmbModelID2 = [(HMBModel *)self hmbModelID];
    [(HMDFaceCropModel *)self faceBoundingBox];
    v11 = [v9 initWithUUID:hmbModelID2 dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:hmbModelID personUUID:?];

    unassociatedFaceCropUUID = [(HMDFaceCropModel *)self unassociatedFaceCropUUID];
    [v11 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

    [v11 setSource:{-[HMDFaceCropModel source](self, "source")}];
    v13 = objc_msgSend_copy(v11);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HMBModel *)selfCopy debugDescription];
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot create person face crop from model: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
}

- (HMDFaceCropModel)initWithPersonFaceCrop:(id)crop
{
  cropCopy = crop;
  uUID = [cropCopy UUID];
  sentinelParentUUID = [objc_opt_class() sentinelParentUUID];
  v7 = [(HMBModel *)self initWithModelID:uUID parentModelID:sentinelParentUUID];

  dataRepresentation = [cropCopy dataRepresentation];
  [(HMDFaceCropModel *)v7 setDataRepresentation:dataRepresentation];

  dateCreated = [cropCopy dateCreated];
  [(HMDFaceCropModel *)v7 setDateCreated:dateCreated];

  [cropCopy faceBoundingBox];
  [(HMDFaceCropModel *)v7 setFaceBoundingBox:?];
  personUUID = [cropCopy personUUID];
  [(HMDFaceCropModel *)v7 setPersonUUID:personUUID];

  unassociatedFaceCropUUID = [cropCopy unassociatedFaceCropUUID];
  [(HMDFaceCropModel *)v7 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

  source = [cropCopy source];
  [(HMDFaceCropModel *)v7 setSource:source];

  return v7;
}

@end