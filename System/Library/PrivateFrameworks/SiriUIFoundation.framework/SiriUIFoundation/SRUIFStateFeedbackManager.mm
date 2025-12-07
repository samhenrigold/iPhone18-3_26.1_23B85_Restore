@interface SRUIFStateFeedbackManager
- (SRUIFStateFeedbackManager)initWithStateFeedbackProvider:(id)provider delegate:(id)delegate;
- (void)_cancelFeedbackWithCompletion:(id)completion;
- (void)_playDelayFeedback;
- (void)_playSuccessFeedback;
- (void)_scheduleDelayToneFor:(double)for;
- (void)audioPlaybackRequestDidStartForRequest:(id)request;
- (void)cancelFeedbackWithCompletion:(id)completion;
- (void)didTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (void)didTransitionFromState:(int64_t)state toState:(int64_t)toState event:(int64_t)event machAbsoluteTransitionTime:(double)time;
- (void)didUpdateEstimatedEndOfUserInput:(unint64_t)input;
- (void)nowPlayingObserver:(id)observer playbackStateDidChangeFrom:(int64_t)from to:(int64_t)to lastPlayingDate:(id)date;
- (void)siriSessionDidEnd;
- (void)updateResponseMode:(id)mode;
@end

@implementation SRUIFStateFeedbackManager

- (SRUIFStateFeedbackManager)initWithStateFeedbackProvider:(id)provider delegate:(id)delegate
{
  providerCopy = provider;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = SRUIFStateFeedbackManager;
  v9 = [(SRUIFStateFeedbackManager *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, provider);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingDelayToneFeedbackIDs = v10->_pendingDelayToneFeedbackIDs;
    v10->_pendingDelayToneFeedbackIDs = v11;

    v13 = dispatch_queue_create("com.apple.siri.stateFeedbackManagerQueue", 0);
    nowPlayingObserverQueue = v10->_nowPlayingObserverQueue;
    v10->_nowPlayingObserverQueue = v13;

    v15 = [objc_alloc(MEMORY[0x277D5E1D8]) initWithQueue:v10->_nowPlayingObserverQueue];
    nowPlayingObserver = v10->_nowPlayingObserver;
    v10->_nowPlayingObserver = v15;

    [(SOMediaNowPlayingObserver *)v10->_nowPlayingObserver addListener:v10];
  }

  return v10;
}

- (void)didTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SRUIFSiriSessionStateGetDescription(state);
    v10 = SRUIFSiriSessionStateGetDescription(toState);
    v11 = 136315650;
    v12 = "[SRUIFStateFeedbackManager didTransitionFromState:toState:]";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #statefeedback Transitioning fromState: %@ toState: %@", &v11, 0x20u);
  }

  if (toState != 2)
  {
    if (toState == 1)
    {
      self->_stateFeedbackNeeded = 1;
    }

    else
    {
      [(SRUIFStateFeedbackManager *)self _cancelFeedback];
    }
  }
}

- (void)didTransitionFromState:(int64_t)state toState:(int64_t)toState event:(int64_t)event machAbsoluteTransitionTime:(double)time
{
  v12 = *MEMORY[0x277D85DE8];
  [(SRUIFStateFeedbackManager *)self didTransitionFromState:state toState:toState];
  if (event == 16)
  {
    self->_stateFeedbackNeeded = 1;
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[SRUIFStateFeedbackManager didTransitionFromState:toState:event:machAbsoluteTransitionTime:]";
      _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #statefeedback will play delay tone for head gesture request if needed", &v10, 0xCu);
    }

    [(SRUIFStateFeedbackManager *)self didUpdateEstimatedEndOfUserInput:time];
  }
}

- (void)didUpdateEstimatedEndOfUserInput:(unint64_t)input
{
  v11 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  AFMachAbsoluteTimeGetTimeInterval();
  v5 = 2.75 - v4;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRUIFStateFeedbackManager didUpdateEstimatedEndOfUserInput:]";
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #statefeedback waiting %f seconds until delay tone", &v7, 0x16u);
  }

  [(SRUIFStateFeedbackManager *)self _scheduleDelayToneFor:v5];
}

- (void)siriSessionDidEnd
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFStateFeedbackManager siriSessionDidEnd]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #statefeedback cancelling state feedback for ui session end", &v4, 0xCu);
  }

  [(SRUIFStateFeedbackManager *)self _cancelFeedback];
}

- (void)cancelFeedbackWithCompletion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRUIFStateFeedbackManager cancelFeedbackWithCompletion:]";
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #statefeedback cancelling state feedback", &v6, 0xCu);
  }

  [(SRUIFStateFeedbackManager *)self _cancelFeedbackWithCompletion:completionCopy];
}

- (void)updateResponseMode:(id)mode
{
  v11 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRUIFStateFeedbackManager updateResponseMode:]";
    v9 = 2112;
    v10 = modeCopy;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #statefeedback updating response mode to: %@", &v7, 0x16u);
  }

  responseMode = self->_responseMode;
  self->_responseMode = modeCopy;
}

- (void)audioPlaybackRequestDidStartForRequest:(id)request
{
  v11 = *MEMORY[0x277D85DE8];
  uUID = [request UUID];
  uuidForCurrentStateFeedback = [(SRUIFStateFeedbackProviding *)self->_provider uuidForCurrentStateFeedback];
  v6 = !self->_stateFeedbackNeeded || uUID == 0;
  if (!v6 && [uUID isEqualToString:uuidForCurrentStateFeedback])
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SRUIFStateFeedbackManager audioPlaybackRequestDidStartForRequest:]";
      _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #statefeedback audio playback request for state feedback started", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stateFeedbackManagerDidStartPlaybackForStateFeedbackType:0];
  }
}

- (void)_cancelFeedbackWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SRUIFStateFeedbackManager _cancelFeedbackWithCompletion:]";
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #statefeedback cancelling state feedback", buf, 0xCu);
  }

  self->_stateFeedbackNeeded = 0;
  [(AFWatchdogTimer *)self->_delayToneTimer cancelIfNotAlreadyCanceled];
  [(NSMutableSet *)self->_pendingDelayToneFeedbackIDs removeAllObjects];
  provider = self->_provider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SRUIFStateFeedbackManager__cancelFeedbackWithCompletion___block_invoke;
  v8[3] = &unk_279C61A08;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SRUIFStateFeedbackProviding *)provider cancelFeedbackWithCompletion:v8];
}

uint64_t __59__SRUIFStateFeedbackManager__cancelFeedbackWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_playSuccessFeedback
{
  objc_initWeak(&location, self);
  provider = self->_provider;
  responseMode = self->_responseMode;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SRUIFStateFeedbackManager__playSuccessFeedback__block_invoke;
  v5[3] = &unk_279C62668;
  objc_copyWeak(&v6, &location);
  [(SRUIFStateFeedbackProviding *)provider playFeedbackForStateFeedbackType:1 withResponseMode:responseMode completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __49__SRUIFStateFeedbackManager__playSuccessFeedback__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[3])
    {
      if (a2)
      {
        v5 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315138;
          v9 = "[SRUIFStateFeedbackManager _playSuccessFeedback]_block_invoke";
          _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #statefeedback started, should inform delegate", &v8, 0xCu);
        }

        v6 = objc_loadWeakRetained(v4 + 2);
        [v6 stateFeedbackManagerDidStartPlaybackForStateFeedbackType:1];
      }
    }

    else
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[SRUIFStateFeedbackManager _playSuccessFeedback]_block_invoke";
        _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #statefeedback playDelayFeedback completion called, but no state feedback is needed at this time", &v8, 0xCu);
      }
    }
  }
}

- (void)_playDelayFeedback
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
  [(NSMutableSet *)self->_pendingDelayToneFeedbackIDs addObject:v3];
  provider = self->_provider;
  responseMode = self->_responseMode;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SRUIFStateFeedbackManager__playDelayFeedback__block_invoke;
  v7[3] = &unk_279C62690;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [(SRUIFStateFeedbackProviding *)provider playFeedbackForStateFeedbackType:0 withResponseMode:responseMode completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__SRUIFStateFeedbackManager__playDelayFeedback__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  if (([WeakRetained[6] containsObject:*(a1 + 32)] & 1) == 0)
  {
    v10 = *MEMORY[0x277CEF098];
    if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v13 = 136315138;
    v14 = "[SRUIFStateFeedbackManager _playDelayFeedback]_block_invoke";
    v11 = "%s #statefeedback playDelayFeedback completion called, but returning early because the feedback has been cancelled.";
LABEL_11:
    _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
    goto LABEL_17;
  }

  if ((v7[3] & 1) == 0)
  {
    v10 = *MEMORY[0x277CEF098];
    if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v13 = 136315138;
    v14 = "[SRUIFStateFeedbackManager _playDelayFeedback]_block_invoke";
    v11 = "%s #statefeedback playDelayFeedback completion called, but no state feedback is needed at this time";
    goto LABEL_11;
  }

  if (a3)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SRUIFStateFeedbackManager _playDelayFeedback]_block_invoke";
      v9 = "%s #statefeedback audio playback request for state feedback started";
LABEL_15:
      _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, v9, &v13, 0xCu);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (a2 == 1)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SRUIFStateFeedbackManager _playDelayFeedback]_block_invoke";
      v9 = "%s #statefeedback state feedback provider decided to inform immediately";
      goto LABEL_15;
    }

LABEL_16:
    v12 = objc_loadWeakRetained(v7 + 2);
    [v12 stateFeedbackManagerDidStartPlaybackForStateFeedbackType:0];
  }

LABEL_17:
}

- (void)_scheduleDelayToneFor:(double)for
{
  delayToneTimer = self->_delayToneTimer;
  if (delayToneTimer)
  {
    [(AFWatchdogTimer *)delayToneTimer cancelIfNotAlreadyCanceled];
  }

  if (for <= 0.0)
  {
    if (self->_stateFeedbackNeeded)
    {

      [(SRUIFStateFeedbackManager *)self _playDelayFeedback];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x277CEF530]);
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __51__SRUIFStateFeedbackManager__scheduleDelayToneFor___block_invoke;
    v14 = &unk_279C61870;
    objc_copyWeak(&v15, &location);
    v9 = [v6 initWithTimeoutInterval:v7 onQueue:&v11 timeoutHandler:for];
    v10 = self->_delayToneTimer;
    self->_delayToneTimer = v9;

    [(AFWatchdogTimer *)self->_delayToneTimer start:v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __51__SRUIFStateFeedbackManager__scheduleDelayToneFor___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[24];
      v4 = 136315394;
      v5 = "[SRUIFStateFeedbackManager _scheduleDelayToneFor:]_block_invoke";
      v6 = 1024;
      v7 = v3;
      _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #statefeedback delay tone timer fired, isWaitingForDelayTone: %d", &v4, 0x12u);
    }

    if (WeakRetained[24] == 1)
    {
      [WeakRetained _playDelayFeedback];
    }
  }
}

- (void)nowPlayingObserver:(id)observer playbackStateDidChangeFrom:(int64_t)from to:(int64_t)to lastPlayingDate:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  dateCopy = date;
  if (self->_nowPlayingState != to)
  {
    v12 = MEMORY[0x277CEF098];
    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = AFMediaPlaybackStateGetName();
      v16 = AFMediaPlaybackStateGetName();
      *buf = 136315650;
      v26 = "[SRUIFStateFeedbackManager nowPlayingObserver:playbackStateDidChangeFrom:to:lastPlayingDate:]";
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_26951F000, v14, OS_LOG_TYPE_DEFAULT, "%s #statefeedback: Media playback state changed from: %@ to: %@", buf, 0x20u);
    }

    self->_nowPlayingState = to;
    if ((from == 4 || from == 2) && to == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v19 = objc_opt_respondsToSelector();

      if ((v19 & 1) == 0 || (v20 = objc_loadWeakRetained(&self->_delegate), v21 = [v20 stateFeedbackManagerShouldCancelOnMediaResume], v20, v21))
      {
        v22 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v26 = "[SRUIFStateFeedbackManager nowPlayingObserver:playbackStateDidChangeFrom:to:lastPlayingDate:]";
          _os_log_impl(&dword_26951F000, v22, OS_LOG_TYPE_DEFAULT, "%s #statefeedback: In process of resuming media, cancel feedback", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __94__SRUIFStateFeedbackManager_nowPlayingObserver_playbackStateDidChangeFrom_to_lastPlayingDate___block_invoke;
        block[3] = &unk_279C61870;
        objc_copyWeak(&v24, buf);
        dispatch_async(MEMORY[0x277D85CD0], block);
        objc_destroyWeak(&v24);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __94__SRUIFStateFeedbackManager_nowPlayingObserver_playbackStateDidChangeFrom_to_lastPlayingDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancelFeedback];
    WeakRetained = v2;
  }
}

@end