@interface HMAccessorySetupManager
+ (NSUUID)UUID;
+ (id)logCategory;
- (HMAccessorySetupManager)init;
- (HMAccessorySetupManager)initWithContext:(id)context;
- (void)_finishAccessorySetupWithSetupCompletedInfo:(void *)info completionHandler:(void *)handler activity:;
- (void)failAccessorySetupWithError:(id)error completionHandler:(id)handler;
- (void)finishAccessorySetupWithCompletionHandler:(id)handler;
- (void)finishAccessorySetupWithSetupCompletedInfo:(id)info completionHandler:(id)handler;
- (void)performAccessorySetupUsingRequest:(HMAccessorySetupRequest *)request completionHandler:(void *)completion;
- (void)resumeAccessorySetupWithUserInfo:(id)info completionHandler:(id)handler;
@end

@implementation HMAccessorySetupManager

- (void)failAccessorySetupWithError:(id)error completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  handlerCopy = handler;
  if (!errorCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager failAccessorySetupWithError:completionHandler:]", @"error"];
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

LABEL_11:
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v30;
    v39 = 2112;
    v40 = v26;
    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_12:
    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager failAccessorySetupWithError:completionHandler:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Failing accessory setup"];
  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v38 = v13;
    v39 = 2114;
    v40 = shortDescription;
    v41 = 2112;
    v42 = errorCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Failing accessory setup with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v35 = @"HMASM.mk.error";
  v36 = errorCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  v18 = +[HMAccessorySetupManager UUID];
  v19 = [v17 initWithTarget:v18];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASM.m.failAccessorySetup" destination:v19 payload:v16];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __73__HMAccessorySetupManager_failAccessorySetupWithError_completionHandler___block_invoke;
  v32[3] = &unk_1E754E480;
  v32[4] = selfCopy3;
  v33 = v9;
  v34 = v8;
  v21 = v8;
  v22 = v9;
  [v20 setResponseHandler:v32];
  if (selfCopy3)
  {
    Property = objc_getProperty(selfCopy3, v23, 8, 1);
  }

  else
  {
    Property = 0;
  }

  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v20];
}

void __73__HMAccessorySetupManager_failAccessorySetupWithError_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543874;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    *&v21[22] = 2112;
    v22 = v5;
    v14 = "%{public}@[%{public}@] Failed to fail accessory setup: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543618;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    v14 = "%{public}@[%{public}@] Successfully failed accessory setup";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
  }

  _os_log_impl(&dword_19BB39000, v15, v16, v14, v21, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 8, 1);
  }

  v20 = [Property delegateCaller];
  [v20 callCompletion:*(a1 + 48) error:v5];
}

- (void)finishAccessorySetupWithSetupCompletedInfo:(id)info completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager finishAccessorySetupWithSetupCompletedInfo:completionHandler:]", @"setupCompletedInfo"];
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_9:
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v20;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_10:
    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager finishAccessorySetupWithSetupCompletedInfo:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Finishing accessory setup with completed info"];
  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v23 = v13;
    v24 = 2114;
    v25 = shortDescription;
    v26 = 2112;
    v27 = infoCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Finishing accessory setup with setup completed info: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMAccessorySetupManager *)selfCopy3 _finishAccessorySetupWithSetupCompletedInfo:infoCopy completionHandler:v8 activity:v9];
}

- (void)_finishAccessorySetupWithSetupCompletedInfo:(void *)info completionHandler:(void *)handler activity:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  infoCopy = info;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (self)
  {
    if (!handlerCopy)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager _finishAccessorySetupWithSetupCompletedInfo:completionHandler:activity:]", @"activity"];
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v23;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
      objc_exception_throw(v24);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (v7)
    {
      v12 = encodeRootObject(v7);
      [dictionary setObject:v12 forKeyedSubscript:@"HMASM.mk.accessorySetupCompletedInfo"];
    }

    v13 = objc_alloc(MEMORY[0x1E69A2A00]);
    v14 = +[HMAccessorySetupManager UUID];
    v15 = [v13 initWithTarget:v14];

    v16 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASM.m.finishAccessorySetup" destination:v15 payload:dictionary];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __98__HMAccessorySetupManager__finishAccessorySetupWithSetupCompletedInfo_completionHandler_activity___block_invoke;
    v25[3] = &unk_1E754E480;
    v25[4] = self;
    v26 = v10;
    v27 = infoCopy;
    [v16 setResponseHandler:v25];
    v18 = [objc_getProperty(self v17];
    [v18 sendMessage:v16];
  }
}

void __98__HMAccessorySetupManager__finishAccessorySetupWithSetupCompletedInfo_completionHandler_activity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543874;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    *&v21[22] = 2112;
    v22 = v5;
    v14 = "%{public}@[%{public}@] Failed to finish accessory setup: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543618;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    v14 = "%{public}@[%{public}@] Successfully finished accessory setup";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
  }

  _os_log_impl(&dword_19BB39000, v15, v16, v14, v21, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 8, 1);
  }

  v20 = [Property delegateCaller];
  [v20 callCompletion:*(a1 + 48) error:v5];
}

- (void)finishAccessorySetupWithCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager finishAccessorySetupWithCompletionHandler:]", @"completion"];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0];
    objc_exception_throw(v18);
  }

  v5 = handlerCopy;
  v6 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Finishing accessory setup"];
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    identifier = [v6 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v20 = v10;
    v21 = 2114;
    v22 = shortDescription;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Finishing accessory setup", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMAccessorySetupManager *)selfCopy2 _finishAccessorySetupWithSetupCompletedInfo:v5 completionHandler:v6 activity:?];
}

- (void)resumeAccessorySetupWithUserInfo:(id)info completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager resumeAccessorySetupWithUserInfo:completionHandler:]", @"userInfo"];
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

LABEL_11:
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v30;
    v39 = 2112;
    v40 = v26;
    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_12:
    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager resumeAccessorySetupWithUserInfo:completionHandler:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Resuming accessory setup"];
  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v38 = v13;
    v39 = 2114;
    v40 = shortDescription;
    v41 = 2112;
    v42 = infoCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Launching HomeUIService with userInfo: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  v17 = +[HMAccessorySetupManager UUID];
  v18 = [v16 initWithTarget:v17];

  v35 = @"HMASM.mk.resumeAccessorySetupUserInfo";
  v36 = infoCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASM.m.resumeAccessorySetup" destination:v18 payload:v19];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __78__HMAccessorySetupManager_resumeAccessorySetupWithUserInfo_completionHandler___block_invoke;
  v32[3] = &unk_1E754E480;
  v32[4] = selfCopy3;
  v33 = v9;
  v34 = v8;
  v21 = v8;
  v22 = v9;
  [v20 setResponseHandler:v32];
  if (selfCopy3)
  {
    Property = objc_getProperty(selfCopy3, v23, 8, 1);
  }

  else
  {
    Property = 0;
  }

  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v20];
}

void __78__HMAccessorySetupManager_resumeAccessorySetupWithUserInfo_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543874;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    *&v21[22] = 2112;
    v22 = v5;
    v14 = "%{public}@[%{public}@] Failed to resume accessory setup: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543618;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    v14 = "%{public}@[%{public}@] Successfully resumed accessory setup";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
  }

  _os_log_impl(&dword_19BB39000, v15, v16, v14, v21, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 8, 1);
  }

  v20 = [Property delegateCaller];
  [v20 callCompletion:*(a1 + 48) error:v5];
}

- (void)performAccessorySetupUsingRequest:(HMAccessorySetupRequest *)request completionHandler:(void *)completion
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = request;
  v7 = completion;
  if (!v6)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager performAccessorySetupUsingRequest:completionHandler:]", @"request"];
    v38 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v40 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

LABEL_20:
    v41 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v41;
    v52 = 2112;
    v53 = v37;
    _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_21:
    objc_autoreleasePoolPop(v38);
    v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v37 userInfo:0];
    objc_exception_throw(v42);
  }

  v8 = v7;
  if (!v7)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager performAccessorySetupUsingRequest:completionHandler:]", @"completion"];
    v38 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v40 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  suggestedAccessoryName = [(HMAccessorySetupRequest *)v6 suggestedAccessoryName];
  v10 = [suggestedAccessoryName length];
  if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
  {
    dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
  }

  v11 = HMMaxLengthForNaming__hmf_once_v9;

  if (v10 <= v11)
  {
    v21 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Performing accessory setup using request"];
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      identifier = [v21 identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543874;
      v51 = v25;
      v52 = 2114;
      v53 = shortDescription;
      v54 = 2112;
      v55 = v6;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Performing accessory setup using request: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v28 = objc_alloc(MEMORY[0x1E69A2A00]);
    uUID = [objc_opt_class() UUID];
    v19 = [v28 initWithTarget:uUID];

    v48 = @"HMASM.mk.request";
    v30 = encodeRootObject(v6);
    v49 = v30;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

    v31 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASM.m.performAccessorySetup" destination:v19 payload:v20];
    [v31 hm_setXPCTimeoutDisabled:1];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke_46;
    v43[3] = &unk_1E754E480;
    v43[4] = selfCopy3;
    v44 = v21;
    v45 = v8;
    v32 = v8;
    v33 = v21;
    [v31 setResponseHandler:v43];
    if (selfCopy3)
    {
      Property = objc_getProperty(selfCopy3, v34, 8, 1);
    }

    else
    {
      Property = 0;
    }

    messageDispatcher = [Property messageDispatcher];
    [messageDispatcher sendMessage:v31 completionHandler:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Suggested accessory name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (selfCopy4)
    {
      v17 = objc_getProperty(selfCopy4, v16, 8, 1);
    }

    else
    {
      v17 = 0;
    }

    delegateCaller = [v17 delegateCaller];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke;
    v46[3] = &unk_1E754E430;
    v47 = v8;
    v19 = v8;
    [delegateCaller invokeBlock:v46];

    v20 = v47;
  }
}

void __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
  (*(v1 + 16))(v1, 0, v2);
}

void __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke_46(id *a1, void *a2, void *a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v42[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMASM.mk.result" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v37 = v13;
      v38 = 2114;
      v39 = v15;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully performed accessory setup using request with result: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v16, 8, 1);
    }

    v18 = [Property delegateCaller];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke_50;
    v30 = &unk_1E754E458;
    v19 = &v32;
    v32 = a1[6];
    v20 = &v31;
    v31 = v8;
    v21 = &v27;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [a1[5] identifier];
      v24 = [v23 shortDescription];
      *buf = 138543874;
      v37 = v22;
      v38 = 2114;
      v39 = v24;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to perform accessory setup using request: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = a1[4];
    if (v26)
    {
      v26 = objc_getProperty(v26, v25, 8, 1);
    }

    v18 = [v26 delegateCaller];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke_49;
    v33[3] = &unk_1E754E458;
    v19 = &v35;
    v35 = a1[6];
    v20 = &v34;
    v34 = v5;
    v21 = v33;
  }

  [v18 invokeBlock:{v21, v27, v28, v29, v30, v31}];
}

- (HMAccessorySetupManager)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HMAccessorySetupManager;
  v6 = [(HMAccessorySetupManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (HMAccessorySetupManager)init
{
  v3 = [(HMXPCMessageTransportConfiguration *)[HMMutableXPCMessageTransportConfiguration alloc] initWithMachServiceName:@"com.apple.homed.xpc.accessory-setup"];
  v4 = HMDispatchQueueNameString(self, 0);
  uTF8String = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(uTF8String, v6);
  [(HMXPCMessageTransportConfiguration *)v3 setQueue:v7];

  [(HMXPCMessageTransportConfiguration *)v3 setRequiresHomeDataAccess:0];
  v8 = [[_HMContext alloc] initWithXPCClientConfiguration:v3];
  v9 = [(HMAccessorySetupManager *)self initWithContext:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25_66223 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25_66223, &__block_literal_global_66224);
  }

  v3 = logCategory__hmf_once_v26_66225;

  return v3;
}

uint64_t __38__HMAccessorySetupManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v26_66225;
  logCategory__hmf_once_v26_66225 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (NSUUID)UUID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9FB82AF6-B949-4E55-B8B0-BEF7E1544816"];

  return v2;
}

@end