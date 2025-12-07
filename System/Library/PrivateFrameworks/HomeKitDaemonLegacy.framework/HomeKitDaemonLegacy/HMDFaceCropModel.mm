@interface HMDFaceCropModel
+ (HMBModelInfiniteQuery)faceCropsForPersonQuery;
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
    dispatch_once(&faceCropsWithUnassociatedFaceCropUUIDQuery_onceToken, &__block_literal_global_41);
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
  v3 = [v0 queryWithSQLPredicate:@"unassociatedFaceCropUUID == :unassociatedFaceCropUUID" sequenceArgumentName:@"unassociatedFaceCropUUID" indexedProperties:&unk_286626BA8 arguments:v2];
  v4 = faceCropsWithUnassociatedFaceCropUUIDQuery_query;
  faceCropsWithUnassociatedFaceCropUUIDQuery_query = v3;
}

+ (HMBModelInfiniteQuery)faceCropsForPersonQuery
{
  if (faceCropsForPersonQuery_onceToken != -1)
  {
    dispatch_once(&faceCropsForPersonQuery_onceToken, &__block_literal_global_34);
  }

  v3 = faceCropsForPersonQuery_query;

  return v3;
}

void __43__HMDFaceCropModel_faceCropsForPersonQuery__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v5 = @"person";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"person"];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v0 queryWithSQLPredicate:@"person == :person" sequenceArgumentName:@"person" indexedProperties:&unk_286626B90 arguments:v2];
  v4 = faceCropsForPersonQuery_query;
  faceCropsForPersonQuery_query = v3;
}

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken, &__block_literal_global_29);
  }

  v3 = sentinelParentUUID_sentinelParentUUID;

  return v3;
}

uint64_t __38__HMDFaceCropModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C8C08B78-9E10-41CD-AC46-E879D4DF6FFA"];
  v1 = sentinelParentUUID_sentinelParentUUID;
  sentinelParentUUID_sentinelParentUUID = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)hmbQueries
{
  v7[2] = *MEMORY[0x277D85DE8];
  faceCropsForPersonQuery = [self faceCropsForPersonQuery];
  v7[0] = faceCropsForPersonQuery;
  faceCropsWithUnassociatedFaceCropUUIDQuery = [self faceCropsWithUnassociatedFaceCropUUIDQuery];
  v7[1] = faceCropsWithUnassociatedFaceCropUUIDQuery;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken != -1)
  {
    dispatch_once(&hmbProperties_onceToken, &__block_literal_global_416);
  }

  v3 = hmbProperties_properties;

  return v3;
}

void __33__HMDFaceCropModel_hmbProperties__block_invoke()
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19[0] = @"dataRepresentation";
  v16 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v20[0] = v16;
  v19[1] = @"dateCreated";
  v15 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v20[1] = v15;
  v19[2] = @"faceBoundingBoxData";
  v14 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v20[2] = v14;
  v19[3] = @"person";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v2 = [MEMORY[0x277D170C0] externalRecordField:@"r00"];
  v18[0] = v2;
  v3 = [MEMORY[0x277D170C0] queryableField];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v5 = [v0 fieldWithClass:v1 options:v4];
  v20[3] = v5;
  v19[4] = @"unassociatedFaceCropUUID";
  v6 = MEMORY[0x277D170B8];
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277D170C0] queryableField];
  v17 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v10 = [v6 fieldWithClass:v7 options:v9];
  v20[4] = v10;
  v19[5] = @"sourceField";
  v11 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v20[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v13 = hmbProperties_properties;
  hmbProperties_properties = v12;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not serialize face bounding box value %@: %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not deserialize face bounding box value: %@", buf, 0x16u);
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
  v22 = *MEMORY[0x277D85DE8];
  dataRepresentation = [(HMDFaceCropModel *)self dataRepresentation];
  dateCreated = [(HMDFaceCropModel *)self dateCreated];
  person = [(HMDFaceCropModel *)self person];
  hmbModelID = [person hmbModelID];

  if (dataRepresentation && dateCreated && hmbModelID)
  {
    v7 = objc_alloc(MEMORY[0x277CD1C78]);
    hmbModelID2 = [(HMBModel *)self hmbModelID];
    [(HMDFaceCropModel *)self faceBoundingBox];
    v9 = [v7 initWithUUID:hmbModelID2 dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:hmbModelID personUUID:?];

    unassociatedFaceCropUUID = [(HMDFaceCropModel *)self unassociatedFaceCropUUID];
    [v9 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

    [v9 setSource:{-[HMDFaceCropModel source](self, "source")}];
    v11 = objc_msgSend_copy(v9);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMBModel *)selfCopy debugDescription];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot create person face crop from model: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
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
  v10 = objc_alloc(MEMORY[0x277D170A0]);
  personUUID = [cropCopy personUUID];
  v12 = [v10 initWithModelID:personUUID action:1];
  [(HMDFaceCropModel *)v7 setPerson:v12];

  unassociatedFaceCropUUID = [cropCopy unassociatedFaceCropUUID];
  [(HMDFaceCropModel *)v7 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

  source = [cropCopy source];
  [(HMDFaceCropModel *)v7 setSource:source];

  return v7;
}

@end