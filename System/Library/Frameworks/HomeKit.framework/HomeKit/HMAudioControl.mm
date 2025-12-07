@interface HMAudioControl
- (BOOL)isMuted;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAudioControl)initWithMediaSession:(id)session;
- (HMAudioControlDelegate)delegate;
- (HMMediaSession)mediaSession;
- (NSUUID)uniqueIdentifier;
- (float)volume;
- (void)__configureWithContext:(id)context;
- (void)_unconfigure;
- (void)audioControl:(id)control didUpdateMuted:(BOOL)muted;
- (void)audioControl:(id)control didUpdateVolume:(float)volume;
- (void)setMuted:(BOOL)muted;
- (void)setVolume:(float)volume;
- (void)updateMuted:(BOOL)muted completionHandler:(id)handler;
- (void)updateVolume:(float)volume completionHandler:(id)handler;
@end

@implementation HMAudioControl

void __49___HMAudioControl_updateMuted_completionHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"muted";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v14[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v4 = MEMORY[0x1E69A2A10];
  v5 = [*(a1 + 32) messageDestination];
  v6 = [v4 messageWithName:@"HMAC.sa" destination:v5 payload:v3];

  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___HMAudioControl_updateMuted_completionHandler___block_invoke_2;
  v8[3] = &unk_1E754A018;
  objc_copyWeak(&v10, &location);
  v11 = *(a1 + 56);
  v9 = *(a1 + 48);
  [v6 setResponseHandler:v8];
  v7 = [*(a1 + 40) messageDispatcher];
  [v7 sendMessage:v6 completionHandler:0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __49___HMAudioControl_updateMuted_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set the mute state to %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 setMuted:*(a1 + 48)];
  }

  v13 = [WeakRetained context];
  v14 = [v13 delegateCaller];
  [v14 callCompletion:*(a1 + 32) error:v5];
}

void __50___HMAudioControl_updateVolume_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"volume";
  LODWORD(a2) = *(a1 + 56);
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v15[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v5 = MEMORY[0x1E69A2A10];
  v6 = [*(a1 + 32) messageDestination];
  v7 = [v5 messageWithName:@"HMAC.sa" destination:v6 payload:v4];

  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___HMAudioControl_updateVolume_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7547928;
  objc_copyWeak(&v11, &location);
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v7 setResponseHandler:v9];
  v8 = [*(a1 + 40) messageDispatcher];
  [v8 sendMessage:v7 completionHandler:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50___HMAudioControl_updateVolume_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      LODWORD(v12) = *(a1 + 48);
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set the volume to %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    LODWORD(v14) = *(a1 + 48);
    [v9 setVolume:v14];
  }

  v15 = [WeakRetained context];
  v16 = [v15 delegateCaller];
  [v16 callCompletion:*(a1 + 32) error:v5];
}

void __38___HMAudioControl_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___HMAudioControl_mergeFromNewObject___block_invoke_2;
  v5[3] = &unk_1E7547B40;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __38___HMAudioControl_mergeFromNewObject___block_invoke_27(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38___HMAudioControl_mergeFromNewObject___block_invoke_2_28;
  v6[3] = &unk_1E754DC70;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 invokeBlock:v6];
}

uint64_t __38___HMAudioControl_mergeFromNewObject___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    LODWORD(v6) = *(a1 + 48);
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateVolume : %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  LODWORD(v8) = *(a1 + 48);
  return [*(a1 + 40) audioControl:*(a1 + 32) didUpdateVolume:v8];
}

- (HMMediaSession)mediaSession
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaSession);

  return WeakRetained;
}

- (HMAudioControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)audioControl:(id)control didUpdateMuted:(BOOL)muted
{
  delegate = [(HMAudioControl *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HMAudioControl *)self delegate];
    audioControl = [(HMAudioControl *)self audioControl];
    context = [audioControl context];
    delegateCaller = [context delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__HMAudioControl_audioControl_didUpdateMuted___block_invoke;
    v13[3] = &unk_1E754DC70;
    v14 = delegate2;
    selfCopy = self;
    mutedCopy = muted;
    v12 = delegate2;
    [delegateCaller invokeBlock:v13];
  }
}

- (void)audioControl:(id)control didUpdateVolume:(float)volume
{
  delegate = [(HMAudioControl *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HMAudioControl *)self delegate];
    audioControl = [(HMAudioControl *)self audioControl];
    context = [audioControl context];
    delegateCaller = [context delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__HMAudioControl_audioControl_didUpdateVolume___block_invoke;
    v13[3] = &unk_1E7547B40;
    v14 = delegate2;
    selfCopy = self;
    volumeCopy = volume;
    v12 = delegate2;
    [delegateCaller invokeBlock:v13];
  }
}

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
    audioControl = [(HMAudioControl *)self audioControl];
    audioControl2 = [v6 audioControl];
    v9 = [audioControl mergeFromNewObject:audioControl2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateMuted:(BOOL)muted completionHandler:(id)handler
{
  mutedCopy = muted;
  handlerCopy = handler;
  audioControl = [(HMAudioControl *)self audioControl];
  [audioControl updateMuted:mutedCopy completionHandler:handlerCopy];
}

- (void)updateVolume:(float)volume completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (volume < 0.0 || volume > 1.0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v13;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Volume must be between 0.0 - 1.0", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    objc_exception_throw(*MEMORY[0x1E695DA20]);
  }

  audioControl = [(HMAudioControl *)self audioControl];
  *&v8 = volume;
  [audioControl updateVolume:handlerCopy completionHandler:v8];
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  audioControl = [(HMAudioControl *)self audioControl];
  [audioControl setMuted:mutedCopy];
}

- (BOOL)isMuted
{
  audioControl = [(HMAudioControl *)self audioControl];
  isMuted = [audioControl isMuted];

  return isMuted;
}

- (void)setVolume:(float)volume
{
  audioControl = [(HMAudioControl *)self audioControl];
  *&v4 = volume;
  [audioControl setVolume:v4];
}

- (float)volume
{
  audioControl = [(HMAudioControl *)self audioControl];
  [audioControl volume];
  v4 = v3;

  return v4;
}

- (NSUUID)uniqueIdentifier
{
  audioControl = [(HMAudioControl *)self audioControl];
  uniqueIdentifier = [audioControl uniqueIdentifier];

  return uniqueIdentifier;
}

- (void)_unconfigure
{
  audioControl = [(HMAudioControl *)self audioControl];
  [audioControl _unconfigure];
}

- (void)__configureWithContext:(id)context
{
  contextCopy = context;
  audioControl = [(HMAudioControl *)self audioControl];
  [audioControl __configureWithContext:contextCopy];
}

- (HMAudioControl)initWithMediaSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = HMAudioControl;
  v5 = [(HMAudioControl *)&v9 init];
  if (v5)
  {
    v6 = [[_HMAudioControl alloc] initWithMediaSession:sessionCopy];
    audioControl = v5->_audioControl;
    v5->_audioControl = v6;

    [(_HMAudioControl *)v5->_audioControl setDelegate:v5];
  }

  return v5;
}

@end