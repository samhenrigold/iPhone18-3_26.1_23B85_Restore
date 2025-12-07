@interface HMDUnassociatedFaceCropModel
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
+ (id)hmbQueries;
+ (id)unassociatedFaceCropsBetweenDatesQueryWithIsAscending:(BOOL)ascending;
- (CGRect)faceBoundingBox;
- (HMDUnassociatedFaceCropModel)initWithFaceCrop:(id)crop;
- (id)createAssociatedUnassociatedFaceCrop;
- (id)createUnassociatedFaceCrop;
- (void)setFaceBoundingBox:(CGRect)box;
@end

@implementation HMDUnassociatedFaceCropModel

+ (id)unassociatedFaceCropsBetweenDatesQueryWithIsAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  if (unassociatedFaceCropsBetweenDatesQueryWithIsAscending__onceToken != -1)
  {
    dispatch_once(&unassociatedFaceCropsBetweenDatesQueryWithIsAscending__onceToken, &__block_literal_global_26_40478);
  }

  v4 = &unassociatedFaceCropsBetweenDatesQueryWithIsAscending__ascendingQuery;
  if (!ascendingCopy)
  {
    v4 = &unassociatedFaceCropsBetweenDatesQueryWithIsAscending__descendingQuery;
  }

  v5 = *v4;

  return v5;
}

void __86__HMDUnassociatedFaceCropModel_unassociatedFaceCropsBetweenDatesQueryWithIsAscending___block_invoke()
{
  v15[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v14[0] = @"dateAfter";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateCreated"];
  v14[1] = @"dateBefore";
  v15[0] = v1;
  v2 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateCreated"];
  v15[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v4 = [v0 queryWithSQLPredicate:@"dateCreated >= :dateAfter AND dateCreated < :dateBefore ORDER BY dateCreated ASC" sequenceArgumentName:@"dateAfter" indexedProperties:&unk_286626D58 arguments:v3];
  v5 = unassociatedFaceCropsBetweenDatesQueryWithIsAscending__ascendingQuery;
  unassociatedFaceCropsBetweenDatesQueryWithIsAscending__ascendingQuery = v4;

  v6 = MEMORY[0x277D170C8];
  v12[0] = @"dateAfter";
  v7 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateCreated"];
  v12[1] = @"dateBefore";
  v13[0] = v7;
  v8 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateCreated"];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 queryWithSQLPredicate:@"dateCreated > :dateAfter AND dateCreated <= :dateBefore ORDER BY dateCreated DESC" sequenceArgumentName:@"dateBefore" indexedProperties:&unk_286626D70 arguments:v9];
  v11 = unassociatedFaceCropsBetweenDatesQueryWithIsAscending__descendingQuery;
  unassociatedFaceCropsBetweenDatesQueryWithIsAscending__descendingQuery = v10;
}

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_40501 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_40501, &__block_literal_global_21_40502);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_40503;

  return v3;
}

uint64_t __50__HMDUnassociatedFaceCropModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"58F70219-F689-486A-B16D-8143BD41ABDF"];
  v1 = sentinelParentUUID_sentinelParentUUID_40503;
  sentinelParentUUID_sentinelParentUUID_40503 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)hmbQueries
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [self unassociatedFaceCropsBetweenDatesQueryWithIsAscending:1];
  v7[0] = v3;
  v4 = [self unassociatedFaceCropsBetweenDatesQueryWithIsAscending:0];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_40513 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_40513, &__block_literal_global_40514);
  }

  v3 = hmbProperties_properties_40515;

  return v3;
}

void __45__HMDUnassociatedFaceCropModel_hmbProperties__block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"dataRepresentation";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[0] = v0;
  v11[1] = @"dateCreated";
  v1 = MEMORY[0x277D170B8];
  v2 = objc_opt_class();
  v3 = [MEMORY[0x277D170C0] queryableField];
  v10 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v5 = [v1 fieldWithClass:v2 options:v4];
  v12[1] = v5;
  v11[2] = @"faceBoundingBoxData";
  v6 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[2] = v6;
  v11[3] = @"personFaceCropUUID";
  v7 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = hmbProperties_properties_40515;
  hmbProperties_properties_40515 = v8;
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
    [(HMDUnassociatedFaceCropModel *)self setFaceBoundingBoxData:v5];
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
  faceBoundingBoxData = [(HMDUnassociatedFaceCropModel *)self faceBoundingBoxData];
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

- (id)createAssociatedUnassociatedFaceCrop
{
  v19 = *MEMORY[0x277D85DE8];
  dataRepresentation = [(HMDUnassociatedFaceCropModel *)self dataRepresentation];
  dateCreated = [(HMDUnassociatedFaceCropModel *)self dateCreated];
  v5 = dateCreated;
  if (dataRepresentation && dateCreated)
  {
    personFaceCropUUID = [(HMDUnassociatedFaceCropModel *)self personFaceCropUUID];
    if (personFaceCropUUID)
    {
      v7 = [HMDAssociatedUnassociatedFaceCrop alloc];
      hmbModelID = [(HMBModel *)self hmbModelID];
      [(HMDUnassociatedFaceCropModel *)self faceBoundingBox];
      v9 = [(HMDAssociatedUnassociatedFaceCrop *)v7 initWithUUID:hmbModelID dataRepresentation:dataRepresentation dateCreated:v5 faceBoundingBox:personFaceCropUUID personFaceCropUUID:?];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = selfCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot create face crop from model: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

- (id)createUnassociatedFaceCrop
{
  v19 = *MEMORY[0x277D85DE8];
  dataRepresentation = [(HMDUnassociatedFaceCropModel *)self dataRepresentation];
  dateCreated = [(HMDUnassociatedFaceCropModel *)self dateCreated];
  v5 = dateCreated;
  if (dataRepresentation && dateCreated)
  {
    personFaceCropUUID = [(HMDUnassociatedFaceCropModel *)self personFaceCropUUID];

    if (!personFaceCropUUID)
    {
      v7 = objc_alloc(MEMORY[0x277CD1A30]);
      hmbModelID = [(HMBModel *)self hmbModelID];
      [(HMDUnassociatedFaceCropModel *)self faceBoundingBox];
      v9 = [v7 initWithUUID:hmbModelID dataRepresentation:dataRepresentation dateCreated:v5 faceBoundingBox:?];

      goto LABEL_9;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = selfCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot create face crop from model: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (HMDUnassociatedFaceCropModel)initWithFaceCrop:(id)crop
{
  cropCopy = crop;
  uUID = [cropCopy UUID];
  sentinelParentUUID = [objc_opt_class() sentinelParentUUID];
  v7 = [(HMBModel *)self initWithModelID:uUID parentModelID:sentinelParentUUID];

  dataRepresentation = [cropCopy dataRepresentation];
  [(HMDUnassociatedFaceCropModel *)v7 setDataRepresentation:dataRepresentation];

  dateCreated = [cropCopy dateCreated];
  [(HMDUnassociatedFaceCropModel *)v7 setDateCreated:dateCreated];

  [cropCopy faceBoundingBox];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(HMDUnassociatedFaceCropModel *)v7 setFaceBoundingBox:v11, v13, v15, v17];
  return v7;
}

@end