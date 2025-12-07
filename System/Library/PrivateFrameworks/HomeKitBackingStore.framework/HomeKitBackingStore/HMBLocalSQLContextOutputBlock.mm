@interface HMBLocalSQLContextOutputBlock
+ (id)logCategory;
- (HMBLocalSQLContext)owner;
- (HMBLocalSQLContextOutputBlock)initWithOwner:(id)owner identifier:(id)identifier zoneRow:(unint64_t)row blockRow:(unint64_t)blockRow;
- (id)abort;
- (id)commit:(id)commit;
- (id)updateModelID:(id)d modelEncoding:(unint64_t)encoding modelData:(id)data;
@end

@implementation HMBLocalSQLContextOutputBlock

- (HMBLocalSQLContext)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (id)abort
{
  v40 = *MEMORY[0x277D85DE8];
  blockRow = [(HMBLocalSQLContextOutputBlock *)self blockRow];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (blockRow)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      activity = [(HMBLocalSQLContextOutputBlock *)selfCopy activity];
      identifier = [activity identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543618;
      v35 = v8;
      v36 = 2114;
      v37 = shortDescription;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Aborting output block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    owner = [(HMBLocalSQLContextOutputBlock *)selfCopy owner];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __38__HMBLocalSQLContextOutputBlock_abort__block_invoke;
    v33[3] = &unk_2786E24B0;
    v33[4] = selfCopy;
    v13 = [owner sqlBlockWithActivity:0 block:v33];

    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        activity2 = [(HMBLocalSQLContextOutputBlock *)v15 activity];
        identifier2 = [activity2 identifier];
        shortDescription2 = [identifier2 shortDescription];
        *buf = 138543874;
        v35 = v18;
        v36 = 2114;
        v37 = shortDescription2;
        v38 = 2112;
        v39 = v13;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to abort output block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      [(HMBLocalSQLContextOutputBlock *)v15 setBlockRow:0];
      v22 = v13;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v27 = HMFGetLogIdentifier();
        activity3 = [(HMBLocalSQLContextOutputBlock *)v15 activity];
        identifier3 = [activity3 identifier];
        shortDescription3 = [identifier3 shortDescription];
        *buf = 138543618;
        v35 = v27;
        v36 = 2114;
        v37 = shortDescription3;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Successfully aborted output block", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [(HMBLocalSQLContextOutputBlock *)v15 setBlockRow:0];
      activity4 = [(HMBLocalSQLContextOutputBlock *)v15 activity];
      [activity4 invalidate];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      activity5 = [(HMBLocalSQLContextOutputBlock *)selfCopy activity];
      identifier4 = [activity5 identifier];
      shortDescription4 = [identifier4 shortDescription];
      *buf = 138543618;
      v35 = v23;
      v36 = 2114;
      v37 = shortDescription4;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to abort invalid output block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v13 = 0;
  }

  return v13;
}

id __38__HMBLocalSQLContextOutputBlock_abort__block_invoke(uint64_t a1, void *a2)
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
  v49 = *MEMORY[0x277D85DE8];
  commitCopy = commit;
  blockRow = [(HMBLocalSQLContextOutputBlock *)self blockRow];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (blockRow)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      activity = [(HMBLocalSQLContextOutputBlock *)selfCopy activity];
      identifier = [activity identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543618;
      v44 = v10;
      v45 = 2114;
      v46 = shortDescription;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Committing output block.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    activity2 = [(HMBLocalSQLContextOutputBlock *)selfCopy activity];
    [activity2 markWithReason:@"committing block."];

    owner = [(HMBLocalSQLContextOutputBlock *)selfCopy owner];
    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = __40__HMBLocalSQLContextOutputBlock_commit___block_invoke;
    v40 = &unk_2786E1B00;
    v41 = selfCopy;
    v42 = commitCopy;
    v16 = [owner sqlBlockWithActivity:0 block:&v37];

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [(HMBLocalSQLContextOutputBlock *)v18 activity:v37];
        identifier2 = [v22 identifier];
        shortDescription2 = [identifier2 shortDescription];
        *buf = 138543874;
        v44 = v21;
        v45 = 2114;
        v46 = shortDescription2;
        v47 = 2112;
        v48 = v16;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to commit output block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      abort = [(HMBLocalSQLContextOutputBlock *)v18 abort];
      [(HMBLocalSQLContextOutputBlock *)v18 setBlockRow:0];
      v26 = v16;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [(HMBLocalSQLContextOutputBlock *)v18 activity:v37];
        identifier3 = [v32 identifier];
        shortDescription3 = [identifier3 shortDescription];
        *buf = 138543618;
        v44 = v31;
        v45 = 2114;
        v46 = shortDescription3;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Successfully committed input block", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [(HMBLocalSQLContextOutputBlock *)v18 setBlockRow:0];
      activity3 = [(HMBLocalSQLContextOutputBlock *)v18 activity];
      [activity3 invalidate];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      activity4 = [(HMBLocalSQLContextOutputBlock *)selfCopy activity];
      identifier4 = [activity4 identifier];
      shortDescription4 = [identifier4 shortDescription];
      *buf = 138543618;
      v44 = v27;
      v45 = 2114;
      v46 = shortDescription4;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to commit invalid output block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v16 = 0;
  }

  return v16;
}

id __40__HMBLocalSQLContextOutputBlock_commit___block_invoke(uint64_t a1, void *a2)
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

- (id)updateModelID:(id)d modelEncoding:(unint64_t)encoding modelData:(id)data
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  if ([(HMBLocalSQLContextOutputBlock *)self blockRow])
  {
    owner = [(HMBLocalSQLContextOutputBlock *)self owner];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __71__HMBLocalSQLContextOutputBlock_updateModelID_modelEncoding_modelData___block_invoke;
    v31 = &unk_2786E1AD8;
    selfCopy = self;
    v33 = dCopy;
    encodingCopy = encoding;
    v34 = dataCopy;
    v11 = [owner sqlBlockWithActivity:0 block:&v28];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [(HMBLocalSQLContextOutputBlock *)selfCopy2 activity:v28];
        identifier = [v16 identifier];
        shortDescription = [identifier shortDescription];
        *buf = 138543874;
        v37 = v15;
        v38 = 2114;
        v39 = shortDescription;
        v40 = 2112;
        v41 = v11;
        _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to add additional entries on output block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      abort = [(HMBLocalSQLContextOutputBlock *)selfCopy2 abort];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      activity = [(HMBLocalSQLContextOutputBlock *)selfCopy3 activity];
      identifier2 = [activity identifier];
      shortDescription2 = [identifier2 shortDescription];
      *buf = 138543618;
      v37 = v23;
      v38 = 2114;
      v39 = shortDescription2;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to add additional entries on invalid output block", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v11 = 0;
  }

  return v11;
}

id __71__HMBLocalSQLContextOutputBlock_updateModelID_modelEncoding_modelData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "blockRow")}];
  v13 = 0;
  [v4 _updateRecordWithZoneRow:v5 modelID:v8 pushEncoding:v6 pushData:v7 pushBlockRow:v9 error:&v13];

  v10 = v13;
  v11 = v13;

  return v10;
}

- (HMBLocalSQLContextOutputBlock)initWithOwner:(id)owner identifier:(id)identifier zoneRow:(unint64_t)row blockRow:(unint64_t)blockRow
{
  v38 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = HMBLocalSQLContextOutputBlock;
  v12 = [(HMBLocalSQLContextOutputBlock *)&v31 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeWeak(&v13->_owner, ownerCopy);
    v13->_blockRow = blockRow;
    v13->_zoneRow = row;
    v14 = objc_alloc(MEMORY[0x277D0F770]);
    v15 = MEMORY[0x277CCACA8];
    logIdentifier = [(HMBLocalSQLContextOutputBlock *)v13 logIdentifier];
    v17 = [v15 stringWithFormat:@"HMBLocalSQLContextOutputBlock.%@", logIdentifier];
    v18 = [v14 initWithName:v17];
    activity = v13->_activity;
    v13->_activity = v18;

    v20 = objc_autoreleasePoolPush();
    v21 = v13;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      activity = [(HMBLocalSQLContextOutputBlock *)v21 activity];
      identifier = [activity identifier];
      shortDescription = [identifier shortDescription];
      [(HMBLocalSQLContextOutputBlock *)v21 identifier];
      v30 = v20;
      v28 = v27 = identifierCopy;
      *buf = 138543874;
      v33 = v23;
      v34 = 2114;
      v35 = shortDescription;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating Output Block for %@", buf, 0x20u);

      identifierCopy = v27;
      v20 = v30;
    }

    objc_autoreleasePoolPop(v20);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11, &__block_literal_global_6072);
  }

  v3 = logCategory__hmf_once_v12;

  return v3;
}

uint64_t __44__HMBLocalSQLContextOutputBlock_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12;
  logCategory__hmf_once_v12 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end