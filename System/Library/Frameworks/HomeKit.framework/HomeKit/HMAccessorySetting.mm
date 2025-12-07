@interface HMAccessorySetting
+ (id)logCategory;
+ (id)settingForInternal:(id)internal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReflected;
- (BOOL)isWritable;
- (HMAccessorySetting)init;
- (HMAccessorySetting)initWithInternal:(id)internal;
- (HMAccessorySetting)initWithKey:(id)key properties:(unint64_t)properties value:(id)value;
- (HMAccessorySettingGroup)group;
- (NSString)description;
- (NSString)keyPath;
- (NSUUID)identifier;
- (id)logIdentifier;
- (id)value;
- (unint64_t)hash;
- (void)_settingDidUpdateValue:(id)value;
- (void)_settingWillUpdateValue:(id)value;
- (void)logAndPostNotification:(id)notification object:(id)object userInfo:(id)info;
- (void)settingDidUpdateReflected;
- (void)updateReflected:(BOOL)reflected;
- (void)updateValue:(id)value completionHandler:(id)handler;
@end

@implementation HMAccessorySetting

void __53___HMAccessorySetting_updateValue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      v9 = "%{public}@Error in updating the setting through the settings controller: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v10, v11, v9, &v15, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v8;
    v9 = "%{public}@Update sent through the settings controller with no error";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v13, v14);
}

void __53___HMAccessorySetting_updateValue_completionHandler___block_invoke_123(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v17 = 138543874;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v3;
      v10 = "%{public}@Error in updating media system setting: %@, error: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v11, v12, v10, &v17, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v14;
    v10 = "%{public}@Updated media system setting: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v15, v16);
}

void __53___HMAccessorySetting_updateValue_completionHandler___block_invoke_124(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) properties] & 2) == 0)
  {
    v36 = [*(a1 + 32) context];
    v2 = [v36 delegateCaller];
    v3 = *(a1 + 72);
    v4 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    [v2 callCompletion:v3 error:v4];

LABEL_5:

    return;
  }

  v5 = [*(a1 + 32) value];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v36 = [*(a1 + 32) context];
    v2 = [v36 delegateCaller];
    [v2 callCompletion:*(a1 + 72) error:0];
    goto LABEL_5;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = encodeRootObject(v7);
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
    v8 = encodeRootObject(v9);
  }

  if (*(a1 + 48))
  {
    v10 = [*(a1 + 32) messageDestination];
    if (v10)
    {
      v46[0] = @"value";
      v46[1] = @"keyPath";
      v11 = *(a1 + 48);
      v47[0] = v8;
      v47[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
      v13 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAS.uv" destination:v10 payload:v12];
      objc_initWeak(location, *(a1 + 32));
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53___HMAccessorySetting_updateValue_completionHandler___block_invoke_125;
      aBlock[3] = &unk_1E754D960;
      v42 = *(a1 + 56);
      objc_copyWeak(&v45, location);
      v43 = *(a1 + 40);
      v44 = *(a1 + 72);
      v14 = _Block_copy(aBlock);
      v15 = [*(a1 + 64) pendingRequests];
      v16 = [v13 identifier];
      v17 = _Block_copy(v14);
      [v15 addCompletionBlock:v17 forIdentifier:v16];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __53___HMAccessorySetting_updateValue_completionHandler___block_invoke_126;
      v37[3] = &unk_1E754E480;
      v18 = v15;
      v38 = v18;
      v19 = v16;
      v39 = v19;
      v20 = v14;
      v40 = v20;
      [v13 setResponseHandler:v37];
      v21 = [*(a1 + 64) messageDispatcher];
      [v21 sendMessage:v13 completionHandler:0];

      objc_destroyWeak(&v45);
      objc_destroyWeak(location);
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 32);
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = *(a1 + 32);
        v33 = *(a1 + 48);
        *location = 138543874;
        *&location[4] = v31;
        v49 = 2112;
        v50 = v32;
        v51 = 2112;
        v52 = v33;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to create accessory message destination for setting: %@ key path: %@", location, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v12 = [*(a1 + 32) context];
      v13 = [v12 delegateCaller];
      v34 = *(a1 + 72);
      v35 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      [v13 callCompletion:v34 error:v35];

      v10 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = *(a1 + 32);
      *location = 138543618;
      *&location[4] = v25;
      v49 = 2112;
      v50 = v26;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@No key path found for setting %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v10 = [*(a1 + 32) context];
    v12 = [v10 delegateCaller];
    v27 = *(a1 + 72);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v12 callCompletion:v27 error:v13];
  }
}

void __53___HMAccessorySetting_updateValue_completionHandler___block_invoke_125(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updated value to: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setValue:*(a1 + 40)];
  }

  v10 = [WeakRetained context];
  v11 = [v10 delegateCaller];
  [v11 callCompletion:*(a1 + 48) error:v3];

  v12 = [WeakRetained accessorySettings];
  v13 = [WeakRetained delegate];
  v14 = [v13 keyPathForSetting:WeakRetained];
  [v12 _notifyDelegateDidUpdateKeyPath:v14];
}

void __53___HMAccessorySetting_updateValue_completionHandler___block_invoke_126(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __43___HMAccessorySetting__handleUpdatedValue___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFB0] null];

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  [WeakRetained setValue:v5];
  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Updated value to: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v7 delegate];
  [v11 _settingDidUpdateValue:v7];
}

void __59___HMAccessorySetting_updateConstraints_completionHandler___block_invoke(id *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v55 = v5;
    v56 = 2112;
    v57 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Updating constraints: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = encodeRootObject(a1[5]);
  v8 = a1[4];
  if (v7)
  {
    v9 = [v8 delegate];
    v10 = [v9 keyPathForSetting:a1[4]];

    if (v10)
    {
      v11 = [a1[4] messageDestination];
      if (v11)
      {
        v12 = MEMORY[0x1E69A2A10];
        v52[0] = @"constraint";
        v52[1] = @"keyPath";
        v53[0] = v7;
        v53[1] = v10;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
        v14 = [v12 messageWithName:@"HMAS.uc" destination:v11 payload:v13];

        objc_initWeak(buf, a1[4]);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __59___HMAccessorySetting_updateConstraints_completionHandler___block_invoke_117;
        aBlock[3] = &unk_1E754D960;
        v48 = a1[6];
        objc_copyWeak(&v51, buf);
        v49 = a1[5];
        v50 = a1[8];
        v15 = _Block_copy(aBlock);
        v16 = [a1[7] pendingRequests];
        v17 = [v14 identifier];
        v18 = _Block_copy(v15);
        [v16 addCompletionBlock:v18 forIdentifier:v17];

        v39 = MEMORY[0x1E69E9820];
        v40 = 3221225472;
        v41 = __59___HMAccessorySetting_updateConstraints_completionHandler___block_invoke_118;
        v42 = &unk_1E754D820;
        objc_copyWeak(&v46, buf);
        v19 = v16;
        v43 = v19;
        v20 = v17;
        v44 = v20;
        v21 = v15;
        v45 = v21;
        [v14 setResponseHandler:&v39];
        v22 = [a1[7] messageDispatcher];
        [v22 sendMessage:v14 completionHandler:0];

        objc_destroyWeak(&v46);
        objc_destroyWeak(&v51);

        objc_destroyWeak(buf);
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = a1[4];
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v35 = a1[4];
          *buf = 138543874;
          v55 = v34;
          v56 = 2112;
          v57 = v35;
          v58 = 2112;
          v59 = v10;
          _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to create accessory message destination for setting: %@ key path: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v31);
        v14 = [a1[4] context];
        v36 = [v14 delegateCaller];
        v37 = a1[8];
        v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
        [v36 callCompletion:v37 error:v38];

        v11 = 0;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1[4];
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = a1[4];
        *buf = 138543618;
        v55 = v27;
        v56 = 2112;
        v57 = v28;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@No key path found for setting %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v11 = [a1[4] context];
      v14 = [v11 delegateCaller];
      v29 = a1[8];
      v30 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [v14 callCompletion:v29 error:v30];

      v10 = 0;
    }
  }

  else
  {
    v10 = [v8 context];
    v11 = [v10 delegateCaller];
    v23 = a1[8];
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    [v11 callCompletion:v23 error:v14];
  }
}

void __59___HMAccessorySetting_updateConstraints_completionHandler___block_invoke_117(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setConstraints:*(a1 + 40)];
  }

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Got update constraints request completion", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = [v5 context];
  v11 = [v10 delegateCaller];
  [v11 callCompletion:*(a1 + 48) error:v3];
}

void __59___HMAccessorySetting_updateConstraints_completionHandler___block_invoke_118(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Got update constraints message response error:%@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v12)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __76___HMAccessorySetting_replaceConstraints_withConstraints_completionHandler___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138543874;
    v51 = v5;
    v52 = 2112;
    v53 = v6;
    v54 = 2112;
    v55 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Replacing constraints, %@, with constraints, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 56) hmf_isEmpty] && objc_msgSend(*(a1 + 64), "hmf_isEmpty"))
  {
    v8 = [*(a1 + 32) context];
    v9 = [v8 delegateCaller];
    [v9 callCompletion:*(a1 + 88) error:0];
  }

  v39 = [_HMAccessorySetting _encodedConstraintsToRemove:*(a1 + 40)];
  v10 = [_HMAccessorySetting _encodedConstraintsToAdd:*(a1 + 48)];
  v11 = *(a1 + 32);
  if (v10)
  {
    v12 = [v11 delegate];
    v13 = [v12 keyPathForSetting:*(a1 + 32)];

    if (v13)
    {
      v14 = [*(a1 + 32) messageDestination];
      if (v14)
      {
        v15 = [_HMAccessorySetting _replaceConstraintsPayloadWithAdditions:v10 removals:v39 keyPath:v13];
        v16 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAS.pc" destination:v14 payload:v15];
        objc_initWeak(buf, *(a1 + 32));
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __76___HMAccessorySetting_replaceConstraints_withConstraints_completionHandler___block_invoke_116;
        aBlock[3] = &unk_1E754D7D0;
        v45 = *(a1 + 72);
        objc_copyWeak(&v49, buf);
        v46 = *(a1 + 56);
        v47 = *(a1 + 64);
        v48 = *(a1 + 88);
        v17 = _Block_copy(aBlock);
        v18 = [*(a1 + 80) pendingRequests];
        v19 = [v16 identifier];
        v20 = _Block_copy(v17);
        [v18 addCompletionBlock:v20 forIdentifier:v19];

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __76___HMAccessorySetting_replaceConstraints_withConstraints_completionHandler___block_invoke_2;
        v40[3] = &unk_1E754E480;
        v21 = v18;
        v41 = v21;
        v22 = v19;
        v42 = v22;
        v23 = v17;
        v43 = v23;
        [v16 setResponseHandler:v40];
        v24 = [*(a1 + 80) messageDispatcher];
        [v24 sendMessage:v16 completionHandler:0];

        objc_destroyWeak(&v49);
        objc_destroyWeak(buf);
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = *(a1 + 32);
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = *(a1 + 32);
          *buf = 138543874;
          v51 = v35;
          v52 = 2112;
          v53 = v36;
          v54 = 2112;
          v55 = v13;
          _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to create accessory message destination for setting: %@ key path: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        v15 = [*(a1 + 32) context];
        v16 = [v15 delegateCaller];
        v37 = *(a1 + 88);
        v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
        [v16 callCompletion:v37 error:v38];

        v14 = 0;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = *(a1 + 32);
        *buf = 138543618;
        v51 = v29;
        v52 = 2112;
        v53 = v30;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@No key path found for setting %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v14 = [*(a1 + 32) context];
      v15 = [v14 delegateCaller];
      v31 = *(a1 + 88);
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [v15 callCompletion:v31 error:v16];
    }
  }

  else
  {
    v13 = [v11 context];
    v14 = [v13 delegateCaller];
    v25 = *(a1 + 88);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    [v14 callCompletion:v25 error:v15];
  }
}

void __76___HMAccessorySetting_replaceConstraints_withConstraints_completionHandler___block_invoke_116(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!v3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [WeakRetained removeConstraint:*(*(&v21 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = *(a1 + 48);
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [WeakRetained addConstraint:{*(*(&v17 + 1) + 8 * v14++), v17}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }
  }

  v15 = [WeakRetained context];
  v16 = [v15 delegateCaller];
  [v16 callCompletion:*(a1 + 56) error:v3];
}

void __76___HMAccessorySetting_replaceConstraints_withConstraints_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __58___HMAccessorySetting_removeConstraint_completionHandler___block_invoke(void **a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = encodeRootObject(a1[4]);
  v3 = a1[5];
  if (v2)
  {
    v4 = [v3 delegate];
    v5 = [v4 keyPathForSetting:a1[5]];

    if (v5)
    {
      v6 = [a1[5] messageDestination];
      if (v6)
      {
        v7 = MEMORY[0x1E69A2A10];
        v46[0] = @"constraint";
        v46[1] = @"keyPath";
        v47[0] = v2;
        v47[1] = v5;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
        v9 = [v7 messageWithName:@"HMAS.rc" destination:v6 payload:v8];

        objc_initWeak(location, a1[5]);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __58___HMAccessorySetting_removeConstraint_completionHandler___block_invoke_114;
        aBlock[3] = &unk_1E754D960;
        v42 = a1[6];
        objc_copyWeak(&v45, location);
        v43 = a1[4];
        v44 = a1[8];
        v10 = _Block_copy(aBlock);
        v11 = [a1[7] pendingRequests];
        v12 = [v9 identifier];
        v13 = _Block_copy(v10);
        [v11 addCompletionBlock:v13 forIdentifier:v12];

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __58___HMAccessorySetting_removeConstraint_completionHandler___block_invoke_2;
        v37[3] = &unk_1E754E480;
        v14 = v11;
        v38 = v14;
        v15 = v12;
        v39 = v15;
        v16 = v10;
        v40 = v16;
        [v9 setResponseHandler:v37];
        v17 = [a1[7] messageDispatcher];
        [v17 sendMessage:v9 completionHandler:0];

        objc_destroyWeak(&v45);
        objc_destroyWeak(location);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = a1[5];
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v33 = a1[5];
          *location = 138543874;
          *&location[4] = v32;
          v49 = 2112;
          v50 = v33;
          v51 = 2112;
          v52 = v5;
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to create accessory message destination for setting: %@ key path: %@", location, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        v9 = [a1[5] context];
        v34 = [v9 delegateCaller];
        v35 = a1[8];
        v36 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
        [v34 callCompletion:v35 error:v36];

        v6 = 0;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1[5];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = a1[5];
        *location = 138543618;
        *&location[4] = v25;
        v49 = 2112;
        v50 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@No key path found for setting %@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v6 = [a1[5] context];
      v9 = [v6 delegateCaller];
      v27 = a1[8];
      v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [v9 callCompletion:v27 error:v28];
    }
  }

  else
  {
    v18 = [v3 context];
    v19 = [v18 delegateCaller];
    v20 = a1[8];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    [v19 callCompletion:v20 error:v21];
  }
}

void __58___HMAccessorySetting_removeConstraint_completionHandler___block_invoke_114(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (!v3)
  {
    [WeakRetained removeConstraint:*(a1 + 40)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 48) error:v3];
}

void __58___HMAccessorySetting_removeConstraint_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __57___HMAccessorySetting_notifyDelegateOfRemovedConstraint___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removed constraint: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed constraint: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v7 _setting:*(a1 + 32) didRemoveConstraint:*(a1 + 40)];
  }
}

void __55___HMAccessorySetting_addConstraint_completionHandler___block_invoke(void **a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = encodeRootObject(a1[4]);
  v3 = a1[5];
  if (v2)
  {
    v4 = [v3 delegate];
    v5 = [v4 keyPathForSetting:a1[5]];

    if (v5)
    {
      v6 = [a1[5] messageDestination];
      if (v6)
      {
        v7 = MEMORY[0x1E69A2A10];
        v46[0] = @"constraint";
        v46[1] = @"keyPath";
        v47[0] = v2;
        v47[1] = v5;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
        v9 = [v7 messageWithName:@"HMAS.ac" destination:v6 payload:v8];

        objc_initWeak(location, a1[5]);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __55___HMAccessorySetting_addConstraint_completionHandler___block_invoke_109;
        aBlock[3] = &unk_1E754D960;
        v42 = a1[6];
        objc_copyWeak(&v45, location);
        v43 = a1[4];
        v44 = a1[8];
        v10 = _Block_copy(aBlock);
        v11 = [a1[7] pendingRequests];
        v12 = [v9 identifier];
        v13 = _Block_copy(v10);
        [v11 addCompletionBlock:v13 forIdentifier:v12];

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __55___HMAccessorySetting_addConstraint_completionHandler___block_invoke_2;
        v37[3] = &unk_1E754E480;
        v14 = v11;
        v38 = v14;
        v15 = v12;
        v39 = v15;
        v16 = v10;
        v40 = v16;
        [v9 setResponseHandler:v37];
        v17 = [a1[7] messageDispatcher];
        [v17 sendMessage:v9 completionHandler:0];

        objc_destroyWeak(&v45);
        objc_destroyWeak(location);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = a1[5];
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v33 = a1[5];
          *location = 138543874;
          *&location[4] = v32;
          v49 = 2112;
          v50 = v33;
          v51 = 2112;
          v52 = v5;
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to create accessory message destination for setting: %@ key path: %@", location, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        v9 = [a1[5] context];
        v34 = [v9 delegateCaller];
        v35 = a1[8];
        v36 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
        [v34 callCompletion:v35 error:v36];

        v6 = 0;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1[5];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = a1[5];
        *location = 138543618;
        *&location[4] = v25;
        v49 = 2112;
        v50 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@No key path found for setting %@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v6 = [a1[5] context];
      v9 = [v6 delegateCaller];
      v27 = a1[8];
      v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [v9 callCompletion:v27 error:v28];
    }
  }

  else
  {
    v18 = [v3 context];
    v19 = [v18 delegateCaller];
    v20 = a1[8];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    [v19 callCompletion:v20 error:v21];
  }
}

void __55___HMAccessorySetting_addConstraint_completionHandler___block_invoke_109(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (!v3)
  {
    [WeakRetained addConstraint:*(a1 + 40)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 48) error:v3];
}

void __55___HMAccessorySetting_addConstraint_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __55___HMAccessorySetting_notifyDelegateOfAddedConstraint___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Added constraint: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added constraint: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v7 _setting:*(a1 + 32) didAddConstraint:*(a1 + 40)];
  }
}

void __49___HMAccessorySetting_supportedConstraintClasses__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedConstraintClasses_supportedConstraintClasses;
  supportedConstraintClasses_supportedConstraintClasses = v2;
}

void __44___HMAccessorySetting_supportedValueClasses__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = supportedValueClasses_supportedValueClasses_60500;
  supportedValueClasses_supportedValueClasses_60500 = v2;
}

uint64_t __34___HMAccessorySetting_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v64;
  logCategory__hmf_once_v64 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (HMAccessorySettingGroup)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  keyPath = [(HMAccessorySetting *)self keyPath];
  internal = [(HMAccessorySetting *)self internal];
  identifier = [internal identifier];
  uUIDString = [identifier UUIDString];
  v8 = [v3 stringWithFormat:@"%@: %@", keyPath, uUIDString];

  return v8;
}

- (void)logAndPostNotification:(id)notification object:(id)object userInfo:(id)info
{
  v25 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  objectCopy = object;
  infoCopy = info;
  if (!notificationCopy)
  {
    _HMFPreconditionFailure();
  }

  v11 = infoCopy;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v15;
    v19 = 2112;
    v20 = notificationCopy;
    v21 = 2112;
    v22 = objectCopy;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@posting:%@ for object:%@ userinfo:%@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:notificationCopy object:objectCopy userInfo:v11];
}

- (void)_settingDidUpdateValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    value = [valueCopy value];
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = value;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Did update to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  internal = [(HMAccessorySetting *)selfCopy internal];
  context = [internal context];
  delegateCaller = [context delegateCaller];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__HMAccessorySetting__settingDidUpdateValue___block_invoke;
  v13[3] = &unk_1E754E2A8;
  v13[4] = selfCopy;
  [delegateCaller invokeBlock:v13];
}

- (void)_settingWillUpdateValue:(id)value
{
  v11 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Will update", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)settingDidUpdateReflected
{
  internal = [(HMAccessorySetting *)self internal];
  context = [internal context];
  delegateCaller = [context delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__HMAccessorySetting_settingDidUpdateReflected__block_invoke;
  v6[3] = &unk_1E754E2A8;
  v6[4] = self;
  [delegateCaller invokeBlock:v6];
}

void __47__HMAccessorySetting_settingDidUpdateReflected__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"HMAccessorySettingReflectedUpdatedNotification" object:*(a1 + 32)];
}

- (void)updateReflected:(BOOL)reflected
{
  reflectedCopy = reflected;
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = MEMORY[0x1E696AD98];
    internal = [(HMAccessorySetting *)selfCopy internal];
    v11 = [v9 numberWithBool:{objc_msgSend(internal, "isReflected")}];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:reflectedCopy];
    v14 = 138543874;
    v15 = v8;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating reflected from %@ to %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMAccessorySetting *)selfCopy settingWillUpdateReflected];
  internal2 = [(HMAccessorySetting *)selfCopy internal];
  [internal2 setReflected:reflectedCopy];

  [(HMAccessorySetting *)selfCopy settingDidUpdateReflected];
}

- (BOOL)isReflected
{
  internal = [(HMAccessorySetting *)self internal];
  isReflected = [internal isReflected];

  return isReflected;
}

- (void)updateValue:(id)value completionHandler:(id)handler
{
  handlerCopy = handler;
  valueCopy = value;
  internal = [(HMAccessorySetting *)self internal];
  [internal updateValue:valueCopy completionHandler:handlerCopy];
}

- (id)value
{
  internal = [(HMAccessorySetting *)self internal];
  value = [internal value];

  return value;
}

- (NSUUID)identifier
{
  internal = [(HMAccessorySetting *)self internal];
  identifier = [internal identifier];

  return identifier;
}

- (NSString)keyPath
{
  group = [(HMAccessorySetting *)self group];
  keyPath = [group keyPath];

  internal = [(HMAccessorySetting *)self internal];
  name = [internal name];
  v7 = name;
  if (keyPath)
  {
    v8 = [keyPath stringByAppendingFormat:@".%@", name];

    v7 = v8;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  localizedTitle = [(HMSetting *)self localizedTitle];
  [(HMAccessorySetting *)self isWritable];
  v6 = HMFBooleanToString();
  value = [(HMAccessorySetting *)self value];
  v8 = [v3 stringWithFormat:@"<%@, Title = %@, Writeable = %@, Value = %@", v4, localizedTitle, v6, value];

  return v8;
}

- (BOOL)isWritable
{
  internal = [(HMAccessorySetting *)self internal];
  properties = [internal properties];

  return (properties >> 1) & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
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
    if (!v6)
    {
      goto LABEL_12;
    }

    internal = [(HMAccessorySetting *)self internal];
    internal2 = [(HMAccessorySetting *)v6 internal];

    if (internal == internal2)
    {
      v27 = 1;
      goto LABEL_15;
    }

    internal3 = [(HMAccessorySetting *)self internal];
    properties = [internal3 properties];
    internal4 = [(HMAccessorySetting *)v6 internal];
    properties2 = [internal4 properties];

    if (properties == properties2 && (-[HMAccessorySetting internal](self, "internal"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 type], -[HMAccessorySetting internal](v6, "internal"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "type"), v15, v13, v14 == v16) && (-[HMAccessorySetting internal](self, "internal"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "constraints"), v18 = objc_claimAutoreleasedReturnValue(), -[HMAccessorySetting internal](v6, "internal"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "constraints"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v18, "isEqualToArray:", v20), v20, v19, v18, v17, v21) && (-[HMAccessorySetting keyPath](self, "keyPath"), v22 = objc_claimAutoreleasedReturnValue(), -[HMAccessorySetting keyPath](v6, "keyPath"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqualToString:", v23), v23, v22, v24))
    {
      value = [(HMAccessorySetting *)self value];
      value2 = [(HMAccessorySetting *)v6 value];
      v27 = HMFEqualObjects();
    }

    else
    {
LABEL_12:
      v27 = 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v27 = 1;
LABEL_16:

  return v27;
}

- (unint64_t)hash
{
  internal = [(HMAccessorySetting *)self internal];
  name = [internal name];
  v4 = [name hash];

  return v4;
}

- (HMAccessorySetting)initWithInternal:(id)internal
{
  v17 = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  if (internalCopy)
  {
    v6 = objc_opt_class();
    if (v6 == objc_opt_class())
    {
      objc_exception_throw(*MEMORY[0x1E695D930]);
    }

    v14.receiver = self;
    v14.super_class = HMAccessorySetting;
    initWithInternal = [(HMSetting *)&v14 initWithInternal];
    v8 = initWithInternal;
    if (initWithInternal)
    {
      objc_storeStrong(&initWithInternal->_internal, internal);
      [internalCopy setDelegate:v8];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Attempt to create setting controller without internal object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMAccessorySetting)initWithKey:(id)key properties:(unint64_t)properties value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v9 = MEMORY[0x1E695DF30];
  v10 = *MEMORY[0x1E695D930];
  v11 = MEMORY[0x1E696AEC0];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (HMAccessorySetting)init
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
  if (logCategory__hmf_once_t75 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t75, &__block_literal_global_335);
  }

  v3 = logCategory__hmf_once_v76;

  return v3;
}

uint64_t __33__HMAccessorySetting_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v76;
  logCategory__hmf_once_v76 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)settingForInternal:(id)internal
{
  internalCopy = internal;
  type = [internalCopy type];
  v5 = 0;
  if (type > 2)
  {
    if (type != 3 && type != 4 && type != 5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!type)
  {
    goto LABEL_11;
  }

  if (type == 1 || type == 2)
  {
LABEL_9:
    v5 = objc_opt_class();
  }

LABEL_10:
  v5 = [[v5 alloc] initWithInternal:internalCopy];
LABEL_11:

  return v5;
}

@end