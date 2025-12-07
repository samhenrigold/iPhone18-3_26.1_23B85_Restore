@interface HMDCameraSignificantEventNotificationModel
+ (id)hmbProperties;
+ (id)hmbQueries;
+ (id)significantEventsBetweenDatesQueryWithIsAscending:(BOOL)ascending;
- (id)createClipSignificantEventWithCameraProfileUUID:(id)d faceClassification:(id)classification;
@end

@implementation HMDCameraSignificantEventNotificationModel

+ (id)significantEventsBetweenDatesQueryWithIsAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  if (significantEventsBetweenDatesQueryWithIsAscending__onceToken != -1)
  {
    dispatch_once(&significantEventsBetweenDatesQueryWithIsAscending__onceToken, &__block_literal_global_43_28334);
  }

  v4 = &significantEventsBetweenDatesQueryWithIsAscending__ascendingQuery;
  if (!ascendingCopy)
  {
    v4 = &significantEventsBetweenDatesQueryWithIsAscending__descendingQuery;
  }

  v5 = *v4;

  return v5;
}

void __96__HMDCameraSignificantEventNotificationModel_significantEventsBetweenDatesQueryWithIsAscending___block_invoke()
{
  v15[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v14[0] = @"dateAfter";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateOfOccurrence"];
  v14[1] = @"dateBefore";
  v15[0] = v1;
  v2 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateOfOccurrence"];
  v15[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v4 = [v0 queryWithSQLPredicate:@"dateOfOccurrence >= :dateAfter AND dateOfOccurrence < :dateBefore ORDER BY dateOfOccurrence ASC" sequenceArgumentName:@"dateAfter" indexedProperties:&unk_286626D28 arguments:v3];
  v5 = significantEventsBetweenDatesQueryWithIsAscending__ascendingQuery;
  significantEventsBetweenDatesQueryWithIsAscending__ascendingQuery = v4;

  v6 = MEMORY[0x277D170C8];
  v12[0] = @"dateAfter";
  v7 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateOfOccurrence"];
  v12[1] = @"dateBefore";
  v13[0] = v7;
  v8 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateOfOccurrence"];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 queryWithSQLPredicate:@"dateOfOccurrence > :dateAfter AND dateOfOccurrence <= :dateBefore ORDER BY dateOfOccurrence DESC" sequenceArgumentName:@"dateBefore" indexedProperties:&unk_286626D40 arguments:v9];
  v11 = significantEventsBetweenDatesQueryWithIsAscending__descendingQuery;
  significantEventsBetweenDatesQueryWithIsAscending__descendingQuery = v10;
}

+ (id)hmbQueries
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [self significantEventsBetweenDatesQueryWithIsAscending:1];
  v7[0] = v3;
  v4 = [self significantEventsBetweenDatesQueryWithIsAscending:0];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_28361 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_28361, &__block_literal_global_28362);
  }

  v3 = hmbProperties__properties_28363;

  return v3;
}

void __59__HMDCameraSignificantEventNotificationModel_hmbProperties__block_invoke()
{
  v31[8] = *MEMORY[0x277D85DE8];
  v30[0] = @"significantEvent";
  v25 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v31[0] = v25;
  v30[1] = @"dateOfOccurrence";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v24 = [MEMORY[0x277D170C0] queryableField];
  v29 = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v22 = [v0 fieldWithClass:v1 options:v23];
  v31[1] = v22;
  v30[2] = @"timeOffsetWithinClip";
  v21 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v31[2] = v21;
  v30[3] = @"associatedClip";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v20 = [MEMORY[0x277D170C0] externalRecordField:@"r00"];
  v28 = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v4 = [v2 fieldWithClass:v3 options:v19];
  v31[3] = v4;
  v30[4] = @"heroFrameAsset";
  v5 = MEMORY[0x277D170B8];
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277D170C0] externalRecordField:@"a00"];
  v27 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v9 = [v5 fieldWithClass:v6 options:v8];
  v31[4] = v9;
  v30[5] = @"faceCropAsset";
  v10 = MEMORY[0x277D170B8];
  v11 = objc_opt_class();
  v12 = [MEMORY[0x277D170C0] externalRecordField:@"a01"];
  v26 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v14 = [v10 fieldWithClass:v11 options:v13];
  v31[5] = v14;
  v30[6] = @"homePresenceByPairingIdentity";
  v15 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v31[6] = v15;
  v30[7] = @"confidenceLevel";
  v16 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v31[7] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:8];
  v18 = hmbProperties__properties_28363;
  hmbProperties__properties_28363 = v17;
}

- (id)createClipSignificantEventWithCameraProfileUUID:(id)d faceClassification:(id)classification
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  classificationCopy = classification;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  significantEvent = [(HMDCameraSignificantEventNotificationModel *)self significantEvent];
  dateOfOccurrence = [(HMDCameraSignificantEventNotificationModel *)self dateOfOccurrence];
  confidenceLevel = [(HMDCameraSignificantEventNotificationModel *)self confidenceLevel];
  timeOffsetWithinClip = [(HMDCameraSignificantEventNotificationModel *)self timeOffsetWithinClip];
  associatedClip = [(HMDCameraSignificantEventNotificationModel *)self associatedClip];
  v12 = associatedClip;
  if (significantEvent && dateOfOccurrence && confidenceLevel && timeOffsetWithinClip && associatedClip)
  {
    v37 = dateOfOccurrence;
    v13 = objc_alloc(MEMORY[0x277CD18F8]);
    hmbModelID = [(HMBModel *)self hmbModelID];
    unsignedIntegerValue = [significantEvent unsignedIntegerValue];
    unsignedIntegerValue2 = [confidenceLevel unsignedIntegerValue];
    [timeOffsetWithinClip doubleValue];
    v18 = v17;
    [v12 hmbModelID];
    v19 = v12;
    v20 = timeOffsetWithinClip;
    v21 = confidenceLevel;
    v22 = significantEvent;
    v24 = v23 = dCopy;
    v25 = v13;
    dateOfOccurrence = v37;
    v26 = [v25 initWithUniqueIdentifier:hmbModelID reason:unsignedIntegerValue dateOfOccurrence:v37 confidenceLevel:unsignedIntegerValue2 cameraProfileUUID:v23 faceClassification:classificationCopy timeOffsetWithinClip:v18 clipUUID:v24];

    dCopy = v23;
    significantEvent = v22;
    confidenceLevel = v21;
    timeOffsetWithinClip = v20;
    v12 = v19;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      [(HMBModel *)selfCopy debugDescription];
      v38 = v12;
      v31 = confidenceLevel;
      v32 = dateOfOccurrence;
      v33 = significantEvent;
      v35 = v34 = v27;
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v35;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot create significant event from model: %@", buf, 0x16u);

      v27 = v34;
      significantEvent = v33;
      dateOfOccurrence = v32;
      confidenceLevel = v31;
      v12 = v38;
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  return v26;
}

@end