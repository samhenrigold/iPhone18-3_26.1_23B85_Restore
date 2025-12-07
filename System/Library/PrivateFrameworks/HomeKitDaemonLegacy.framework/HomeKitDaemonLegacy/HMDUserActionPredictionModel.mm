@interface HMDUserActionPredictionModel
+ (id)hmbProperties;
- (HMDUserActionPredictionModel)initWithUserActionPrediction:(id)prediction;
- (id)userActionPrediction;
@end

@implementation HMDUserActionPredictionModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_40407 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_40407, &__block_literal_global_40408);
  }

  v3 = hmbProperties_properties_40409;

  return v3;
}

void __45__HMDUserActionPredictionModel_hmbProperties__block_invoke()
{
  v45[7] = *MEMORY[0x277D85DE8];
  v44[0] = @"predictionTargetUUID";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v36 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v43 = v36;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v34 = [v0 fieldWithClass:v1 options:v35];
  v45[0] = v34;
  v44[1] = @"targetServiceUUID";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v33 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v42 = v33;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v31 = [v2 fieldWithClass:v3 options:v32];
  v45[1] = v31;
  v44[2] = @"targetServiceGroupUUID";
  v4 = MEMORY[0x277D170B8];
  v5 = objc_opt_class();
  v30 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v41 = v30;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v28 = [v4 fieldWithClass:v5 options:v29];
  v45[2] = v28;
  v44[3] = @"targetGroupUUID";
  v6 = MEMORY[0x277D170B8];
  v7 = objc_opt_class();
  v27 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v40 = v27;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v25 = [v6 fieldWithClass:v7 options:v26];
  v45[3] = v25;
  v44[4] = @"type";
  v8 = MEMORY[0x277D170B8];
  v9 = objc_opt_class();
  v10 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v39 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v12 = [v8 fieldWithClass:v9 options:v11];
  v45[4] = v12;
  v44[5] = @"groupType";
  v13 = MEMORY[0x277D170B8];
  v14 = objc_opt_class();
  v15 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v38 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v17 = [v13 fieldWithClass:v14 options:v16];
  v45[5] = v17;
  v44[6] = @"predictionScore";
  v18 = MEMORY[0x277D170B8];
  v19 = objc_opt_class();
  v20 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v37 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v22 = [v18 fieldWithClass:v19 options:v21];
  v45[6] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:7];
  v24 = hmbProperties_properties_40409;
  hmbProperties_properties_40409 = v23;
}

- (id)userActionPrediction
{
  v3 = objc_alloc(MEMORY[0x277CD1EE8]);
  predictionTargetUUID = [(HMDUserActionPredictionModel *)self predictionTargetUUID];
  targetServiceUUID = [(HMDUserActionPredictionModel *)self targetServiceUUID];
  targetGroupUUID = [(HMDUserActionPredictionModel *)self targetGroupUUID];
  groupType = [(HMDUserActionPredictionModel *)self groupType];
  unsignedIntegerValue = [groupType unsignedIntegerValue];
  type = [(HMDUserActionPredictionModel *)self type];
  unsignedIntegerValue2 = [type unsignedIntegerValue];
  predictionScore = [(HMDUserActionPredictionModel *)self predictionScore];
  [predictionScore doubleValue];
  v12 = [v3 initWithPredictionTargetUUID:predictionTargetUUID targetServiceUUID:targetServiceUUID targetGroupUUID:targetGroupUUID targetGroupType:unsignedIntegerValue predictionType:unsignedIntegerValue2 predictionScore:?];

  return v12;
}

- (HMDUserActionPredictionModel)initWithUserActionPrediction:(id)prediction
{
  v47 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  predictionTargetUUID = [predictionCopy predictionTargetUUID];
  targetServiceUUID = [predictionCopy targetServiceUUID];
  v7 = MEMORY[0x277CCAD78];
  v8 = predictionTargetUUID;
  v9 = [[v7 alloc] initWithUUIDString:@"D73F97DF-5711-4EAA-9CA4-EB5C028A5EE8"];
  v10 = MEMORY[0x277CCAD78];
  uUIDString = [v8 UUIDString];

  v12 = [uUIDString dataUsingEncoding:4];
  v13 = [v10 hmf_UUIDWithNamespace:v9 data:v12];

  if (targetServiceUUID)
  {
    v14 = MEMORY[0x277CCAD78];
    uUIDString2 = [targetServiceUUID UUIDString];
    v16 = [uUIDString2 dataUsingEncoding:4];
    v17 = [v14 hmf_UUIDWithNamespace:v13 data:v16];

    v13 = v17;
  }

  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D73F97DF-5711-4EAA-9CA4-EB5C028A5EE8"];
  v19 = [(HMBModel *)self initWithModelID:v13 parentModelID:v18];
  predictionTargetUUID2 = [predictionCopy predictionTargetUUID];
  [(HMDUserActionPredictionModel *)v19 setPredictionTargetUUID:predictionTargetUUID2];

  targetServiceUUID2 = [predictionCopy targetServiceUUID];
  [(HMDUserActionPredictionModel *)v19 setTargetServiceUUID:targetServiceUUID2];

  targetGroupUUID = [predictionCopy targetGroupUUID];
  [(HMDUserActionPredictionModel *)v19 setTargetGroupUUID:targetGroupUUID];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(predictionCopy, "predictionType")}];
  [(HMDUserActionPredictionModel *)v19 setType:v23];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(predictionCopy, "targetGroupType")}];
  [(HMDUserActionPredictionModel *)v19 setGroupType:v24];

  v25 = MEMORY[0x277CCABB0];
  [predictionCopy predictionScore];
  v26 = [v25 numberWithDouble:?];
  [(HMDUserActionPredictionModel *)v19 setPredictionScore:v26];

  [(HMDUserActionPredictionModel *)v19 setTargetServiceGroupUUID:0];
  hmbModelID = [(HMBModel *)v19 hmbModelID];

  if (hmbModelID)
  {
    v28 = v19;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v19;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v41 = 138543874;
      v42 = v32;
      v43 = 2112;
      v44 = predictionCopy;
      v45 = 2112;
      v46 = v30;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@User Action Prediction: %@, resulted in nil hmbModelID for prediction model: %@", &v41, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    hmbModelID2 = [(HMBModel *)v30 hmbModelID];

    if (!hmbModelID2)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = v30;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        v38 = HMFGetLogIdentifier();
        v41 = 138543362;
        v42 = v38;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: User Action Prediction ModelID should not be nil", &v41, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      v39 = [[HMDAssertionLogEvent alloc] initWithReason:@"User Action Prediction ModelID should not be nil"];
      v40 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v40 submitLogEvent:v39];
    }

    v28 = 0;
  }

  return v28;
}

@end