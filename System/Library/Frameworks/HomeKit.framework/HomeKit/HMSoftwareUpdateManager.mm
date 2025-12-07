@interface HMSoftwareUpdateManager
+ (id)logCategory;
- (HMSoftwareUpdate)availableUpdate;
- (HMSoftwareUpdateManager)init;
- (HMSoftwareUpdateManager)initWithContext:(id)context;
- (HMSoftwareUpdateManagerDelegate)delegate;
- (id)messageDestination;
- (void)__registerForMessages;
- (void)_handleFetch:(id)fetch;
- (void)_handleStartUpdate:(id)update;
- (void)_handleUpdatedAvailableUpdate:(id)update;
- (void)_reallyStartWithCompletionHandler:(id)handler;
- (void)reconnect;
- (void)setAvailableUpdate:(id)update;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
- (void)updateAvailableUpdate:(id)update completionHandler:(id)handler;
@end

@implementation HMSoftwareUpdateManager

- (HMSoftwareUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMSoftwareUpdateManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)_handleStartUpdate:(id)update
{
  v40 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received start update request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMSoftwareUpdateManager *)selfCopy delegate];
  if (delegate)
  {
    v10 = [updateCopy dataForKey:@"update"];
    if (v10)
    {
      v35 = 0;
      v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v35];
      v12 = v35;
      if (v11)
      {
        objc_initWeak(buf, selfCopy);
        context = [(HMSoftwareUpdateManager *)selfCopy context];
        delegateCaller = [context delegateCaller];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __46__HMSoftwareUpdateManager__handleStartUpdate___block_invoke;
        v29[3] = &unk_1E7548790;
        v30 = delegate;
        v31 = selfCopy;
        v32 = v11;
        objc_copyWeak(&v34, buf);
        v33 = updateCopy;
        [delegateCaller invokeBlock:v29];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v27;
          v38 = 2112;
          v39 = v12;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from update data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [updateCopy respondWithError:v28];
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        messagePayload = [updateCopy messagePayload];
        *buf = 138543618;
        v37 = v22;
        v38 = 2112;
        v39 = messagePayload;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing update from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [updateCopy respondWithError:v12];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v18;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
    [updateCopy respondWithError:v10];
  }
}

void __46__HMSoftwareUpdateManager__handleStartUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__HMSoftwareUpdateManager__handleStartUpdate___block_invoke_2;
  v5[3] = &unk_1E7548768;
  objc_copyWeak(&v7, (a1 + 64));
  v6 = *(a1 + 56);
  [v2 softwareUpdateManager:v3 didReceiveRequestToInstallUpdate:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
}

void __46__HMSoftwareUpdateManager__handleStartUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received response to install update request with error: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 32) responseHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) responseHandler];
    (v10)[2](v10, v3, 0);
  }
}

- (void)_handleFetch:(id)fetch
{
  v33 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received fetch request", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMSoftwareUpdateManager *)selfCopy delegate];
  if (delegate)
  {
    objc_initWeak(&location, selfCopy);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__HMSoftwareUpdateManager__handleFetch___block_invoke;
    v23[3] = &unk_1E7548740;
    objc_copyWeak(&v25, &location);
    v24 = fetchCopy;
    v10 = selfCopy;
    v11 = delegate;
    v12 = v23;
    context = [(HMSoftwareUpdateManager *)v10 context];
    delegateCaller = [context delegateCaller];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v28 = ____requestFetch_block_invoke;
    v29 = &unk_1E754E0F8;
    v30 = v11;
    v31 = v10;
    v32 = v12;
    v15 = v12;
    v16 = v10;
    v17 = v11;
    [delegateCaller invokeBlock:&buf];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v21;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
    [fetchCopy respondWithError:v22];
  }
}

void __40__HMSoftwareUpdateManager__handleFetch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = v6;
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v13;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed fetch request with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = 0;
    v15 = v8;
    goto LABEL_15;
  }

  if (v12)
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v16;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received response to fetch request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (!v5)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if ([v5 downloadSize])
  {
    v24 = @"update";
    v17 = encodeRootObject(v5);
    v25 = v17;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

LABEL_11:
    v15 = 0;
    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v10;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v21;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot accept fetched update of download size 0 : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  v14 = 0;
LABEL_15:
  v22 = [*(a1 + 32) responseHandler];

  if (v22)
  {
    v23 = [*(a1 + 32) responseHandler];
    (v23)[2](v23, v15, v14);
  }
}

- (void)updateAvailableUpdate:(id)update completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  handlerCopy = handler;
  context = [(HMSoftwareUpdateManager *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdateManager updateAvailableUpdate:completionHandler:]", @"completionHandler"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v26;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v9 = context;
  if (!context)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v14;
      v34 = 2080;
      v35 = "[HMSoftwareUpdateManager updateAvailableUpdate:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x1E696ABC0];
    v16 = 12;
    goto LABEL_12;
  }

  if (updateCopy && ![updateCopy downloadSize])
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v20;
      v34 = 2112;
      v35 = updateCopy;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot accept available update of download size 0 : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v15 = MEMORY[0x1E696ABC0];
    v16 = 3;
LABEL_12:
    v21 = [v15 hmErrorWithCode:v16];
    handlerCopy[2](handlerCopy, v21);

    goto LABEL_13;
  }

  queue = [v9 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke;
  block[3] = &unk_1E754D208;
  block[4] = self;
  v29 = updateCopy;
  v31 = handlerCopy;
  v30 = v9;
  dispatch_async(queue, block);

LABEL_13:
}

void __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke(id *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating available update to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = a1[5];
  if (v7)
  {
    v34 = @"update";
    v8 = encodeRootObject(v7);
    v35 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  }

  else
  {
    v32 = @"update";
    v8 = [MEMORY[0x1E695DFB0] null];
    v33 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  }

  v10 = v9;

  v11 = MEMORY[0x1E69A2A10];
  v12 = [a1[4] messageDestination];
  v13 = [v11 messageWithName:@"HMSUM.ua" destination:v12 payload:v10];

  objc_initWeak(buf, a1[4]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke_49;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v31, buf);
  v29 = a1[5];
  v30 = a1[7];
  v14 = _Block_copy(aBlock);
  v15 = [a1[4] context];
  v16 = [v15 pendingRequests];

  v17 = [v13 identifier];
  v18 = _Block_copy(v14);
  [v16 addCompletionBlock:v18 forIdentifier:v17];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke_2;
  v23[3] = &unk_1E754D030;
  v19 = v16;
  v24 = v19;
  v20 = v17;
  v25 = v20;
  v26 = a1[5];
  v21 = v14;
  v27 = v21;
  [v13 setResponseHandler:v23];
  v22 = [a1[6] messageDispatcher];
  [v22 sendMessage:v13 completionHandler:0];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

void __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setAvailableUpdate:*(a1 + 32)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v3];
}

void __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v6)
  {
    if (!v8)
    {
      v7 = [v5 hmf_UUIDForKey:@"identifier"];
      if (v7)
      {
        [*(a1 + 48) setIdentifier:v7];
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)_handleUpdatedAvailableUpdate:(id)update
{
  v37 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  context = [(HMSoftwareUpdateManager *)self context];
  pendingRequests = [context pendingRequests];
  identifier = [updateCopy identifier];
  v8 = [pendingRequests retrieveCompletionBlockForIdentifier:identifier];

  if (v8)
  {
LABEL_9:
    [updateCopy respondWithPayload:0];
    goto LABEL_10;
  }

  v9 = [updateCopy nullForKey:@"update"];

  if (v9)
  {
    v10 = 0;
LABEL_4:
    availableUpdate = [(HMSoftwareUpdateManager *)self availableUpdate];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v16;
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating available software update to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [(HMSoftwareUpdateManager *)selfCopy setAvailableUpdate:v10];
    }

    goto LABEL_9;
  }

  v17 = [updateCopy dataForKey:@"update"];
  if (v17)
  {
    v18 = v17;
    v32 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v32];
    v19 = v32;
    v20 = v19;
    if (v10)
    {

      goto LABEL_4;
    }

    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v30;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from update data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [updateCopy respondWithError:v31];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      messagePayload = [updateCopy messagePayload];
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = messagePayload;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Missing update from message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [updateCopy respondWithError:v26];
  }

LABEL_10:
}

- (void)setAvailableUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_availableUpdate, update);
  context = [(HMSoftwareUpdateManager *)self context];
  [updateCopy configureWithContext:context];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSoftwareUpdate)availableUpdate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_availableUpdate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)stop
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(HMSoftwareUpdateManager *)self context];
  v4 = context;
  if (context)
  {
    queue = [context queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__HMSoftwareUpdateManager_stop__block_invoke;
    v10[3] = &unk_1E754E5C0;
    v10[4] = self;
    v11 = v4;
    dispatch_async(queue, v10);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2080;
      v15 = "[HMSoftwareUpdateManager stop]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __31__HMSoftwareUpdateManager_stop__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setStarted:0];
  v6 = MEMORY[0x1E69A2A10];
  v7 = [*(a1 + 32) messageDestination];
  v8 = [v6 messageWithName:@"HMSUM.cl" destination:v7 payload:0];

  objc_initWeak(buf, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__HMSoftwareUpdateManager_stop__block_invoke_46;
  v10[3] = &unk_1E754CD70;
  objc_copyWeak(&v11, buf);
  [v8 setResponseHandler:v10];
  v9 = [*(a1 + 40) messageDispatcher];
  [v9 sendMessage:v8 completionHandler:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __31__HMSoftwareUpdateManager_stop__block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      v13 = "%{public}@Failed to stop with error: %@";
      v14 = v10;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, v13, &v16, v15);
    }
  }

  else if (v11)
  {
    v12 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v12;
    v13 = "%{public}@Stopped";
    v14 = v10;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_reallyStartWithCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMSoftwareUpdateManager *)self context];
  if (context)
  {
    v6 = MEMORY[0x1E69A2A10];
    messageDestination = [(HMSoftwareUpdateManager *)self messageDestination];
    v8 = [v6 messageWithName:@"HMSUM.op" destination:messageDestination payload:0];

    objc_initWeak(location, self);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __61__HMSoftwareUpdateManager__reallyStartWithCompletionHandler___block_invoke;
    v17 = &unk_1E754CFF8;
    objc_copyWeak(&v19, location);
    v18 = handlerCopy;
    [v8 setResponseHandler:&v14];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v8 completionHandler:0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v13;
      v21 = 2080;
      v22 = "[HMSoftwareUpdateManager _reallyStartWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __61__HMSoftwareUpdateManager__reallyStartWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v12;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to start with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [v9 setStarted:1];
    v14 = [v6 hmf_dataForKey:@"update"];
    if (v14)
    {
      v26 = 0;
      v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v26];
      v16 = v26;
      v17 = objc_autoreleasePoolPush();
      v18 = v9;
      v19 = HMFGetOSLogHandle();
      v20 = v19;
      if (v15)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v21 = v24 = v16;
          *buf = 138543618;
          v28 = v21;
          v29 = 2112;
          v30 = v15;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Initial available software update: %@", buf, 0x16u);

          v16 = v24;
        }

        objc_autoreleasePoolPop(v17);
        [v18 setAvailableUpdate:v15];
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v25;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from software update data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
      }
    }
  }

  if (*(a1 + 32))
  {
    v22 = [v9 context];
    v23 = [v22 delegateCaller];
    [v23 callCompletion:*(a1 + 32) error:v5];
  }
}

- (void)reconnect
{
  v15 = *MEMORY[0x1E69E9840];
  context = [(HMSoftwareUpdateManager *)self context];
  v4 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HMSoftwareUpdateManager_reconnect__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v12 = v9;
      v13 = 2080;
      v14 = "[HMSoftwareUpdateManager reconnect]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void *__36__HMSoftwareUpdateManager_reconnect__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) isStarted];
  if (result)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Restarting on reconnect", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    return [*(a1 + 32) _reallyStartWithCompletionHandler:0];
  }

  return result;
}

- (void)startWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMSoftwareUpdateManager *)self context];
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdateManager startWithCompletionHandler:]", @"completionHandler"];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0];
    objc_exception_throw(v18);
  }

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HMSoftwareUpdateManager_startWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v20 = handlerCopy;
    dispatch_async(queue, block);
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
      v22 = v11;
      v23 = 2080;
      v24 = "[HMSoftwareUpdateManager startWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

uint64_t __54__HMSoftwareUpdateManager_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _reallyStartWithCompletionHandler:*(a1 + 40)];
}

- (void)__registerForMessages
{
  context = [(HMSoftwareUpdateManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMSUM.ua" receiver:self selector:sel__handleUpdatedAvailableUpdate_];

  context2 = [(HMSoftwareUpdateManager *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"HMSUM.fu" receiver:self selector:sel__handleFetch_];

  context3 = [(HMSoftwareUpdateManager *)self context];
  messageDispatcher3 = [context3 messageDispatcher];
  [messageDispatcher3 registerForMessage:@"HMSUM.su" receiver:self selector:sel__handleStartUpdate_];
}

- (HMSoftwareUpdateManager)init
{
  v3 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.SUManager"];
  v4 = [(HMSoftwareUpdateManager *)self initWithContext:v3];

  return v4;
}

- (HMSoftwareUpdateManager)initWithContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = HMSoftwareUpdateManager;
  v6 = [(HMSoftwareUpdateManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"08DA0D15-4D5F-4E74-89B6-A4201BC50F72"];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    objc_initWeak(&location, v7);
    xpcClient = [(_HMContext *)v7->_context xpcClient];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __43__HMSoftwareUpdateManager_initWithContext___block_invoke;
    v15 = &unk_1E754E540;
    objc_copyWeak(&v16, &location);
    [xpcClient registerReconnectionHandler:&v12];

    [(HMSoftwareUpdateManager *)v7 __registerForMessages:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __43__HMSoftwareUpdateManager_initWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t34_20981 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t34_20981, &__block_literal_global_20982);
  }

  v3 = logCategory__hmf_once_v35_20983;

  return v3;
}

uint64_t __38__HMSoftwareUpdateManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v35_20983;
  logCategory__hmf_once_v35_20983 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end