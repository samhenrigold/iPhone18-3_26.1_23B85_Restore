@interface HMUserSettingsAdapter
+ (id)logCategory;
+ (id)privateSettingsSchema;
+ (id)sharedSettingsSchema;
- (BOOL)mergeUsingPreOrder:(id)order withDictionary:(id)dictionary;
- (HMSettingsDelegate)delegate;
- (HMUser)user;
- (HMUserSettingsAdapter)initWithUser:(id)user settingsType:(int64_t)type;
- (id)createKeyPathArrayWithKeyPath:(id)path;
- (id)findOrAddUserSettingGroupWithKeyPath:(id)path;
- (id)groupKeyArrayFromKeyPath:(id)path;
- (id)settingKeyFromKeyPath:(id)path;
- (void)_notifyDelegateDidUpdateKeyPath:(id)path;
- (void)_notifyDelegateSettingsDidUpdate;
- (void)configureWithContext:(id)context;
- (void)createRootSettingGroup;
- (void)mergeWithDictionary:(id)dictionary;
- (void)updateValueForSetting:(id)setting value:(id)value completionHandler:(id)handler;
@end

@implementation HMUserSettingsAdapter

- (HMUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (HMSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_notifyDelegateSettingsDidUpdate
{
  v12 = *MEMORY[0x1E69E9840];
  context = [(HMUserSettingsAdapter *)self context];
  queue = [context queue];

  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HMUserSettingsAdapter__notifyDelegateSettingsDidUpdate__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Not notifying for updated settings due to nil queue", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

void __57__HMUserSettingsAdapter__notifyDelegateSettingsDidUpdate__block_invoke(uint64_t a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];

  if (v3)
  {
    objc_initWeak(location, *(a1 + 32));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__HMUserSettingsAdapter__notifyDelegateSettingsDidUpdate__block_invoke_2;
    v8[3] = &unk_1E754E540;
    objc_copyWeak(&v9, location);
    [v3 invokeBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated settings", location, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void __57__HMUserSettingsAdapter__notifyDelegateSettingsDidUpdate__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v4 settings];
    v9 = 138543874;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of did update settings: %@ delegate: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 settings];
    [v2 settingsDidUpdate:v8];
  }
}

- (void)_notifyDelegateDidUpdateKeyPath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  context = [(HMUserSettingsAdapter *)self context];
  queue = [context queue];

  if (queue)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__HMUserSettingsAdapter__notifyDelegateDidUpdateKeyPath___block_invoke;
    v11[3] = &unk_1E754E5C0;
    v11[4] = self;
    v12 = pathCopy;
    dispatch_async(queue, v11);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = pathCopy;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not notifying updated setting keypath: %@ due to nil queue", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __57__HMUserSettingsAdapter__notifyDelegateDidUpdateKeyPath___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];

  if (v3)
  {
    objc_initWeak(location, *(a1 + 32));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__HMUserSettingsAdapter__notifyDelegateDidUpdateKeyPath___block_invoke_2;
    v9[3] = &unk_1E754D848;
    objc_copyWeak(&v11, location);
    v10 = *(a1 + 40);
    [v3 invokeBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *location = 138543618;
      *&location[4] = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated setting keypath: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void __57__HMUserSettingsAdapter__notifyDelegateDidUpdateKeyPath___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = MEMORY[0x1E696AFB0];
    v5 = [WeakRetained user];
    v6 = [v5 uuid];
    v7 = [v4 hm_deriveUUIDFromBaseUUID:v6];

    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v9 settings];
      v13 = *(a1 + 32);
      v15 = 138544386;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings: %@ didUpdateForIdentifier: %@ keyPath: %@ delegate: %@", &v15, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [v9 settings];
    [v3 settings:v14 didUpdateForIdentifier:v7 keyPath:*(a1 + 32)];
  }
}

- (BOOL)mergeUsingPreOrder:(id)order withDictionary:(id)dictionary
{
  v61 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  dictionaryCopy = dictionary;
  if (orderCopy)
  {
    user = [(HMUserSettingsAdapter *)self user];
    home = [user home];
    homeManager = [home homeManager];

    v37 = user;
    uuid = [user uuid];
    uUIDString = [uuid UUIDString];
    v39 = [@"Home.user.settings." stringByAppendingString:uUIDString];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v38 = orderCopy;
    settings = [orderCopy settings];
    v46 = [settings countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v46)
    {
      v44 = 0;
      v13 = 0;
      v45 = *v52;
      v42 = settings;
      selfCopy = self;
      v41 = dictionaryCopy;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(settings);
          }

          v15 = *(*(&v51 + 1) + 8 * i);
          keyPath = [v15 keyPath];
          v17 = [dictionaryCopy objectForKeyedSubscript:keyPath];
          if (v17)
          {
            value = [v15 value];
            v19 = HMFEqualObjects();

            if ((v19 & 1) == 0)
            {
              v20 = v15;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }

              v22 = v21;

              if (v22)
              {
                if ((v44 & 1) == 0)
                {
                  [homeManager notifyDelegateOfBatchNotificationsStartWithReason:v39];
                }

                [v22 setValue:v17];
                v23 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v25 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  v26 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v57 = v26;
                  v58 = 2112;
                  v59 = v22;
                  _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Merged setting: %@", buf, 0x16u);

                  settings = v42;
                }

                objc_autoreleasePoolPop(v23);
                [(HMUserSettingsAdapter *)selfCopy2 _notifyDelegateDidUpdateKeyPath:keyPath];
                v44 = 1;
                v13 = 1;
              }

              else
              {
                v27 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v29 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v30 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v57 = v30;
                  v58 = 2112;
                  v59 = v20;
                  _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Looks like we have non number setting. Need to handle that. %@", buf, 0x16u);

                  settings = v42;
                }

                objc_autoreleasePoolPop(v27);
                dictionaryCopy = v41;
              }

              self = selfCopy;
            }
          }
        }

        v46 = [settings countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v46);
    }

    else
    {
      v44 = 0;
      v13 = 0;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    orderCopy = v38;
    groups = [v38 groups];
    v32 = [groups countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v48;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v48 != v34)
          {
            objc_enumerationMutation(groups);
          }

          v13 |= [(HMUserSettingsAdapter *)self mergeUsingPreOrder:*(*(&v47 + 1) + 8 * j) withDictionary:dictionaryCopy];
        }

        v33 = [groups countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v33);
    }

    if (v44)
    {
      [homeManager notifyDelegateOfBatchNotificationsEndWithReason:v39];
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

- (void)mergeWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(HMUserSettingsAdapter *)self didEverSentOutSettingsDidUpdate])
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    [(HMUserSettingsAdapter *)self setDidEverSentOutSettingsDidUpdate:1];
  }

  rootGroup = [(HMUserSettingsAdapter *)self rootGroup];
  v7 = [(HMUserSettingsAdapter *)self mergeUsingPreOrder:rootGroup withDictionary:dictionaryCopy];

  if (v5 | v7)
  {

    [(HMUserSettingsAdapter *)self _notifyDelegateSettingsDidUpdate];
  }
}

- (void)updateValueForSetting:(id)setting value:(id)value completionHandler:(id)handler
{
  v75 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  valueCopy = value;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v68 = v14;
    v69 = 2112;
    v70 = settingCopy;
    v71 = 2112;
    v72 = valueCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Ask to update value for [%@] to [%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMUserSettingsAdapter *)selfCopy context];
  if (!handlerCopy)
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUserSettingsAdapter updateValueForSetting:value:completionHandler:]", @"completionHandler"];
    v48 = objc_autoreleasePoolPush();
    v49 = selfCopy;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543618;
      v68 = v51;
      v69 = 2112;
      v70 = v47;
      _os_log_impl(&dword_19BB39000, v50, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v48);
    v52 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v47 userInfo:0];
    objc_exception_throw(v52);
  }

  v16 = context;
  if (context)
  {
    user = [(HMUserSettingsAdapter *)selfCopy user];
    if (user)
    {
      if (([settingCopy properties] & 2) == 0)
      {
        delegateCaller = [v16 delegateCaller];
        v19 = MEMORY[0x1E696ABC0];
        v20 = @"User Setting is not writable";
        v21 = @"UserSetting is not writable";
        v22 = 48;
LABEL_19:
        delegateCaller3 = [v19 hmErrorWithCode:v22 description:v20 reason:v21 suggestion:0];
        [delegateCaller callCompletion:handlerCopy error:delegateCaller3];
        goto LABEL_20;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (valueCopy && (isKindOfClass & 1) != 0)
      {
        if ([settingCopy doesValueConformToConstraints:valueCopy])
        {
          value = [settingCopy value];
          v29 = HMFEqualObjects();

          if (v29)
          {
            delegateCaller = [v16 delegateCaller];
            [delegateCaller callCompletion:handlerCopy error:0];
          }

          else
          {
            delegateCaller = [[HMSettingValue alloc] initNumberSettingWithValue:valueCopy];
            v64 = 0;
            v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:delegateCaller requiringSecureCoding:1 error:&v64];
            v56 = v35;
            v57 = v64;
            if (v35)
            {
              v66[0] = v35;
              v65[0] = @"value";
              v65[1] = @"keyPath";
              keyPath = [settingCopy keyPath];
              v66[1] = keyPath;
              v65[2] = @"SettingTargetType";
              v53 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMUserSettingsAdapter type](selfCopy, "type")}];
              v66[2] = v53;
              v65[3] = @"kUserUUIDKey";
              uuid = [user uuid];
              uUIDString = [uuid UUIDString];
              v66[3] = uUIDString;
              delegateCaller2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:4];

              home = [user home];
              uuid2 = [home uuid];
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v58[2] = __71__HMUserSettingsAdapter_updateValueForSetting_value_completionHandler___block_invoke;
              v58[3] = &unk_1E75470B0;
              v58[4] = selfCopy;
              v59 = user;
              v60 = settingCopy;
              v61 = valueCopy;
              v62 = v16;
              v63 = handlerCopy;
              [(_HMContext *)v62 sendMessage:uuid2 target:delegateCaller2 payload:v58 responseHandler:?];

              v41 = v56;
            }

            else
            {
              v42 = objc_autoreleasePoolPush();
              v43 = selfCopy;
              v44 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v45 = v55 = v42;
                *buf = 138544130;
                v68 = v45;
                v69 = 2112;
                v70 = valueCopy;
                v71 = 2112;
                v72 = settingCopy;
                v73 = 2112;
                v74 = v57;
                _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain encoded setting value %@ for setting %@. Error : %@", buf, 0x2Au);

                v42 = v55;
              }

              objc_autoreleasePoolPop(v42);
              delegateCaller2 = [v16 delegateCaller];
              v46 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Could not encode value" reason:@"Could not encode value" suggestion:0];
              [delegateCaller2 callCompletion:handlerCopy error:v46];

              v41 = 0;
            }
          }

          goto LABEL_21;
        }

        v31 = MEMORY[0x1E696AEC0];
        minimumValue = [settingCopy minimumValue];
        maximumValue = [settingCopy maximumValue];
        delegateCaller = [v31 stringWithFormat:@"Value should be between %@ & %@", minimumValue, maximumValue];

        delegateCaller3 = [v16 delegateCaller];
        v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:43 description:delegateCaller reason:delegateCaller suggestion:0];
        [delegateCaller3 callCompletion:handlerCopy error:v34];

LABEL_20:
LABEL_21:

        goto LABEL_22;
      }

      delegateCaller = [v16 delegateCaller];
      v19 = MEMORY[0x1E696ABC0];
      v20 = @"Either value is nil or not of type NSNumber";
      v22 = 43;
    }

    else
    {
      delegateCaller = [v16 delegateCaller];
      v19 = MEMORY[0x1E696ABC0];
      v20 = @"User object is nil";
      v22 = 20;
    }

    v21 = v20;
    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v68 = v26;
    v69 = 2080;
    v70 = "[HMUserSettingsAdapter updateValueForSetting:value:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  user = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(handlerCopy + 2))(handlerCopy, user);
LABEL_22:
}

void __71__HMUserSettingsAdapter_updateValueForSetting_value_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v25 = 138544130;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating of setting for user [%@] finished with : %@, error %@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (!v5)
  {
    v12 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [v14 setValue:*(a1 + 56)];
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v18;
        v27 = 2112;
        v28 = v14;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Updated setting: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v5 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(a1 + 48);
        v25 = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = v23;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Looks like we have non number setting. Need to handle that. %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    }
  }

  v24 = [*(a1 + 64) delegateCaller];
  [v24 callCompletion:*(a1 + 72) error:v5];
}

- (id)settingKeyFromKeyPath:(id)path
{
  v3 = [(HMUserSettingsAdapter *)self createKeyPathArrayWithKeyPath:path];
  if ([v3 hmf_isEmpty])
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [v3 lastObject];
  }

  return lastObject;
}

- (id)createKeyPathArrayWithKeyPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [pathCopy componentsSeparatedByString:@"."];
  if ([v5 count] > 1)
  {
    v11 = v5;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = pathCopy;
      v18 = 2048;
      v19 = [v5 count];
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@The keypath %@ needs at least 2 keys, but only has %lu component.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    firstObject = [v5 firstObject];
    v13 = firstObject;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  }

  return v11;
}

- (id)findOrAddUserSettingGroupWithKeyPath:(id)path
{
  v54 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  rootGroup = [(HMUserSettingsAdapter *)self rootGroup];

  if (!rootGroup)
  {
    v6 = [HMSettingGroup alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    firstObject = [pathCopy firstObject];
    v9 = [(HMSettingGroup *)v6 initWithIdentifier:uUID name:firstObject groups:MEMORY[0x1E695E0F0] settings:MEMORY[0x1E695E0F0]];
    [(HMUserSettingsAdapter *)self setRootGroup:v9];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = pathCopy;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMUserSettingsAdapter type](selfCopy, "type")}];
      *buf = 138543618;
      v51 = v13;
      v52 = 2112;
      v53 = v15;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@User settings group created for : %@", buf, 0x16u);

      pathCopy = v14;
    }

    objc_autoreleasePoolPop(v10);
  }

  rootGroup2 = [(HMUserSettingsAdapter *)self rootGroup];

  if (rootGroup2)
  {
    rootGroup3 = [(HMUserSettingsAdapter *)self rootGroup];
    keyPath = [rootGroup3 keyPath];
    if ([pathCopy hmf_isEmpty])
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v23 = v22 = pathCopy;
        *buf = 138543362;
        v51 = v23;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Group key array cannot be empty.", buf, 0xCu);

        pathCopy = v22;
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v29 = [pathCopy objectAtIndexedSubscript:0];
      v30 = [keyPath isEqual:v29];

      if (v30)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = pathCopy;
        obj = pathCopy;
        v31 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v46;
          v34 = 1;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v46 != v33)
              {
                objc_enumerationMutation(obj);
              }

              if ((v34 & 1) == 0)
              {
                v36 = *(*(&v45 + 1) + 8 * i);
                selfCopy3 = self;
                v38 = [(HMUserSettingsAdapter *)self appendKeyPath:keyPath withNextKey:v36];

                v39 = [rootGroup3 settingGroupWithKeyPath:v38];
                if (!v39)
                {
                  v40 = [HMSettingGroup alloc];
                  uUID2 = [MEMORY[0x1E696AFB0] UUID];
                  v39 = [(HMSettingGroup *)v40 initWithIdentifier:uUID2 name:v36 groups:MEMORY[0x1E695E0F0] settings:MEMORY[0x1E695E0F0]];

                  [rootGroup3 addGroup:v39];
                }

                keyPath = v38;
                rootGroup3 = v39;
                self = selfCopy3;
              }

              v34 = 0;
            }

            v32 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
            v34 = 0;
          }

          while (v32);
        }

        rootGroup3 = rootGroup3;
        v28 = rootGroup3;
        pathCopy = v43;
        goto LABEL_27;
      }
    }

    v28 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v51 = v27;
    _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Root group for user settings object is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  v28 = 0;
LABEL_28:

  return v28;
}

- (id)groupKeyArrayFromKeyPath:(id)path
{
  v3 = [(HMUserSettingsAdapter *)self createKeyPathArrayWithKeyPath:path];
  v4 = [v3 mutableCopy];
  if ([v4 hmf_isEmpty])
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    [v4 removeLastObject];
    v5 = v4;
  }

  return v5;
}

- (void)createRootSettingGroup
{
  v54 = *MEMORY[0x1E69E9840];
  rootGroup = [(HMUserSettingsAdapter *)self rootGroup];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (rootGroup)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Warning: Settings adapter root group has already been constructed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      user = [(HMUserSettingsAdapter *)selfCopy user];
      *buf = 138543618;
      v51 = v9;
      v52 = 2112;
      v53 = user;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating settings for user %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    user2 = [(HMUserSettingsAdapter *)selfCopy user];
    isCurrentUser = [user2 isCurrentUser];

    type = [(HMUserSettingsAdapter *)selfCopy type];
    if (type == 2)
    {
      sharedSettingsSchema = [objc_opt_class() sharedSettingsSchema];
    }

    else if (type == 1 && isCurrentUser)
    {
      sharedSettingsSchema = [objc_opt_class() privateSettingsSchema];
    }

    else
    {
      sharedSettingsSchema = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = sharedSettingsSchema;
    v43 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v43)
    {
      v42 = *v46;
      v15 = 3;
      if (!isCurrentUser)
      {
        v15 = 1;
      }

      v37 = v15;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v46 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v45 + 1) + 8 * i);
          keyPath = [v17 keyPath];
          v19 = [(HMUserSettingsAdapter *)selfCopy groupKeyArrayFromKeyPath:keyPath];
          v20 = [(HMUserSettingsAdapter *)selfCopy findOrAddUserSettingGroupWithKeyPath:v19];
          constraints = [v17 constraints];
          if ([constraints count] == 5)
          {
            v44 = [(HMUserSettingsAdapter *)selfCopy settingKeyFromKeyPath:keyPath];
            v22 = [constraints objectAtIndexedSubscript:0];
            [constraints objectAtIndexedSubscript:1];
            v23 = v39 = v20;
            v24 = [constraints objectAtIndexedSubscript:2];
            [constraints objectAtIndexedSubscript:3];
            v25 = v41 = v19;
            v40 = keyPath;
            v26 = [HMUserNumberSetting alloc];
            [MEMORY[0x1E696AFB0] UUID];
            v28 = v27 = selfCopy;
            v29 = [(HMNumberSetting *)v26 initWithIdentifier:v28 name:v44 type:2 value:v25 properties:v37 minimumValue:v22 maximumValue:v23 stepValue:v24];

            selfCopy = v27;
            [(HMSetting *)v29 setSettingManager:v27];
            v30 = v39;
            [v39 addSetting:v29];

            keyPath = v40;
            v19 = v41;
          }

          else
          {
            v31 = objc_autoreleasePoolPush();
            v32 = selfCopy;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = HMFGetLogIdentifier();
              *buf = 138543362;
              v51 = v34;
              _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Only number settings are supported and the value array size must be 5", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v31);
            v30 = v20;
          }
        }

        v43 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v43);
    }

    v35 = [[HMSettings alloc] initWithSettingsOwner:selfCopy];
    settings = selfCopy->_settings;
    selfCopy->_settings = v35;
  }
}

- (void)configureWithContext:(id)context
{
  contextCopy = context;
  [(HMUserSettingsAdapter *)self setContext:contextCopy];
  v4 = objc_autoreleasePoolPush();
  [(HMUserSettingsAdapter *)self createRootSettingGroup];
  objc_autoreleasePoolPop(v4);
}

- (HMUserSettingsAdapter)initWithUser:(id)user settingsType:(int64_t)type
{
  userCopy = user;
  v10.receiver = self;
  v10.super_class = HMUserSettingsAdapter;
  v7 = [(HMUserSettingsAdapter *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_user, userCopy);
    v8->_type = type;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24, &__block_literal_global_8551);
  }

  v3 = logCategory__hmf_once_v25;

  return v3;
}

uint64_t __36__HMUserSettingsAdapter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25;
  logCategory__hmf_once_v25 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)sharedSettingsSchema
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.allowExplicitContent" constraintArray:&unk_1F0EFDD68];
  v12[0] = v2;
  v3 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.allowiTunesAccount" constraintArray:&unk_1F0EFDD80];
  v12[1] = v3;
  v4 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.crossfadeEnabled" constraintArray:&unk_1F0EFDD98];
  v12[2] = v4;
  v5 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.crossfadeDuration" constraintArray:&unk_1F0EFDDB0];
  v12[3] = v5;
  v6 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.dolbyAtmos" constraintArray:&unk_1F0EFDDC8];
  v12[4] = v6;
  v7 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.lossless" constraintArray:&unk_1F0EFDDE0];
  v12[5] = v7;
  v8 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.playbackInfluencesForYou" constraintArray:&unk_1F0EFDDF8];
  v12[6] = v8;
  v9 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.siri.identifyVoice" constraintArray:&unk_1F0EFDE10];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)privateSettingsSchema
{
  v24[20] = *MEMORY[0x1E69E9840];
  v23 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.addSceneButtonPresentedCount" constraintArray:&unk_1F0EFDB88];
  v24[0] = v23;
  v22 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.completedSwitchingHomesOnboardingUI" constraintArray:&unk_1F0EFDBA0];
  v24[1] = v22;
  v21 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissed2024EnergyOnboarding" constraintArray:&unk_1F0EFDBB8];
  v24[2] = v21;
  v20 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedAccessCodeOnboarding" constraintArray:&unk_1F0EFDBD0];
  v24[3] = v20;
  v19 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedAccessoryAnalyticsOnboarding" constraintArray:&unk_1F0EFDBE8];
  v24[4] = v19;
  v18 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedAccessoryFirmwareUpdateOnboarding" constraintArray:&unk_1F0EFDC00];
  v24[5] = v18;
  v17 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedAnnounceOnboarding" constraintArray:&unk_1F0EFDC18];
  v24[6] = v17;
  v16 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedCameraRecordingOnboarding" constraintArray:&unk_1F0EFDC30];
  v24[7] = v16;
  v15 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedCameraRecordingSetupBanner" constraintArray:&unk_1F0EFDC48];
  v24[8] = v15;
  v14 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedCameraUpgradeOfferBanner" constraintArray:&unk_1F0EFDC60];
  v24[9] = v14;
  v13 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedHomeTheaterOnboarding" constraintArray:&unk_1F0EFDC78];
  v24[10] = v13;
  v2 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedIdentifyVoiceOnboarding" constraintArray:&unk_1F0EFDC90];
  v24[11] = v2;
  v3 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedIdentifyVoiceSetupBanner" constraintArray:&unk_1F0EFDCA8];
  v24[12] = v3;
  v4 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedLocationServicesOnboarding" constraintArray:&unk_1F0EFDCC0];
  v24[13] = v4;
  v5 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedNaturalLightingOnboarding" constraintArray:&unk_1F0EFDCD8];
  v24[14] = v5;
  v6 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedTVViewingProfileOnboarding" constraintArray:&unk_1F0EFDCF0];
  v24[15] = v6;
  v7 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedTVViewingProfileSetupBanner" constraintArray:&unk_1F0EFDD08];
  v24[16] = v7;
  v8 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedUserSplitMediaAccountWarning" constraintArray:&unk_1F0EFDD20];
  v24[17] = v8;
  v9 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedWalletKeyExpressModeOnboarding" constraintArray:&unk_1F0EFDD38];
  v24[18] = v9;
  v10 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedWelcomeUI" constraintArray:&unk_1F0EFDD50];
  v24[19] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:20];

  return v11;
}

@end