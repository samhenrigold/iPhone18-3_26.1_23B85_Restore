@interface HMAccessorySettings
+ (id)localizationKeyForKeyPath:(id)path;
+ (id)logCategory;
- (BOOL)isControllable;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessory)accessory;
- (HMAccessorySettings)initWithSettingsContainer:(id)container settingsControl:(id)control rootGroup:(id)group;
- (HMAccessorySettingsContainerInternal)settingsContainerInternal;
- (HMAccessorySettingsDelegate)delegate;
- (HMControllable)settingsControl;
- (void)_configureWithContext:(id)context;
- (void)_notifyDelegateDidUpdateKeyPath:(id)path;
- (void)_updateSettingsWithBlock:(id)block;
- (void)setDelegate:(id)delegate;
- (void)setSettingsContainerInternal:(id)internal;
- (void)setSettingsControl:(id)control;
@end

@implementation HMAccessorySettings

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    rootGroup = [(HMAccessorySettings *)self rootGroup];
    rootGroup2 = [v6 rootGroup];
    v9 = [rootGroup isEqual:rootGroup2];

    if ((v9 & 1) == 0)
    {
      objc_initWeak(&location, self);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __42__HMAccessorySettings_mergeFromNewObject___block_invoke;
      v17[3] = &unk_1E754A2B8;
      objc_copyWeak(&v20, &location);
      v18 = rootGroup;
      v19 = v6;
      [(HMAccessorySettings *)self _updateSettingsWithBlock:v17];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    rootGroup3 = [v6 rootGroup];
    v11 = [rootGroup isReflectedEqual:rootGroup3];

    if (v11)
    {
      v12 = v9 ^ 1;
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __42__HMAccessorySettings_mergeFromNewObject___block_invoke_24;
      v14[3] = &unk_1E754E5C0;
      v15 = rootGroup;
      v16 = v6;
      [(HMAccessorySettings *)self _updateSettingsWithBlock:v14];

      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __42__HMAccessorySettings_mergeFromNewObject___block_invoke(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] internal];
  v4 = [a1[5] rootGroup];
  v5 = [v4 internal];
  v6 = [v3 mergeObject:v5];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@The merge unexpectedly did not result in a change.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __42__HMAccessorySettings_mergeFromNewObject___block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) rootGroup];
  [v1 mergeReflected:v2];
}

- (void)_notifyDelegateDidUpdateKeyPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  rootGroup = [(HMAccessorySettings *)self rootGroup];
  internal = [rootGroup internal];
  context = [internal context];
  delegateCaller = [context delegateCaller];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (delegateCaller)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v13;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Finished update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    objc_initWeak(buf, selfCopy);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__HMAccessorySettings__notifyDelegateDidUpdateKeyPath___block_invoke;
    v15[3] = &unk_1E754D848;
    objc_copyWeak(&v17, buf);
    v16 = pathCopy;
    [delegateCaller invokeBlock:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __55__HMAccessorySettings__notifyDelegateDidUpdateKeyPath___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [v5 accessory];
      v9 = [v8 uniqueIdentifier];
      v10 = *(a1 + 32);
      v13 = 138544130;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings: %@ didUpdateForIdentifier: %@ keyPath: %@", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [v5 accessory];
    v12 = [v11 uniqueIdentifier];
    [v3 settings:v5 didUpdateForIdentifier:v12 keyPath:*(a1 + 32)];
  }
}

- (void)_updateSettingsWithBlock:(id)block
{
  v27[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = __48__HMAccessorySettings__updateSettingsWithBlock___block_invoke;
  v19 = &unk_1E754E458;
  selfCopy = self;
  v21 = blockCopy;
  v5 = blockCopy;
  v6 = v17;
  if (self)
  {
    rootGroup = [(HMAccessorySettings *)self rootGroup];
    internal = [rootGroup internal];
    context = [internal context];
    delegateCaller = [context delegateCaller];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (delegateCaller)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Starting update", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      objc_initWeak(&location, selfCopy2);
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v24 = __79__HMAccessorySettings___notifyDelegateSettingsWillUpdateWithCompletionHandler___block_invoke;
      v25 = &unk_1E754A290;
      objc_copyWeak(v27, &location);
      v26 = v6;
      [delegateCaller invokeBlock:&buf];

      objc_destroyWeak(v27);
      objc_destroyWeak(&location);
    }

    else
    {
      if (v14)
      {
        v16 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updating settings", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v18(v6);
    }
  }
}

void __48__HMAccessorySettings__updateSettingsWithBlock___block_invoke(uint64_t a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [*(a1 + 32) rootGroup];
    v5 = [v4 internal];
    v6 = [v5 context];
    v7 = [v6 delegateCaller];

    if (v7)
    {
      v8 = [v3 rootGroup];
      v9 = [v8 internal];
      v10 = [v9 identifier];

      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@%@: Finished update", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      objc_initWeak(&location, v12);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __56__HMAccessorySettings___notifyDelegateSettingsDidUpdate__block_invoke;
      v22 = &unk_1E754D848;
      objc_copyWeak(v24, &location);
      v15 = v10;
      v23 = v15;
      [v7 invokeBlock:buf];

      objc_destroyWeak(v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v3;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated settings", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }
}

void __79__HMAccessorySettings___notifyDelegateSettingsWillUpdateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings will update: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 settingsWillUpdate:v5];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void __56__HMAccessorySettings___notifyDelegateSettingsDidUpdate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings did update: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 settingsDidUpdate:v5];
  }

  else if (v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@%@: Delegate does not implement settingsDidUpdate:", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (BOOL)isControllable
{
  settingsControl = [(HMAccessorySettings *)self settingsControl];
  isControllable = [settingsControl isControllable];

  return isControllable;
}

- (HMAccessorySettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    rootGroup = [(HMAccessorySettings *)selfCopy rootGroup];
    settingsContainer = [(HMAccessorySettings *)selfCopy settingsContainer];
    v11 = 138544130;
    v12 = v8;
    v13 = 2112;
    v14 = delegateCopy;
    v15 = 2112;
    v16 = rootGroup;
    v17 = 2112;
    v18 = settingsContainer;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Setting delegate %@ on settings %@ for %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  objc_storeWeak(&selfCopy->_delegate, delegateCopy);
}

- (void)setSettingsControl:(id)control
{
  controlCopy = control;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_settingsControl, controlCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMControllable)settingsControl
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_settingsControl);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setSettingsContainerInternal:(id)internal
{
  internalCopy = internal;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_settingsContainerInternal, internalCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessorySettingsContainerInternal)settingsContainerInternal
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_settingsContainerInternal);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMAccessory)accessory
{
  settingsContainer = [(HMAccessorySettings *)self settingsContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = settingsContainer;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_configureWithContext:(id)context
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  rootGroup = [(HMAccessorySettings *)self rootGroup];
  internal = [rootGroup internal];
  [internal configureWithAccessorySettings:self context:contextCopy];
}

- (HMAccessorySettings)initWithSettingsContainer:(id)container settingsControl:(id)control rootGroup:(id)group
{
  containerCopy = container;
  controlCopy = control;
  groupCopy = group;
  v14.receiver = self;
  v14.super_class = HMAccessorySettings;
  v11 = [(HMAccessorySettings *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_settingsContainerInternal, containerCopy);
    objc_storeWeak(&v12->_settingsControl, controlCopy);
    objc_storeStrong(&v12->_rootGroup, group);
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_31885 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_31885, &__block_literal_global_31886);
  }

  v3 = logCategory__hmf_once_v17_31887;

  return v3;
}

uint64_t __34__HMAccessorySettings_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v17_31887;
  logCategory__hmf_once_v17_31887 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)localizationKeyForKeyPath:(id)path
{
  v3 = [path mutableCopy];
  [v3 replaceOccurrencesOfString:@" " withString:&stru_1F0E92498 options:1 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"." withString:@"_" options:1 range:{0, objc_msgSend(v3, "length")}];
  uppercaseString = [v3 uppercaseString];

  return uppercaseString;
}

@end