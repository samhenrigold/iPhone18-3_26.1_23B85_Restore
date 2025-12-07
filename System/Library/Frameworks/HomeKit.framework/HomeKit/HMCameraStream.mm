@interface HMCameraStream
+ (id)logCategory;
- (HMCameraStream)init;
- (HMCameraStream)initWithProfileUniqueIdentifier:(id)identifier slotIdentifier:(id)slotIdentifier aspectRatio:(double)ratio sessionID:(id)d audioStreamSetting:(unint64_t)setting audioDownlinkToken:(int64_t)token audioUplinkToken:(int64_t)uplinkToken;
- (void)_handleAudioStreamSettingUpdate:(unint64_t)update withError:(id)error context:(id)context completionHandler:(id)handler;
- (void)_issueUpdateAudioStreamSettingRequest:(unint64_t)request completionHandler:(id)handler;
- (void)_updateAudioStreamSetting:(unint64_t)setting completionHandler:(id)handler;
- (void)_updateAudioVolume:(id)volume completionHandler:(id)handler;
- (void)_updateMaximumVideoResolutionQuality:(int64_t)quality completionHandler:(id)handler;
- (void)dealloc;
- (void)updateAudioStreamSetting:(HMCameraAudioStreamSetting)audioStreamSetting completionHandler:(void *)completion;
- (void)updateAudioVolume:(id)volume completionHandler:(id)handler;
- (void)updateMaximumVideoResolutionQuality:(int64_t)quality completionHandler:(id)handler;
@end

@implementation HMCameraStream

- (void)_updateMaximumVideoResolutionQuality:(int64_t)quality completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMCameraSource *)self context];
  if (!handlerCopy)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream _updateMaximumVideoResolutionQuality:completionHandler:]", @"completion"];
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v34;
      v43 = 2112;
      qualityCopy = v30;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
    objc_exception_throw(v35);
  }

  v8 = context;
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v13;
      v43 = 2048;
      qualityCopy = quality;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating stream video resolution quality to: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v39[0] = @"kCameraSessionID";
    sessionID = [(HMCameraStream *)selfCopy2 sessionID];
    v39[1] = @"HMCameraStreamVideoResolutionQualityMessageKey";
    v40[0] = sessionID;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:quality];
    v40[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];

    v17 = objc_alloc(MEMORY[0x1E69A2A10]);
    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    profileUniqueIdentifier = [(HMCameraSource *)selfCopy2 profileUniqueIdentifier];
    v20 = [v18 initWithTarget:profileUniqueIdentifier];
    v21 = [v17 initWithName:@"HMCameraStreamUpdateMaximumVideoResolutionQualityMessage" destination:v20 payload:v16];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __73__HMCameraStream__updateMaximumVideoResolutionQuality_completionHandler___block_invoke;
    v36[3] = &unk_1E754E480;
    v36[4] = selfCopy2;
    v22 = v8;
    v37 = v22;
    v38 = handlerCopy;
    [v21 setResponseHandler:v36];
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy2;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      sessionID2 = [(HMCameraStream *)v24 sessionID];
      *buf = 138543618;
      v42 = v26;
      v43 = 2112;
      qualityCopy = sessionID2;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Sending update video resolution quality message for session ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    messageDispatcher = [v22 messageDispatcher];
    [messageDispatcher sendMessage:v21];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v29;
      v43 = 2080;
      qualityCopy = "[HMCameraStream _updateMaximumVideoResolutionQuality:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

void __73__HMCameraStream__updateMaximumVideoResolutionQuality_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v12 = "%{public}@Failed to update video resoluiton quality: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    v12 = "%{public}@Successfully updated video resolution quality";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];
}

- (void)_handleAudioStreamSettingUpdate:(unint64_t)update withError:(id)error context:(id)context completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  contextCopy = context;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (errorCopy)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio stream setting: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Successfully updated audio stream setting", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMCameraStream *)selfCopy setInternalAudioStreamSetting:update];
  }

  delegateCaller = [contextCopy delegateCaller];
  hmPublicError = [errorCopy hmPublicError];
  [delegateCaller callCompletion:handlerCopy error:hmPublicError];
}

- (void)_issueUpdateAudioStreamSettingRequest:(unint64_t)request completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMCameraSource *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream _issueUpdateAudioStreamSettingRequest:completionHandler:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v26;
      v36 = 2112;
      v37 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v8 = context;
  if (context)
  {
    v9 = objc_alloc(MEMORY[0x1E69A2A00]);
    profileUniqueIdentifier = [(HMCameraSource *)self profileUniqueIdentifier];
    v11 = [v9 initWithTarget:profileUniqueIdentifier];

    v32[0] = @"kCameraSessionID";
    sessionID = [(HMCameraStream *)self sessionID];
    v32[1] = @"kAudioStreamSetting";
    v33[0] = sessionID;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:request];
    v33[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v15 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCameraStreamSetAudioStreamSettingMessage" destination:v11 payload:v14];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __74__HMCameraStream__issueUpdateAudioStreamSettingRequest_completionHandler___block_invoke;
    v28[3] = &unk_1E7549B68;
    v28[4] = self;
    requestCopy = request;
    v16 = v8;
    v29 = v16;
    v30 = handlerCopy;
    [v15 setResponseHandler:v28];
    messageDispatcher = [v16 messageDispatcher];
    [messageDispatcher sendMessage:v15];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v21;
      v36 = 2080;
      v37 = "[HMCameraStream _issueUpdateAudioStreamSettingRequest:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

- (void)_updateAudioVolume:(id)volume completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  handlerCopy = handler;
  context = [(HMCameraSource *)self context];
  if (!handlerCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream _updateAudioVolume:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v28;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v9 = context;
  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v14;
      v38 = 2112;
      v39 = volumeCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating audio volume to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x1E69A2A00]);
    profileUniqueIdentifier = [(HMCameraSource *)selfCopy2 profileUniqueIdentifier];
    v17 = [v15 initWithTarget:profileUniqueIdentifier];

    v34[0] = @"kCameraSessionID";
    sessionID = [(HMCameraStream *)selfCopy2 sessionID];
    v34[1] = @"HMCameraStreamAudioVolumeSettingMessageKey";
    v35[0] = sessionID;
    v35[1] = volumeCopy;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

    v20 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCameraStreamSetAudioVolumeMessage" destination:v17 payload:v19];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__HMCameraStream__updateAudioVolume_completionHandler___block_invoke;
    v30[3] = &unk_1E754D030;
    v30[4] = selfCopy2;
    v31 = volumeCopy;
    v21 = v9;
    v32 = v21;
    v33 = handlerCopy;
    [v20 setResponseHandler:v30];
    messageDispatcher = [v21 messageDispatcher];
    [messageDispatcher sendMessage:v20];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v23;
      v38 = 2080;
      v39 = "[HMCameraStream _updateAudioVolume:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

void __55__HMCameraStream__updateAudioVolume_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio volume: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully updated audio volume", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setInternalAudioVolume:*(a1 + 40)];
  }

  v13 = [*(a1 + 48) delegateCaller];
  [v13 callCompletion:*(a1 + 56) error:v5];
}

- (void)_updateAudioStreamSetting:(unint64_t)setting completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMCameraSource *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream _updateAudioStreamSetting:completionHandler:]", @"completion"];
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

  v8 = context;
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMCameraAudioStreamSettingAsString(setting);
      *buf = 138543618;
      v33 = v13;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating audio stream setting to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (setting - 1 >= 2)
    {
      if (setting == 3)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = selfCopy2;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v20;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Requesting access for microphone", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        queue = [v8 queue];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __62__HMCameraStream__updateAudioStreamSetting_completionHandler___block_invoke;
        v28[3] = &unk_1E7547CD0;
        v28[4] = v18;
        v31 = 3;
        v30 = handlerCopy;
        v29 = v8;
        __HMPrivacyRequestAccessForService(*MEMORY[0x1E69D5588], queue, v28);
      }
    }

    else
    {
      [(HMCameraStream *)selfCopy2 _issueUpdateAudioStreamSettingRequest:setting completionHandler:handlerCopy];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v15;
      v34 = 2080;
      v35 = "[HMCameraStream _updateAudioStreamSetting:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

void __62__HMCameraStream__updateAudioStreamSetting_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Request for microphone access was granted", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _issueUpdateAudioStreamSettingRequest:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Request for microphone access was not granted", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:89];
    [v10 _handleAudioStreamSettingUpdate:v11 withError:v12 context:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

- (void)updateMaximumVideoResolutionQuality:(int64_t)quality completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMCameraSource *)self context];
  if (!handlerCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream updateMaximumVideoResolutionQuality:completionHandler:]", @"completion"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0];
    objc_exception_throw(v20);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__HMCameraStream_updateMaximumVideoResolutionQuality_completionHandler___block_invoke;
    block[3] = &unk_1E754DB20;
    block[4] = self;
    qualityCopy = quality;
    v22 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 2080;
      v27 = "[HMCameraStream updateMaximumVideoResolutionQuality:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

- (void)updateAudioVolume:(id)volume completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  handlerCopy = handler;
  context = [(HMCameraSource *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream updateAudioVolume:completionHandler:]", @"completion"];
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
    block[2] = __54__HMCameraStream_updateAudioVolume_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = volumeCopy;
    v24 = handlerCopy;
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
      v28 = "[HMCameraStream updateAudioVolume:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (void)updateAudioStreamSetting:(HMCameraAudioStreamSetting)audioStreamSetting completionHandler:(void *)completion
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = completion;
  context = [(HMCameraSource *)self context];
  if (!v6)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream updateAudioStreamSetting:completionHandler:]", @"completion"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0];
    objc_exception_throw(v20);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__HMCameraStream_updateAudioStreamSetting_completionHandler___block_invoke;
    block[3] = &unk_1E754DB20;
    block[4] = self;
    v23 = audioStreamSetting;
    v22 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 2080;
      v27 = "[HMCameraStream updateAudioStreamSetting:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }
}

- (void)dealloc
{
  context = [(HMCameraSource *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v5.receiver = self;
  v5.super_class = HMCameraStream;
  [(HMCameraStream *)&v5 dealloc];
}

- (HMCameraStream)initWithProfileUniqueIdentifier:(id)identifier slotIdentifier:(id)slotIdentifier aspectRatio:(double)ratio sessionID:(id)d audioStreamSetting:(unint64_t)setting audioDownlinkToken:(int64_t)token audioUplinkToken:(int64_t)uplinkToken
{
  identifierCopy = identifier;
  slotIdentifierCopy = slotIdentifier;
  dCopy = d;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!slotIdentifierCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (ratio == 0.0)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v19 = dCopy;
  if (!dCopy)
  {
LABEL_11:
    v25 = _HMFPreconditionFailure();
    return [(HMCameraStream *)v25 init];
  }

  v27.receiver = self;
  v27.super_class = HMCameraStream;
  v20 = [(HMCameraSource *)&v27 initWithProfileUniqueIdentifier:identifierCopy slotIdentifier:slotIdentifierCopy aspectRatio:ratio];
  if (v20)
  {
    v21 = [v19 copy];
    sessionID = v20->_sessionID;
    v20->_sessionID = v21;

    v20->_internalAudioStreamSetting = setting;
    internalAudioVolume = v20->_internalAudioVolume;
    v20->_internalAudioVolume = &unk_1F0EFE0F8;

    v20->_audioDownlinkToken = token;
    v20->_audioUplinkToken = uplinkToken;
  }

  return v20;
}

- (HMCameraStream)init
{
  v3.receiver = self;
  v3.super_class = HMCameraStream;
  return [(HMCameraSource *)&v3 init];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27, &__block_literal_global_61);
  }

  v3 = logCategory__hmf_once_v28;

  return v3;
}

uint64_t __29__HMCameraStream_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v28;
  logCategory__hmf_once_v28 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end