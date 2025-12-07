@interface HMDWidgetConfigurationReader
+ (id)logCategory;
- (HMDWidgetConfigurationReader)init;
- (HMDWidgetConfigurationReader)initWithWidgetInterface:(id)interface controlsInterface:(id)controlsInterface bundleIdentifier:(id)identifier lockScreenWidgetKinds:(id)kinds;
- (__CFString)identifierForKind:(void *)kind intent:(int)intent requiresRecommendationsParameter:;
- (id)fetchedHomeWidgets;
- (int64_t)homeWidgetsEnabledCount;
- (void)fetchAutoBahnWidgetsWithCompletion:(id)completion;
- (void)fetchHomeControlsWithCompletion:(id)completion;
- (void)fetchHomeWidgetsWithCompletion:(id)completion;
@end

@implementation HMDWidgetConfigurationReader

- (int64_t)homeWidgetsEnabledCount
{
  fetchedHomeWidgets = [(HMDWidgetConfigurationReader *)self fetchedHomeWidgets];
  v3 = [fetchedHomeWidgets count];

  return v3;
}

- (void)fetchHomeControlsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    controlsInterface = [(HMDWidgetConfigurationReader *)self controlsInterface];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__HMDWidgetConfigurationReader_fetchHomeControlsWithCompletion___block_invoke;
    v7[3] = &unk_278687158;
    v7[4] = self;
    v8 = completionCopy;
    [controlsInterface allConfiguredControlsWithCompletion:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }
}

void __64__HMDWidgetConfigurationReader_fetchHomeControlsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        v12 = 0;
        do
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * v12);
          v14 = [*(a1 + 32) bundleIdentifier];
          v15 = [v13 controlConfigurationsForApplicationContainerBundleIdentifier:v14];

          [v7 addObjectsFromArray:v15];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__HMDWidgetConfigurationReader_fetchHomeControlsWithCompletion___block_invoke_19;
    v25[3] = &unk_27867AB68;
    v25[4] = *(a1 + 32);
    v16 = [v7 na_map:v25];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetched configured controls: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Fetched configured controls failed %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(*(a1 + 40) + 16))();
  }
}

HMDWidget *__64__HMDWidgetConfigurationReader_fetchHomeControlsWithCompletion___block_invoke_19(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v5;
  if (!v4)
  {
    v14 = 0;
    v25 = 0;
    v23 = v5;
    goto LABEL_12;
  }

  v7 = [v5 controlIdentity];
  v8 = [v7 intentReference];
  v9 = [v8 intent];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v6 controlIdentity];
    v13 = [v12 kind];
    v14 = [(HMDWidgetConfigurationReader *)v4 identifierForKind:v13 intent:v11 requiresRecommendationsParameter:0];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 controlIdentity];
      v20 = [v19 intentReference];
      v21 = [v20 intent];
      v27 = 138543618;
      v28 = v18;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Ignoring control configuration because the intent is not INAppIntent: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  if (v14)
  {
    v22 = [HMDWidget alloc];
    v23 = [v6 controlIdentity];
    v24 = [v23 kind];
    v25 = [(HMDWidget *)v22 initWithIdentifier:v14 kind:v24];

LABEL_12:
    goto LABEL_14;
  }

  v25 = 0;
LABEL_14:

  return v25;
}

- (__CFString)identifierForKind:(void *)kind intent:(int)intent requiresRecommendationsParameter:
{
  v83[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  kindCopy = kind;
  lockScreenWidgetKinds = [self lockScreenWidgetKinds];
  v10 = [lockScreenWidgetKinds containsObject:v7];

  if (v10)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_55;
  }

  v75 = 0;
  serializedParameters = [kindCopy serializedParameters];
  v12 = [serializedParameters hmf_BOOLForKey:@"useHomeKitRecommendations" isPresent:&v75];

  if (intent && (v75 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      serializedParameters2 = [kindCopy serializedParameters];
      *buf = 138543874;
      v77 = v16;
      v78 = 2112;
      v79 = @"useHomeKitRecommendations";
      v80 = 2112;
      v81[0] = serializedParameters2;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Ignoring widget configuration because %@ key is missing from serialized parameters: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_7;
  }

  v19 = v12 & intent;
  serializedParameters3 = [kindCopy serializedParameters];
  v21 = [serializedParameters3 objectForKeyedSubscript:@"accessoriesAndScenes"];

  if (v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = v19;
  }

  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277D21540]);
    v24 = v23;
    if (v19)
    {
      v25 = [v23 combineContentsOfPropertyListObject:@"0FD0F71F-DAB9-4D7F-90C4-AB0A0E4724E4"];
    }

    else
    {
      v69 = v23;
      selfCopy2 = self;
      v31 = v21;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;

      if (v33)
      {
        goto LABEL_21;
      }

      v51 = v31;
      objc_opt_class();
      v52 = (objc_opt_isKindOfClass() & 1) != 0 ? v51 : 0;
      v53 = v52;

      if (!v53)
      {
        goto LABEL_49;
      }

      v54 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543618;
        v77 = v57;
        v78 = 2112;
        v79 = v51;
        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_DEBUG, "%{public}@Handling single item accessories and scenes entry %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v54);
      v83[0] = v53;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];

      if (v31)
      {
LABEL_21:
        v65 = v21;
        v66 = kindCopy;
        v67 = v7;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        obj = v31;
        v34 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v72;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v72 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v71 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = v38;
              }

              else
              {
                v39 = 0;
              }

              v40 = v39;

              if (v40)
              {
                v41 = [(__CFString *)v38 hmf_stringForKey:@"identifier"];
                if (v41)
                {
                  v42 = [v69 combineContentsOfPropertyListObject:v41];
                }

                else
                {
                  v47 = objc_autoreleasePoolPush();
                  selfCopy4 = self;
                  v49 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    v50 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v77 = v50;
                    v78 = 2112;
                    v79 = v38;
                    _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly missing the identifier in %@", buf, 0x16u);

                    self = selfCopy2;
                  }

                  objc_autoreleasePoolPop(v47);
                }
              }

              else
              {
                v43 = objc_autoreleasePoolPush();
                selfCopy5 = self;
                v45 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  v46 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v77 = v46;
                  v78 = 2112;
                  v79 = v38;
                  _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@accessoryOrScene is not a dictionary! %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v43);
              }
            }

            v35 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
          }

          while (v35);
        }

        kindCopy = v66;
        v7 = v67;
        v21 = v65;
        v24 = v69;
      }

      else
      {
LABEL_49:
        v24 = v69;
        v58 = [v69 combineContentsOfPropertyListObject:v51];
      }

      v19 = 0;
    }

    v59 = [v24 finalize];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v59];
    v60 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138544130;
      v77 = v63;
      v78 = 2114;
      v79 = v18;
      v80 = 1024;
      LODWORD(v81[0]) = v19;
      WORD2(v81[0]) = 2112;
      *(v81 + 6) = v21;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEBUG, "%{public}@IFObjectHasher: computed widget identifier %{public}@ with useHomeKitRecommendations=%{BOOL}d, accessoriesAndScenes=%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v60);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      serializedParameters4 = [kindCopy serializedParameters];
      *buf = 138543874;
      v77 = v29;
      v78 = 2112;
      v79 = @"accessoriesAndScenes";
      v80 = 2112;
      v81[0] = serializedParameters4;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring widget configuration because %@ key is missing from serialized parameters: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v18 = 0;
  }

LABEL_55:

  return v18;
}

- (void)fetchHomeWidgetsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    widgetInterface = [(HMDWidgetConfigurationReader *)self widgetInterface];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke;
    v7[3] = &unk_278687158;
    v7[4] = self;
    v8 = completionCopy;
    [widgetInterface allConfiguredWidgetsWithCompletion:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }
}

void __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        v12 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v14 = [*(a1 + 32) bundleIdentifier];
          v15 = [v13 widgetConfigurationsForApplicationContainerBundleIdentifier:v14];

          [v7 addObjectsFromArray:v15];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke_17;
    v30[3] = &unk_27867AB40;
    v30[4] = *(a1 + 32);
    v16 = [v7 na_map:v30];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v20;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetched configured widgets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke_18;
    v28[3] = &unk_278684DE0;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 32);
    v28[4] = v16;
    v28[5] = v23;
    v29 = v22;
    [v21 fetchHomeControlsWithCompletion:v28];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Fetched configured widgets failed %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    (*(*(a1 + 40) + 16))();
  }
}

HMDWidget *__63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke_17(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v5;
  if (!v4)
  {
    v14 = 0;
    v25 = 0;
    v23 = v5;
    goto LABEL_12;
  }

  v7 = [v5 widget];
  v8 = [v7 intentReference];
  v9 = [v8 intent];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v6 widget];
    v13 = [v12 kind];
    v14 = [(HMDWidgetConfigurationReader *)v4 identifierForKind:v13 intent:v11 requiresRecommendationsParameter:1];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 widget];
      v20 = [v19 intentReference];
      v21 = [v20 intent];
      v27 = 138543618;
      v28 = v18;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Ignoring widget configuration because the intent is not INAppIntent: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  if (v14)
  {
    v22 = [HMDWidget alloc];
    v23 = [v6 widget];
    v24 = [v23 kind];
    v25 = [(HMDWidget *)v22 initWithIdentifier:v14 kind:v24];

LABEL_12:
    goto LABEL_14;
  }

  v25 = 0;
LABEL_14:

  return v25;
}

void __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched configured controls: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 32) arrayByAddingObjectsFromArray:v5];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchAutoBahnWidgetsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    widgetInterface = [(HMDWidgetConfigurationReader *)self widgetInterface];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__HMDWidgetConfigurationReader_fetchAutoBahnWidgetsWithCompletion___block_invoke;
    v7[3] = &unk_278687158;
    v7[4] = self;
    v8 = completionCopy;
    [widgetInterface allConfiguredWidgetsWithCompletion:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }
}

void __67__HMDWidgetConfigurationReader_fetchAutoBahnWidgetsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = [*(a1 + 32) bundleIdentifier];
          v14 = [v12 widgetConfigurationsForApplicationContainerBundleIdentifier:v13];

          [v6 addObjectsFromArray:v14];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__HMDWidgetConfigurationReader_fetchAutoBahnWidgetsWithCompletion___block_invoke_2;
    v16[3] = &unk_27867AB40;
    v16[4] = *(a1 + 32);
    v15 = [v6 na_map:v16];
    (*(*(a1 + 40) + 16))();
  }
}

HMDWidget *__67__HMDWidgetConfigurationReader_fetchAutoBahnWidgetsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lockScreenWidgetKinds];
  v5 = [v3 widget];
  v6 = [v5 kind];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [HMDWidget alloc];
    v9 = [v3 widget];
    v10 = [v9 kind];
    v11 = [v3 widget];
    v12 = [v11 kind];
    v13 = [(HMDWidget *)v8 initWithIdentifier:v10 kind:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)fetchedHomeWidgets
{
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__140286;
    v16 = __Block_byref_object_dispose__140287;
    array = [MEMORY[0x277CBEB18] array];
    v3 = dispatch_semaphore_create(0);
    widgetInterface = [(HMDWidgetConfigurationReader *)self widgetInterface];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__HMDWidgetConfigurationReader_fetchedHomeWidgets__block_invoke;
    v9[3] = &unk_27867AB18;
    v9[4] = self;
    v11 = &v12;
    v5 = v3;
    v10 = v5;
    [widgetInterface allConfiguredWidgetsWithCompletion:v9];

    v6 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v5, v6);
    v7 = objc_msgSend_copy(v13[5]);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

void __50__HMDWidgetConfigurationReader_fetchedHomeWidgets__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [*(a1 + 32) bundleIdentifier];
          v13 = [v11 widgetConfigurationsForApplicationContainerBundleIdentifier:v12];

          [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v13];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (HMDWidgetConfigurationReader)initWithWidgetInterface:(id)interface controlsInterface:(id)controlsInterface bundleIdentifier:(id)identifier lockScreenWidgetKinds:(id)kinds
{
  interfaceCopy = interface;
  controlsInterfaceCopy = controlsInterface;
  identifierCopy = identifier;
  kindsCopy = kinds;
  v18.receiver = self;
  v18.super_class = HMDWidgetConfigurationReader;
  v15 = [(HMDWidgetConfigurationReader *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_widgetInterface, interface);
    objc_storeStrong(&v16->_controlsInterface, controlsInterface);
    objc_storeStrong(&v16->_bundleIdentifier, identifier);
    objc_storeStrong(&v16->_lockScreenWidgetKinds, kinds);
  }

  return v16;
}

- (HMDWidgetConfigurationReader)init
{
  v3 = +[HMDWidgetFetchSpecification allHomeLockScreenWidgetKinds];
  v4 = *MEMORY[0x277CCFE40];
  v5 = objc_alloc_init(MEMORY[0x277CFA370]);
  v6 = objc_alloc_init(MEMORY[0x277CFA208]);
  v7 = [(HMDWidgetConfigurationReader *)self initWithWidgetInterface:v5 controlsInterface:v6 bundleIdentifier:v4 lockScreenWidgetKinds:v3];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_140296 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_140296, &__block_literal_global_140297);
  }

  v3 = logCategory__hmf_once_v19_140298;

  return v3;
}

void __43__HMDWidgetConfigurationReader_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19_140298;
  logCategory__hmf_once_v19_140298 = v0;
}

@end