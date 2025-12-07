@interface MKFGuest
@end

@implementation MKFGuest

BOOL __43___MKFGuest_findUserActivityStatusForType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 type];
  v7 = *(a1 + 32) == [v6 unsignedIntValue];

  *a4 = v7;
  return v7;
}

void __61___MKFGuest_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v14 = 0;
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v7 materializeOrCreateWeekDayScheduleRulesRelationWithModelID:v8 createdNew:&v14];

  if (v14)
  {
    [v9 updateFromWeekDayScheduleRule:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to create week day schedule from : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __61___MKFGuest_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke_26(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v18 = 0;
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v7 materializeOrCreateYearDayScheduleRulesRelationWithModelID:v8 createdNew:&v18];

  if (v18)
  {
    v10 = [v6 dateInterval];
    v11 = [v10 startDate];
    [v9 setStartDate:v11];

    v12 = [v6 dateInterval];
    v13 = [v12 endDate];
    [v9 setEndDate:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to create year day schedule from : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __24___MKFGuest_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v10_153560;
  logCategory__hmf_once_v10_153560 = v0;
}

void __25___MKFGuest_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v8;
  homeRelation__hmf_once_v8 = v0;
}

@end