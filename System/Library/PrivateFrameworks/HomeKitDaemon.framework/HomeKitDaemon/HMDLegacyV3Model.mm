@interface HMDLegacyV3Model
+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error;
+ (id)hmbProperties;
- (HMDLegacyV3Model)init;
- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error;
@end

@implementation HMDLegacyV3Model

- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  zoneCopy = zone;
  containerCopy = container;
  if (recordCopy)
  {
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v15 = [recordName isEqual:@"BC9706E1-E72E-4152-A2A6-417AD742DC41"];

    if ((v15 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v19 = v43 = error;
        [recordCopy recordID];
        v20 = v42 = v16;
        recordName2 = [v20 recordName];
        *buf = 138543874;
        v47 = v19;
        v48 = 2112;
        v49 = recordName2;
        v50 = 2112;
        v51 = @"BC9706E1-E72E-4152-A2A6-417AD742DC41";
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@UNEXPECTED RECORD NAME MISMATCH (V3) %@ != %@", buf, 0x20u);

        v16 = v42;
        error = v43;
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    zoneID = [zoneCopy zoneID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = zoneID;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (!v24)
    {
      _HMFPreconditionFailure();
    }

    v25 = objc_alloc(MEMORY[0x277CBC5D0]);
    zoneID2 = [v24 zoneID];
    v27 = [v25 initWithRecordName:@"BC9706E1-E72E-4152-A2A6-417AD742DC41" zoneID:zoneID2];

    recordCopy = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"HomeDataBlobV3" recordID:v27];
  }

  cloudBlob = [(HMDLegacyV3Model *)self cloudBlob];
  v45 = 0;
  v29 = [containerCopy encryptData:cloudBlob compress:1 error:&v45];
  v30 = v45;

  if (v30 || !v29)
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v36 = objc_opt_class();
      NSStringFromClass(v36);
      v44 = containerCopy;
      v37 = zoneCopy;
      v39 = v38 = error;
      *buf = 138543874;
      v47 = v35;
      v48 = 2112;
      v49 = v39;
      v50 = 2112;
      v51 = v30;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%@ encodeForCloudZone:error:] failed encryption: %@", buf, 0x20u);

      error = v38;
      zoneCopy = v37;
      containerCopy = v44;
    }

    objc_autoreleasePoolPop(v32);
    if (error)
    {
      v40 = v30;
      v31 = 0;
      *error = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    [recordCopy setObject:v29 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];
    v31 = recordCopy;
  }

  return v31;
}

- (HMDLegacyV3Model)init
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5E034157-5CED-4502-9C16-9428C798883A"];
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1CAEDC10-E3E5-41A4-BB17-A9EEBA14A938"];
  v7.receiver = self;
  v7.super_class = HMDLegacyV3Model;
  v5 = [(HMBModel *)&v7 initWithModelID:v3 parentModelID:v4];

  return v5;
}

+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  containerCopy = container;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = containerCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    _HMFPreconditionFailure();
  }

  recordType = [recordCopy recordType];
  v13 = [recordType isEqual:@"HomeDataBlobV3"];

  if (v13)
  {
    v14 = objc_alloc_init(self);
    if (recordCopy)
    {
      v15 = [recordCopy objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];
      if (v15)
      {
        v28 = 0;
        v16 = [v11 decryptData:v15 decompress:1 error:&v28];
        v17 = v28;
        if (v17)
        {
          v18 = v17;
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            NSStringFromClass(selfCopy);
            v21 = v25 = v16;
            *buf = 138543874;
            v30 = v26;
            v31 = 2112;
            v32 = v21;
            v33 = 2112;
            v34 = v18;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@ unable to decrypt data: %@", buf, 0x20u);

            v16 = v25;
          }

          objc_autoreleasePoolPop(context);
          if (error)
          {
            v22 = v18;
            *error = v18;
          }

          v23 = 0;
          goto LABEL_20;
        }

        [v14 setCloudBlob:v16];
      }
    }

    v23 = v14;
LABEL_20:

    goto LABEL_21;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_21:

  return v23;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_118480 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_118480, &__block_literal_global_118481);
  }

  v3 = hmbProperties__properties_118482;

  return v3;
}

void __33__HMDLegacyV3Model_hmbProperties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"cloudBlob";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = hmbProperties__properties_118482;
  hmbProperties__properties_118482 = v1;
}

@end