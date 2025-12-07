@interface HMDLegacyV0Model
+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error;
+ (id)hmbProperties;
- (HMDLegacyV0Model)init;
- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error;
@end

@implementation HMDLegacyV0Model

- (id)encodeWithExistingRecord:(id)record cloudZone:(id)zone modelContainer:(id)container error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  zoneCopy = zone;
  containerCopy = container;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = containerCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_35;
  }

  if (!recordCopy)
  {
    zoneID = [zoneCopy zoneID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = zoneID;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x277CBC5D0]);
      zoneID2 = [v25 zoneID];
      v28 = [v26 initWithRecordName:@"84968B22-8974-4102-AAA6-7B9C763A14B5" zoneID:zoneID2];

      recordCopy = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"HomeDataBlob" recordID:v28];
      goto LABEL_15;
    }

LABEL_35:
    _HMFPreconditionFailure();
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v16 = [recordName isEqual:@"84968B22-8974-4102-AAA6-7B9C763A14B5"];

  if ((v16 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v20 = v55 = v17;
      [recordCopy recordID];
      v21 = v56 = zoneCopy;
      recordName2 = [v21 recordName];
      *buf = 138543874;
      v63 = v20;
      v64 = 2112;
      v65 = recordName2;
      v66 = 2112;
      v67 = @"84968B22-8974-4102-AAA6-7B9C763A14B5";
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@UNEXPECTED RECORD NAME MISMATCH (V0) %@ != %@", buf, 0x20u);

      zoneCopy = v56;
      v17 = v55;
    }

    objc_autoreleasePoolPop(v17);
  }

LABEL_15:
  cloudBlob = [(HMDLegacyV0Model *)self cloudBlob];
  v61 = 0;
  v30 = [v13 encryptData:cloudBlob compress:0 error:&v61];
  v31 = v61;

  if (v31 || !v30)
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      v40 = objc_opt_class();
      NSStringFromClass(v40);
      v57 = containerCopy;
      v41 = v13;
      v43 = v42 = zoneCopy;
      *buf = 138543874;
      v63 = v39;
      v64 = 2112;
      v65 = v43;
      v66 = 2112;
      v67 = v31;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%@ encodeWithExistingRecord:error:] failed encryption: %@", buf, 0x20u);

      zoneCopy = v42;
      v13 = v41;
      containerCopy = v57;
    }

    objc_autoreleasePoolPop(v36);
    if (error)
    {
      v44 = v31;
      v35 = 0;
      *error = v31;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    [recordCopy setObject:v30 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];
    cloudBlobV2 = [(HMDLegacyV0Model *)self cloudBlobV2];
    v60 = 0;
    v33 = [v13 encryptData:cloudBlobV2 compress:1 error:&v60];
    v31 = v60;

    if (v31 || !v33)
    {
      v45 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        v49 = objc_opt_class();
        NSStringFromClass(v49);
        v58 = containerCopy;
        v50 = v13;
        v52 = v51 = zoneCopy;
        *buf = 138543874;
        v63 = v48;
        v64 = 2112;
        v65 = v52;
        v66 = 2112;
        v67 = v31;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%@ encodeWithExistingRecord:error:] failed encryption: %@", buf, 0x20u);

        zoneCopy = v51;
        v13 = v50;
        containerCopy = v58;
      }

      objc_autoreleasePoolPop(v45);
      if (error)
      {
        v53 = v31;
        v35 = 0;
        *error = v31;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      [recordCopy setObject:v33 forKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];
      cloudBlobsReadOnly = [(HMDLegacyV0Model *)self cloudBlobsReadOnly];
      [recordCopy setObject:cloudBlobsReadOnly forKeyedSubscript:@"kRecordReadOnly"];

      v35 = recordCopy;
      v31 = 0;
    }

    v30 = v33;
  }

  return v35;
}

- (HMDLegacyV0Model)init
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"ABE49D63-6AE9-4469-A7EF-AC020E0104B3"];
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1CAEDC10-E3E5-41A4-BB17-A9EEBA14A938"];
  v7.receiver = self;
  v7.super_class = HMDLegacyV0Model;
  v5 = [(HMBModel *)&v7 initWithModelID:v3 parentModelID:v4];

  return v5;
}

+ (id)createWithLegacyRecord:(id)record modelContainer:(id)container error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  containerCopy = container;
  recordType = [recordCopy recordType];
  v11 = [recordType isEqual:@"HomeDataBlob"];

  if (v11)
  {
    v12 = objc_alloc_init(HMDLegacyV0Model);
    if (!v12)
    {
      v23 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v13 = [recordCopy objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];
    if (v13)
    {
      v44 = 0;
      v14 = [containerCopy decryptData:v13 decompress:0 error:&v44];
      v15 = v44;
      if (v15)
      {
        v16 = v15;
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v19 = v39 = v14;
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138543874;
          v46 = v19;
          v47 = 2112;
          v48 = v21;
          v49 = 2112;
          v50 = v16;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@ unable to decrypt data: %@", buf, 0x20u);

          v14 = v39;
        }

        objc_autoreleasePoolPop(context);
        if (error)
        {
          v22 = v16;
          *error = v16;
        }

        v23 = 0;
        goto LABEL_29;
      }

      if (v14)
      {
        [(HMDLegacyV0Model *)v12 setCloudBlob:v14];
      }
    }

    v24 = [recordCopy objectForKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];

    if (v24)
    {
      v43 = 0;
      v25 = [containerCopy decryptData:v24 decompress:1 error:&v43];
      v26 = v43;
      if (v26)
      {
        v27 = v26;
        v28 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v31 = v40 = v25;
          v32 = objc_opt_class();
          NSStringFromClass(v32);
          v33 = contexta = v28;
          *buf = 138543874;
          v46 = v31;
          v47 = 2112;
          v48 = v33;
          v49 = 2112;
          v50 = v27;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@ unable to decrypt data: %@", buf, 0x20u);

          v28 = contexta;
          v25 = v40;
        }

        objc_autoreleasePoolPop(v28);
        if (error)
        {
          v34 = v27;
          *error = v27;
        }

        v23 = 0;
        goto LABEL_28;
      }

      if (v25)
      {
        [(HMDLegacyV0Model *)v12 setCloudBlobV2:v25];
      }
    }

    v35 = MEMORY[0x277CCABB0];
    v36 = [recordCopy objectForKeyedSubscript:@"kRecordReadOnly"];
    v37 = [v35 numberWithBool:{objc_msgSend(v36, "BOOLValue")}];
    [(HMBModel *)v12 hmbSetProperty:v37 named:@"cloudBlobsReadOnly"];

    v23 = v12;
LABEL_28:
    v13 = v24;
LABEL_29:

    goto LABEL_30;
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

LABEL_31:

  return v23;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_169835 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_169835, &__block_literal_global_169836);
  }

  v3 = hmbProperties__properties_169837;

  return v3;
}

void __33__HMDLegacyV0Model_hmbProperties__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"cloudBlob";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[0] = v0;
  v5[1] = @"cloudBlobV2";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[1] = v1;
  v5[2] = @"cloudBlobsReadOnly";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = hmbProperties__properties_169837;
  hmbProperties__properties_169837 = v3;
}

@end