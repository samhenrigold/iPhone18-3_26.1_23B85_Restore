@interface HMBCloudZoneRecordPushConflict
- (BOOL)isEqual:(id)equal;
- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)d clientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord;
- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)d error:(id)error;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMBCloudZoneRecordPushConflict

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  recordID = [(HMBCloudZoneRecordPushConflict *)self recordID];
  hmbDescription = [recordID hmbDescription];
  v18 = [v3 initWithName:@"Record ID" value:hmbDescription];
  v21[0] = v18;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  clientRecord = [(HMBCloudZoneRecordPushConflict *)self clientRecord];
  hmbDescription2 = [clientRecord hmbDescription];
  v7 = [v4 initWithName:@"Client Record" value:hmbDescription2];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  serverRecord = [(HMBCloudZoneRecordPushConflict *)self serverRecord];
  hmbDescription3 = [serverRecord hmbDescription];
  v11 = [v8 initWithName:@"Server Record" value:hmbDescription3];
  v21[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  ancestorRecord = [(HMBCloudZoneRecordPushConflict *)self ancestorRecord];
  hmbDescription4 = [ancestorRecord hmbDescription];
  v15 = [v12 initWithName:@"Ancestor Record" value:hmbDescription4];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  return v16;
}

- (unint64_t)hash
{
  recordID = [(HMBCloudZoneRecordPushConflict *)self recordID];
  v3 = [recordID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    recordID = [(HMBCloudZoneRecordPushConflict *)self recordID];
    recordID2 = [v6 recordID];
    if ([recordID isEqual:recordID2] && (-[HMBCloudZoneRecordPushConflict clientRecord](self, "clientRecord"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "clientRecord"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11) && (-[HMBCloudZoneRecordPushConflict serverRecord](self, "serverRecord"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "serverRecord"), v13 = objc_claimAutoreleasedReturnValue(), v14 = HMFEqualObjects(), v13, v12, v14))
    {
      ancestorRecord = [(HMBCloudZoneRecordPushConflict *)self ancestorRecord];
      ancestorRecord2 = [v6 ancestorRecord];
      v17 = HMFEqualObjects();
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)d clientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord
{
  dCopy = d;
  recordCopy = record;
  serverRecordCopy = serverRecord;
  ancestorRecordCopy = ancestorRecord;
  if (dCopy)
  {
    v15 = ancestorRecordCopy;
    v23.receiver = self;
    v23.super_class = HMBCloudZoneRecordPushConflict;
    v16 = [(HMBCloudZoneRecordPushConflict *)&v23 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_recordID, d);
      objc_storeStrong(&v17->_clientRecord, record);
      objc_storeStrong(&v17->_serverRecord, serverRecord);
      objc_storeStrong(&v17->_ancestorRecord, ancestorRecord);
    }

    return v17;
  }

  else
  {
    v19 = _HMFPreconditionFailure();
    return [(HMBCloudZoneRecordPushConflict *)v19 initWithRecordID:v20 error:v21, v22];
  }
}

- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)d error:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  if (![errorCopy hmbIsCloudKitError])
  {
    goto LABEL_18;
  }

  if ([errorCopy code] == 11)
  {
    self = [(HMBCloudZoneRecordPushConflict *)self initWithRecordID:dCopy clientRecord:0 serverRecord:0 ancestorRecord:0];
    selfCopy2 = self;
    goto LABEL_19;
  }

  if ([errorCopy code] != 14)
  {
LABEL_18:
    selfCopy2 = 0;
    goto LABEL_19;
  }

  userInfo = [errorCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    userInfo2 = [errorCopy userInfo];
    v14 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      userInfo3 = [errorCopy userInfo];
      v18 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBBFD8]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (v20)
      {
        self = [(HMBCloudZoneRecordPushConflict *)self initWithRecordID:dCopy clientRecord:v12 serverRecord:v16 ancestorRecord:v20];
        selfCopy2 = self;
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        self = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          userInfo4 = [errorCopy userInfo];
          v34 = 138543618;
          v35 = v32;
          v36 = 2112;
          v37 = userInfo4;
          _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have ancestor record: %@", &v34, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        selfCopy2 = 0;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      self = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        userInfo5 = [errorCopy userInfo];
        v34 = 138543618;
        v35 = v28;
        v36 = 2112;
        v37 = userInfo5;
        _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have server record: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      selfCopy2 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    self = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      userInfo6 = [errorCopy userInfo];
      v34 = 138543618;
      v35 = v24;
      v36 = 2112;
      v37 = userInfo6;
      _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have client record: %@", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    selfCopy2 = 0;
  }

LABEL_19:
  return selfCopy2;
}

@end