@interface HMDHomeActivityStateAggregatorStorage
+ (id)logCategory;
+ (unint64_t)activityType;
- (HMDHome)home;
- (HMDHomeActivityStateAggregatorStorage)initWithDataSource:(id)source;
- (id)fetchUserActivityReportsOnManagedObjectContext;
- (id)logIdentifier;
- (id)userActivityReportWithActivityStatus:(id)status user:(id)user;
- (void)fetchUserActivityReportsWithQueue:(id)queue completionHandler:(id)handler;
- (void)removeUserActivityStatusForUserUUID:(id)d;
- (void)storeUserActivityReport:(id)report;
- (void)updateMKFUserActivityStatus:(id)status withReport:(id)report;
@end

@implementation HMDHomeActivityStateAggregatorStorage

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDHomeActivityStateAggregatorStorage *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  v5 = uUIDString;
  if (uUIDString)
  {
    v6 = uUIDString;
  }

  else
  {
    v6 = @"Deallocated Home";
  }

  v7 = v6;

  return v6;
}

- (id)userActivityReportWithActivityStatus:(id)status user:(id)user
{
  statusCopy = status;
  userCopy = user;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)updateMKFUserActivityStatus:(id)status withReport:(id)report
{
  statusCopy = status;
  reportCopy = report;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)fetchUserActivityReportsOnManagedObjectContext
{
  v59 = *MEMORY[0x277D85DE8];
  context = [(HMDHomeActivityStateAggregatorStorage *)self context];
  [context assertIsExecuting];

  v4 = [MEMORY[0x277CBEB58] set];
  context2 = [(HMDHomeActivityStateAggregatorStorage *)self context];
  managedObjectContext = [context2 managedObjectContext];
  v7 = +[_MKFUserActivityStatus fetchRequest];
  v53 = 0;
  v8 = [managedObjectContext executeFetchRequest:v7 error:&v53];
  v9 = v53;

  if (v8)
  {
    v43 = v9;
    v44 = v8;
    v10 = [v8 na_map:&__block_literal_global_207695];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v12)
    {
      v13 = v12;
      v48 = *v50;
      v46 = v11;
      v45 = v4;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v50 != v48)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          v16 = v15;
          if (self && ([v15 type], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "unsignedIntValue"), v19 = objc_msgSend(objc_opt_class(), "activityType"), v17, v19 == v18))
          {
            home = [(HMDHomeActivityStateAggregatorStorage *)self home];
            v21 = [home userForActivityStatus:v16];

            if (v21)
            {
              v22 = [(HMDHomeActivityStateAggregatorStorage *)self userActivityReportWithActivityStatus:v16 user:v21];
              v23 = v22;
              if (v22)
              {
                v24 = v22;
              }

              else
              {
                v29 = objc_autoreleasePoolPush();
                selfCopy = self;
                v31 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v56 = v32;
                  v57 = 2112;
                  v58 = v16;
                  _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not create report from object: %@", buf, 0x16u);

                  v4 = v45;
                }

                objc_autoreleasePoolPop(v29);
                v11 = v46;
              }
            }

            else
            {
              v25 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v27 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v28;
                v57 = 2112;
                v58 = v16;
                _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@HMDUser not found for: %@", buf, 0x16u);

                v11 = v46;
              }

              objc_autoreleasePoolPop(v25);
              v23 = 0;
            }

            if (v23)
            {
              user = [v23 user];
              uuid = [user uuid];
              modelID = [v16 modelID];
              [(NSMutableDictionary *)dictionary setObject:uuid forKeyedSubscript:modelID];

              [v4 addObject:v23];
            }
          }

          else
          {

            v23 = 0;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v13);
    }

    os_unfair_lock_lock_with_options();
    userIDByActivityStatusModelID = self->_userIDByActivityStatusModelID;
    self->_userIDByActivityStatusModelID = dictionary;

    os_unfair_lock_unlock(&self->_lock);
    v37 = v4;

    v9 = v43;
    v8 = v44;
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v41;
      v57 = 2112;
      v58 = v9;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch activity status with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v37 = [MEMORY[0x277CBEB98] set];
  }

  return v37;
}

void *__87__HMDHomeActivityStateAggregatorStorage_fetchUserActivityReportsOnManagedObjectContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_283F33218])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)fetchUserActivityReportsWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  context = [(HMDHomeActivityStateAggregatorStorage *)self context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__HMDHomeActivityStateAggregatorStorage_fetchUserActivityReportsWithQueue_completionHandler___block_invoke;
  v11[3] = &unk_278689F98;
  v11[4] = self;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  [context performBlock:v11];
}

void __93__HMDHomeActivityStateAggregatorStorage_fetchUserActivityReportsWithQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchUserActivityReportsOnManagedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__HMDHomeActivityStateAggregatorStorage_fetchUserActivityReportsWithQueue_completionHandler___block_invoke_2;
  v6[3] = &unk_27868A7A0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (void)removeUserActivityStatusForUserUUID:(id)d
{
  dCopy = d;
  context = [(HMDHomeActivityStateAggregatorStorage *)self context];

  if (context)
  {
    context2 = [(HMDHomeActivityStateAggregatorStorage *)self context];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__HMDHomeActivityStateAggregatorStorage_removeUserActivityStatusForUserUUID___block_invoke;
    v9[3] = &unk_27868A750;
    v10 = dCopy;
    selfCopy = self;
    v7 = dCopy;
    [context2 performBlock:v9];
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    __77__HMDHomeActivityStateAggregatorStorage_removeUserActivityStatusForUserUUID___block_invoke(v8);
  }
}

void __77__HMDHomeActivityStateAggregatorStorage_removeUserActivityStatusForUserUUID___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v4 = [v3 managedObjectContext];
  v5 = [_MKFHome findHomeMemberWithUUID:v2 context:v4];

  if (v5)
  {
    v6 = [v5 findUserActivityStatusForType:{objc_msgSend(objc_opt_class(), "activityType")}];
    if (v6)
    {
      v7 = [*(a1 + 40) context];
      [v7 deleteObject:v6];

      v8 = [*(a1 + 40) context];
      v25 = 0;
      v9 = [v8 save:&v25];
      v10 = v25;

      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 40);
      v13 = HMFGetOSLogHandle();
      v14 = v13;
      if (v9)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v16 = *(a1 + 32);
          if (v16)
          {
            [v16 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v26 = *buf;
          *buf = 138543874;
          *&buf[4] = v15;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v26;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Removed activity status for user: %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v11);
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v23 = *(a1 + 32);
          if (v23)
          {
            [v23 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v27 = *buf;
          *buf = 138544130;
          *&buf[4] = v22;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v27;
          v29 = 2112;
          v30 = v10;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove activity status for user: %{public,uuid_t}.16P, with error: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v11);
        v24 = [*(a1 + 40) context];
        [v24 rollback];
      }
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not removing activity because we could not find the home member with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)storeUserActivityReport:(id)report
{
  v20 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  context = [(HMDHomeActivityStateAggregatorStorage *)self context];

  if (!context)
  {
    _HMFPreconditionFailure();
  }

  user = [reportCopy user];
  if (user)
  {
    context2 = [(HMDHomeActivityStateAggregatorStorage *)self context];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__HMDHomeActivityStateAggregatorStorage_storeUserActivityReport___block_invoke;
    v12[3] = &unk_27868A010;
    v13 = user;
    selfCopy = self;
    v15 = reportCopy;
    [context2 performBlock:v12];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = reportCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@User is unexpectedly nil in the user activity report: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __65__HMDHomeActivityStateAggregatorStorage_storeUserActivityReport___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 40) context];
  v4 = [v3 managedObjectContext];
  v5 = [_MKFHome findHomeMemberWithUUID:v2 context:v4];

  if (v5)
  {
    v6 = [v5 findUserActivityStatusForType:{objc_msgSend(objc_opt_class(), "activityType")}];
    if (!v6)
    {
      v7 = [MEMORY[0x277CCAD78] UUID];
      v6 = [v5 materializeOrCreateUserActivityStatusesRelationWithModelID:v7 createdNew:0];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "activityType")}];
      [v6 setType:v8];
    }

    [*(a1 + 40) updateMKFUserActivityStatus:v6 withReport:*(a1 + 48)];
    v9 = [*(a1 + 40) context];
    v10 = [v9 managedObjectContext];
    v11 = [v10 hasChanges];

    if (v11)
    {
      v12 = [*(a1 + 40) context];
      v36 = 0;
      v13 = [v12 save:&v36];
      v14 = v36;

      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 40);
      v17 = HMFGetOSLogHandle();
      v18 = v17;
      if (v13)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = *(a1 + 48);
          *buf = 138543618;
          *&buf[4] = v19;
          *&buf[12] = 2112;
          *&buf[14] = v20;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Stored report: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          v32 = *(a1 + 48);
          *buf = 0;
          *&buf[8] = 0;
          v33 = [*(a1 + 32) uuid];

          if (v33)
          {
            v34 = [*(a1 + 32) uuid];
            [v34 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v37 = *buf;
          *buf = 138544386;
          *&buf[4] = v31;
          *&buf[12] = 2112;
          *&buf[14] = v32;
          v39 = 1040;
          v40 = 16;
          v41 = 2096;
          v42 = &v37;
          v43 = 2112;
          v44 = v14;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to store report: %@, for user: %{uuid_t}.16P, with error: %@", buf, 0x30u);
        }

        objc_autoreleasePoolPop(v15);
        v35 = [*(a1 + 40) context];
        [v35 rollback];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 40);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = *(a1 + 48);
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@No changes were made to the user model for report: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 40);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 32) uuid];
      *buf = 138543618;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Not storing activity because we could not find the home member with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (HMDHomeActivityStateAggregatorStorage)initWithDataSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    v5 = sourceCopy;
    v15.receiver = self;
    v15.super_class = HMDHomeActivityStateAggregatorStorage;
    v6 = [(HMDHomeActivityStateAggregatorStorage *)&v15 init];
    if (v6)
    {
      workingStoreContext = [v5 workingStoreContext];
      context = v6->_context;
      v6->_context = workingStoreContext;

      home = [v5 home];
      objc_storeWeak(&v6->_home, home);

      v6->_lock._os_unfair_lock_opaque = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      userIDByActivityStatusModelID = v6->_userIDByActivityStatusModelID;
      v6->_userIDByActivityStatusModelID = dictionary;
    }

    return v6;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDHomeActivityStateAggregatorStorage *)v13];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_207729 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_207729, &__block_literal_global_299);
  }

  v3 = logCategory__hmf_once_v14_207730;

  return v3;
}

void __52__HMDHomeActivityStateAggregatorStorage_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14_207730;
  logCategory__hmf_once_v14_207730 = v0;
}

+ (unint64_t)activityType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end