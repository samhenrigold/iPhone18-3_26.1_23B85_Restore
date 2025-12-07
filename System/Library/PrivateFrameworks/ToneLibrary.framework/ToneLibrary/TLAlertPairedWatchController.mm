@interface TLAlertPairedWatchController
- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type;
- (TLAlertPairedWatchController)init;
- (void)_didCompletePlaybackForAlertWithContext:(id)context;
- (void)_playAlertWithContext:(id)context;
- (void)_processCompletionForAlertWithContext:(id)context playbackCompletionType:(int64_t)type error:(id)error;
- (void)_stopPlayingAlertWithContext:(id)context withOptions:(id)options playbackCompletionType:(int64_t)type;
- (void)dealloc;
- (void)playAlert:(id)alert withCompletionHandler:(id)handler;
@end

@implementation TLAlertPairedWatchController

- (TLAlertPairedWatchController)init
{
  v6.receiver = self;
  v6.super_class = TLAlertPairedWatchController;
  v2 = [(TLAlertPairedWatchController *)&v6 init];
  if (v2)
  {
    v3 = +[TLAudioQueue sharedAudioQueue];
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  audioQueue = self->_audioQueue;
  self->_audioQueue = 0;
  v4 = audioQueue;

  [(TLAudioQueue *)v4 assertNotRunningOnAudioQueue];
  [(TLAudioQueue *)v4 performSynchronousTaskWithBlock:&__block_literal_global_8];

  v5.receiver = self;
  v5.super_class = TLAlertPairedWatchController;
  [(TLAlertPairedWatchController *)&v5 dealloc];
}

- (void)playAlert:(id)alert withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  alertCopy = alert;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8 = [[TLAlertPairedWatchPlaybackContext alloc] initWithAlert:alertCopy completionHandler:handlerCopy];

  os_unfair_lock_lock(&self->_lock);
  v9 = self->_playbackContext;
  objc_storeStrong(&self->_playbackContext, v8);
  os_unfair_lock_unlock(&self->_lock);
  audioQueue = self->_audioQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__TLAlertPairedWatchController_playAlert_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E8579038;
  v14 = v9;
  selfCopy = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  [(TLAudioQueue *)audioQueue performTaskWithBlock:v13];
}

uint64_t __64__TLAlertPairedWatchController_playAlert_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) _stopPlayingAlertWithContext:v2 withOptions:0 playbackCompletionType:4];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _playAlertWithContext:v4];
}

- (void)_playAlertWithContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  alert = [(TLAlertPairedWatchPlaybackContext *)contextCopy alert];
  type = [alert type];
  configuration = [alert configuration];
  v9 = TLLogPlayback(configuration, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = alert;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertWithContext: […]: Beginning playback for %{public}@.", buf, 0x16u);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v10 = getNACAlertProxyClass_softClass;
  v32 = getNACAlertProxyClass_softClass;
  if (!getNACAlertProxyClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getNACAlertProxyClass_block_invoke;
    v34 = &unk_1E8578D30;
    v35 = &v29;
    __getNACAlertProxyClass_block_invoke(buf);
    v10 = v30[3];
  }

  v11 = v10;
  _Block_object_dispose(&v29, 8);
  v12 = [v10 alertProxyWithConfiguration:configuration];
  v13 = [(TLAlertPairedWatchPlaybackContext *)contextCopy setAlertProxy:v12];
  v15 = TLLogPlayback(v13, v14);
  v16 = v15;
  if (!v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(TLAlertPairedWatchController *)self _playAlertWithContext:v16];
    }

    os_unfair_lock_lock(&self->_lock);
    playbackContext = self->_playbackContext;
    if (playbackContext == contextCopy)
    {
      self->_playbackContext = 0;

      v26 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLAlertErrorDomain" description:@"Failed to create alert proxy using NanoAudioControl."];
      os_unfair_lock_unlock(&self->_lock);
      [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:contextCopy playbackCompletionType:5 error:v26];

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertWithContext: […]: Created NanoAudioControl alert proxy: %{public}@.", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_playbackContext != contextCopy)
  {
LABEL_21:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_22;
  }

  os_unfair_lock_unlock(&self->_lock);
  v19 = TLLogPlayback(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertWithContext: […]: Will call -play on NanoAudioControl alert proxy: %{public}@.", buf, 0x16u);
  }

  play = [v12 play];
  v22 = TLLogPlayback(play, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: -_playAlertWithContext: […]: Did call -play on NanoAudioControl alert proxy: %{public}@.", buf, 0x16u);
  }

  if (([configuration shouldRepeat] & 1) == 0)
  {
    if (type == 1)
    {
      v23 = 4000000000;
    }

    else
    {
      v23 = 2000000000;
    }

    v24 = dispatch_time(0, v23);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__TLAlertPairedWatchController__playAlertWithContext___block_invoke;
    v27[3] = &unk_1E8578900;
    v27[4] = self;
    v28 = contextCopy;
    dispatch_after(v24, MEMORY[0x1E69E96A0], v27);
  }

LABEL_22:
}

- (void)_didCompletePlaybackForAlertWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  playbackContext = self->_playbackContext;
  if (playbackContext == contextCopy)
  {
    self->_playbackContext = 0;

    os_unfair_lock_unlock(&self->_lock);
    [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:contextCopy playbackCompletionType:0 error:0];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_processCompletionForAlertWithContext:(id)context playbackCompletionType:(int64_t)type error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  errorCopy = error;
  os_unfair_lock_assert_not_owner(&self->_lock);
  alert = [contextCopy alert];
  v12 = TLLogPlayback(alert, v11);
  v13 = v12;
  if (errorCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromTLAlertPlaybackCompletionType(type);
      tl_nonRedundantDescription = [errorCopy tl_nonRedundantDescription];
      *buf = 138544130;
      selfCopy2 = self;
      v26 = 2114;
      v27 = alert;
      v28 = 2114;
      v29 = v14;
      v30 = 2114;
      v31 = tl_nonRedundantDescription;
      _os_log_error_impl(&dword_1D9356000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Processing completion for alert %{public}@ with completion type %{public}@ and error: %{public}@.", buf, 0x2Au);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromTLAlertPlaybackCompletionType(type);
    *buf = 138543874;
    selfCopy2 = self;
    v26 = 2114;
    v27 = alert;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Processing completion for alert %{public}@ with completion type %{public}@.", buf, 0x20u);
    goto LABEL_6;
  }

  completionHandler = [contextCopy completionHandler];
  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__TLAlertPairedWatchController__processCompletionForAlertWithContext_playbackCompletionType_error___block_invoke;
  block[3] = &unk_1E8579850;
  v22 = completionHandler;
  typeCopy = type;
  v21 = errorCopy;
  v18 = errorCopy;
  v19 = completionHandler;
  dispatch_async(v17, block);
}

- (BOOL)stopPlayingAlerts:(id)alerts withOptions:(id)options playbackCompletionType:(int64_t)type
{
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = self->_playbackContext;
  playbackContext = self->_playbackContext;
  self->_playbackContext = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    audioQueue = self->_audioQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__TLAlertPairedWatchController_stopPlayingAlerts_withOptions_playbackCompletionType___block_invoke;
    v12[3] = &unk_1E8579878;
    v12[4] = self;
    v13 = v8;
    v14 = optionsCopy;
    typeCopy = type;
    [(TLAudioQueue *)audioQueue performTaskWithBlock:v12];
  }

  return v8 != 0;
}

- (void)_stopPlayingAlertWithContext:(id)context withOptions:(id)options playbackCompletionType:(int64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(TLAudioQueue *)self->_audioQueue assertRunningOnAudioQueue];
  alertProxy = [contextCopy alertProxy];
  v12 = TLLogPlayback(alertProxy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2114;
    v19 = alertProxy;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertWithContext: […]: Will call -stop… on NanoAudioControl alert proxy: %{public}@.", &v16, 0x16u);
  }

  [alertProxy stopWithOptions:optionsCopy];
  v15 = TLLogPlayback(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2114;
    v19 = alertProxy;
    _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_stopPlayingAlertWithContext: […]: Did call -stop… on NanoAudioControl alert proxy: %{public}@.", &v16, 0x16u);
  }

  [(TLAlertPairedWatchController *)self _processCompletionForAlertWithContext:contextCopy playbackCompletionType:type error:0];
}

- (void)_playAlertWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D9356000, a2, OS_LOG_TYPE_ERROR, "%{public}@: -_playAlertWithContext: […]: Failed to create NanoAudioControl alert proxy.", &v2, 0xCu);
}

@end