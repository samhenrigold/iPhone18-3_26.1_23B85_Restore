@interface HMDCoreDataCloudTransformableLocalEvents
+ (void)_addEventForObjectWithID:(void *)d additionalUpdates:(void *)updates context:;
@end

@implementation HMDCoreDataCloudTransformableLocalEvents

+ (void)_addEventForObjectWithID:(void *)d additionalUpdates:(void *)updates context:
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  dCopy = d;
  updatesCopy = updates;
  v9 = objc_opt_self();
  entity = [v6 entity];
  v11 = +[_MKFEvent entity];
  v12 = [entity isKindOfEntity:v11];

  if (v12)
  {
    v37[0] = @"trigger";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v29 = 0;
    v14 = [updatesCopy hmd_fetchExistingObjectWithID:v6 propertiesToFetch:v13 error:&v29];
    v15 = v29;

    trigger = [v14 trigger];

    if (trigger)
    {
      trigger2 = [v14 trigger];
      objectID = [trigger2 objectID];
      v36 = @"events_";
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      [v9 addToUpdates:dCopy objectID:objectID properties:v19];

LABEL_13:
      goto LABEL_14;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v24;
        v32 = 2114;
        v33 = v6;
        v25 = "%{public}@Ignore event with no trigger for objectID %{public}@";
        v26 = v22;
        v27 = 22;
LABEL_11:
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
      }
    }

    else if (v23)
    {
      v24 = HMFGetLogIdentifier();
      v28 = @"not found";
      *buf = 138543874;
      v31 = v24;
      if (v15)
      {
        v28 = v15;
      }

      v32 = 2114;
      v33 = v6;
      v34 = 2114;
      v35 = v28;
      v25 = "%{public}@Failed to fetch object with objectID %{public}@: %{public}@";
      v26 = v22;
      v27 = 32;
      goto LABEL_11;
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_13;
  }

LABEL_14:
}

@end