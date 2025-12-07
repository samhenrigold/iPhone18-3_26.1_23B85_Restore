@interface _HMCameraStreamControl
+ (id)logCategory;
- (HMCameraStream)cameraStream;
- (NSString)sessionID;
- (_HMCameraStreamControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier;
- (_HMCameraStreamControlDelegate)delegate;
- (unint64_t)streamState;
- (void)__configureWithContext:(id)context;
- (void)_callVideoStartedDelegate;
- (void)_callVideoStoppedDelegateWithError:(id)error;
- (void)_handleStreamStartedWithResponse:(id)response sessionID:(id)d error:(id)error;
- (void)_handleVideoStopResponse:(id)response sessionID:(id)d error:(id)error;
- (void)_handleVideoStreamStopped:(id)stopped;
- (void)_resetStateWithError:(id)error;
- (void)dealloc;
- (void)setCameraStream:(id)stream;
- (void)setDelegate:(id)delegate;
- (void)setSessionID:(id)d;
- (void)setStreamState:(unint64_t)state;
- (void)startStreamWithPreferences:(id)preferences;
- (void)stopStream;
@end

@implementation _HMCameraStreamControl

- (void)_callVideoStoppedDelegateWithError:(id)error
{
  errorCopy = error;
  delegate = [(_HMCameraStreamControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMCameraControl *)self context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61___HMCameraStreamControl__callVideoStoppedDelegateWithError___block_invoke;
    v8[3] = &unk_1E754E5E8;
    v9 = delegate;
    selfCopy = self;
    v11 = errorCopy;
    [delegateCaller invokeBlock:v8];
  }
}

- (void)_callVideoStartedDelegate
{
  delegate = [(_HMCameraStreamControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMCameraControl *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51___HMCameraStreamControl__callVideoStartedDelegate__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_handleVideoStopResponse:(id)response sessionID:(id)d error:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  errorCopy = error;
  sessionID = [(_HMCameraStreamControl *)self sessionID];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (errorCopy)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v17;
        v29 = 2112;
        v30 = dCopy;
        v31 = 2112;
        v32 = errorCopy;
        v18 = "%{public}@Failed to stop stream for session ID %@: %@";
        v19 = v16;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 32;
LABEL_10:
        _os_log_impl(&dword_19BB39000, v19, v20, v18, &v27, v21);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v17;
      v29 = 2112;
      v30 = dCopy;
      v18 = "%{public}@Successfully stopped stream for session ID: %@";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 22;
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v13);
    [(_HMCameraStreamControl *)selfCopy _resetStateWithError:errorCopy];
    goto LABEL_12;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    sessionID2 = [(_HMCameraStreamControl *)selfCopy2 sessionID];
    v27 = 138543874;
    v28 = v25;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = sessionID2;
    _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Not handling stop stream response: Received session ID %@ does not match the current one %@", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
LABEL_12:
}

- (void)stopStream
{
  v42 = *MEMORY[0x1E69E9840];
  context = [(_HMCameraControl *)self context];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping the stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    sessionID = [(_HMCameraStreamControl *)selfCopy sessionID];
    if (sessionID)
    {
      if ([(_HMCameraStreamControl *)selfCopy streamState]!= 3)
      {
        [(_HMCameraStreamControl *)selfCopy setStreamState:3];
        v18 = MEMORY[0x1E69A2A10];
        v19 = objc_alloc(MEMORY[0x1E69A2A00]);
        profileUniqueIdentifier = [(_HMCameraControl *)selfCopy profileUniqueIdentifier];
        v21 = [v19 initWithTarget:profileUniqueIdentifier];
        v36 = @"kCameraSessionID";
        v37 = sessionID;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v18 messageWithName:@"HMCameraStreamStopStreamMessage" destination:v21 payload:v22];

        v30 = MEMORY[0x1E69E9820];
        v31 = 3221225472;
        v32 = __36___HMCameraStreamControl_stopStream__block_invoke;
        v33 = &unk_1E754E570;
        v34 = selfCopy;
        v24 = sessionID;
        v35 = v24;
        [v23 setResponseHandler:&v30];
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = v24;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Sending stop video stream message for session ID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        messageDispatcher = [context messageDispatcher];
        [messageDispatcher sendMessage:v23];

        goto LABEL_18;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v13;
        v14 = "%{public}@Not stopping stream because it is already being stopped";
        v15 = v12;
        v16 = OS_LOG_TYPE_INFO;
LABEL_13:
        _os_log_impl(&dword_19BB39000, v15, v16, v14, buf, 0xCu);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v13;
        v14 = "%{public}@Ignoring stop stream request because no stream session ID exists";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_13;
      }
    }

    objc_autoreleasePoolPop(v10);
LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v17;
    v40 = 2080;
    v41 = "[_HMCameraStreamControl stopStream]";
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
LABEL_19:
}

- (void)_handleStreamStartedWithResponse:(id)response sessionID:(id)d error:(id)error
{
  v62 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  errorCopy = error;
  sessionID = [(_HMCameraStreamControl *)self sessionID];
  v12 = HMFEqualObjects();

  if (v12)
  {
    if (errorCopy)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v16;
        v58 = 2112;
        v59 = errorCopy;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to start video stream: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [(_HMCameraStreamControl *)selfCopy _resetStateWithError:errorCopy];
    }

    else
    {
      v22 = [responseCopy hmf_stringForKey:@"kCameraSessionID"];
      [(_HMCameraStreamControl *)self setSessionID:v22];

      v23 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        sessionID2 = [(_HMCameraStreamControl *)selfCopy2 sessionID];
        *buf = 138543618;
        v57 = v26;
        v58 = 2112;
        v59 = sessionID2;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Successfully started video stream for session ID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v53 = [responseCopy hmf_numberForKey:@"kSlotIdentifierKey"];
      v28 = [responseCopy hmf_numberForKey:@"kAudioStreamSetting"];
      v29 = [responseCopy hmf_numberForKey:@"kSourceAspectRatioKey"];
      v55 = 0;
      v30 = [responseCopy hmf_integerForKey:@"HMCameraStreamAudioDownlinkTokenMessageKey" error:&v55];
      v31 = v55;
      v52 = v30;
      if (!v30)
      {
        v32 = v28;
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy2;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v36 = v51 = v33;
          *buf = 138543618;
          v57 = v36;
          v58 = 2112;
          v59 = v31;
          _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to unpack audio downlink token: %@", buf, 0x16u);

          v33 = v51;
        }

        objc_autoreleasePoolPop(v33);
        v28 = v32;
      }

      v54 = v31;
      v37 = [responseCopy hmf_integerForKey:@"HMCameraStreamAudioUplinkTokenMessageKey" error:&v54];
      v38 = v54;

      if (!v37)
      {
        v39 = objc_autoreleasePoolPush();
        v40 = selfCopy2;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v42 = v50 = v39;
          *buf = 138543618;
          v57 = v42;
          v58 = 2112;
          v59 = v38;
          _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to unpack audio uplink token: %@", buf, 0x16u);

          v39 = v50;
        }

        objc_autoreleasePoolPop(v39);
      }

      v43 = [HMCameraStream alloc];
      profileUniqueIdentifier = [(_HMCameraControl *)selfCopy2 profileUniqueIdentifier];
      [v29 doubleValue];
      v46 = v45;
      sessionID3 = [(_HMCameraStreamControl *)selfCopy2 sessionID];
      v48 = -[HMCameraStream initWithProfileUniqueIdentifier:slotIdentifier:aspectRatio:sessionID:audioStreamSetting:audioDownlinkToken:audioUplinkToken:](v43, "initWithProfileUniqueIdentifier:slotIdentifier:aspectRatio:sessionID:audioStreamSetting:audioDownlinkToken:audioUplinkToken:", profileUniqueIdentifier, v53, sessionID3, [v28 unsignedIntegerValue], v52, v37, v46);

      context = [(_HMCameraControl *)selfCopy2 context];
      [(HMCameraSource *)v48 setContext:context];

      [(_HMCameraStreamControl *)selfCopy2 setCameraStream:v48];
      [(_HMCameraStreamControl *)selfCopy2 setStreamState:2];
      [(_HMCameraStreamControl *)selfCopy2 _callVideoStartedDelegate];

      errorCopy = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      sessionID4 = [(_HMCameraStreamControl *)selfCopy3 sessionID];
      *buf = 138543874;
      v57 = v20;
      v58 = 2112;
      v59 = dCopy;
      v60 = 2112;
      v61 = sessionID4;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Not handling start stream response: Received session ID %@ does not match the current one %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)startStreamWithPreferences:(id)preferences
{
  v41 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  context = [(_HMCameraControl *)self context];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (!context)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v11;
      v39 = 2080;
      v40 = "[_HMCameraStreamControl startStreamWithPreferences:]";
      v12 = "%{public}@Nil context - %s";
      v13 = v9;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v10;
    v39 = 2112;
    v40 = preferencesCopy;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting stream with preferences: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(_HMCameraStreamControl *)selfCopy streamState]== 1 || [(_HMCameraStreamControl *)selfCopy streamState]== 2)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = selfCopy;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v11;
      v12 = "%{public}@Ignoring start stream request because a stream session is already starting or actively streaming";
      v13 = v9;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
LABEL_10:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, buf, v15);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  [(_HMCameraStreamControl *)selfCopy setStreamState:1];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  [(_HMCameraStreamControl *)selfCopy setSessionID:uUIDString];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:uUIDString forKeyedSubscript:@"kCameraSessionID"];
  if (preferencesCopy)
  {
    v19 = encodeRootObject(preferencesCopy);
    [dictionary setObject:v19 forKeyedSubscript:@"kCameraSessionPreference"];
  }

  v20 = objc_alloc(MEMORY[0x1E69A2A10]);
  v21 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(_HMCameraControl *)selfCopy profileUniqueIdentifier];
  v23 = [v21 initWithTarget:profileUniqueIdentifier];
  v24 = [v20 initWithName:@"HMCameraStreamNegotiateStreamMessage" destination:v23 payload:dictionary];

  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __53___HMCameraStreamControl_startStreamWithPreferences___block_invoke;
  v34 = &unk_1E754E570;
  v35 = selfCopy;
  v25 = uUIDString;
  v36 = v25;
  [v24 setResponseHandler:&v31];
  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v29;
    v39 = 2112;
    v40 = v25;
    _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Sending negotiate stream message for session ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v24];

LABEL_12:
}

- (void)_handleVideoStreamStopped:(id)stopped
{
  v31 = *MEMORY[0x1E69E9840];
  stoppedCopy = stopped;
  sessionID = [(_HMCameraStreamControl *)self sessionID];
  if (sessionID)
  {
    v6 = [stoppedCopy stringForKey:@"kCameraSessionID"];
    if (([sessionID isEqualToString:v6] & 1) == 0)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        v25 = 138543874;
        v26 = v24;
        v27 = 2112;
        v28 = v6;
        v29 = 2112;
        v30 = sessionID;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Not handling video stream stopped message: Received session ID %@ does not match the current one %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      goto LABEL_16;
    }

    v7 = [stoppedCopy errorForKey:@"kCameraSessionError"];
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v25 = 138543874;
        v26 = v12;
        v27 = 2112;
        v28 = sessionID;
        v29 = 2112;
        v30 = v7;
        v13 = "%{public}@Video stream has failed for the session ID %@: %@";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 32;
LABEL_14:
        _os_log_impl(&dword_19BB39000, v14, v15, v13, &v25, v16);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = sessionID;
      v13 = "%{public}@Video stream has stopped for the session ID: %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 22;
      goto LABEL_14;
    }

    objc_autoreleasePoolPop(v8);
    [(_HMCameraStreamControl *)selfCopy2 _resetStateWithError:v7];

LABEL_16:
    goto LABEL_17;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v20;
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring stream stopped message because there is no current stream", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
LABEL_17:
}

- (void)__configureWithContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _HMCameraStreamControl;
  [(_HMCameraControl *)&v12 __configureWithContext:contextCopy];
  context = [(_HMCameraControl *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMCameraStreamStoppedMessage" receiver:self selector:sel__handleVideoStreamStopped_];

  objc_initWeak(&location, self);
  context2 = [(_HMCameraControl *)self context];
  xpcClient = [context2 xpcClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___HMCameraStreamControl___configureWithContext___block_invoke;
  v9[3] = &unk_1E754E540;
  objc_copyWeak(&v10, &location);
  [xpcClient registerReconnectionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_resetStateWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting all the stream control state with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(_HMCameraStreamControl *)selfCopy setCameraStream:0];
  [(_HMCameraStreamControl *)selfCopy setSessionID:0];
  [(_HMCameraStreamControl *)selfCopy setStreamState:4];
  [(_HMCameraStreamControl *)selfCopy _callVideoStoppedDelegateWithError:errorCopy];
}

- (void)setSessionID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [dCopy copy];
  sessionID = self->_sessionID;
  self->_sessionID = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)sessionID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionID;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setStreamState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_streamState = state;

  os_unfair_lock_unlock(&self->super._lock);
}

- (unint64_t)streamState
{
  os_unfair_lock_lock_with_options();
  streamState = self->_streamState;
  os_unfair_lock_unlock(&self->super._lock);
  return streamState;
}

- (void)setCameraStream:(id)stream
{
  streamCopy = stream;
  os_unfair_lock_lock_with_options();
  cameraStream = self->_cameraStream;
  self->_cameraStream = streamCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMCameraStream)cameraStream
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cameraStream;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->super._lock);
}

- (_HMCameraStreamControlDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->super._lock);

  return WeakRetained;
}

- (void)dealloc
{
  context = [(_HMCameraControl *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v5.receiver = self;
  v5.super_class = _HMCameraStreamControl;
  [(_HMCameraStreamControl *)&v5 dealloc];
}

- (_HMCameraStreamControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = _HMCameraStreamControl;
  result = [(_HMCameraControl *)&v5 initWithCameraProfile:profile profileUniqueIdentifier:identifier];
  if (result)
  {
    result->_streamState = 4;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_66861 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_66861, &__block_literal_global_66862);
  }

  v3 = logCategory__hmf_once_v32_66863;

  return v3;
}

@end