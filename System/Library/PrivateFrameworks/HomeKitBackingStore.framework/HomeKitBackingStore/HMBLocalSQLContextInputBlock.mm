@interface HMBLocalSQLContextInputBlock
+ (id)logCategory;
- (HMBLocalSQLContext)owner;
- (HMBLocalSQLContextInputBlock)initWithOwner:(id)owner identifier:(id)identifier zoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type;
- (id)abort;
- (id)attributeDescriptions;
- (id)commit:(id)commit;
- (id)insertExternalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData;
- (id)updateExternalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData;
@end

@implementation HMBLocalSQLContextInputBlock

- (HMBLocalSQLContext)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (id)abort
{
  v42 = *MEMORY[0x277D85DE8];
  blockRow = [(HMBLocalSQLContextInputBlock *)self blockRow];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (blockRow)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      activity = [(HMBLocalSQLContextInputBlock *)selfCopy activity];
      identifier = [activity identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543618;
      v37 = v8;
      v38 = 2114;
      v39 = shortDescription;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Aborting input block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    owner = [(HMBLocalSQLContextInputBlock *)selfCopy owner];
    v34[4] = selfCopy;
    v35 = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __37__HMBLocalSQLContextInputBlock_abort__block_invoke;
    v34[3] = &unk_2786E24B0;
    v13 = [owner sqlBlockWithActivity:0 error:&v35 block:v34];
    v14 = v35;

    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v13)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        activity2 = [(HMBLocalSQLContextInputBlock *)v16 activity];
        identifier2 = [activity2 identifier];
        shortDescription2 = [identifier2 shortDescription];
        *buf = 138543618;
        v37 = v19;
        v38 = 2114;
        v39 = shortDescription2;
        _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Successfully aborted input block", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMBLocalSQLContextInputBlock *)v16 setBlockRow:0];
      activity3 = [(HMBLocalSQLContextInputBlock *)v16 activity];
      [activity3 invalidate];

      v24 = 0;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        activity4 = [(HMBLocalSQLContextInputBlock *)v16 activity];
        identifier3 = [activity4 identifier];
        shortDescription3 = [identifier3 shortDescription];
        *buf = 138543874;
        v37 = v29;
        v38 = 2114;
        v39 = shortDescription3;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to abort input block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMBLocalSQLContextInputBlock *)v16 setBlockRow:0];
      v24 = v14;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      activity5 = [(HMBLocalSQLContextInputBlock *)selfCopy activity];
      identifier4 = [activity5 identifier];
      shortDescription4 = [identifier4 shortDescription];
      *buf = 138543618;
      v37 = v25;
      v38 = 2114;
      v39 = shortDescription4;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to abort invalid input block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  }

  return v24;
}

id __37__HMBLocalSQLContextInputBlock_abort__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  [v4 _deleteItemsWithBlockRow:objc_msgSend(v3 error:{"blockRow"), &v11}];
  v5 = v11;
  v6 = [*(a1 + 32) blockRow];
  v10 = v5;
  [v4 _deleteBlockWithRow:v6 error:&v10];

  v7 = v10;
  v8 = v10;

  return v7;
}

- (id)commit:(id)commit
{
  v46 = *MEMORY[0x277D85DE8];
  commitCopy = commit;
  blockRow = [(HMBLocalSQLContextInputBlock *)self blockRow];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (blockRow)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      activity = [(HMBLocalSQLContextInputBlock *)selfCopy activity];
      identifier = [activity identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543618;
      v41 = v10;
      v42 = 2114;
      v43 = shortDescription;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Committing input block.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    owner = [(HMBLocalSQLContextInputBlock *)selfCopy owner];
    v39 = 0;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __39__HMBLocalSQLContextInputBlock_commit___block_invoke;
    v37[3] = &unk_2786E1B00;
    v37[4] = selfCopy;
    v38 = commitCopy;
    v15 = [owner sqlBlockWithActivity:0 error:&v39 block:v37];
    v16 = v39;

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v15)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        activity2 = [(HMBLocalSQLContextInputBlock *)v18 activity];
        identifier2 = [activity2 identifier];
        shortDescription2 = [identifier2 shortDescription];
        *buf = 138543618;
        v41 = v21;
        v42 = 2114;
        v43 = shortDescription2;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Successfully committed input block", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [(HMBLocalSQLContextInputBlock *)v18 setBlockRow:0];
      activity3 = [(HMBLocalSQLContextInputBlock *)v18 activity];
      [activity3 invalidate];

      v26 = 0;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        activity4 = [(HMBLocalSQLContextInputBlock *)v18 activity];
        identifier3 = [activity4 identifier];
        shortDescription3 = [identifier3 shortDescription];
        *buf = 138543874;
        v41 = v31;
        v42 = 2114;
        v43 = shortDescription3;
        v44 = 2112;
        v45 = v16;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to commit input block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      abort = [(HMBLocalSQLContextInputBlock *)v18 abort];
      v26 = v16;
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      activity5 = [(HMBLocalSQLContextInputBlock *)selfCopy activity];
      identifier4 = [activity5 identifier];
      shortDescription4 = [identifier4 shortDescription];
      *buf = 138543618;
      v41 = v27;
      v42 = 2114;
      v43 = shortDescription4;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to commit invalid input block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  }

  return v26;
}

id __39__HMBLocalSQLContextInputBlock_commit___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 blockRow];
  v6 = *(a1 + 40);
  v9 = 0;
  [v4 _updateBlockWithRow:v5 options:v6 error:&v9];

  v7 = v9;

  return v7;
}

- (id)updateExternalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  modelDataCopy = modelData;
  if ([(HMBLocalSQLContextInputBlock *)self blockRow])
  {
    owner = [(HMBLocalSQLContextInputBlock *)self owner];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __86__HMBLocalSQLContextInputBlock_updateExternalID_externalData_modelEncoding_modelData___block_invoke;
    v33[3] = &unk_2786E04D8;
    v33[4] = self;
    v34 = dCopy;
    v35 = dataCopy;
    encodingCopy = encoding;
    v36 = modelDataCopy;
    v14 = [owner sqlBlockWithActivity:0 block:v33];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        activity = [(HMBLocalSQLContextInputBlock *)selfCopy activity];
        identifier = [activity identifier];
        [identifier shortDescription];
        v21 = v32 = v15;
        *buf = 138543874;
        v39 = v18;
        v40 = 2114;
        v41 = v21;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to update additional entries on input block: %@", buf, 0x20u);

        v15 = v32;
      }

      objc_autoreleasePoolPop(v15);
      abort = [(HMBLocalSQLContextInputBlock *)selfCopy abort];
      v23 = v14;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      activity2 = [(HMBLocalSQLContextInputBlock *)selfCopy2 activity];
      identifier2 = [activity2 identifier];
      shortDescription = [identifier2 shortDescription];
      *buf = 138543618;
      v39 = v27;
      v40 = 2114;
      v41 = shortDescription;
      _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to update additional entries on invalid input block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  }

  return v14;
}

id __86__HMBLocalSQLContextInputBlock_updateExternalID_externalData_modelEncoding_modelData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = [*(a1 + 32) blockRow];
  v7 = [*(a1 + 32) type];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v14 = 0;
  [v4 _updateItemWithZoneRow:v5 blockRow:v6 type:v7 externalID:v8 externalData:v9 modelEncoding:v10 modelData:v11 error:&v14];

  v12 = v14;

  return v12;
}

- (id)insertExternalID:(id)d externalData:(id)data modelEncoding:(unint64_t)encoding modelData:(id)modelData
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  modelDataCopy = modelData;
  if ([(HMBLocalSQLContextInputBlock *)self blockRow])
  {
    owner = [(HMBLocalSQLContextInputBlock *)self owner];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __86__HMBLocalSQLContextInputBlock_insertExternalID_externalData_modelEncoding_modelData___block_invoke;
    v33[3] = &unk_2786E04D8;
    v33[4] = self;
    v34 = dCopy;
    v35 = dataCopy;
    encodingCopy = encoding;
    v36 = modelDataCopy;
    v14 = [owner sqlBlockWithActivity:0 block:v33];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        activity = [(HMBLocalSQLContextInputBlock *)selfCopy activity];
        identifier = [activity identifier];
        [identifier shortDescription];
        v21 = v32 = v15;
        *buf = 138543874;
        v39 = v18;
        v40 = 2114;
        v41 = v21;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to add additional entries on input block: %@", buf, 0x20u);

        v15 = v32;
      }

      objc_autoreleasePoolPop(v15);
      abort = [(HMBLocalSQLContextInputBlock *)selfCopy abort];
      v23 = v14;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      activity2 = [(HMBLocalSQLContextInputBlock *)selfCopy2 activity];
      identifier2 = [activity2 identifier];
      shortDescription = [identifier2 shortDescription];
      *buf = 138543618;
      v39 = v27;
      v40 = 2114;
      v41 = shortDescription;
      _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to add additional entries on invalid input block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  }

  return v14;
}

id __86__HMBLocalSQLContextInputBlock_insertExternalID_externalData_modelEncoding_modelData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = [*(a1 + 32) blockRow];
  v7 = [*(a1 + 32) type];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v14 = 0;
  [v4 _insertItemWithZoneRow:v5 blockRow:v6 type:v7 externalID:v8 externalData:v9 modelEncoding:v10 modelData:v11 error:&v14];

  v12 = v14;

  return v12;
}

- (id)attributeDescriptions
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextInputBlock blockRow](self, "blockRow")}];
  v5 = [v3 initWithName:@"Block Row" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextInputBlock zoneRow](self, "zoneRow", v5)}];
  v8 = [v6 initWithName:@"Zone Row" value:v7];
  v14[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMBLocalSQLContextInputBlock type](self, "type")}];
  v11 = [v9 initWithName:@"Type" value:v10];
  v14[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  return v12;
}

- (HMBLocalSQLContextInputBlock)initWithOwner:(id)owner identifier:(id)identifier zoneRow:(unint64_t)row blockRow:(unint64_t)blockRow type:(unint64_t)type
{
  v40 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  identifierCopy = identifier;
  v33.receiver = self;
  v33.super_class = HMBLocalSQLContextInputBlock;
  v14 = [(HMBLocalSQLContextInputBlock *)&v33 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeWeak(&v15->_owner, ownerCopy);
    v15->_blockRow = blockRow;
    v15->_zoneRow = row;
    v15->_type = type;
    v16 = objc_alloc(MEMORY[0x277D0F770]);
    v17 = MEMORY[0x277CCACA8];
    logIdentifier = [(HMBLocalSQLContextInputBlock *)v15 logIdentifier];
    v19 = [v17 stringWithFormat:@"HMBLocalSQLContextInputBlock.%@", logIdentifier];
    v20 = [v16 initWithName:v19];
    activity = v15->_activity;
    v15->_activity = v20;

    v22 = objc_autoreleasePoolPush();
    v23 = v15;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      activity = [(HMBLocalSQLContextInputBlock *)v23 activity];
      identifier = [activity identifier];
      shortDescription = [identifier shortDescription];
      [(HMBLocalSQLContextInputBlock *)v23 identifier];
      v32 = v22;
      v30 = v29 = identifierCopy;
      *buf = 138543874;
      v35 = v25;
      v36 = 2114;
      v37 = shortDescription;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating Input Block for %@", buf, 0x20u);

      identifierCopy = v29;
      v22 = v32;
    }

    objc_autoreleasePoolPop(v22);
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13, &__block_literal_global_803);
  }

  v3 = logCategory__hmf_once_v14;

  return v3;
}

uint64_t __43__HMBLocalSQLContextInputBlock_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14;
  logCategory__hmf_once_v14 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end