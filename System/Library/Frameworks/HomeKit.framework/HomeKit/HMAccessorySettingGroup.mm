@interface HMAccessorySettingGroup
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReflectedEqual:(id)equal;
- (HMAccessorySettingGroup)accessorySettingGroupWithKeyPath:(id)path;
- (HMAccessorySettingGroup)group;
- (HMAccessorySettingGroup)init;
- (HMAccessorySettingGroup)initWithInternal:(id)internal;
- (HMAccessorySettingGroup)initWithKeyPath:(id)path;
- (NSArray)groups;
- (NSArray)settings;
- (NSString)localizedTitle;
- (id)accessorySettingWithKeyPath:(id)path;
- (id)keyPath;
- (unint64_t)hash;
- (void)_notifyClientOfAddedGroup:(id)group;
- (void)_notifyClientOfAddedSetting:(id)setting;
- (void)_notifyClientOfRemovedGroup:(id)group;
- (void)_notifyClientOfRemovedSetting:(id)setting;
- (void)_settingGroup:(id)group didAddSetting:(id)setting;
- (void)_settingGroup:(id)group didAddSettingGroup:(id)settingGroup;
- (void)_settingGroup:(id)group didRemoveSetting:(id)setting;
- (void)_settingGroup:(id)group didRemoveSettingGroup:(id)settingGroup;
- (void)addGroup:(id)group;
- (void)addSetting:(id)setting;
- (void)mergeReflected:(id)reflected;
- (void)removeGroup:(id)group;
- (void)removeSetting:(id)setting;
@end

@implementation HMAccessorySettingGroup

void __50___HMAccessorySettingGroup_supportedGroupsClasses__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedGroupsClasses_supportedGroupsClasses;
  supportedGroupsClasses_supportedGroupsClasses = v2;
}

void __52___HMAccessorySettingGroup_supportedSettingsClasses__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedSettingsClasses_supportedSettingsClasses;
  supportedSettingsClasses_supportedSettingsClasses = v2;
}

uint64_t __39___HMAccessorySettingGroup_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v17_38426;
  logCategory__hmf_once_v17_38426 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (HMAccessorySettingGroup)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

- (id)accessorySettingWithKeyPath:(id)path
{
  pathCopy = path;
  settings = [(HMAccessorySettingGroup *)self settings];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__HMAccessorySettingGroup_accessorySettingWithKeyPath___block_invoke;
  v9[3] = &unk_1E754B680;
  v10 = pathCopy;
  v6 = pathCopy;
  v7 = [settings na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __55__HMAccessorySettingGroup_accessorySettingWithKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyPath];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (HMAccessorySettingGroup)accessorySettingGroupWithKeyPath:(id)path
{
  pathCopy = path;
  groups = [(HMAccessorySettingGroup *)self groups];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HMAccessorySettingGroup_accessorySettingGroupWithKeyPath___block_invoke;
  v9[3] = &unk_1E754B658;
  v10 = pathCopy;
  v6 = pathCopy;
  v7 = [groups na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __60__HMAccessorySettingGroup_accessorySettingGroupWithKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyPath];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)_settingGroup:(id)group didRemoveSettingGroup:(id)settingGroup
{
  v19 = *MEMORY[0x1E69E9840];
  settingGroupCopy = settingGroup;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  groups = [(HMAccessorySettingGroup *)self groups];
  v7 = [groups countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(groups);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        internal = [v11 internal];
        v13 = [internal isEqual:settingGroupCopy];

        if (v13)
        {
          [(HMAccessorySettingGroup *)self removeGroup:v11];
          goto LABEL_11;
        }
      }

      v8 = [groups countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_settingGroup:(id)group didAddSettingGroup:(id)settingGroup
{
  settingGroupCopy = settingGroup;
  v6 = [[HMAccessorySettingGroup alloc] initWithInternal:settingGroupCopy];

  [(HMAccessorySettingGroup *)self addGroup:v6];
}

- (void)_settingGroup:(id)group didRemoveSetting:(id)setting
{
  v19 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  settings = [(HMAccessorySettingGroup *)self settings];
  v7 = [settings countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(settings);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        internal = [v11 internal];
        v13 = [internal isEqual:settingCopy];

        if (v13)
        {
          [(HMAccessorySettingGroup *)self removeSetting:v11];
          goto LABEL_11;
        }
      }

      v8 = [settings countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_settingGroup:(id)group didAddSetting:(id)setting
{
  v5 = [HMAccessorySetting settingForInternal:setting];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [(HMAccessorySettingGroup *)self addSetting:v5];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_notifyClientOfRemovedGroup:(id)group
{
  groupCopy = group;
  internal = [(HMAccessorySettingGroup *)self internal];
  context = [internal context];
  delegateCaller = [context delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__HMAccessorySettingGroup__notifyClientOfRemovedGroup___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = groupCopy;
  v8 = groupCopy;
  [delegateCaller invokeBlock:v9];
}

void __55__HMAccessorySettingGroup__notifyClientOfRemovedGroup___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = @"group";
  v12 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMAccessorySettingGroupRemovedNotification" object:v9 userInfo:v10];
}

- (void)removeGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    v5 = groupCopy;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_groups containsObject:v5])
    {
      [(NSMutableSet *)self->_groups removeObject:v5];
      [v5 setGroup:0];
      os_unfair_lock_unlock(&self->_lock);
      [(HMAccessorySettingGroup *)self _notifyClientOfRemovedGroup:v5];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    groupCopy = v5;
  }
}

- (void)_notifyClientOfAddedGroup:(id)group
{
  groupCopy = group;
  internal = [(HMAccessorySettingGroup *)self internal];
  context = [internal context];
  delegateCaller = [context delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__HMAccessorySettingGroup__notifyClientOfAddedGroup___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = groupCopy;
  v8 = groupCopy;
  [delegateCaller invokeBlock:v9];
}

void __53__HMAccessorySettingGroup__notifyClientOfAddedGroup___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = @"group";
  v12 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMAccessorySettingGroupAddedNotification" object:v9 userInfo:v10];
}

- (void)addGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    v5 = groupCopy;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_groups containsObject:v5]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableSet *)self->_groups addObject:v5];
      [v5 setGroup:self];
      os_unfair_lock_unlock(&self->_lock);
      [(HMAccessorySettingGroup *)self _notifyClientOfAddedGroup:v5];
    }

    groupCopy = v5;
  }
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_groups allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (void)_notifyClientOfRemovedSetting:(id)setting
{
  settingCopy = setting;
  internal = [(HMAccessorySettingGroup *)self internal];
  context = [internal context];
  delegateCaller = [context delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__HMAccessorySettingGroup__notifyClientOfRemovedSetting___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = settingCopy;
  v8 = settingCopy;
  [delegateCaller invokeBlock:v9];
}

void __57__HMAccessorySettingGroup__notifyClientOfRemovedSetting___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed setting: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = @"setting";
  v12 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMAccessorySettingRemovedNotification" object:v9 userInfo:v10];
}

- (void)removeSetting:(id)setting
{
  settingCopy = setting;
  if (settingCopy)
  {
    v5 = settingCopy;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_settings containsObject:v5])
    {
      [(NSMutableSet *)self->_settings removeObject:v5];
      [v5 setGroup:0];
      os_unfair_lock_unlock(&self->_lock);
      [(HMAccessorySettingGroup *)self _notifyClientOfRemovedSetting:v5];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    settingCopy = v5;
  }
}

- (void)_notifyClientOfAddedSetting:(id)setting
{
  settingCopy = setting;
  internal = [(HMAccessorySettingGroup *)self internal];
  context = [internal context];
  delegateCaller = [context delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__HMAccessorySettingGroup__notifyClientOfAddedSetting___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = settingCopy;
  v8 = settingCopy;
  [delegateCaller invokeBlock:v9];
}

void __55__HMAccessorySettingGroup__notifyClientOfAddedSetting___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added setting: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = @"setting";
  v12 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMAccessorySettingAddedNotification" object:v9 userInfo:v10];
}

- (void)addSetting:(id)setting
{
  settingCopy = setting;
  if (settingCopy)
  {
    v5 = settingCopy;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_settings containsObject:v5]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableSet *)self->_settings addObject:v5];
      [v5 setGroup:self];
      os_unfair_lock_unlock(&self->_lock);
      [(HMAccessorySettingGroup *)self _notifyClientOfAddedSetting:v5];
    }

    settingCopy = v5;
  }
}

- (NSArray)settings
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_settings allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (id)keyPath
{
  v3 = objc_autoreleasePoolPush();
  group = [(HMAccessorySettingGroup *)self group];
  keyPath = [group keyPath];

  internal = [(HMAccessorySettingGroup *)self internal];
  name = [internal name];
  v8 = name;
  if (keyPath)
  {
    v9 = [keyPath stringByAppendingFormat:@".%@", name];
  }

  else
  {
    v9 = [name copy];
  }

  v10 = v9;

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (void)mergeReflected:(id)reflected
{
  v34 = *MEMORY[0x1E69E9840];
  reflectedCopy = reflected;
  groups = [reflectedCopy groups];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  groups2 = [(HMAccessorySettingGroup *)self groups];
  v6 = [groups2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(groups2);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        keyPath = [v10 keyPath];
        v12 = [groups hmf_firstObjectWithValue:keyPath forKeyPath:@"keyPath"];

        if (v12)
        {
          [v10 mergeReflected:v12];
        }
      }

      v7 = [groups2 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  settings = [reflectedCopy settings];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  settings2 = [(HMAccessorySettingGroup *)self settings];
  v15 = [settings2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(settings2);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        keyPath2 = [v19 keyPath];
        v21 = [settings hmf_firstObjectWithValue:keyPath2 forKeyPath:@"keyPath"];

        if (v21)
        {
          isReflected = [v19 isReflected];
          if (isReflected != [v21 isReflected])
          {
            [v19 updateReflected:{objc_msgSend(v21, "isReflected")}];
          }
        }
      }

      v16 = [settings2 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }
}

- (BOOL)isReflectedEqual:(id)equal
{
  v36 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  context = objc_autoreleasePoolPush();
  v25 = equalCopy;
  groups = [equalCopy groups];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  groups2 = [(HMAccessorySettingGroup *)self groups];
  v7 = [groups2 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(groups2);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        keyPath = [v11 keyPath];
        settings = [groups hmf_firstObjectWithValue:keyPath forKeyPath:@"keyPath"];

        if (settings && ![v11 isReflectedEqual:settings])
        {
LABEL_21:
          v22 = 0;
          goto LABEL_22;
        }
      }

      v8 = [groups2 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  groups2 = [v25 settings];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  settings = [(HMAccessorySettingGroup *)self settings];
  v14 = [settings countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(settings);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        keyPath2 = [v18 keyPath];
        v20 = [groups2 hmf_firstObjectWithValue:keyPath2 forKeyPath:@"keyPath"];

        if (v20)
        {
          isReflected = [v18 isReflected];
          if (isReflected != [v20 isReflected])
          {

            goto LABEL_21;
          }
        }
      }

      v15 = [settings countByEnumeratingWithState:&v26 objects:v34 count:16];
      v22 = 1;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = 1;
  }

LABEL_22:

  objc_autoreleasePoolPop(context);
  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (-[HMAccessorySettingGroup keyPath](self, "keyPath"), v7 = objc_claimAutoreleasedReturnValue(), -[HMAccessorySettingGroup keyPath](v6, "keyPath"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToString:v8], v8, v7, v9) && (-[HMAccessorySettingGroup groups](self, "groups"), v10 = objc_claimAutoreleasedReturnValue(), -[HMAccessorySettingGroup groups](v6, "groups"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToArray:", v11), v11, v10, v12))
    {
      settings = [(HMAccessorySettingGroup *)self settings];
      settings2 = [(HMAccessorySettingGroup *)v6 settings];
      v15 = [settings isEqualToArray:settings2];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  internal = [(HMAccessorySettingGroup *)self internal];
  name = [internal name];
  v4 = [name hash];

  return v4;
}

- (NSString)localizedTitle
{
  keyPath = [(HMAccessorySettingGroup *)self keyPath];
  v3 = [HMAccessorySettings localizationKeyForKeyPath:keyPath];

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedString:v3];

  return v5;
}

- (HMAccessorySettingGroup)initWithInternal:(id)internal
{
  v44 = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  if (internalCopy)
  {
    v39.receiver = self;
    v39.super_class = HMAccessorySettingGroup;
    v6 = [(HMAccessorySettingGroup *)&v39 init];
    p_isa = &v6->super.super.isa;
    if (v6)
    {
      objc_storeStrong(&v6->_internal, internal);
      [internalCopy setDelegate:p_isa];
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = p_isa[8];
      p_isa[8] = v8;

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      settings = [internalCopy settings];
      v11 = [settings countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v36;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v36 != v13)
            {
              objc_enumerationMutation(settings);
            }

            v15 = [HMAccessorySetting settingForInternal:*(*(&v35 + 1) + 8 * i)];
            v16 = v15;
            if (v15)
            {
              [v15 setGroup:p_isa];
              [p_isa[8] addObject:v16];
            }
          }

          v12 = [settings countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v12);
      }

      v17 = [MEMORY[0x1E695DFA8] set];
      v18 = p_isa[9];
      p_isa[9] = v17;

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      groups = [internalCopy groups];
      v20 = [groups countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v32;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(groups);
            }

            v24 = [[HMAccessorySettingGroup alloc] initWithInternal:*(*(&v31 + 1) + 8 * j)];
            v25 = v24;
            if (v24)
            {
              [(HMAccessorySettingGroup *)v24 setGroup:p_isa];
              [p_isa[9] addObject:v25];
            }
          }

          v21 = [groups countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v21);
      }
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v29;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Attempt to create setting group controller without internal object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMAccessorySettingGroup)initWithKeyPath:(id)path
{
  pathCopy = path;
  v5 = [[_HMAccessorySettingGroup alloc] initWithName:pathCopy];

  v6 = [(HMAccessorySettingGroup *)self initWithInternal:v5];
  return v6;
}

- (HMAccessorySettingGroup)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t35 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t35, &__block_literal_global_212);
  }

  v3 = logCategory__hmf_once_v36;

  return v3;
}

uint64_t __38__HMAccessorySettingGroup_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v36;
  logCategory__hmf_once_v36 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end