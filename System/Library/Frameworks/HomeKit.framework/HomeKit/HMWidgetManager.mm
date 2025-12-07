@interface HMWidgetManager
+ (id)logCategory;
- (HMHomeManager)homeManager;
- (HMWidgetManager)initWithHomeManager:(id)manager context:(id)context;
- (void)fetchStateForActionSets:(id)sets completion:(id)completion;
- (void)fetchStateForCharacteristics:(id)characteristics completion:(id)completion;
- (void)monitorAndFetchStateForActionSets:(id)sets widgetIdentifier:(id)identifier kind:(id)kind completion:(id)completion;
- (void)monitorAndFetchStateForCharacteristics:(id)characteristics monitorReachabilityChanges:(BOOL)changes widgetIdentifier:(id)identifier kind:(id)kind completion:(id)completion;
- (void)monitorStateForMTRAttributeDescriptors:(id)descriptors widgetIdentifier:(id)identifier kind:(id)kind completion:(id)completion;
- (void)performRequests:(id)requests forKind:(id)kind completion:(id)completion;
@end

@implementation HMWidgetManager

- (HMHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)monitorStateForMTRAttributeDescriptors:(id)descriptors widgetIdentifier:(id)identifier kind:(id)kind completion:(id)completion
{
  v72[3] = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  identifierCopy = identifier;
  kindCopy = kind;
  completionCopy = completion;
  if (!descriptorsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!identifierCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!kindCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  v15 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_16;
  }

  v16 = objc_alloc(MEMORY[0x1E69A29C0]);
  v17 = MEMORY[0x1E696AEC0];
  v18 = MEMORY[0x19EAEB2A0](self, a2);
  v19 = [v17 stringWithFormat:@"%@, %s:%ld", v18, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 464];
  v20 = [v16 initWithName:v19];

  homeManager = [(HMWidgetManager *)self homeManager];
  v22 = objc_autoreleasePoolPush();
  v23 = v22;
  if (homeManager)
  {
    context = v22;
    v24 = encodeRootObject(descriptorsCopy);
    v25 = objc_alloc(MEMORY[0x1E69A2A00]);
    v55 = homeManager;
    uuid = [homeManager uuid];
    v27 = [v25 initWithTarget:uuid];

    v71[0] = @"HMWM.widgetIdentifier";
    v71[1] = @"HMWM.widgetKind";
    v72[0] = identifierCopy;
    v72[1] = kindCopy;
    v71[2] = @"HMWM.mtrAttributes";
    v52 = v24;
    v72[2] = v24;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:3];
    v51 = v27;
    v28 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.monitorMTRAttributes" destination:v27 payload:?];
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v32 = v47 = v29;
      identifier = [v20 identifier];
      [identifier shortDescription];
      v48 = v20;
      v35 = v34 = kindCopy;
      [v28 identifier];
      v49 = v15;
      v36 = identifierCopy;
      v38 = v37 = descriptorsCopy;
      *buf = 138544642;
      v60 = v32;
      v61 = 2114;
      v62 = v35;
      v63 = 2112;
      v64 = v38;
      v65 = 2048;
      v66 = [v37 count];
      v67 = 2112;
      v68 = v36;
      v69 = 2112;
      v70 = v34;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Monitoring %ld attributes for widget (%@, %@)", buf, 0x3Eu);

      descriptorsCopy = v37;
      identifierCopy = v36;
      v15 = v49;

      kindCopy = v34;
      v20 = v48;

      v29 = v47;
    }

    objc_autoreleasePoolPop(v29);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __91__HMWidgetManager_monitorStateForMTRAttributeDescriptors_widgetIdentifier_kind_completion___block_invoke;
    v56[3] = &unk_1E754E480;
    v56[4] = selfCopy;
    v57 = v20;
    v58 = v15;
    [v28 setResponseHandler:v56];
    context = [(HMWidgetManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v28];

    objc_autoreleasePoolPop(context);
    homeManager = v55;
  }

  else
  {
    selfCopy2 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      [v20 identifier];
      v44 = contexta = v23;
      shortDescription = [v44 shortDescription];
      *buf = 138543618;
      v60 = v43;
      v61 = 2114;
      v62 = shortDescription;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      v23 = contexta;
      homeManager = 0;
    }

    objc_autoreleasePoolPop(v23);
    v46 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v15)[2](v15, v46);
  }
}

void __91__HMWidgetManager_monitorStateForMTRAttributeDescriptors_widgetIdentifier_kind_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v26 = v11;
      v27 = 2114;
      v28 = v13;
      v29 = 2112;
      v30 = v5;
      v14 = "%{public}@[%{public}@] Failed to monitor attributes with error: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [a1[5] identifier];
    v13 = [v12 shortDescription];
    *buf = 138543618;
    v26 = v11;
    v27 = 2114;
    v28 = v13;
    v14 = "%{public}@[%{public}@] Successfully monitored attributes";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [a1[4] context];
  v19 = [v18 delegateCaller];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __91__HMWidgetManager_monitorStateForMTRAttributeDescriptors_widgetIdentifier_kind_completion___block_invoke_136;
  v22[3] = &unk_1E754E458;
  v20 = a1[6];
  v23 = v5;
  v24 = v20;
  v21 = v5;
  [v19 invokeBlock:v22];
}

- (void)fetchStateForActionSets:(id)sets completion:(id)completion
{
  v57[1] = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  completionCopy = completion;
  if (!setsCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v9 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_12;
  }

  v10 = objc_alloc(MEMORY[0x1E69A29C0]);
  v11 = MEMORY[0x1E696AEC0];
  v12 = MEMORY[0x19EAEB2A0](self, a2);
  v13 = [v11 stringWithFormat:@"%@, %s:%ld", v12, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 397];
  v14 = [v10 initWithName:v13];

  homeManager = [(HMWidgetManager *)self homeManager];
  if (homeManager)
  {
    v16 = [setsCopy na_map:&__block_literal_global_127];
    v17 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [homeManager uuid];
    v19 = [v17 initWithTarget:uuid];

    v56 = @"HMWM.actionSets";
    v57[0] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v44 = v19;
    v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.fetchStateForActionSets" destination:v19 payload:v20];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v25 = v41 = v20;
      [v14 identifier];
      v26 = v40 = v22;
      [v26 shortDescription];
      v27 = v43 = setsCopy;
      [v21 identifier];
      v42 = homeManager;
      v28 = v9;
      v30 = v29 = v14;
      *buf = 138544130;
      v49 = v25;
      v50 = 2114;
      v51 = v27;
      v52 = 2112;
      v53 = v30;
      v54 = 2112;
      v55 = v16;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Fetching action sets: %@", buf, 0x2Au);

      v14 = v29;
      v9 = v28;
      homeManager = v42;

      setsCopy = v43;
      v22 = v40;

      v20 = v41;
    }

    objc_autoreleasePoolPop(v22);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_128;
    v45[3] = &unk_1E754E480;
    v45[4] = selfCopy;
    v46 = v14;
    v47 = v9;
    [v21 setResponseHandler:v45];
    context = [(HMWidgetManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v21];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v37 = v36 = setsCopy;
      identifier = [v14 identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543618;
      v49 = v37;
      v50 = 2114;
      v51 = shortDescription;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      setsCopy = v36;
    }

    objc_autoreleasePoolPop(v33);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v9)[2](v9, 0, v16);
  }
}

void __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_128(id *a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v52 = v11;
      v53 = 2114;
      v54 = v13;
      v55 = 2112;
      v56 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch action sets with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_129;
    v48[3] = &unk_1E754E458;
    v50 = a1[6];
    v49 = v5;
    [v15 invokeBlock:v48];

    v16 = v50;
  }

  else
  {
    v17 = [v6 hmf_dictionaryForKey:@"HMWM.actionSetsIsOn"];
    if (v17)
    {
      v16 = v17;
      v18 = [v7 hmf_dictionaryForKey:@"HMWM.actionSetsDidExecuteFail"];
      v19 = v18;
      v20 = MEMORY[0x1E695E0F8];
      if (v18)
      {
        v20 = v18;
      }

      v21 = v20;

      v22 = [[HMWidgetManagerFetchStateForActionSetsResponse alloc] initWithIsOnByActionSetsUniqueIdentifier:v16 didExecutionFailByActionSetUniqueIdentifier:v21];
      v23 = objc_autoreleasePoolPush();
      v24 = a1[4];
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v42 = v21;
        [a1[5] identifier];
        v27 = v41 = v23;
        v28 = [v27 shortDescription];
        *buf = 138543618;
        v52 = v26;
        v53 = 2114;
        v54 = v28;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched action sets", buf, 0x16u);

        v23 = v41;
        v21 = v42;
      }

      objc_autoreleasePoolPop(v23);
      v29 = [a1[4] context];
      v30 = [v29 delegateCaller];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_132;
      v43[3] = &unk_1E754E458;
      v31 = a1[6];
      v44 = v22;
      v45 = v31;
      v32 = v22;
      [v30 invokeBlock:v43];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = a1[4];
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [a1[5] identifier];
        v38 = [v37 shortDescription];
        *buf = 138543618;
        v52 = v36;
        v53 = 2114;
        v54 = v38;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Action set isOn statuses are unexpectedly missing in the response", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v39 = [a1[4] context];
      v40 = [v39 delegateCaller];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_130;
      v46[3] = &unk_1E754E430;
      v47 = a1[6];
      [v40 invokeBlock:v46];

      v16 = 0;
    }
  }
}

void __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)monitorAndFetchStateForActionSets:(id)sets widgetIdentifier:(id)identifier kind:(id)kind completion:(id)completion
{
  v68[3] = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  identifierCopy = identifier;
  kindCopy = kind;
  completionCopy = completion;
  if (!setsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!identifierCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!kindCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  v15 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_16;
  }

  v16 = objc_alloc(MEMORY[0x1E69A29C0]);
  v17 = MEMORY[0x1E696AEC0];
  v18 = MEMORY[0x19EAEB2A0](self, a2);
  v19 = [v17 stringWithFormat:@"%@, %s:%ld", v18, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 334];
  v20 = [v16 initWithName:v19];

  homeManager = [(HMWidgetManager *)self homeManager];
  if (homeManager)
  {
    v50 = v20;
    v48 = v15;
    v22 = [setsCopy na_map:&__block_literal_global_120];
    v23 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [homeManager uuid];
    v25 = [v23 initWithTarget:uuid];

    v67[0] = @"HMWM.widgetIdentifier";
    v67[1] = @"HMWM.widgetKind";
    v68[0] = identifierCopy;
    v68[1] = kindCopy;
    v67[2] = @"HMWM.actionSets";
    v68[2] = v22;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:3];
    v47 = v25;
    v26 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.monitorActionSets" destination:v25 payload:?];
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v30 = v44 = v27;
      identifier = [v50 identifier];
      [identifier shortDescription];
      v49 = homeManager;
      v33 = v32 = identifierCopy;
      [v26 identifier];
      v34 = v45 = setsCopy;
      *buf = 138544642;
      v56 = v30;
      v57 = 2114;
      v58 = v33;
      v59 = 2112;
      v60 = v34;
      v61 = 2112;
      v62 = v32;
      v63 = 2112;
      v64 = kindCopy;
      v65 = 2112;
      v66 = v22;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Monitoring action sets for widget (%@, %@): %@", buf, 0x3Eu);

      setsCopy = v45;
      identifierCopy = v32;
      homeManager = v49;

      v27 = v44;
    }

    objc_autoreleasePoolPop(v27);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_121;
    v52[3] = &unk_1E754E480;
    v52[4] = selfCopy;
    v20 = v50;
    v53 = v50;
    v15 = v48;
    v54 = v48;
    [v26 setResponseHandler:v52];
    context = [(HMWidgetManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v26];
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      [v20 identifier];
      v41 = v51 = v20;
      [v41 shortDescription];
      v43 = v42 = v15;
      *buf = 138543618;
      v56 = v40;
      v57 = 2114;
      v58 = v43;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      v15 = v42;
      v20 = v51;
    }

    objc_autoreleasePoolPop(v37);
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v15)[2](v15, 0, v22);
    homeManager = 0;
  }
}

void __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_121(id *a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v52 = v11;
      v53 = 2114;
      v54 = v13;
      v55 = 2112;
      v56 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to monitor action sets with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_122;
    v48[3] = &unk_1E754E458;
    v50 = a1[6];
    v49 = v5;
    [v15 invokeBlock:v48];

    v16 = v50;
  }

  else
  {
    v17 = [v6 hmf_dictionaryForKey:@"HMWM.actionSetsIsOn"];
    if (v17)
    {
      v16 = v17;
      v18 = [v7 hmf_dictionaryForKey:@"HMWM.actionSetsDidExecuteFail"];
      v19 = v18;
      v20 = MEMORY[0x1E695E0F8];
      if (v18)
      {
        v20 = v18;
      }

      v21 = v20;

      v22 = [[HMWidgetManagerMonitorActionSetsResponse alloc] initWithIsOnByActionSetsUniqueIdentifier:v16 didExecutionFailByActionSetUniqueIdentifier:v21];
      v23 = objc_autoreleasePoolPush();
      v24 = a1[4];
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v42 = v21;
        [a1[5] identifier];
        v27 = v41 = v23;
        v28 = [v27 shortDescription];
        *buf = 138543618;
        v52 = v26;
        v53 = 2114;
        v54 = v28;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully monitored action sets", buf, 0x16u);

        v23 = v41;
        v21 = v42;
      }

      objc_autoreleasePoolPop(v23);
      v29 = [a1[4] context];
      v30 = [v29 delegateCaller];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_125;
      v43[3] = &unk_1E754E458;
      v31 = a1[6];
      v44 = v22;
      v45 = v31;
      v32 = v22;
      [v30 invokeBlock:v43];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = a1[4];
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [a1[5] identifier];
        v38 = [v37 shortDescription];
        *buf = 138543618;
        v52 = v36;
        v53 = 2114;
        v54 = v38;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Action set isOn statuses are unexpectedly missing in the response", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v39 = [a1[4] context];
      v40 = [v39 delegateCaller];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_123;
      v46[3] = &unk_1E754E430;
      v47 = a1[6];
      [v40 invokeBlock:v46];

      v16 = 0;
    }
  }
}

void __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_123(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)performRequests:(id)requests forKind:(id)kind completion:(id)completion
{
  v104 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  kindCopy = kind;
  completionCopy = completion;
  if (!requestsCopy)
  {
    _HMFPreconditionFailure();
LABEL_44:
    _HMFPreconditionFailure();
  }

  if (!kindCopy)
  {
    goto LABEL_44;
  }

  v12 = completionCopy;
  v13 = objc_alloc(MEMORY[0x1E69A29C0]);
  v14 = MEMORY[0x1E696AEC0];
  v15 = MEMORY[0x19EAEB2A0](self, a2);
  v16 = [v14 stringWithFormat:@"%@, %s:%ld", v15, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 263];
  v17 = [v13 initWithName:v16];

  homeManager = [(HMWidgetManager *)self homeManager];
  if (homeManager)
  {
    if ([requestsCopy count])
    {
      selfCopy = self;
      v81 = kindCopy;
      v82 = v17;
      aBlock = v12;
      array = [MEMORY[0x1E695DF70] array];
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v80 = requestsCopy;
      obj = requestsCopy;
      v20 = [obj countByEnumeratingWithState:&v89 objects:v103 count:16];
      v84 = array;
      if (v20)
      {
        v21 = v20;
        v22 = *v90;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v90 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v89 + 1) + 8 * i);
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v26 = v24;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            v28 = v27;

            v29 = v26;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = v29;
            }

            else
            {
              v30 = 0;
            }

            v31 = v30;

            if (v28)
            {
              [dictionary setObject:&unk_1F0EFD2B0 forKeyedSubscript:@"HMWM.requestType"];
              characteristic = [v28 characteristic];
              uniqueIdentifier = [characteristic uniqueIdentifier];
              [dictionary setObject:uniqueIdentifier forKeyedSubscript:@"HMWM.characteristicUUID"];

              value = [v28 value];
              [dictionary setObject:value forKeyedSubscript:@"HMWM.characteristicValue"];
            }

            else
            {
              if (!v31)
              {
                v70 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v72 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  v73 = HMFGetLogIdentifier();
                  identifier = [v82 identifier];
                  shortDescription = [identifier shortDescription];
                  *buf = 138543874;
                  v94 = v73;
                  v95 = 2114;
                  v96 = shortDescription;
                  v97 = 2112;
                  v98 = v29;
                  _os_log_impl(&dword_19BB39000, v72, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Request is not a supported type: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v70);
                v12 = aBlock;
                v76 = _Block_copy(aBlock);
                kindCopy = v81;
                if (v76)
                {
                  v77 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
                  v76[2](v76, v77);
                }

                requestsCopy = v80;
                v17 = v82;
                goto LABEL_41;
              }

              v35 = MEMORY[0x1E696AD98];
              if ([v31 isMemberOfClass:objc_opt_class()])
              {
                v36 = 2;
              }

              else
              {
                v36 = 1;
              }

              v37 = [v35 numberWithInteger:v36];
              [dictionary setObject:v37 forKeyedSubscript:@"HMWM.requestType"];

              value = [v31 actionSet];
              uniqueIdentifier2 = [value uniqueIdentifier];
              [dictionary setObject:uniqueIdentifier2 forKeyedSubscript:@"HMWM.actionSetUUID"];
            }

            array = v84;
            [v84 addObject:dictionary];
          }

          v21 = [obj countByEnumeratingWithState:&v89 objects:v103 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v101[0] = @"HMWM.requests";
      v101[1] = @"HMWM.widgetKind";
      kindCopy = v81;
      v102[0] = array;
      v102[1] = v81;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
      v40 = MEMORY[0x1E69A2A10];
      v41 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [homeManager uuid];
      v43 = [v41 initWithTarget:uuid];
      v44 = [v40 messageWithName:@"HMWM.performRequests" destination:v43 payload:v39];

      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        identifier2 = [v82 identifier];
        shortDescription2 = [identifier2 shortDescription];
        identifier3 = [v44 identifier];
        *buf = 138544130;
        v94 = v48;
        v95 = 2114;
        v96 = shortDescription2;
        v97 = 2112;
        v98 = identifier3;
        v99 = 2112;
        v100 = v84;
        _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Performing requests: %@", buf, 0x2Au);

        kindCopy = v81;
      }

      objc_autoreleasePoolPop(v45);
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __54__HMWidgetManager_performRequests_forKind_completion___block_invoke;
      v86[3] = &unk_1E754E480;
      v86[4] = v46;
      v17 = v82;
      v87 = v82;
      v12 = aBlock;
      v88 = aBlock;
      [v44 setResponseHandler:v86];
      context = [(HMWidgetManager *)v46 context];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v44];

      requestsCopy = v80;
LABEL_41:
      v60 = v84;
    }

    else
    {
      v62 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = HMFGetLogIdentifier();
        identifier4 = [v17 identifier];
        [identifier4 shortDescription];
        v85 = v62;
        v68 = v67 = homeManager;
        *buf = 138543618;
        v94 = v65;
        v95 = 2114;
        v96 = v68;
        _os_log_impl(&dword_19BB39000, v64, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] No requests to process", buf, 0x16u);

        homeManager = v67;
        v62 = v85;
      }

      objc_autoreleasePoolPop(v62);
      v69 = _Block_copy(v12);
      v60 = v69;
      if (v69)
      {
        v69[2](v69, 0);
      }
    }
  }

  else
  {
    v54 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = HMFGetLogIdentifier();
      identifier5 = [v17 identifier];
      shortDescription3 = [identifier5 shortDescription];
      *buf = 138543618;
      v94 = v57;
      v95 = 2114;
      v96 = shortDescription3;
      _os_log_impl(&dword_19BB39000, v56, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      homeManager = 0;
    }

    objc_autoreleasePoolPop(v54);
    v60 = _Block_copy(v12);
    if (v60)
    {
      v61 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      v60[2](v60, v61);
    }
  }
}

void __54__HMWidgetManager_performRequests_forKind_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v26 = v11;
      v27 = 2114;
      v28 = v13;
      v29 = 2112;
      v30 = v5;
      v14 = "%{public}@[%{public}@] Failed to perform requests with error: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [a1[5] identifier];
    v13 = [v12 shortDescription];
    *buf = 138543618;
    v26 = v11;
    v27 = 2114;
    v28 = v13;
    v14 = "%{public}@[%{public}@] Successfully performed requests";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [a1[4] context];
  v19 = [v18 delegateCaller];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __54__HMWidgetManager_performRequests_forKind_completion___block_invoke_114;
  v22[3] = &unk_1E754E458;
  v20 = a1[6];
  v23 = v5;
  v24 = v20;
  v21 = v5;
  [v19 invokeBlock:v22];
}

void __54__HMWidgetManager_performRequests_forKind_completion___block_invoke_114(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)fetchStateForCharacteristics:(id)characteristics completion:(id)completion
{
  v57[1] = *MEMORY[0x1E69E9840];
  characteristicsCopy = characteristics;
  completionCopy = completion;
  if (!characteristicsCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v9 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_12;
  }

  v10 = objc_alloc(MEMORY[0x1E69A29C0]);
  v11 = MEMORY[0x1E696AEC0];
  v12 = MEMORY[0x19EAEB2A0](self, a2);
  v13 = [v11 stringWithFormat:@"%@, %s:%ld", v12, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 203];
  v14 = [v10 initWithName:v13];

  homeManager = [(HMWidgetManager *)self homeManager];
  if (homeManager)
  {
    v16 = [characteristicsCopy na_map:&__block_literal_global_99];
    v17 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [homeManager uuid];
    v19 = [v17 initWithTarget:uuid];

    v56 = @"HMWM.characteristics";
    v57[0] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v44 = v19;
    v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.fetchState" destination:v19 payload:v20];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v25 = v41 = v20;
      [v14 identifier];
      v26 = v40 = v22;
      [v26 shortDescription];
      v27 = v43 = characteristicsCopy;
      [v21 identifier];
      v42 = homeManager;
      v28 = v9;
      v30 = v29 = v14;
      *buf = 138544130;
      v49 = v25;
      v50 = 2114;
      v51 = v27;
      v52 = 2112;
      v53 = v30;
      v54 = 2112;
      v55 = v16;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Fetching state for characteristics: %@", buf, 0x2Au);

      v14 = v29;
      v9 = v28;
      homeManager = v42;

      characteristicsCopy = v43;
      v22 = v40;

      v20 = v41;
    }

    objc_autoreleasePoolPop(v22);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_100;
    v45[3] = &unk_1E754E480;
    v45[4] = selfCopy;
    v46 = v14;
    v47 = v9;
    [v21 setResponseHandler:v45];
    context = [(HMWidgetManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v21];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v37 = v36 = characteristicsCopy;
      identifier = [v14 identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543618;
      v49 = v37;
      v50 = 2114;
      v51 = shortDescription;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      characteristicsCopy = v36;
    }

    objc_autoreleasePoolPop(v33);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v9)[2](v9, 0, v16);
  }
}

void __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_100(id *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v46 = v11;
      v47 = 2114;
      v48 = v13;
      v49 = 2112;
      v50 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch state with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_101;
    v42[3] = &unk_1E754E458;
    v44 = a1[6];
    v43 = v5;
    [v15 invokeBlock:v42];

    v16 = v44;
  }

  else
  {
    v16 = [v6 hmf_dictionaryForKey:@"HMWM.characteristics"];
    if (v16)
    {
      v17 = [[HMWidgetManagerFetchStateResponse alloc] initWithValueByCharacteristicUniqueIdentifier:v16];
      v18 = objc_autoreleasePoolPush();
      v19 = a1[4];
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [a1[5] identifier];
        [v22 shortDescription];
        v23 = v36 = v18;
        *buf = 138543618;
        v46 = v21;
        v47 = 2114;
        v48 = v23;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched state", buf, 0x16u);

        v18 = v36;
      }

      objc_autoreleasePoolPop(v18);
      v24 = [a1[4] context];
      v25 = [v24 delegateCaller];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_104;
      v37[3] = &unk_1E754E458;
      v26 = a1[6];
      v38 = v17;
      v39 = v26;
      v27 = v17;
      [v25 invokeBlock:v37];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = a1[4];
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [a1[5] identifier];
        v33 = [v32 shortDescription];
        *buf = 138543618;
        v46 = v31;
        v47 = 2114;
        v48 = v33;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Characteristic values are unexpectedly missing", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v34 = [a1[4] context];
      v35 = [v34 delegateCaller];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_102;
      v40[3] = &unk_1E754E430;
      v41 = a1[6];
      [v35 invokeBlock:v40];

      v27 = v41;
    }
  }
}

void __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_102(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)monitorAndFetchStateForCharacteristics:(id)characteristics monitorReachabilityChanges:(BOOL)changes widgetIdentifier:(id)identifier kind:(id)kind completion:(id)completion
{
  changesCopy = changes;
  v77[5] = *MEMORY[0x1E69E9840];
  characteristicsCopy = characteristics;
  identifierCopy = identifier;
  kindCopy = kind;
  completionCopy = completion;
  if (!characteristicsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!identifierCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!kindCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  if (!completionCopy)
  {
    goto LABEL_16;
  }

  v59 = completionCopy;
  v17 = objc_alloc(MEMORY[0x1E69A29C0]);
  v18 = MEMORY[0x1E696AEC0];
  v19 = MEMORY[0x19EAEB2A0](self, a2);
  v20 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 129];
  v60 = [v17 initWithName:v20];

  homeManager = [(HMWidgetManager *)self homeManager];
  if (homeManager)
  {
    v56 = characteristicsCopy;
    v22 = [characteristicsCopy na_map:&__block_literal_global_55015];
    v23 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [homeManager uuid];
    v25 = [v23 initWithTarget:uuid];

    v76[0] = @"HMWM.widgetIdentifier";
    v76[1] = @"HMWM.widgetKind";
    v77[0] = identifierCopy;
    v77[1] = kindCopy;
    v57 = v22;
    v77[2] = v22;
    v76[2] = @"HMWM.characteristics";
    v76[3] = @"HMWM.generationCounter";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(homeManager, "generationCounterPostHomeGraphUpdate")}];
    v77[3] = v26;
    v76[4] = @"HMWM.reachability";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:changesCopy];
    v77[4] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:5];
    v29 = [v28 mutableCopy];

    currentHome = [homeManager currentHome];
    uuid2 = [currentHome uuid];
    [v29 setObject:uuid2 forKeyedSubscript:@"HMWM.currentHome"];

    v55 = v29;
    v32 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.monitorCharacteristics" destination:v25 payload:v29];
    v33 = objc_autoreleasePoolPush();
    selfCopy = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      identifier = [v60 identifier];
      [identifier shortDescription];
      v54 = v25;
      v39 = v38 = identifierCopy;
      [v32 identifier];
      v53 = v33;
      v41 = v40 = kindCopy;
      *buf = 138544642;
      v65 = v36;
      v66 = 2114;
      v67 = v39;
      v68 = 2112;
      v69 = v41;
      v70 = 2112;
      v71 = v38;
      v72 = 2112;
      v73 = v40;
      v74 = 2112;
      v75 = v57;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Monitoring characteristics for widget (%@, %@): %@", buf, 0x3Eu);

      kindCopy = v40;
      v33 = v53;

      identifierCopy = v38;
      v25 = v54;
    }

    objc_autoreleasePoolPop(v33);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_90;
    v61[3] = &unk_1E754E480;
    v61[4] = selfCopy;
    v42 = v60;
    v62 = v60;
    v43 = v59;
    v63 = v59;
    [v32 setResponseHandler:v61];
    context = [(HMWidgetManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v32];

    characteristicsCopy = v56;
    v46 = v57;
  }

  else
  {
    v58 = kindCopy;
    v47 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      identifier2 = [v60 identifier];
      shortDescription = [identifier2 shortDescription];
      *buf = 138543618;
      v65 = v50;
      v66 = 2114;
      v67 = shortDescription;
      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v46 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    v43 = v59;
    (v59)[2](v59, 0, v46);
    kindCopy = v58;
    v42 = v60;
  }
}

void __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_90(id *a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v59 = v11;
      v60 = 2114;
      v61 = v13;
      v62 = 2112;
      v63 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to monitor characteristics with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_91;
    v55[3] = &unk_1E754E458;
    v57 = a1[6];
    v56 = v5;
    [v15 invokeBlock:v55];

    v16 = v57;
  }

  else
  {
    v16 = [v6 hmf_dictionaryForKey:@"HMWM.characteristics"];
    if (v16)
    {
      v17 = [v7 hmf_dictionaryForKey:@"HMWM.reachability"];
      if (v17)
      {
        v18 = [[HMWidgetManagerMonitorCharacteristicsResponse alloc] initWithValueByCharacteristicUniqueIdentifier:v16 reachabilityByAccessoryUniqueIdentifier:v17];
        v19 = objc_autoreleasePoolPush();
        v20 = a1[4];
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v22 = v46 = v18;
          v23 = [a1[5] identifier];
          [v23 shortDescription];
          v24 = v45 = v19;
          *buf = 138543618;
          v59 = v22;
          v60 = 2114;
          v61 = v24;
          _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully monitored characteristics", buf, 0x16u);

          v19 = v45;
          v18 = v46;
        }

        objc_autoreleasePoolPop(v19);
        v25 = [a1[4] context];
        v26 = [v25 delegateCaller];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_96;
        v48[3] = &unk_1E754E458;
        v27 = a1[6];
        v49 = v18;
        v50 = v27;
        v28 = v18;
        [v26 invokeBlock:v48];
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = a1[4];
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [a1[5] identifier];
          [v41 shortDescription];
          v42 = v47 = v37;
          *buf = 138543618;
          v59 = v40;
          v60 = 2114;
          v61 = v42;
          _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Accessory reachability is unexpectedly missing", buf, 0x16u);

          v37 = v47;
        }

        objc_autoreleasePoolPop(v37);
        v43 = [a1[4] context];
        v44 = [v43 delegateCaller];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_94;
        v51[3] = &unk_1E754E430;
        v52 = a1[6];
        [v44 invokeBlock:v51];

        v28 = v52;
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = a1[4];
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [a1[5] identifier];
        v34 = [v33 shortDescription];
        *buf = 138543618;
        v59 = v32;
        v60 = 2114;
        v61 = v34;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Characteristic values are unexpectedly missing", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v35 = [a1[4] context];
      v36 = [v35 delegateCaller];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_93;
      v53[3] = &unk_1E754E430;
      v54 = a1[6];
      [v36 invokeBlock:v53];

      v17 = v54;
    }
  }
}

void __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_93(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (HMWidgetManager)initWithHomeManager:(id)manager context:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  if (!managerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = contextCopy;
  if (!contextCopy)
  {
LABEL_7:
    v12 = _HMFPreconditionFailure();
    return +[(HMWidgetManager *)v12];
  }

  v14.receiver = self;
  v14.super_class = HMWidgetManager;
  v9 = [(HMWidgetManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_homeManager, managerCopy);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37_55041 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t37_55041, &__block_literal_global_138);
  }

  v3 = logCategory__hmf_once_v38_55042;

  return v3;
}

uint64_t __30__HMWidgetManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v38_55042;
  logCategory__hmf_once_v38_55042 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end