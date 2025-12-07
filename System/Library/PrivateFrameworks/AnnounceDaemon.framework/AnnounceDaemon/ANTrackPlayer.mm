@interface ANTrackPlayer
- (ANTrackPlayer)initWithOptions:(unint64_t)options endpointUUID:(id)d;
- (ANTrackPlayerDelegate)delegate;
- (BOOL)_add:(id)_add announcementID:(id)d trackType:(int64_t)type;
- (BOOL)_addURL:(id)l announcementID:(id)d trackType:(int64_t)type;
- (BOOL)_insertAudioBetween;
- (BOOL)add:(id)add announcementID:(id)d;
- (NSString)activelyPlayingAnnouncementID;
- (OS_dispatch_queue)delegateQueue;
- (id)_playerInfoForAVPlayerItem:(id)item;
- (id)_stringForPlayerItemStatus:(int64_t)status;
- (id)_stringForPlayerStatus:(int64_t)status;
- (id)_stringForTimeControlStatus:(int64_t)status;
- (id)prepareToPlay;
- (int)numberActiveTracks;
- (void)_addObserverForPlayer:(id)player;
- (void)_callDelegateWithBlock:(id)block;
- (void)_configureAudioSession;
- (void)_deregisterForNotificationsWithAudioSession:(id)session;
- (void)_handleInterruptionEndedAndShouldResume:(BOOL)resume;
- (void)_handleReadyToPlayWithCompletionHandler:(id)handler;
- (void)_playWithCompletionHandler:(id)handler;
- (void)_registerForNotificationsWithAudioSession:(id)session;
- (void)_removeItemObserverForPlayer:(id)player;
- (void)_removeObserverForPlayer:(id)player;
- (void)_resumePlaybackAfterInterruptionAtTimeInterval:(double)interval;
- (void)_stopAndUpdatePlaybackState:(unint64_t)state;
- (void)_stopPlaybackAndFailWithItem:(id)item error:(id)error;
- (void)audioSessionInterruptionHandler:(id)handler;
- (void)audioSessionMediaServicesLostHandler:(id)handler;
- (void)audioSessionMediaServicesResetHandler:(id)handler;
- (void)dealloc;
- (void)end;
- (void)nextInternalSync;
- (void)nextWithCompletionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playWithCompletionHandler:(id)handler;
- (void)playerItemPlayedToEndHandler:(id)handler;
- (void)playerRateChangedHandler:(id)handler;
- (void)previousInternalSync;
- (void)previousWithCompletionHandler:(id)handler;
- (void)setPlaybackState:(unint64_t)state;
- (void)stopInternalSync;
- (void)stopWithCompletionHandler:(id)handler;
@end

@implementation ANTrackPlayer

- (ANTrackPlayer)initWithOptions:(unint64_t)options endpointUUID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v31.receiver = self;
  v31.super_class = ANTrackPlayer;
  v8 = [(ANTrackPlayer *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mainQueue, MEMORY[0x277D85CD0]);
    v10 = objc_opt_new();
    playerItems = v9->_playerItems;
    v9->_playerItems = v10;

    v9->_silenceBetweenEachTrack = 0.1;
    v9->_previousSkipGoesToPreviousTrackDelta = 3.0;
    v9->_options = options;
    v9->_playbackState = 3;
    v9->_readyToPlay = 0;
    v12 = objc_alloc_init(MEMORY[0x277CE65F8]);
    queuePlayer = v9->_queuePlayer;
    v9->_queuePlayer = v12;

    objc_storeStrong(&v9->_endpointUUID, d);
    ANLogBuildCategoryName();
    v14 = ANLogWithCategory();
    log = v9->_log;
    v9->_log = v14;

    v16 = [MEMORY[0x277CEABD8] timerWithLabel:@"AudioInterruption" identifier:dCopy];
    interruptionTimer = v9->_interruptionTimer;
    v9->_interruptionTimer = v16;

    v18 = [MEMORY[0x277CEABD8] timerWithLabel:@"AudioPlayer" identifier:dCopy];
    playerTimer = v9->_playerTimer;
    v9->_playerTimer = v18;

    v9->_someOtherSidekickSessionAudioIsPlaying = 0;
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    audioSession = v9->_audioSession;
    v9->_audioSession = mEMORY[0x277CB83F8];

    v22 = [(ANTrackPlayer *)v9 log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v9->_audioSession;
      *buf = 138412290;
      v33 = v23;
      _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "Using Shared Audio Session for local playback: %@", buf, 0xCu);
    }

    [(ANTrackPlayer *)v9 _configureAudioSession];
    v24 = [ANAudioSessionManager alloc];
    v25 = v9->_audioSession;
    mainQueue = v9->_mainQueue;
    endpointUUID = [(ANTrackPlayer *)v9 endpointUUID];
    v28 = [(ANAudioSessionManager *)v24 initWithAudioSession:v25 queue:mainQueue endpointID:endpointUUID];
    audioSessionManager = v9->_audioSessionManager;
    v9->_audioSessionManager = v28;

    [(AVQueuePlayer *)v9->_queuePlayer setAudioSession:v9->_audioSession];
    [(ANTrackPlayer *)v9 _registerForNotificationsWithAudioSession:v9->_audioSession];
    [(ANTrackPlayer *)v9 _addObserverForPlayer:v9->_queuePlayer];
  }

  return v9;
}

- (void)dealloc
{
  [(ANTrackPlayer *)self _deregisterForNotificationsWithAudioSession:self->_audioSession];
  queuePlayer = [(ANTrackPlayer *)self queuePlayer];
  [(ANTrackPlayer *)self _removeObserverForPlayer:queuePlayer];

  queuePlayer2 = [(ANTrackPlayer *)self queuePlayer];
  [(ANTrackPlayer *)self _removeItemObserverForPlayer:queuePlayer2];

  v5.receiver = self;
  v5.super_class = ANTrackPlayer;
  [(ANTrackPlayer *)&v5 dealloc];
}

- (void)setPlaybackState:(unint64_t)state
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    stateCopy = state;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Setting Playback State to %lu", buf, 0xCu);
  }

  self->_playbackState = state;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__ANTrackPlayer_setPlaybackState___block_invoke;
  v6[3] = &unk_278C87050;
  v6[4] = self;
  v6[5] = state;
  [(ANTrackPlayer *)self _callDelegateWithBlock:v6];
}

void __34__ANTrackPlayer_setPlaybackState___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 activelyPlayingAnnouncementID];
  [v5 trackPlayer:v3 didUpdatePlaybackState:v2 announcementID:v4];
}

- (BOOL)add:(id)add announcementID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  addCopy = add;
  dCopy = d;
  v8 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[ANTrackPlayer add:announcementID:]";
    v13 = 2112;
    v14 = addCopy;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%s: track %@", &v11, 0x16u);
  }

  if ([(ANTrackPlayer *)self _insertAudioBetween])
  {
    v9 = [(ANTrackPlayer *)self _add:addCopy announcementID:dCopy trackType:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_add:(id)_add announcementID:(id)d trackType:(int64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  _addCopy = _add;
  dCopy = d;
  v10 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[ANTrackPlayer _add:announcementID:trackType:]";
    v16 = 2112;
    v17 = _addCopy;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%s: track %@", &v14, 0x16u);
  }

  v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:_addCopy];
  v12 = [(ANTrackPlayer *)self _addURL:v11 announcementID:dCopy trackType:type];

  return v12;
}

- (BOOL)_addURL:(id)l announcementID:(id)d trackType:(int64_t)type
{
  v8 = MEMORY[0x277CE65B0];
  dCopy = d;
  v10 = [v8 playerItemWithURL:l];
  queuePlayer = [(ANTrackPlayer *)self queuePlayer];
  [queuePlayer insertItem:v10 afterItem:0];

  [v10 addObserver:self forKeyPath:@"status" options:1 context:0];
  v12 = [[ANTrackPlayerInfo alloc] initWithPlayerItem:v10 announcementID:dCopy trackType:type];

  playerItems = [(ANTrackPlayer *)self playerItems];
  [playerItems addObject:v12];

  return 1;
}

- (BOOL)_insertAudioBetween
{
  audioFileAtStart = [(ANTrackPlayer *)self audioFileAtStart];
  playerItems = [(ANTrackPlayer *)self playerItems];
  v5 = [playerItems count];

  if (!v5)
  {
    v7 = 1;
    if (audioFileAtStart)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  audioFileTransition = [(ANTrackPlayer *)self audioFileTransition];

  v7 = 2;
  audioFileAtStart = audioFileTransition;
  if (!audioFileTransition)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [(ANTrackPlayer *)self _addURL:audioFileAtStart announcementID:0 trackType:v7];
LABEL_6:

  return v8;
}

- (id)prepareToPlay
{
  audioSessionManager = [(ANTrackPlayer *)self audioSessionManager];
  v6 = 0;
  [audioSessionManager activateAudioSessionWithError:&v6];
  v4 = v6;

  if (!v4)
  {
    [(ANTrackPlayer *)self setReadyToPlay:1];
  }

  return v4;
}

- (void)playWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ANTrackPlayer_playWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86A80;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(mainQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__ANTrackPlayer_playWithCompletionHandler___block_invoke(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained playbackState] == 1 || objc_msgSend(WeakRetained, "playbackState") == 2)
  {
    v3 = [a1[4] log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = [WeakRetained playbackState];
      _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Already playing or interrupted. PlaybackState: %ld", buf, 0xCu);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __43__ANTrackPlayer_playWithCompletionHandler___block_invoke_26;
    v4[3] = &unk_278C86530;
    v4[4] = WeakRetained;
    v5 = a1[5];
    [WeakRetained _playWithCompletionHandler:v4];
  }
}

void __43__ANTrackPlayer_playWithCompletionHandler___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2 == 0;
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setPlaybackState:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)_playWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  if ([(ANTrackPlayer *)self readyToPlay])
  {
    [(ANTrackPlayer *)self _handleReadyToPlayWithCompletionHandler:handlerCopy];
  }

  else
  {
    audioSessionManager = [(ANTrackPlayer *)self audioSessionManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__ANTrackPlayer__playWithCompletionHandler___block_invoke;
    v7[3] = &unk_278C86530;
    v7[4] = self;
    v8 = handlerCopy;
    [audioSessionManager activateAudioSessionWithCompletionHandler:v7];
  }
}

void __44__ANTrackPlayer__playWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__ANTrackPlayer__playWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [v4 setReadyToPlay:1];
    [*(a1 + 32) _handleReadyToPlayWithCompletionHandler:*(a1 + 40)];
  }
}

- (void)_handleReadyToPlayWithCompletionHandler:(id)handler
{
  *&v36[5] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  if ([(ANTrackPlayer *)self readyToPlay])
  {
    queuePlayer = [(ANTrackPlayer *)self queuePlayer];
    error = [queuePlayer error];

    if (!error)
    {
      goto LABEL_8;
    }

    v8 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ANTrackPlayer *)self _handleReadyToPlayWithCompletionHandler:v8];
    }

    queuePlayer2 = [(ANTrackPlayer *)self queuePlayer];
    error2 = [queuePlayer2 error];

    if (error2)
    {
      handlerCopy[2](handlerCopy, error2);
    }

    else
    {
LABEL_8:
      queuePlayer3 = [(ANTrackPlayer *)self queuePlayer];
      status = [queuePlayer3 status];

      queuePlayer4 = [(ANTrackPlayer *)self queuePlayer];
      currentItem = [queuePlayer4 currentItem];
      status2 = [currentItem status];

      v17 = [(ANTrackPlayer *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        queuePlayer5 = [(ANTrackPlayer *)self queuePlayer];
        currentItem2 = [queuePlayer5 currentItem];
        *buf = 138412290;
        *v36 = currentItem2;
        _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "Current Item = %@", buf, 0xCu);
      }

      v20 = [(ANTrackPlayer *)self log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v36[0] = status == 1;
        LOWORD(v36[1]) = 1024;
        *(&v36[1] + 2) = status2 == 1;
        _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_DEFAULT, "QueuePlayerReady = %d, PlayerItemReady = %d", buf, 0xEu);
      }

      if (status == 1 && status2 == 1)
      {
        playerTimer = [(ANTrackPlayer *)self playerTimer];
        [playerTimer cancel];

        [(ANTrackPlayer *)self setPlaybackPending:0];
        [(ANTrackPlayer *)self setHandler:0];
        [(ANTrackPlayer *)self setReadyToPlay:0];
        v22 = [(ANTrackPlayer *)self log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *v36 = "[ANTrackPlayer _handleReadyToPlayWithCompletionHandler:]";
          _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke_31;
        v30[3] = &unk_278C87078;
        objc_copyWeak(&v32, buf);
        v31 = handlerCopy;
        [(ANTrackPlayer *)self playInternalWithCompletionHandler:v30];

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }

      else
      {
        v23 = [(ANTrackPlayer *)self log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23F525000, v23, OS_LOG_TYPE_DEFAULT, "NOT ready to play.", buf, 2u);
        }

        [(ANTrackPlayer *)self setPlaybackPending:1];
        [(ANTrackPlayer *)self setHandler:handlerCopy];
        mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
        v25 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA960]];
        [v25 doubleValue];
        v27 = v26;

        objc_initWeak(buf, self);
        playerTimer2 = [(ANTrackPlayer *)self playerTimer];
        mainQueue2 = [(ANTrackPlayer *)self mainQueue];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke;
        v33[3] = &unk_278C86580;
        objc_copyWeak(&v34, buf);
        [playerTimer2 startWithValue:mainQueue2 queue:v33 handler:v27];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] an_errorWithCode:1018];
    handlerCopy[2](handlerCopy, v11);
  }
}

void __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke_cold_1(WeakRetained);
  }

  [WeakRetained _stopAndUpdatePlaybackState:0];
  [WeakRetained setPlaybackPending:0];
  v3 = [MEMORY[0x277CCA9B8] an_errorWithCode:1018 component:*MEMORY[0x277CEA9A0]];
  v4 = [WeakRetained handler];
  (v4)[2](v4, v3);

  [WeakRetained setHandler:0];
}

void __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke_31(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained audioSessionManager];
    [v4 deactivateAudioSessionAfterDelay:0.0];
  }

  (*(*(a1 + 32) + 16))();
}

- (NSString)activelyPlayingAnnouncementID
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  playerItems = [(ANTrackPlayer *)self playerItems];
  lastObject = [playerItems lastObject];
  announcementID = [lastObject announcementID];

  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke;
  block[3] = &unk_278C870C0;
  v11 = v5;
  v12 = &v13;
  block[4] = self;
  v7 = v5;
  dispatch_async(mainQueue, block);

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playerItems];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_20];

  v4 = [*(a1 + 32) log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke_cold_1();
    }

    v6 = [v3 announcementID];
    v7 = *(*(a1 + 48) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Did not find currently playing info. Using last item.", v8, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

BOOL __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 completed] & 1) == 0 && objc_msgSend(v2, "trackType") == 0;

  return v3;
}

- (void)stopWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[ANTrackPlayer stopWithCompletionHandler:]";
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  mainQueue = [(ANTrackPlayer *)self mainQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__ANTrackPlayer_stopWithCompletionHandler___block_invoke;
  v8[3] = &unk_278C86840;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(mainQueue, v8);
}

uint64_t __43__ANTrackPlayer_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopAndUpdatePlaybackState:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_stopAndUpdatePlaybackState:(unint64_t)state
{
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  interruptionTimer = [(ANTrackPlayer *)self interruptionTimer];
  [interruptionTimer cancel];

  playerTimer = [(ANTrackPlayer *)self playerTimer];
  [playerTimer cancel];

  [(ANTrackPlayer *)self stopInternalSync];

  [(ANTrackPlayer *)self setPlaybackState:state];
}

- (void)end
{
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__ANTrackPlayer_end__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(mainQueue, block);
}

void __20__ANTrackPlayer_end__block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (([*(a1 + 32) options] & 0x200) == 0)
  {
    v3 = [MEMORY[0x277CEAB80] sharedInstance];
    v4 = [v3 numberForDefault:*MEMORY[0x277CEA888]];
    [v4 doubleValue];
    v2 = v5;
  }

  v6 = [*(a1 + 32) audioSessionManager];
  [v6 deactivateAudioSessionAfterDelay:v2];
}

- (void)nextWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ANTrackPlayer_nextWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86A80;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(mainQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__ANTrackPlayer_nextWithCompletionHandler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ANTrackPlayer nextWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  if ([WeakRetained playbackState] == 1)
  {
    [WeakRetained stopInternalSync];
    [WeakRetained nextInternalSync];
    [WeakRetained _playWithCompletionHandler:*(a1 + 40)];
  }
}

- (void)previousWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ANTrackPlayer_previousWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86A80;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(mainQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__ANTrackPlayer_previousWithCompletionHandler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ANTrackPlayer previousWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  if ([WeakRetained playbackState] == 1)
  {
    [WeakRetained stopInternalSync];
    [WeakRetained previousInternalSync];
    [WeakRetained _playWithCompletionHandler:*(a1 + 40)];
  }
}

- (int)numberActiveTracks
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ANTrackPlayer_numberActiveTracks__block_invoke;
  block[3] = &unk_278C870C0;
  v8 = v3;
  v9 = &v10;
  block[4] = self;
  v5 = v3;
  dispatch_async(mainQueue, block);

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LODWORD(mainQueue) = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return mainQueue;
}

void __35__ANTrackPlayer_numberActiveTracks__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__ANTrackPlayer_numberActiveTracks__block_invoke_cold_1(v2);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) playerItems];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 completed] & 1) == 0 && !objc_msgSend(v8, "trackType"))
        {
          ++*(*(*(a1 + 48) + 8) + 24);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_registerForNotificationsWithAudioSession:(id)session
{
  v4 = MEMORY[0x277CCAB98];
  sessionCopy = session;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel_audioSessionInterruptionHandler_ name:*MEMORY[0x277CB8068] object:sessionCopy];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_audioSessionMediaServicesLostHandler_ name:*MEMORY[0x277CB8098] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_audioSessionMediaServicesResetHandler_ name:*MEMORY[0x277CB80A0] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_playerItemPlayedToEndHandler_ name:*MEMORY[0x277CE60C0] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_playerItemPlayedToEndHandler_ name:*MEMORY[0x277CE60D0] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_playerRateChangedHandler_ name:*MEMORY[0x277CE6158] object:0];
}

- (void)_deregisterForNotificationsWithAudioSession:(id)session
{
  v4 = MEMORY[0x277CCAB98];
  sessionCopy = session;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8068] object:sessionCopy];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CB8098] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277CB80A0] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x277CE60C0] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 removeObserver:self name:*MEMORY[0x277CE60D0] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 removeObserver:self name:*MEMORY[0x277CE6158] object:0];
}

- (void)_configureAudioSession
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_callDelegateWithBlock:(id)block
{
  blockCopy = block;
  delegateQueue = [(ANTrackPlayer *)self delegateQueue];

  if (delegateQueue)
  {
    delegateQueue2 = [(ANTrackPlayer *)self delegateQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__ANTrackPlayer__callDelegateWithBlock___block_invoke;
    v8[3] = &unk_278C86C60;
    v8[4] = self;
    v9 = blockCopy;
    dispatch_async(delegateQueue2, v8);
  }

  else
  {
    delegate = [(ANTrackPlayer *)self delegate];
    (*(blockCopy + 2))(blockCopy, delegate);
  }
}

void __40__ANTrackPlayer__callDelegateWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) delegate];
  (*(v1 + 16))(v1, v2);
}

- (id)_playerInfoForAVPlayerItem:(id)item
{
  itemCopy = item;
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  if (itemCopy)
  {
    playerItems = [(ANTrackPlayer *)self playerItems];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__ANTrackPlayer__playerInfoForAVPlayerItem___block_invoke;
    v9[3] = &unk_278C870E8;
    v10 = itemCopy;
    v7 = [playerItems na_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __44__ANTrackPlayer__playerInfoForAVPlayerItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 playerItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_addObserverForPlayer:(id)player
{
  playerCopy = player;
  [playerCopy addObserver:self forKeyPath:@"status" options:1 context:0];
  [playerCopy addObserver:self forKeyPath:@"rate" options:1 context:0];
  [playerCopy addObserver:self forKeyPath:@"timeControlStatus" options:1 context:0];
}

- (void)_removeObserverForPlayer:(id)player
{
  playerCopy = player;
  [playerCopy removeObserver:self forKeyPath:@"status"];
  [playerCopy removeObserver:self forKeyPath:@"rate"];
  [playerCopy removeObserver:self forKeyPath:@"timeControlStatus"];
}

- (void)_removeItemObserverForPlayer:(id)player
{
  v14 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [playerCopy items];
  v6 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v9 + 1) + 8 * i) removeObserver:self forKeyPath:@"status" context:0];
      }

      v6 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_stringForTimeControlStatus:(int64_t)status
{
  if (status > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278C871A8[status];
  }
}

- (id)_stringForPlayerStatus:(int64_t)status
{
  v3 = @"Unknown";
  if (status == 2)
  {
    v3 = @"Failed";
  }

  if (status == 1)
  {
    return @"Ready to Play";
  }

  else
  {
    return v3;
  }
}

- (id)_stringForPlayerItemStatus:(int64_t)status
{
  v3 = @"Unknown";
  if (status == 2)
  {
    v3 = @"Failed";
  }

  if (status == 1)
  {
    return @"Ready to Play";
  }

  else
  {
    return v3;
  }
}

- (void)_stopPlaybackAndFailWithItem:(id)item error:(id)error
{
  itemCopy = item;
  errorCopy = error;
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  [(ANTrackPlayer *)self _stopAndUpdatePlaybackState:0];
  if (itemCopy)
  {
    v9 = [(ANTrackPlayer *)self _playerInfoForAVPlayerItem:itemCopy];
    v10 = v9;
    if (v9)
    {
      trackType = [v9 trackType];
      announcementID = [v10 announcementID];
    }

    else
    {
      announcementID = 0;
      trackType = -1;
    }
  }

  else
  {
    announcementID = 0;
    trackType = -1;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__ANTrackPlayer__stopPlaybackAndFailWithItem_error___block_invoke;
  v15[3] = &unk_278C87110;
  v15[4] = self;
  v16 = announcementID;
  v17 = errorCopy;
  v18 = trackType;
  v13 = errorCopy;
  v14 = announcementID;
  [(ANTrackPlayer *)self _callDelegateWithBlock:v15];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v15[3] = &unk_278C86B70;
  objc_copyWeak(&v18, &location);
  v16 = objectCopy;
  v17 = pathCopy;
  v13 = pathCopy;
  v14 = objectCopy;
  dispatch_async(mainQueue, v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained queuePlayer];
  [v3 rate];
  v5 = v4;

  v6 = [WeakRetained queuePlayer];
  *&v7 = COERCE_DOUBLE([v6 timeControlStatus]);

  v8 = [WeakRetained _stringForTimeControlStatus:v7];
  v9 = [WeakRetained queuePlayer];
  v10 = [v9 currentItem];

  v11 = [WeakRetained queuePlayer];
  v12 = [v11 reasonForWaitingToPlay];

  v13 = [WeakRetained queuePlayer];
  v14 = [WeakRetained _stringForPlayerStatus:{objc_msgSend(v13, "status")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [WeakRetained log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v14;
      v17 = v12;
      v18 = v10;
      v19 = v8;
      v20 = a1[5];
      v44 = [WeakRetained queuePlayer];
      v21 = [v44 error];
      *buf = 138414082;
      v48 = v20;
      v8 = v19;
      v10 = v18;
      v12 = v17;
      v14 = v16;
      v49 = 2048;
      v50 = v5;
      v51 = 2048;
      v52 = *&v7;
      v53 = 2112;
      v54 = v8;
      v55 = 2112;
      v56 = v10;
      v57 = 2112;
      v58 = v12;
      v59 = 2112;
      v60 = v16;
      v61 = 2112;
      v62 = v21;
      _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "|> KeyPath (%@) changed                    \n    Queue Player Rate = %f                    \n    Time Control Status = (%ld) %@                    \n    Current Item = %@                    \n    Reason For Waiting To Play = %@                    \n    Player Status = %@                    \n    Error = %@", buf, 0x52u);
    }

    if ([a1[5] isEqualToString:@"status"])
    {
      v22 = a1[4];
      if (!v22)
      {
        goto LABEL_37;
      }

      v23 = [WeakRetained queuePlayer];

      if (v22 != v23)
      {
        goto LABEL_37;
      }

      v24 = [v22 status];
      if (v24 != 2)
      {
        if (v24 == 1)
        {
          v25 = [WeakRetained log];
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          *buf = 136315138;
          v48 = "[ANTrackPlayer observeValueForKeyPath:ofObject:change:context:]_block_invoke";
          v26 = "%s: Queue player is ready to play.";
          goto LABEL_20;
        }

        goto LABEL_37;
      }

      v39 = [WeakRetained log];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2();
      }

      v40 = [v22 error];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = [MEMORY[0x277CCA9B8] an_errorWithCode:1055 component:*MEMORY[0x277CEA9A0]];
      }

      v34 = v42;

      v43 = [v22 currentItem];
      [WeakRetained _stopPlaybackAndFailWithItem:v43 error:v34];

      goto LABEL_36;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1[5] isEqualToString:@"status"])
      {
        v27 = a1[4];
        if (v27)
        {
          v22 = v27;
          v28 = [WeakRetained log];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [WeakRetained _stringForPlayerItemStatus:{objc_msgSend(v22, "status")}];
            [v22 asset];
            v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            objc_msgSend_duration(v22);
            objc_msgSend_duration(v22);
            v31 = [v22 error];
            *buf = 138413058;
            v48 = v29;
            v49 = 2112;
            v50 = v30;
            v51 = 2048;
            v52 = v46 / v45;
            v53 = 2112;
            v54 = v31;
            _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "|> AVPlayerItem Status = %@                        \n    Asset = %@                        \n    Duration (sec) = %f                        \n    Error = %@", buf, 0x2Au);
          }

          v32 = [v22 status];
          if (v32 != 2)
          {
            if (v32 == 1)
            {
              v25 = [WeakRetained log];
              if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              *buf = 136315138;
              v48 = "[ANTrackPlayer observeValueForKeyPath:ofObject:change:context:]_block_invoke";
              v26 = "%s: Player Item is ready to play.";
LABEL_20:
              _os_log_impl(&dword_23F525000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
LABEL_21:

              if (![WeakRetained playbackPending])
              {
                goto LABEL_37;
              }

              v33 = [WeakRetained handler];

              if (!v33)
              {
                goto LABEL_37;
              }

              v34 = [WeakRetained handler];
              [WeakRetained _playWithCompletionHandler:v34];
              goto LABEL_36;
            }

LABEL_37:

            goto LABEL_38;
          }

          v35 = [WeakRetained log];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1();
          }

          v36 = [v22 error];
          v37 = v36;
          if (v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = [MEMORY[0x277CCA9B8] an_errorWithCode:1053 component:*MEMORY[0x277CEA9A0]];
          }

          v34 = v38;

          [WeakRetained _stopPlaybackAndFailWithItem:v22 error:v34];
LABEL_36:

          goto LABEL_37;
        }
      }
    }
  }

LABEL_38:
}

- (void)stopInternalSync
{
  v8 = *MEMORY[0x277D85DE8];
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  v4 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ANTrackPlayer stopInternalSync]";
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  queuePlayer = [(ANTrackPlayer *)self queuePlayer];
  [queuePlayer pause];

  [(ANTrackPlayer *)self setPlaybackPending:0];
}

- (void)nextInternalSync
{
  v14 = *MEMORY[0x277D85DE8];
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  v4 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[ANTrackPlayer nextInternalSync]";
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  queuePlayer = [(ANTrackPlayer *)self queuePlayer];
  currentItem = [queuePlayer currentItem];
  v7 = [(ANTrackPlayer *)self _playerInfoForAVPlayerItem:currentItem];

  if (v7)
  {
    [v7 setCompleted:1];
  }

  queuePlayer2 = [(ANTrackPlayer *)self queuePlayer];
  [queuePlayer2 advanceToNextItem];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__ANTrackPlayer_nextInternalSync__block_invoke;
  v10[3] = &unk_278C87138;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(ANTrackPlayer *)self _callDelegateWithBlock:v10];
}

void __33__ANTrackPlayer_nextInternalSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 trackType];
  v7 = [*(a1 + 40) announcementID];
  [v5 trackPlayer:v3 didFinishPlayingTrackType:v6 announcementID:v7 error:0];
}

- (void)previousInternalSync
{
  v47 = *MEMORY[0x277D85DE8];
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  selfCopy = self;
  v4 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136315138;
    *(&buf.value + 4) = "[ANTrackPlayer previousInternalSync]";
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  playerItems = [(ANTrackPlayer *)self playerItems];
  reverseObjectEnumerator = [playerItems reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v8 = [allObjects na_firstObjectPassingTest:&__block_literal_global_63];
  queuePlayer = [(ANTrackPlayer *)self queuePlayer];
  v10 = queuePlayer;
  if (queuePlayer)
  {
    objc_msgSend_currentTime(queuePlayer);
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  Seconds = CMTimeGetSeconds(&buf);

  [(ANTrackPlayer *)self previousSkipGoesToPreviousTrackDelta];
  if (Seconds <= v12 && v8)
  {
    v13 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = "[ANTrackPlayer previousInternalSync]";
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%s: Going back to previous announcement.", &buf, 0xCu);
    }

    v36 = allObjects;

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __37__ANTrackPlayer_previousInternalSync__block_invoke_67;
    v42[3] = &unk_278C87138;
    v42[4] = self;
    v35 = v8;
    v14 = v8;
    v43 = v14;
    [(ANTrackPlayer *)self _callDelegateWithBlock:v42];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    playerItems2 = [(ANTrackPlayer *)self playerItems];
    v17 = [playerItems2 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(playerItems2);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          if (v21 == v14 || [v15 count])
          {
            [v21 setCompleted:0];
            v22 = MEMORY[0x277CE65B0];
            playerItem = [v21 playerItem];
            asset = [playerItem asset];
            v25 = [v22 playerItemWithAsset:asset];

            [v21 setPlayerItem:v25];
            [v15 addObject:v25];
            [v25 addObserver:selfCopy forKeyPath:@"status" options:1 context:0];
          }
        }

        v18 = [playerItems2 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v18);
    }

    queuePlayer2 = [(ANTrackPlayer *)selfCopy queuePlayer];
    [(ANTrackPlayer *)selfCopy _removeItemObserverForPlayer:queuePlayer2];

    queuePlayer3 = [(ANTrackPlayer *)selfCopy queuePlayer];
    [queuePlayer3 removeAllItems];

    queuePlayer4 = [(ANTrackPlayer *)selfCopy queuePlayer];
    [(ANTrackPlayer *)selfCopy _removeObserverForPlayer:queuePlayer4];

    v29 = [objc_alloc(MEMORY[0x277CE65F8]) initWithItems:v15];
    [(ANTrackPlayer *)selfCopy setQueuePlayer:v29];
    queuePlayer5 = [(ANTrackPlayer *)selfCopy queuePlayer];
    [(ANTrackPlayer *)selfCopy _addObserverForPlayer:queuePlayer5];

    audioSession = [(ANTrackPlayer *)selfCopy audioSession];
    queuePlayer6 = [(ANTrackPlayer *)selfCopy queuePlayer];
    [queuePlayer6 setAudioSession:audioSession];

    queuePlayer7 = v43;
    v8 = v35;
    allObjects = v36;
  }

  else
  {
    queuePlayer7 = [(ANTrackPlayer *)self queuePlayer];
    currentItem = [queuePlayer7 currentItem];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __37__ANTrackPlayer_previousInternalSync__block_invoke_2;
    v44[3] = &unk_278C86A38;
    v44[4] = self;
    buf = **&MEMORY[0x277CC08F0];
    [currentItem seekToTime:&buf completionHandler:v44];
  }
}

uint64_t __37__ANTrackPlayer_previousInternalSync__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 trackType])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 completed];
  }

  return v3;
}

void __37__ANTrackPlayer_previousInternalSync__block_invoke_2(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "unsuccessful";
    if (a2)
    {
      v4 = "successful";
    }

    v5 = 136315394;
    v6 = "[ANTrackPlayer previousInternalSync]_block_invoke_2";
    v7 = 2080;
    v8 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%s: Attempt to restart announcement was %s.", &v5, 0x16u);
  }
}

void __37__ANTrackPlayer_previousInternalSync__block_invoke_67(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 trackType];
  v7 = [*(a1 + 40) announcementID];
  [v5 trackPlayer:v3 didFinishPlayingTrackType:v6 announcementID:v7 error:0];
}

- (void)_resumePlaybackAfterInterruptionAtTimeInterval:(double)interval
{
  prepareToPlay = [(ANTrackPlayer *)self prepareToPlay];
  [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
  [(ANTrackPlayer *)self handleInterruptionDelay:v6 - interval];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke;
  v7[3] = &unk_278C86700;
  v7[4] = self;
  [(ANTrackPlayer *)self _playWithCompletionHandler:v7];
}

void __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke_cold_1();
    }

    [*(a1 + 32) setPlaybackState:0];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke_69;
    v7[3] = &unk_278C87138;
    v7[4] = v6;
    v8 = v3;
    [v6 _callDelegateWithBlock:v7];
  }

  else
  {
    [v4 setPlaybackState:1];
  }
}

- (void)audioSessionMediaServicesLostHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ANTrackPlayer audioSessionMediaServicesLostHandler:];
  }

  if ([(ANTrackPlayer *)self playbackState])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__ANTrackPlayer_audioSessionMediaServicesLostHandler___block_invoke;
    v6[3] = &unk_278C86910;
    v6[4] = self;
    [(ANTrackPlayer *)self stopWithCompletionHandler:v6];
  }
}

void __54__ANTrackPlayer_audioSessionMediaServicesLostHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] an_errorWithCode:1024 component:*MEMORY[0x277CEA9A0]];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ANTrackPlayer_audioSessionMediaServicesLostHandler___block_invoke_2;
  v5[3] = &unk_278C87138;
  v5[4] = v3;
  v6 = v2;
  v4 = v2;
  [v3 _callDelegateWithBlock:v5];
}

- (void)audioSessionMediaServicesResetHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ANTrackPlayer audioSessionMediaServicesResetHandler:];
  }

  if ([(ANTrackPlayer *)self playbackState])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__ANTrackPlayer_audioSessionMediaServicesResetHandler___block_invoke;
    v6[3] = &unk_278C86910;
    v6[4] = self;
    [(ANTrackPlayer *)self stopWithCompletionHandler:v6];
  }

  else
  {
    [(ANTrackPlayer *)self _configureAudioSession];
  }
}

void __55__ANTrackPlayer_audioSessionMediaServicesResetHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] an_errorWithCode:1025 component:*MEMORY[0x277CEA9A0]];
  v3 = *(a1 + 32);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __55__ANTrackPlayer_audioSessionMediaServicesResetHandler___block_invoke_2;
  v8 = &unk_278C87138;
  v9 = v3;
  v10 = v2;
  v4 = v2;
  [v3 _callDelegateWithBlock:&v5];
  [*(a1 + 32) _configureAudioSession];
}

- (void)_handleInterruptionEndedAndShouldResume:(BOOL)resume
{
  resumeCopy = resume;
  v37 = *MEMORY[0x277D85DE8];
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  interruptionTimer = [(ANTrackPlayer *)self interruptionTimer];
  [interruptionTimer cancel];

  [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
  v8 = v7;
  [(ANTrackPlayer *)self interruptionStart];
  v10 = v9;
  v11 = [(ANTrackPlayer *)self log];
  v12 = v8 - v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    *buf = 138412290;
    v36 = v13;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Seconds elapsed since interruption began: %@", buf, 0xCu);
  }

  if ([(ANTrackPlayer *)self playbackState]!= 2)
  {
    v14 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[ANTrackPlayer _handleInterruptionEndedAndShouldResume:]";
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%s: Interruption ended but we are not interrupted, don't do anything", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (([(ANTrackPlayer *)self options]& 1) == 0)
  {
    v14 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[ANTrackPlayer _handleInterruptionEndedAndShouldResume:]";
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%s: Option to resume after interruption ended not set, don't do anything", buf, 0xCu);
    }

LABEL_10:

    return;
  }

  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v16 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA948]];
  [v16 doubleValue];
  v18 = v17;

  v19 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = *&v18;
    _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "Resume Timeout After Audio Interruption End: %f", buf, 0xCu);
  }

  if (resumeCopy && v12 < v18)
  {
    mEMORY[0x277CEAB80]2 = [MEMORY[0x277CEAB80] sharedInstance];
    v21 = [mEMORY[0x277CEAB80]2 numberForDefault:*MEMORY[0x277CEA890]];
    [v21 doubleValue];
    v23 = v22;

    objc_initWeak(&location, self);
    v24 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = v23;
      _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "Resume Audio Session Delay %f seconds", buf, 0xCu);
    }

    v25 = dispatch_time(0, (*&v23 * 1000000000.0));
    mainQueue2 = [(ANTrackPlayer *)self mainQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ANTrackPlayer__handleInterruptionEndedAndShouldResume___block_invoke;
    block[3] = &unk_278C87160;
    block[4] = self;
    v33[1] = v23;
    objc_copyWeak(v33, &location);
    dispatch_after(v25, mainQueue2, block);

    objc_destroyWeak(v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v27 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v27, OS_LOG_TYPE_DEFAULT, "Will not resume playback after Audio Session Interruption ended", buf, 2u);
    }

    [(ANTrackPlayer *)self _stopAndUpdatePlaybackState:0];
    v28 = [MEMORY[0x277CCA9B8] an_errorWithCode:1027 component:*MEMORY[0x277CEA9A0]];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __57__ANTrackPlayer__handleInterruptionEndedAndShouldResume___block_invoke_71;
    v30[3] = &unk_278C87138;
    v30[4] = self;
    v31 = v28;
    v29 = v28;
    [(ANTrackPlayer *)self _callDelegateWithBlock:v30];
  }
}

void __57__ANTrackPlayer__handleInterruptionEndedAndShouldResume___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) playbackState];
  WeakRetained = [*(a1 + 32) log];
  v4 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (v2 == 2)
  {
    if (v4)
    {
      v5 = *(a1 + 48);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_23F525000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Still interrupted. Resuming playback after delaying for %f seconds", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [*(a1 + 32) interruptionStart];
    [WeakRetained _resumePlaybackAfterInterruptionAtTimeInterval:?];
  }

  else if (v4)
  {
    v6 = *(a1 + 48);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_23F525000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Playback state is not interrupted. Will not resume playback after delaying for %f seconds", &v7, 0xCu);
  }
}

- (void)audioSessionInterruptionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  dispatch_assert_queue_V2(mainQueue);

  object = [handlerCopy object];
  if (object && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    audioSession = [(ANTrackPlayer *)self audioSession];
    v8 = object == audioSession;

    v9 = [(ANTrackPlayer *)self log];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412290;
        v34 = object;
        _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Received Audio Session Interruption Notification for Audio Session %@", buf, 0xCu);
      }

      userInfo = [handlerCopy userInfo];
      v9 = userInfo;
      if (userInfo)
      {
        v13 = [userInfo valueForKey:*MEMORY[0x277CB8080]];
        v14 = v13;
        if (v13)
        {
          unsignedIntegerValue = [v13 unsignedIntegerValue];
          if (unsignedIntegerValue)
          {
            if (unsignedIntegerValue == 1)
            {
              v16 = [(ANTrackPlayer *)self log];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "Audio Session Interruption: Began", buf, 2u);
              }

              if ([(ANTrackPlayer *)self playbackState]== 1)
              {
                [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
                [(ANTrackPlayer *)self setInterruptionStart:?];
                [(ANTrackPlayer *)self stopInternalSync];
                if (([(ANTrackPlayer *)self options]& 1) != 0)
                {
                  [(ANTrackPlayer *)self setPlaybackState:2];
                  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
                  v24 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA948]];
                  [v24 doubleValue];
                  v26 = v25;

                  objc_initWeak(buf, self);
                  interruptionTimer = [(ANTrackPlayer *)self interruptionTimer];
                  mainQueue2 = [(ANTrackPlayer *)self mainQueue];
                  v29[0] = MEMORY[0x277D85DD0];
                  v29[1] = 3221225472;
                  v29[2] = __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke_2;
                  v29[3] = &unk_278C868C0;
                  objc_copyWeak(&v30, buf);
                  v29[4] = self;
                  [interruptionTimer startWithValue:mainQueue2 queue:v29 handler:v26];

                  objc_destroyWeak(&v30);
                  objc_destroyWeak(buf);
                }

                else
                {
                  [(ANTrackPlayer *)self setPlaybackState:0];
                  v17 = [MEMORY[0x277CCA9B8] an_errorWithCode:1027 component:*MEMORY[0x277CEA9A0]];
                  v31[0] = MEMORY[0x277D85DD0];
                  v31[1] = 3221225472;
                  v31[2] = __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke;
                  v31[3] = &unk_278C87138;
                  v31[4] = self;
                  v32 = v17;
                  v18 = v17;
                  [(ANTrackPlayer *)self _callDelegateWithBlock:v31];
                }
              }

              else
              {
                v22 = [(ANTrackPlayer *)self log];
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v34 = "[ANTrackPlayer audioSessionInterruptionHandler:]";
                  _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "%s: Interruption while not playing, don't do anything", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v19 = [v9 valueForKey:*MEMORY[0x277CB8070]];
            v20 = [(ANTrackPlayer *)self log];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v34 = v19;
              _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_DEFAULT, "Audio Session Interruption: Ended. Should Resume: %@", buf, 0xCu);
            }

            if (v19)
            {
              v21 = [v19 unsignedIntegerValue] == 1;
            }

            else
            {
              v21 = 0;
            }

            [(ANTrackPlayer *)self _handleInterruptionEndedAndShouldResume:v21];
          }
        }
      }
    }

    else if (v10)
    {
      audioSession2 = [(ANTrackPlayer *)self audioSession];
      *buf = 138412546;
      v34 = audioSession2;
      v35 = 2112;
      v36 = object;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Received Audio Session Interruption Notification for different Audio Session. Expected: %@, Actual: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ANTrackPlayer audioSessionInterruptionHandler:];
    }
  }
}

void __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke_2_cold_1(a1);
  }

  [WeakRetained _stopAndUpdatePlaybackState:0];
}

- (void)playerRateChangedHandler:(id)handler
{
  handlerCopy = handler;
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ANTrackPlayer_playerRateChangedHandler___block_invoke;
  v7[3] = &unk_278C86378;
  v8 = handlerCopy;
  selfCopy = self;
  v6 = handlerCopy;
  dispatch_async(mainQueue, v7);
}

void __42__ANTrackPlayer_playerRateChangedHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  if (v2)
  {
    v3 = [*(a1 + 40) queuePlayer];

    if (v2 == v3)
    {
      v4 = [*(a1 + 40) log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "|> Rate Changed Notification: %@", &v15, 0xCu);
      }

      v6 = [*(a1 + 40) log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        [v2 rate];
        v15 = 134217984;
        v16 = v7;
        _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "|> Player Rate: %f", &v15, 0xCu);
      }

      v8 = [*(a1 + 32) userInfo];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE6160]];

      if (v9 && [v9 isEqualToString:*MEMORY[0x277CE6168]])
      {
        v10 = [*(a1 + 40) log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __42__ANTrackPlayer_playerRateChangedHandler___block_invoke_cold_1();
        }

        v11 = [MEMORY[0x277CCA9B8] an_errorWithCode:1018 component:*MEMORY[0x277CEA9A0]];
        v12 = *(a1 + 40);
        v13 = [v12 queuePlayer];
        v14 = [v13 currentItem];
        [v12 _stopPlaybackAndFailWithItem:v14 error:v11];
      }
    }
  }
}

- (void)playerItemPlayedToEndHandler:(id)handler
{
  handlerCopy = handler;
  mainQueue = [(ANTrackPlayer *)self mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke;
  v7[3] = &unk_278C86378;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(mainQueue, v7);
}

void __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Player item played to end notification: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 _playerInfoForAVPlayerItem:v7];
    v10 = [*v2 log];
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*v2 queuePlayer];
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Marking player item as completed for player %@: %@", buf, 0x16u);
      }

      [v9 setCompleted:1];
      v13 = [*(a1 + 40) name];
      v14 = [v13 isEqualToString:*MEMORY[0x277CE60D0]];

      if (v14)
      {
        v15 = [*(a1 + 40) userInfo];
        v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CE60C8]];

        if (!v16)
        {
          v16 = [MEMORY[0x277CCA9B8] an_errorWithCode:5004 component:*MEMORY[0x277CEA9A0]];
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = *v2;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_72;
      v18[3] = &unk_278C87188;
      v18[4] = v17;
      v19 = v9;
      v20 = v16;
      v11 = v16;
      [v17 _callDelegateWithBlock:v18];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_cold_1(v2);
    }
  }

  else
  {
    v9 = [v8 log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_cold_2();
    }
  }
}

void __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_72(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 trackType];
  v7 = [*(a1 + 40) announcementID];
  [v5 trackPlayer:v3 didFinishPlayingTrackType:v6 announcementID:v7 error:*(a1 + 48)];
}

- (ANTrackPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_dispatch_queue)delegateQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateQueue);

  return WeakRetained;
}

void __44__ANTrackPlayer__playWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleReadyToPlayWithCompletionHandler:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 queuePlayer];
  v4 = [v3 error];
  v5 = 136315394;
  v6 = "[ANTrackPlayer _handleReadyToPlayWithCompletionHandler:]";
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "%s: Queue player error: %@", &v5, 0x16u);
}

void __57__ANTrackPlayer__handleReadyToPlayWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 playerTimer];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __46__ANTrackPlayer_activelyPlayingAnnouncementID__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23F525000, v0, OS_LOG_TYPE_DEBUG, "Currently Playing: %@", v1, 0xCu);
}

void __35__ANTrackPlayer_numberActiveTracks__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ANTrackPlayer numberActiveTracks]_block_invoke";
  _os_log_debug_impl(&dword_23F525000, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

void __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__ANTrackPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__ANTrackPlayer__resumePlaybackAfterInterruptionAtTimeInterval___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)audioSessionMediaServicesLostHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)audioSessionMediaServicesResetHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)audioSessionInterruptionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__ANTrackPlayer_audioSessionInterruptionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) interruptionTimer];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __42__ANTrackPlayer_playerRateChangedHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 queuePlayer];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __46__ANTrackPlayer_playerItemPlayedToEndHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end