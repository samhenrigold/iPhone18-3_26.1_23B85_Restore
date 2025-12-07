@interface HMDCoreFollowUpPostItemOperation
- (HMDCoreFollowUpPostItemOperation)initWithItemToPost:(id)post followUpController:(id)controller;
- (void)_postFollowUpItem;
- (void)main;
@end

@implementation HMDCoreFollowUpPostItemOperation

- (void)main
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    itemToPost = [(HMDCoreFollowUpPostItemOperation *)selfCopy itemToPost];
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = itemToPost;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Posting advertisement for new followup item: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, selfCopy);
  followUpController = [(HMDCoreFollowUpPostItemOperation *)selfCopy followUpController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__HMDCoreFollowUpPostItemOperation_main__block_invoke;
  v9[3] = &unk_278676BF0;
  objc_copyWeak(&v10, buf);
  [followUpController pendingFollowUpItemsWithCompletion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __40__HMDCoreFollowUpPostItemOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v54 = v6;
  val = WeakRetained;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v54 shortDescription];
      *buf = 138543618;
      v72 = v11;
      v73 = 2112;
      v74 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch pending followup items with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    WeakRetained = val;
  }

  v13 = [WeakRetained itemToPost];
  v56 = v5;
  v62 = v13;
  if (!val)
  {
    goto LABEL_41;
  }

  objc_initWeak(&location, val);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v56;
  v14 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
  if (!v14)
  {

LABEL_38:
    [(HMDCoreFollowUpPostItemOperation *)val _postFollowUpItem];
    goto LABEL_40;
  }

  v60 = *v64;
  v57 = 1;
  while (2)
  {
    v61 = v14;
    for (i = 0; i != v61; ++i)
    {
      if (*v64 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v63 + 1) + 8 * i);
      v17 = [v62 uniqueIdentifier];
      v18 = [v17 isEqualToString:@"com.apple.homed.hh2-upgrade"];

      if (!v18)
      {
        v28 = [v16 uniqueIdentifier];
        v29 = [v62 uniqueIdentifier];
        v30 = [v28 isEqualToString:v29];

        if (v30)
        {
          v19 = [v16 uniqueIdentifier];
          v20 = [v62 uniqueIdentifier];
          if (![v19 isEqualToString:v20])
          {
            goto LABEL_28;
          }

          v21 = [v16 targetBundleIdentifier];
          v22 = [v62 targetBundleIdentifier];
          if (![v21 isEqualToString:v22])
          {
            goto LABEL_27;
          }

          v31 = [v16 title];
          v32 = [v62 title];
          v33 = [v31 isEqualToString:v32];

          if (v33)
          {
            continue;
          }

          v48 = objc_autoreleasePoolPush();
          v49 = val;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v52 = HMFGetLogIdentifier();
            v53 = [v16 uniqueIdentifier];
            *v68 = 138543618;
            *&v68[4] = v52;
            *&v68[12] = 2112;
            *&v68[14] = v53;
            _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Detected followup item with same identifier (%@), but different title, removing and reposting.", v68, 0x16u);
          }

          objc_autoreleasePoolPop(v48);
          v46 = [v49 followUpController];
          v47 = +[HMDCoreFollowUpManager allPossibleFollowUpItemIdentifiers];
          *v68 = MEMORY[0x277D85DD0];
          *&v68[8] = 3221225472;
          *&v68[16] = __93__HMDCoreFollowUpPostItemOperation__postFollowUpItemIfDifferentFromExistingItems_itemToPost___block_invoke_6;
          v69 = &unk_278681398;
          objc_copyWeak(v70, &location);
          [v46 clearPendingFollowUpItemsWithUniqueIdentifiers:v47 completion:v68];
        }

        else
        {
          v34 = [v62 uniqueIdentifier];
          v35 = [v34 isEqualToString:@"com.apple.HomeKit.UpdateTvOS"];

          v36 = objc_autoreleasePoolPush();
          v37 = val;
          if (!v35)
          {
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              v40 = [v62 uniqueIdentifier];
              v41 = [v16 uniqueIdentifier];
              *v68 = 138543874;
              *&v68[4] = v39;
              *&v68[12] = 2112;
              *&v68[14] = v40;
              *&v68[22] = 2112;
              v69 = v41;
              _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Not posting followup with identifier: %@ as currently posted followup is preferred: %@", v68, 0x20u);
            }

            objc_autoreleasePoolPop(v36);
            v57 = 0;
            continue;
          }

          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = HMFGetLogIdentifier();
            v44 = [v16 uniqueIdentifier];
            v45 = [v62 uniqueIdentifier];
            *v68 = 138543874;
            *&v68[4] = v43;
            *&v68[12] = 2112;
            *&v68[14] = v44;
            *&v68[22] = 2112;
            v69 = v45;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Removing existing followup with identifier: %@ in favor of: %@", v68, 0x20u);
          }

          objc_autoreleasePoolPop(v36);
          v46 = [v37 followUpController];
          v47 = +[HMDCoreFollowUpManager allPossibleFollowUpItemIdentifiers];
          *v68 = MEMORY[0x277D85DD0];
          *&v68[8] = 3221225472;
          *&v68[16] = __93__HMDCoreFollowUpPostItemOperation__postFollowUpItemIfDifferentFromExistingItems_itemToPost___block_invoke;
          v69 = &unk_278681398;
          objc_copyWeak(v70, &location);
          [v46 clearPendingFollowUpItemsWithUniqueIdentifiers:v47 completion:v68];
        }

        objc_destroyWeak(v70);
        goto LABEL_40;
      }

      v19 = [v62 uniqueIdentifier];
      v20 = [v16 uniqueIdentifier];
      if (![v19 isEqualToString:v20])
      {
        goto LABEL_28;
      }

      v21 = [v62 title];
      v22 = [v16 title];
      if (![v21 isEqualToString:v22])
      {
        goto LABEL_27;
      }

      v23 = [v62 groupIdentifier];
      v24 = [v16 groupIdentifier];
      if (![v23 isEqualToString:v24])
      {

LABEL_27:
LABEL_28:

        continue;
      }

      v25 = [v62 informativeText];
      v26 = [v16 informativeText];
      v27 = [v25 isEqualToString:v26];

      if (v27)
      {

        goto LABEL_39;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  if (v57)
  {
    goto LABEL_38;
  }

LABEL_39:
  [val finish];
LABEL_40:
  objc_destroyWeak(&location);
LABEL_41:
}

void __93__HMDCoreFollowUpPostItemOperation__postFollowUpItemIfDifferentFromExistingItems_itemToPost___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HMDCoreFollowUpPostItemOperation *)WeakRetained _postFollowUpItem];
}

void __93__HMDCoreFollowUpPostItemOperation__postFollowUpItemIfDifferentFromExistingItems_itemToPost___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HMDCoreFollowUpPostItemOperation *)WeakRetained _postFollowUpItem];
}

- (void)_postFollowUpItem
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    selfCopy = self;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      itemToPost = [selfCopy itemToPost];
      *buf = 138543618;
      v12 = v5;
      v13 = 2112;
      v14 = itemToPost;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Posting followup item: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    objc_initWeak(buf, selfCopy);
    followUpController = [selfCopy followUpController];
    itemToPost2 = [selfCopy itemToPost];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__HMDCoreFollowUpPostItemOperation__postFollowUpItem__block_invoke;
    v9[3] = &unk_278681398;
    objc_copyWeak(&v10, buf);
    [followUpController postFollowUpItem:itemToPost2 completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __53__HMDCoreFollowUpPostItemOperation__postFollowUpItem__block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v8 itemToPost];
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully started advertising followup item: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 finish];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v8 itemToPost];
      v15 = [v5 shortDescription];
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to advertise followup item: %@ with error: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 cancelWithError:v5];
  }
}

- (HMDCoreFollowUpPostItemOperation)initWithItemToPost:(id)post followUpController:(id)controller
{
  postCopy = post;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!postCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    [(HMDSelfRemovalWatchdog *)v13 .cxx_destruct];
    return result;
  }

  v9 = controllerCopy;
  v15.receiver = self;
  v15.super_class = HMDCoreFollowUpPostItemOperation;
  v10 = [(HMFOperation *)&v15 initWithTimeout:0.0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_itemToPost, post);
    objc_storeStrong(&v11->_followUpController, controller);
  }

  return v11;
}

@end