@interface HMUserCloudShareManager
+ (id)logCategory;
- (HMUserCloudShareManager)initWithDataSource:(id)source;
- (HMUserCloudShareManager)initWithDataSource:(id)source context:(id)context;
- (HMUserCloudShareManagerDataSource)dataSource;
- (HMUserCloudShareManagerDelegate)delegate;
- (id)messageDestination;
- (void)__registerForMessages;
- (void)_handleDidReceiveRepairRequest:(id)request;
- (void)_handleDidReceiveShare:(id)share;
- (void)_registerWithCompletion:(id)completion;
- (void)_unconfigure;
- (void)configure;
- (void)reconnect;
- (void)registerForContainerIDs:(id)ds completion:(id)completion;
@end

@implementation HMUserCloudShareManager

- (void)configure
{
  context = [(HMUserCloudShareManager *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__HMUserCloudShareManager_configure__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__HMUserCloudShareManager_configure__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) context];
  v3 = [v2 xpcClient];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __36__HMUserCloudShareManager_configure__block_invoke_2;
  v7 = &unk_1E754E540;
  objc_copyWeak(&v8, &location);
  [v3 registerReconnectionHandler:&v4];

  [*(a1 + 32) __registerForMessages];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)__registerForMessages
{
  context = [(HMUserCloudShareManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMUCSM.rs" receiver:self selector:sel__handleDidReceiveShare_];

  context2 = [(HMUserCloudShareManager *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"HMUCSM.rRep" receiver:self selector:sel__handleDidReceiveRepairRequest_];
}

- (HMUserCloudShareManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMUserCloudShareManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMUserCloudShareManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)_registerWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMUserCloudShareManager *)self context];
  if (context)
  {
    v6 = MEMORY[0x1E69A2A10];
    messageDestination = [(HMUserCloudShareManager *)self messageDestination];
    v21 = @"containerIds";
    containerIDs = [(HMUserCloudShareManager *)self containerIDs];
    v22 = containerIDs;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [v6 messageWithName:@"HMUCSM.reg" destination:messageDestination payload:v9];

    objc_initWeak(location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__HMUserCloudShareManager__registerWithCompletion___block_invoke;
    v17[3] = &unk_1E754D058;
    objc_copyWeak(&v20, location);
    v11 = context;
    v18 = v11;
    v19 = completionCopy;
    [v10 setResponseHandler:v17];
    messageDispatcher = [v11 messageDispatcher];
    [messageDispatcher sendMessage:v10 completionHandler:0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v16;
      v24 = 2080;
      v25 = "[HMUserCloudShareManager _registerWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __51__HMUserCloudShareManager__registerWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = [a1[4] queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__HMUserCloudShareManager__registerWithCompletion___block_invoke_2;
    block[3] = &unk_1E754E0F8;
    v7 = v3;
    v8 = WeakRetained;
    v9 = a1[5];
    dispatch_async(v5, block);
  }
}

void __51__HMUserCloudShareManager__registerWithCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v15 = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v9 = "%{public}@Failed to start with error: %@";
    v10 = v6;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v7;
    v9 = "%{public}@Registered Successfully";
    v10 = v6;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
  }

  _os_log_impl(&dword_19BB39000, v10, v11, v9, &v15, v12);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  if (*(a1 + 48))
  {
    v13 = [*(a1 + 40) context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 48) error:*(a1 + 32)];
  }
}

- (void)reconnect
{
  v15 = *MEMORY[0x1E69E9840];
  context = [(HMUserCloudShareManager *)self context];
  v4 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HMUserCloudShareManager_reconnect__block_invoke;
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
      v14 = "[HMUserCloudShareManager reconnect]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void *__36__HMUserCloudShareManager_reconnect__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) isRegistered];
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
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Re-registering", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    return [*(a1 + 32) _registerWithCompletion:0];
  }

  return result;
}

- (void)registerForContainerIDs:(id)ds completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  context = [(HMUserCloudShareManager *)self context];
  if (!completionCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUserCloudShareManager registerForContainerIDs:completion:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMUserCloudShareManager_registerForContainerIDs_completion___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = completionCopy;
    v23 = dsCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMUserCloudShareManager registerForContainerIDs:completion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v15);
  }
}

void __62__HMUserCloudShareManager_registerForContainerIDs_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isRegistered])
  {
    v2 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:1 description:@"Already registered" reason:@"Cannot register more than once" suggestion:0];
    (*(v2 + 16))(v2);
  }

  else
  {
    [*(a1 + 32) setRegistered:1];
    [*(a1 + 32) setContainerIDs:*(a1 + 40)];
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _registerWithCompletion:*(a1 + 48)];
  }
}

- (void)_handleDidReceiveRepairRequest:(id)request
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  messagePayload = [requestCopy messagePayload];
  v6 = [messagePayload hmf_UUIDForKey:@"HM.u.homeuuid"];

  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  messagePayload2 = [requestCopy messagePayload];
  v10 = [messagePayload2 objectForKeyedSubscript:@"HM.u.repairInfo"];
  v27 = 0;
  v11 = [v7 unarchivedObjectOfClass:v8 fromData:v10 error:&v27];
  v12 = v27;

  dataSource = [(HMUserCloudShareManager *)self dataSource];
  v14 = [dataSource shareManager:self homeWithUUID:v6];

  if (v14 && v11)
  {
    delegate = [(HMUserCloudShareManager *)self delegate];
    v16 = objc_opt_respondsToSelector();
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v20)
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v21;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Calling repair delegate.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [delegate shareManager:selfCopy didReceiveRepairInfo:v11 home:v14];
    }

    else
    {
      if (v20)
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v26;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Client does not respond to repair.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v25;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Did not find home %@ or repairInfo %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (void)_handleDidReceiveShare:(id)share
{
  v138 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  delegate = [(HMUserCloudShareManager *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (delegate)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v135 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Decoding share message.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v135 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Decoding user.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x1E696ACD0];
    v16 = objc_opt_class();
    messagePayload = [shareCopy messagePayload];
    v18 = [messagePayload objectForKeyedSubscript:@"HM.u.to"];
    v131 = 0;
    responseHandler6 = [v15 unarchivedObjectOfClass:v16 fromData:v18 error:&v131];
    v20 = v131;

    if (v20)
    {
      context = v20;
      v120 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v121 = 0;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v12;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v135 = v29;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Decoding share URL.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v30 = MEMORY[0x1E696ACD0];
      v31 = objc_opt_class();
      messagePayload2 = [shareCopy messagePayload];
      v33 = [messagePayload2 objectForKeyedSubscript:@"HM.u.url"];
      v130 = 0;
      v113 = [v30 unarchivedObjectOfClass:v31 fromData:v33 error:&v130];
      v34 = v130;

      if (v34)
      {
        context = v34;
        v120 = 0;
        v22 = 0;
        v23 = 0;
        v121 = 0;
        v21 = v113;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v27;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v135 = v38;
          _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Decoding encoded share Token.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        messagePayload3 = [shareCopy messagePayload];
        v112 = [messagePayload3 objectForKeyedSubscript:@"HM.u.token"];

        v40 = objc_autoreleasePoolPush();
        v41 = v36;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v135 = v43;
          _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Decoding containerID.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        messagePayload4 = [shareCopy messagePayload];
        v23 = [messagePayload4 objectForKeyedSubscript:@"HM.u.container"];

        v45 = objc_autoreleasePoolPush();
        v46 = v41;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543362;
          v135 = v48;
          _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Decoding fromUser.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v45);
        v49 = MEMORY[0x1E696ACD0];
        v50 = objc_opt_class();
        messagePayload5 = [shareCopy messagePayload];
        v52 = [messagePayload5 objectForKeyedSubscript:@"HM.u.from"];
        v129 = 0;
        v121 = [v49 unarchivedObjectOfClass:v50 fromData:v52 error:&v129];
        v53 = v129;

        if (v53)
        {
          context = v53;
          v120 = 0;
          v21 = v113;
        }

        else
        {
          v54 = objc_autoreleasePoolPush();
          v55 = v46;
          v56 = HMFGetOSLogHandle();
          v21 = v113;
          contexta = v55;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543362;
            v135 = v57;
            _os_log_impl(&dword_19BB39000, v56, OS_LOG_TYPE_DEBUG, "%{public}@Decoding token.", buf, 0xCu);

            v55 = contexta;
          }

          objc_autoreleasePoolPop(v54);
          v58 = objc_alloc(MEMORY[0x1E696ACD0]);
          messagePayload6 = [shareCopy messagePayload];
          v60 = [messagePayload6 objectForKeyedSubscript:@"HM.u.home"];
          v128 = 0;
          v61 = [v58 initForReadingFromData:v60 error:&v128];
          v62 = v128;

          [v61 _allowDecodingCyclesInSecureMode];
          v63 = objc_opt_class();
          v64 = *MEMORY[0x1E696A508];
          v127 = v62;
          v120 = [v61 decodeTopLevelObjectOfClass:v63 forKey:v64 error:&v127];
          v65 = v127;

          if (!v65)
          {
            v109 = v61;
            v81 = objc_autoreleasePoolPush();
            v82 = contexta;
            v83 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              v84 = HMFGetLogIdentifier();
              *buf = 138543362;
              v135 = v84;
              _os_log_impl(&dword_19BB39000, v83, OS_LOG_TYPE_DEBUG, "%{public}@Decoding share token.", buf, 0xCu);
            }

            v110 = v82;
            objc_autoreleasePoolPop(v81);
            v85 = MEMORY[0x1E696ACD0];
            v86 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
            v126 = 0;
            v76 = [v85 _strictlyUnarchivedObjectOfClasses:v86 fromData:v112 error:&v126];
            v87 = v126;

            if (v87)
            {
              v88 = v76;
              v89 = objc_autoreleasePoolPush();
              v90 = v110;
              v91 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v92 = contextd = v89;
                *buf = 138543362;
                v135 = v92;
                _os_log_impl(&dword_19BB39000, v91, OS_LOG_TYPE_INFO, "%{public}@Skipping shareToken check.", buf, 0xCu);

                v89 = contextd;
              }

              objc_autoreleasePoolPop(v89);
              v76 = v88;
            }

            v77 = [[HMUserCloudShareInvitation alloc] initWithUser:responseHandler6 URL:v113 shareToken:v76 containerID:v23 forHome:v120 fromUser:v121];
            if (objc_opt_respondsToSelector())
            {
              contextb = v76;
              v93 = objc_autoreleasePoolPush();
              v94 = v110;
              v95 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v96 = v111 = v94;
                *buf = 138543362;
                v135 = v96;
                _os_log_impl(&dword_19BB39000, v95, OS_LOG_TYPE_INFO, "%{public}@Calling share invitation delegate.", buf, 0xCu);

                v94 = v111;
              }

              objc_autoreleasePoolPop(v93);
              v124[0] = MEMORY[0x1E69E9820];
              v124[1] = 3221225472;
              v124[2] = __50__HMUserCloudShareManager__handleDidReceiveShare___block_invoke;
              v124[3] = &unk_1E754C6C8;
              v124[4] = v94;
              v125 = shareCopy;
              [delegate shareManager:v94 didReceiveShareInvitation:v77 completionHandler:v124];

              v22 = v112;
              v76 = contextb;
            }

            else
            {
              v97 = objc_opt_respondsToSelector();
              contextc = objc_autoreleasePoolPush();
              v98 = v110;
              v99 = HMFGetOSLogHandle();
              if (v97)
              {
                v100 = v99;
                if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                {
                  v101 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v135 = v101;
                  v102 = v101;
                  _os_log_impl(&dword_19BB39000, v100, OS_LOG_TYPE_INFO, "%{public}@Calling legacy share invitation delegate.", buf, 0xCu);
                }

                objc_autoreleasePoolPop(contextc);
                v122[0] = MEMORY[0x1E69E9820];
                v122[1] = 3221225472;
                v122[2] = __50__HMUserCloudShareManager__handleDidReceiveShare___block_invoke_60;
                v122[3] = &unk_1E754C6F0;
                v122[4] = v98;
                v123 = shareCopy;
                [delegate shareManager:v98 didReceiveShareInvitation:v77 completion:v122];
              }

              else
              {
                v103 = v99;
                if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                {
                  v104 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v135 = v104;
                  v105 = v104;
                  _os_log_impl(&dword_19BB39000, v103, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement any of the methods to accept a share", buf, 0xCu);
                }

                objc_autoreleasePoolPop(contextc);
                responseHandler = [shareCopy responseHandler];

                if (responseHandler)
                {
                  responseHandler2 = [shareCopy responseHandler];
                  v108 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Delegate does implement method to accept shares" reason:@"Need a delegate implements method to accept shares" suggestion:0];
                  (responseHandler2)[2](responseHandler2, v108, 0);
                }
              }

              v22 = v112;
            }

            goto LABEL_33;
          }

          context = v65;
        }

        v22 = v112;
      }
    }

    v66 = objc_autoreleasePoolPush();
    v67 = v12;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      [shareCopy messagePayload];
      v114 = v23;
      v70 = shareCopy;
      v71 = delegate;
      v72 = v22;
      v73 = responseHandler6;
      v75 = v74 = v21;
      *buf = 138543618;
      v135 = v69;
      v136 = 2112;
      v137 = v75;
      _os_log_impl(&dword_19BB39000, v68, OS_LOG_TYPE_ERROR, "%{public}@Could not decode all items in payload: %@", buf, 0x16u);

      v21 = v74;
      responseHandler6 = v73;
      v22 = v72;
      delegate = v71;
      shareCopy = v70;
      v23 = v114;
    }

    objc_autoreleasePoolPop(v66);
    v76 = context;
    v77 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Unable to decode payload" reason:@"Could not decode all items in payload" suggestion:0 underlyingError:context];
    responseHandler3 = [shareCopy responseHandler];

    if (responseHandler3)
    {
      responseHandler4 = [shareCopy responseHandler];
      v132 = @"didAccept";
      v133 = MEMORY[0x1E695E110];
      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
      (responseHandler4)[2](responseHandler4, v77, v80);
    }

LABEL_33:

    goto LABEL_34;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v135 = v24;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Do not have a delegate that responds to shares", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  responseHandler5 = [shareCopy responseHandler];

  if (responseHandler5)
  {
    responseHandler6 = [shareCopy responseHandler];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Delegate does not respond to shares" reason:@"Need a delegate that responds to shares" suggestion:0];
    (responseHandler6)[2](responseHandler6, v21, 0);
LABEL_34:
  }
}

void __50__HMUserCloudShareManager__handleDidReceiveShare___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v12;
      v13 = "%{public}@Client accepted share";
LABEL_7:
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, v13, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  v11 = v14;
  if (v8)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v12;
      v13 = "%{public}@Client rejected share.";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v9);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v24;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Client did not accept share but no error specified.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Required error not specified" reason:@"Need error when share is not accepted" suggestion:0];
LABEL_9:
  v15 = [*(a1 + 40) responseHandler];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v16 setObject:v17 forKeyedSubscript:@"didAccept"];

    if (v7)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v21;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Forwarding received clientInfo.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v32 = 0;
      v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v32];
      v23 = v32;
      if (v22)
      {
        [v16 setObject:v22 forKeyedSubscript:@"clientInfo"];
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = *(a1 + 32);
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v28;
          v35 = 2112;
          v36 = v23;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Error encoding client Info. %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v29 = v23;

        v16 = 0;
        v8 = v29;
      }
    }

    v30 = [*(a1 + 40) responseHandler];
    v31 = [v16 copy];
    (v30)[2](v30, v8, v31);
  }
}

void __50__HMUserCloudShareManager__handleDidReceiveShare___block_invoke_60(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v9;
      v10 = "%{public}@Client accepted share";
LABEL_7:
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, v10, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v8 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v9;
      v10 = "%{public}@Client rejected share.";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v16;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Client did not accept share but no error specified.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Required error not specified" reason:@"Need error when share is not accepted" suggestion:0];
LABEL_9:
  v12 = [*(a1 + 40) responseHandler];

  if (v12)
  {
    v13 = [*(a1 + 40) responseHandler];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{a2, @"didAccept"}];
    v18 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    (v13)[2](v13, v5, v15);
  }
}

void __36__HMUserCloudShareManager_configure__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

- (void)_unconfigure
{
  context = [(HMUserCloudShareManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];
}

- (HMUserCloudShareManager)initWithDataSource:(id)source context:(id)context
{
  sourceCopy = source;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = HMUserCloudShareManager;
  v8 = [(HMUserCloudShareManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeStrong(&v9->_context, context);
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4BEBFE01-79E8-4433-8EAA-D41948E39F02"];
    identifier = v9->_identifier;
    v9->_identifier = v10;
  }

  return v9;
}

- (HMUserCloudShareManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.UserCSManager"];
  v6 = [(HMUserCloudShareManager *)self initWithDataSource:sourceCopy context:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t33 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t33, &__block_literal_global_50092);
  }

  v3 = logCategory__hmf_once_v34;

  return v3;
}

uint64_t __38__HMUserCloudShareManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v34;
  logCategory__hmf_once_v34 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end