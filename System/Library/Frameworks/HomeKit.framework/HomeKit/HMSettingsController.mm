@interface HMSettingsController
+ (id)logCategory;
- (BOOL)hasSettingGroups;
- (BOOL)hasSettings;
- (HMSettingGroup)rootGroup;
- (HMSettingsController)initWithParentIdentifier:(id)identifier codingKey:(id)key messageHandler:(id)handler settingsCreator:(id)creator;
- (HMSettingsController)initWithParentIdentifier:(id)identifier homeUUID:(id)d codingKey:(id)key;
- (HMSettingsDelegate)delegate;
- (id)logIdentifier;
- (id)settingForKeyPath:(id)path;
- (id)settingGroupForKeyPath:(id)path;
- (void)__notifyDelegateDidUpdateKeyPath:(id)path;
- (void)__notifyDelegateSettingsDidUpdate;
- (void)configureWithContext:(id)context;
- (void)decodeWithCoder:(id)coder;
- (void)mergeWith:(id)with settingsInitializedWasModified:(BOOL)modified;
- (void)notifyDelegateOfUpdate;
- (void)setDelegate:(id)delegate;
- (void)setRootGroup:(id)group;
- (void)setSetting:(id)setting withGroupKeyPath:(id)path;
- (void)setSettingGroup:(id)group withParentGroupKeyPath:(id)path;
- (void)updateValueForSetting:(id)setting value:(id)value completionHandler:(id)handler;
@end

@implementation HMSettingsController

- (id)logIdentifier
{
  parentIdentifier = [(HMSettingsController *)self parentIdentifier];
  uUIDString = [parentIdentifier UUIDString];

  return uUIDString;
}

- (void)__notifyDelegateDidUpdateKeyPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  context = [(HMSettingsController *)self context];
  delegateCaller = [context delegateCaller];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (delegateCaller)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Finished update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    objc_initWeak(buf, selfCopy);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__HMSettingsController___notifyDelegateDidUpdateKeyPath___block_invoke;
    v13[3] = &unk_1E754D848;
    objc_copyWeak(&v15, buf);
    v14 = pathCopy;
    [delegateCaller invokeBlock:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __57__HMSettingsController___notifyDelegateDidUpdateKeyPath___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = MEMORY[0x1E696AFB0];
    v5 = [WeakRetained parentIdentifier];
    v6 = [v4 hm_deriveUUIDFromBaseUUID:v5];

    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v8 settings];
      v12 = *(a1 + 32);
      v14 = 138544386;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings: %@ didUpdateForIdentifier: %@ keyPath: %@ delegate: %@", &v14, 0x34u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [v8 settings];
    [v3 settings:v13 didUpdateForIdentifier:v6 keyPath:*(a1 + 32)];
  }
}

- (void)__notifyDelegateSettingsDidUpdate
{
  v17 = *MEMORY[0x1E69E9840];
  context = [(HMSettingsController *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMSettingsController *)self delegate];
    objc_initWeak(location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__HMSettingsController___notifyDelegateSettingsDidUpdate__block_invoke;
    v11[3] = &unk_1E754D848;
    objc_copyWeak(&v13, location);
    v6 = delegate;
    v12 = v6;
    [delegateCaller invokeBlock:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v10;
      v15 = 2112;
      v16 = context;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify clients of updated settings due to no delegate caller in context: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __57__HMSettingsController___notifyDelegateSettingsDidUpdate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v4 settings];
    v8 = *(a1 + 32);
    v11 = 138543874;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of did update settings: %@ delegate: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    v9 = *(a1 + 32);
    v10 = [v4 settings];
    [v9 settingsDidUpdate:v10];
  }
}

- (void)updateValueForSetting:(id)setting value:(id)value completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  valueCopy = value;
  handlerCopy = handler;
  context = [(HMSettingsController *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSettingsController updateValueForSetting:value:completionHandler:]", @"completionHandler"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v12 = context;
  if (context)
  {
    v13 = [valueCopy copy];
    queue = [v12 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    v27 = settingCopy;
    selfCopy2 = self;
    v31 = handlerCopy;
    v29 = v13;
    v30 = valueCopy;
    v15 = v13;
    dispatch_async(queue, block);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v19;
      v34 = 2080;
      v35 = "[HMSettingsController updateValueForSetting:value:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

void __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke(id *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (([a1[4] properties] & 2) == 0)
  {
    v23 = [a1[5] context];
    v2 = [v23 delegateCaller];
    v3 = a1[8];
    v4 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48 description:@"Setting is not writable" reason:@"Setting is not writable" suggestion:0];
    [v2 callCompletion:v3 error:v4];

LABEL_5:

    return;
  }

  v5 = [a1[4] value];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v23 = [a1[5] context];
    v2 = [v23 delegateCaller];
    [v2 callCompletion:a1[8] error:0];
    goto LABEL_5;
  }

  v7 = [a1[4] valueForUpdate:a1[7]];
  v29 = 0;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v29];
  v9 = v29;
  if (v8)
  {
    v10 = [a1[5] messageHandler];
    v11 = [a1[4] keyPath];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke_81;
    v25[3] = &unk_1E754C7E8;
    v24 = *(a1 + 2);
    v12 = v24.i64[0];
    v26 = vextq_s8(v24, v24, 8uLL);
    v27 = a1[7];
    v28 = a1[8];
    [v10 sendUpdateValueMessage:v11 value:v8 completionHandler:v25];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[5];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = a1[7];
      v18 = a1[4];
      *buf = 138544130;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain encoded setting value %@ for setting %@. Error : %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [a1[5] context];
    v20 = [v19 delegateCaller];
    v21 = a1[8];
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Could not encode value" reason:@"Could not encode value" suggestion:0];
    [v20 callCompletion:v21 error:v22];
  }
}

void __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 context];
  v6 = [v5 delegateCaller];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke_2;
  v12[3] = &unk_1E754C7E8;
  v11 = *(a1 + 32);
  v7 = *(&v11 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  [v6 callCompletion:v12 error:v4];
}

void __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating setting %@ to %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) setValue:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)configureWithContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    settings = [(HMSettingsController *)selfCopy settings];
    longDescription = [settings longDescription];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = longDescription;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Configure with settings: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMSettingsController *)selfCopy setContext:contextCopy];
  messageHandler = [(HMSettingsController *)selfCopy messageHandler];
  [messageHandler configureWithContext:contextCopy];
}

- (void)decodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  codingKey = [(HMSettingsController *)self codingKey];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:codingKey];

  [(HMSettingsController *)self setRootGroup:v7];
}

- (void)notifyDelegateOfUpdate
{
  context = [(HMSettingsController *)self context];
  delegateCaller = [context delegateCaller];

  if (delegateCaller)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__HMSettingsController_notifyDelegateOfUpdate__block_invoke;
    v5[3] = &unk_1E754E540;
    objc_copyWeak(&v6, &location);
    [delegateCaller invokeBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __46__HMSettingsController_notifyDelegateOfUpdate__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Calling delegate settings did update: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [v4 settings];
    [v2 settingsDidUpdate:v7];
  }
}

- (void)mergeWith:(id)with settingsInitializedWasModified:(BOOL)modified
{
  modifiedCopy = modified;
  v25 = *MEMORY[0x1E69E9840];
  withCopy = with;
  rootGroup = [withCopy rootGroup];
  rootGroup2 = [(HMSettingsController *)self rootGroup];
  identifier = [rootGroup2 identifier];
  identifier2 = [rootGroup identifier];
  v11 = HMFEqualObjects();

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v24 = 0;
    rootGroup3 = [withCopy rootGroup];
    v13 = rootGroup3;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_47;
    v21[3] = &unk_1E7547C40;
    v21[4] = self;
    v21[5] = buf;
    if (rootGroup3)
    {
      _PreorderTraverseGroupsWithBlock(rootGroup3, 0, v21);
    }

    if ((*(*&buf[8] + 24) & 1) != 0 || modifiedCopy)
    {
      [(HMSettingsController *)self __notifyDelegateSettingsDidUpdate];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      longDescription = [rootGroup longDescription];
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = longDescription;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Merging new root group: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMSettingsController *)selfCopy setRootGroup:rootGroup];
    [(HMSettingsController *)selfCopy __notifyDelegateSettingsDidUpdate];
    rootGroup4 = [withCopy rootGroup];
    v20 = rootGroup4;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke;
    v22[3] = &unk_1E7547BF0;
    v22[4] = selfCopy;
    if (rootGroup4)
    {
      _PreorderTraverseGroupsWithBlock(rootGroup4, 0, v22);
    }
  }
}

void __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 keyPath];
  v5 = [v3 settingGroupForKeyPath:v4];

  v6 = [v5 settings];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_2;
  v7[3] = &unk_1E7548A38;
  v7[4] = *(a1 + 32);
  [v6 na_each:v7];
}

void __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 keyPath];
  v9 = [v7 settingGroupForKeyPath:v8];

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v5 longDescription];
      *buf = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Merging new setting group: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setSettingGroup:v5 withParentGroupKeyPath:v6];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v15 = [v5 settings];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_48;
  v18[3] = &unk_1E7547C18;
  v16 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v5;
  v20 = v16;
  v17 = v5;
  [v15 na_each:v18];
}

void __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_48(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 keyPath];
  v6 = [v4 settingForKeyPath:v5];

  if (!v6)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Merging new setting: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) keyPath];
    [v15 setSetting:v3 withGroupKeyPath:v16];

    goto LABEL_9;
  }

  if (([v6 isEqual:v3] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging setting: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v6 merge:v3];
LABEL_9:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v17 = *(a1 + 32);
    v18 = [v3 keyPath];
    [v17 __notifyDelegateDidUpdateKeyPath:v18];
  }
}

void __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) delegate];
    v9 = [v3 keyPath];
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Initial notify delegate = %@ for keyPath = %@ with setting = %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 32);
  v11 = [v3 keyPath];
  [v10 __notifyDelegateDidUpdateKeyPath:v11];
}

- (id)settingGroupForKeyPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_groupsMap objectForKey:pathCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setSettingGroup:(id)group withParentGroupKeyPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  pathCopy = path;
  if (!groupCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = pathCopy;
  v9 = [(HMSettingsController *)self settingGroupForKeyPath:pathCopy];
  v10 = v9;
  if (v9)
  {
    [v9 addGroup:groupCopy];
    os_unfair_lock_lock_with_options();
    groupsMap = self->_groupsMap;
    keyPath = [groupCopy keyPath];
    [(NSMapTable *)groupsMap setObject:groupCopy forKey:keyPath];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v16;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = groupCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to get parent group with key path: %@ for setting group: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (BOOL)hasSettingGroups
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_groupsMap count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (HMSettingsDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = delegateCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting user settings delegate: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  objc_storeWeak(&selfCopy->_delegate, delegateCopy);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)settingForKeyPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_settingsMap objectForKey:pathCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setSetting:(id)setting withGroupKeyPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  pathCopy = path;
  if (!settingCopy)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  v8 = pathCopy;
  if (!pathCopy)
  {
    goto LABEL_10;
  }

  v9 = [(HMSettingsController *)self settingGroupForKeyPath:pathCopy];
  v10 = v9;
  if (v9)
  {
    [v9 addSetting:settingCopy];
    [settingCopy setSettingManager:self];
    os_unfair_lock_lock_with_options();
    settingsMap = self->_settingsMap;
    keyPath = [settingCopy keyPath];
    [(NSMapTable *)settingsMap setObject:settingCopy forKey:keyPath];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v16;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = settingCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to get group with key path: %@ for setting: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (BOOL)hasSettings
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_settingsMap count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setRootGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock_with_options();
  strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  groupsMap = self->_groupsMap;
  self->_groupsMap = strongToWeakObjectsMapTable;

  strongToWeakObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  settingsMap = self->_settingsMap;
  self->_settingsMap = strongToWeakObjectsMapTable2;

  objc_storeStrong(&self->_rootGroup, group);
  v10 = self->_groupsMap;
  keyPath = [groupCopy keyPath];
  [(NSMapTable *)v10 setObject:groupCopy forKey:keyPath];

  os_unfair_lock_unlock(&self->_lock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__HMSettingsController_setRootGroup___block_invoke;
  v12[3] = &unk_1E7547BF0;
  v12[4] = self;
  if (groupCopy)
  {
    _PreorderTraverseGroupsWithBlock(groupCopy, 0, v12);
  }
}

void __37__HMSettingsController_setRootGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) setSettingGroup:v5 withParentGroupKeyPath:a3];
  }

  v6 = [v5 settings];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__HMSettingsController_setRootGroup___block_invoke_2;
  v8[3] = &unk_1E7547BC8;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  [v6 na_each:v8];
}

void __37__HMSettingsController_setRootGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 keyPath];
  [v2 setSetting:v4 withGroupKeyPath:v5];
}

- (HMSettingGroup)rootGroup
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rootGroup;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMSettingsController)initWithParentIdentifier:(id)identifier homeUUID:(id)d codingKey:(id)key
{
  keyCopy = key;
  dCopy = d;
  identifierCopy = identifier;
  v11 = [HMSettingsMessageHandler alloc];
  v12 = identifierCopy;
  v13 = dCopy;
  v14 = keyCopy;
  if (v11)
  {
    v24.receiver = v11;
    v24.super_class = HMSettingsMessageHandler;
    v11 = [(HMSettingsController *)&v24 init];
    if (v11)
    {
      v15 = [v12 copy];
      userTargetUUID = v11->_userTargetUUID;
      v11->_userTargetUUID = v15;

      v17 = [v13 copy];
      homeTargetUUID = v11->_homeTargetUUID;
      v11->_homeTargetUUID = v17;

      v19 = [v14 copy];
      targetSettingsType = v11->_targetSettingsType;
      v11->_targetSettingsType = v19;
    }
  }

  v21 = objc_alloc_init(HMSettingsCreator);
  v22 = [(HMSettingsController *)self initWithParentIdentifier:v12 codingKey:v14 messageHandler:v11 settingsCreator:v21];

  return v22;
}

- (HMSettingsController)initWithParentIdentifier:(id)identifier codingKey:(id)key messageHandler:(id)handler settingsCreator:(id)creator
{
  identifierCopy = identifier;
  keyCopy = key;
  handlerCopy = handler;
  creatorCopy = creator;
  v24.receiver = self;
  v24.super_class = HMSettingsController;
  v15 = [(HMSettingsController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_parentIdentifier, identifier);
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    groupsMap = v16->_groupsMap;
    v16->_groupsMap = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    settingsMap = v16->_settingsMap;
    v16->_settingsMap = strongToWeakObjectsMapTable2;

    objc_storeStrong(&v16->_messageHandler, handler);
    objc_storeStrong(&v16->_codingKey, key);
    v21 = [creatorCopy createSettingsWithOwner:v16];
    settings = v16->_settings;
    v16->_settings = v21;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31, &__block_literal_global_15373);
  }

  v3 = logCategory__hmf_once_v32;

  return v3;
}

uint64_t __35__HMSettingsController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v32;
  logCategory__hmf_once_v32 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end