@interface SVPlaybackCoordinator
- (BOOL)supportImpressionTracking;
- (BOOL)supportsQuartileTracking;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (NSArray)loadedTimeRanges;
- (SVPlaybackCoordinator)initWithVideo:(id)video playerFactory:(id)factory;
- (SVVideoPlaybackHost)host;
- (double)duration;
- (double)framerate;
- (double)loadingProgress;
- (double)time;
- (double)timePlayed;
- (double)volume;
- (void)addMuteStateObserver;
- (void)addPlaybackBufferObserver;
- (void)addPlaybackLikelyToKeepUpObserver;
- (void)addPlaybackObserver:(id)observer;
- (void)addPlayerItemPresentationSizeObserver;
- (void)configureTimeline;
- (void)finishedLoadingVideoURL:(id)l;
- (void)loadVideoIfNeeded;
- (void)loadedTimeRangesChanged;
- (void)muteStateChanged;
- (void)pause;
- (void)playWithButtonTapped:(BOOL)tapped;
- (void)playbackBufferFullStateChanged;
- (void)playbackFailedWithError:(id)error;
- (void)playbackFinished;
- (void)playbackInitiatedWithButtonTapped:(BOOL)tapped;
- (void)playbackLikelyToKeepUpStateChanged;
- (void)playbackPaused;
- (void)playbackReadyToStart;
- (void)playbackResumed;
- (void)playbackResumedAtTime:(double)time;
- (void)playbackStarted;
- (void)removePlaybackObserver:(id)observer;
- (void)seekToTime:(double)time withCompletionBlock:(id)block;
- (void)setHost:(id)host;
- (void)setMuted:(BOOL)muted;
- (void)setState:(unint64_t)state;
- (void)setupPlayerWithURL:(id)l;
- (void)startedLoadingVideo;
- (void)stateChanged;
- (void)timeElapsed:(double)elapsed duration:(double)duration;
@end

@implementation SVPlaybackCoordinator

- (SVPlaybackCoordinator)initWithVideo:(id)video playerFactory:(id)factory
{
  videoCopy = video;
  factoryCopy = factory;
  v16.receiver = self;
  v16.super_class = SVPlaybackCoordinator;
  v9 = [(SVPlaybackCoordinator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_video, video);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    objc_storeStrong(&v10->_playerFactory, factory);
    v13 = objc_alloc_init(SVTimeline);
    timeline = v10->_timeline;
    v10->_timeline = v13;
  }

  return v10;
}

- (void)playWithButtonTapped:(BOOL)tapped
{
  [(SVPlaybackCoordinator *)self playbackInitiatedWithButtonTapped:tapped];
  [(SVPlaybackCoordinator *)self loadVideoIfNeeded];
  player = [(SVPlaybackCoordinator *)self player];
  [player play];
}

- (void)pause
{
  player = [(SVPlaybackCoordinator *)self player];
  [player pause];
}

- (void)addPlaybackObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SVPlaybackCoordinator *)self observers];
  [observers addObject:observerCopy];
}

- (void)removePlaybackObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SVPlaybackCoordinator *)self observers];
  [observers removeObject:observerCopy];
}

- (void)setHost:(id)host
{
  hostCopy = host;
  v4 = objc_storeWeak(&self->_host, hostCopy);
  player = [(SVPlaybackCoordinator *)self player];
  [hostCopy setPlayer:player];

  player2 = [(SVPlaybackCoordinator *)self player];
  currentItem = [player2 currentItem];
  [currentItem setPreferredForwardBufferDuration:0.0];
}

- (void)seekToTime:(double)time withCompletionBlock:(id)block
{
  blockCopy = block;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__SVPlaybackCoordinator_seekToTime_withCompletionBlock___block_invoke;
  v16[3] = &unk_279BC5E00;
  v7 = blockCopy;
  v17 = v7;
  v8 = MEMORY[0x2667795A0](v16);
  [(SVPlaybackCoordinator *)self pause];
  objc_msgSend_duration(self);
  [(SVPlaybackCoordinator *)self timeElapsed:time duration:v9];
  if (time >= 0.0)
  {
    timeCopy = time;
  }

  else
  {
    timeCopy = -time;
  }

  player = [(SVPlaybackCoordinator *)self player];
  v12 = player;
  if (timeCopy >= 0.00000011920929)
  {
    CMTimeMake(&v15, time, 1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__SVPlaybackCoordinator_seekToTime_withCompletionBlock___block_invoke_2;
    v13[3] = &unk_279BC5E28;
    v14 = v8;
    [v12 seekToTime:&v15 completionHandler:v13];

    v12 = v14;
  }

  else
  {
    [player seekToStartWithCompletionBlock:v8];
  }
}

uint64_t __56__SVPlaybackCoordinator_seekToTime_withCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __56__SVPlaybackCoordinator_seekToTime_withCompletionBlock___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (double)framerate
{
  player = [(SVPlaybackCoordinator *)self player];
  [player frameRate];
  v4 = v3;

  return v4;
}

- (double)duration
{
  player = [(SVPlaybackCoordinator *)self player];
  objc_msgSend_duration(player);
  v4 = v3;

  return v4;
}

- (double)time
{
  player = [(SVPlaybackCoordinator *)self player];
  [player elapsedTime];
  v4 = v3;

  return v4;
}

- (double)timePlayed
{
  player = [(SVPlaybackCoordinator *)self player];
  [player totalTimePlayed];
  v4 = v3;

  return v4;
}

- (NSArray)loadedTimeRanges
{
  player = [(SVPlaybackCoordinator *)self player];
  currentItem = [player currentItem];
  loadedTimeRanges = [currentItem loadedTimeRanges];

  return loadedTimeRanges;
}

- (double)volume
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] outputVolume];
  v4 = v3;

  return v4;
}

- (double)loadingProgress
{
  loadedTimeRanges = [(SVPlaybackCoordinator *)self loadedTimeRanges];
  v4 = loadedTimeRanges;
  if (loadedTimeRanges)
  {
    memset(&v13, 0, sizeof(v13));
    firstObject = [loadedTimeRanges firstObject];
    v6 = firstObject;
    if (firstObject)
    {
      objc_msgSend_CMTimeRangeValue(firstObject);
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    v11 = v13;
    CMTimeRangeGetEnd(&time, &v11);
    Seconds = CMTimeGetSeconds(&time);
    objc_msgSend_duration(self);
    v7 = Seconds / v9;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (CGSize)naturalSize
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  player = [(SVPlaybackCoordinator *)self player];
  currentItem = [player currentItem];
  tracks = [currentItem tracks];

  v7 = [tracks countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(tracks);
        }

        assetTrack = [*(*(&v19 + 1) + 8 * v10) assetTrack];
        if ([assetTrack statusOfValueForKey:@"naturalSize" error:0] == 2)
        {
          [assetTrack naturalSize];
          if (v13 != v2 || v12 != v3)
          {
            [assetTrack naturalSize];
            v2 = v15;
            v3 = v16;

            goto LABEL_14;
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [tracks countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

LABEL_14:

  v17 = v2;
  v18 = v3;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)loadVideoIfNeeded
{
  player = [(SVPlaybackCoordinator *)self player];
  if (player)
  {
  }

  else
  {
    cancelHandler = [(SVPlaybackCoordinator *)self cancelHandler];

    if (!cancelHandler)
    {
      [(SVPlaybackCoordinator *)self startedLoadingVideo];
      objc_initWeak(&location, self);
      video = [(SVPlaybackCoordinator *)self video];
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __42__SVPlaybackCoordinator_loadVideoIfNeeded__block_invoke;
      v10 = &unk_279BC5E50;
      objc_copyWeak(&v11, &location);
      v6 = [video loadWithCompletionBlock:&v7];
      [(SVPlaybackCoordinator *)self setCancelHandler:v6, v7, v8, v9, v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

id __42__SVPlaybackCoordinator_loadVideoIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained setupPlayerWithURL:v3];
    [v5 setCancelHandler:0];
    [v5 finishedLoadingVideoURL:v3];
    [v5 setVideoURL:v3];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] videoErrorWithErrorCode:2];
    [v5 playbackFailedWithError:v6];
  }

  return v5;
}

- (void)setupPlayerWithURL:(id)l
{
  lCopy = l;
  playerFactory = [(SVPlaybackCoordinator *)self playerFactory];
  v6 = [playerFactory createPlayerWithURL:lCopy];
  [(SVPlaybackCoordinator *)self setPlayer:v6];

  player = [(SVPlaybackCoordinator *)self player];
  [player setMuted:{-[SVPlaybackCoordinator muted](self, "muted")}];

  [(SVPlaybackCoordinator *)self addPlayerItemPresentationSizeObserver];
  [(SVPlaybackCoordinator *)self addMuteStateObserver];
  [(SVPlaybackCoordinator *)self addPlaybackBufferObserver];
  [(SVPlaybackCoordinator *)self addPlaybackLikelyToKeepUpObserver];
  video = [(SVPlaybackCoordinator *)self video];
  LODWORD(v6) = [video conformsToProtocol:&unk_2877E0EB8];

  if (v6)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277CBEBB8];
    [video2 prerollReadyToPlayTimeout];
    v12 = v11;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke;
    v25[3] = &unk_279BC5E78;
    objc_copyWeak(&v26, &location);
    v13 = [v10 scheduledTimerWithTimeInterval:0 repeats:v25 block:v12];
    [(SVPlaybackCoordinator *)self setReadyToPlayTimer:v13];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  player2 = [(SVPlaybackCoordinator *)self player];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_2;
  v23[3] = &unk_279BC5EA0;
  objc_copyWeak(&v24, &location);
  [player2 setPlaybackStatusBlock:v23];

  player3 = [(SVPlaybackCoordinator *)self player];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_3;
  v21[3] = &unk_279BC5EC8;
  objc_copyWeak(&v22, &location);
  [player3 setPlaybackProgressBlock:v21];

  player4 = [(SVPlaybackCoordinator *)self player];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_4;
  v19[3] = &unk_279BC5EF0;
  objc_copyWeak(&v20, &location);
  [player4 setLoadingProgressBlock:v19];

  host = [(SVPlaybackCoordinator *)self host];
  player5 = [(SVPlaybackCoordinator *)self player];
  [host setPlayer:player5];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] videoErrorWithErrorCode:5];
  [WeakRetained playbackFailedWithError:v1];
}

void __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v11 = [WeakRetained readyToPlayTimer];
      v12 = [v11 isValid];

      if (v12)
      {
        v13 = [v6 readyToPlayTimer];
        [v13 invalidate];
      }

      [v6 playbackReadyToStart];
    }

    else if (a3 == 2)
    {
      if ([v14 playbackPosition])
      {
        [v6 playbackResumed];
      }

      else
      {
        [v6 playbackStarted];
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        [WeakRetained playbackPaused];
        break;
      case 4:
        [WeakRetained playbackFinished];
        break;
      case 5:
        v7 = MEMORY[0x277CCA9B8];
        v8 = [v14 currentItem];
        v9 = [v8 error];
        v10 = [v7 videoErrorWithUnderlyingError:v9];

        [v6 playbackFailedWithError:v10];
        break;
    }
  }
}

void __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_3(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timeElapsed:a2 duration:a3];
}

void __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadedTimeRangesChanged];
}

- (void)startedLoadingVideo
{
  v18 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self setState:1];
  video = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 startedLoadingVideo];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v7 = [observers copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 playbackCoordinatorStartedLoadingVideo:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)finishedLoadingVideoURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  video = [(SVPlaybackCoordinator *)self video];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 finishedLoadingVideoWithURL:lCopy];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v9 = [observers copy];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 playbackCoordinatorFinishedLoadingVideoURL:self];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)playbackInitiatedWithButtonTapped:(BOOL)tapped
{
  tappedCopy = tapped;
  if (![(SVPlaybackCoordinator *)self initiatedPlayback])
  {
    video = [(SVPlaybackCoordinator *)self video];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      video2 = [(SVPlaybackCoordinator *)self video];
      [video2 playbackInitiatedWithButtonTapped:tappedCopy];
    }
  }

  [(SVPlaybackCoordinator *)self setPlaybackRequested:1];

  [(SVPlaybackCoordinator *)self setInitiatedPlayback:1];
}

- (void)playbackReadyToStart
{
  [(SVPlaybackCoordinator *)self setState:2];
  video = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 playbackReadyToStart];
  }
}

- (void)playbackStarted
{
  v18 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self configureTimeline];
  [(SVPlaybackCoordinator *)self setState:3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorStartedPlayback:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  video = [(SVPlaybackCoordinator *)self video];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 playbackStarted];
  }
}

- (void)playbackPaused
{
  v18 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self time];
  [(SVPlaybackCoordinator *)self playbackPausedAtTime:?];
  [(SVPlaybackCoordinator *)self setState:4];
  video = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 playbackPaused];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v7 = [observers copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 playbackCoordinatorPausedPlayback:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)playbackResumed
{
  v18 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self time];
  [(SVPlaybackCoordinator *)self playbackResumedAtTime:?];
  [(SVPlaybackCoordinator *)self setState:3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorResumedPlayback:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  video = [(SVPlaybackCoordinator *)self video];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 playbackResumed];
  }
}

- (void)playbackFinished
{
  v18 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self setState:4];
  video = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 playbackFinished];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v7 = [observers copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 playbackCoordinatorFinishedPlayback:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)playbackFailedWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(SVPlaybackCoordinator *)self setState:5];
  [(SVPlaybackCoordinator *)self setError:errorCopy];
  video = [(SVPlaybackCoordinator *)self video];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 playbackFailedWithError:errorCopy];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v9 = [observers copy];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 playbackCoordinator:self playbackFailedWithError:errorCopy];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)timeElapsed:(double)elapsed duration:(double)duration
{
  v23 = *MEMORY[0x277D85DE8];
  timeline = [(SVPlaybackCoordinator *)self timeline];
  [(SVTimeline *)timeline setTime:elapsed];

  video = [(SVPlaybackCoordinator *)self video];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    video2 = [(SVPlaybackCoordinator *)self video];
    [video2 timeElapsed:elapsed duration:duration];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v12 = [observers copy];

  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 playbackCoordinator:self timeElapsed:elapsed duration:duration];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)loadedTimeRangesChanged
{
  v17 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self loadingProgress];
  if (v3 != 0.0)
  {
    v4 = v3;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    observers = [(SVPlaybackCoordinator *)self observers];
    v6 = [observers copy];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 playbackCoordinator:self loadingProgressed:v4];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)stateChanged
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorStateChanged:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addPlaybackBufferObserver
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  player = [(SVPlaybackCoordinator *)self player];
  currentItem = [player currentItem];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__SVPlaybackCoordinator_addPlaybackBufferObserver__block_invoke;
  v10 = &unk_279BC5D60;
  objc_copyWeak(&v11, &location);
  v6 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"playbackBufferFull" ofObject:currentItem withOptions:1 change:&v7];
  [(SVPlaybackCoordinator *)self setPlaybackBufferFullObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__SVPlaybackCoordinator_addPlaybackBufferObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  v2 = [v1 currentItem];
  WeakRetained[9] = [v2 isPlaybackBufferFull];

  [WeakRetained playbackBufferFullStateChanged];
}

- (void)playbackBufferFullStateChanged
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorPlaybackBufferFullStateChanged:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addPlaybackLikelyToKeepUpObserver
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  player = [(SVPlaybackCoordinator *)self player];
  currentItem = [player currentItem];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__SVPlaybackCoordinator_addPlaybackLikelyToKeepUpObserver__block_invoke;
  v10 = &unk_279BC5D60;
  objc_copyWeak(&v11, &location);
  v6 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"playbackLikelyToKeepUp" ofObject:currentItem withOptions:1 change:&v7];
  [(SVPlaybackCoordinator *)self setPlaybackLikelyToKeepUpObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __58__SVPlaybackCoordinator_addPlaybackLikelyToKeepUpObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  v2 = [v1 currentItem];
  WeakRetained[8] = [v2 isPlaybackLikelyToKeepUp];

  [WeakRetained playbackLikelyToKeepUpStateChanged];
}

- (void)playbackLikelyToKeepUpStateChanged
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorPlaybackLikelyToKeepUpStateChanged:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addMuteStateObserver
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  player = [(SVPlaybackCoordinator *)self player];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __45__SVPlaybackCoordinator_addMuteStateObserver__block_invoke;
  v9 = &unk_279BC5D60;
  objc_copyWeak(&v10, &location);
  v5 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"muted" ofObject:player withOptions:1 change:&v6];
  [(SVPlaybackCoordinator *)self setMuteStateObserver:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__SVPlaybackCoordinator_addMuteStateObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  WeakRetained[10] = [v1 isMuted];

  [WeakRetained muteStateChanged];
}

- (void)muteStateChanged
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(SVPlaybackCoordinator *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorMuteStateChanged:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addPlayerItemPresentationSizeObserver
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  player = [(SVPlaybackCoordinator *)self player];
  currentItem = [player currentItem];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __62__SVPlaybackCoordinator_addPlayerItemPresentationSizeObserver__block_invoke;
  v10 = &unk_279BC5D60;
  objc_copyWeak(&v11, &location);
  v6 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"presentationSize" ofObject:currentItem withOptions:1 change:&v7];
  [(SVPlaybackCoordinator *)self setPlayerItemPresentationSizeObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__SVPlaybackCoordinator_addPlayerItemPresentationSizeObserver__block_invoke(uint64_t a1)
{
  v3 = objc_loadWeakRetained((a1 + 32));
  v1 = [v3 player];
  v2 = [v1 currentItem];
  [v2 presentationSize];
  [v3 setDimensions:?];
}

- (void)configureTimeline
{
  timeline = [(SVPlaybackCoordinator *)self timeline];
  [(SVTimeline *)timeline cancelScheduledBlocks];

  timeline2 = [(SVPlaybackCoordinator *)self timeline];
  [(SVTimeline *)timeline2 resetTime];

  timeline3 = [(SVPlaybackCoordinator *)self timeline];
  objc_msgSend_duration(self);
  [(SVTimeline *)timeline3 setDuration:v6];

  if ([(SVPlaybackCoordinator *)self supportImpressionTracking])
  {
    objc_initWeak(&location, self);
    timeline4 = [(SVPlaybackCoordinator *)self timeline];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke;
    v35[3] = &unk_279BC5F18;
    objc_copyWeak(&v36, &location);
    video = [(SVPlaybackCoordinator *)self video];
    [video impressionThreshold];
    v10 = [(SVTimeline *)timeline4 performBlock:v35 at:v9];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  if ([(SVPlaybackCoordinator *)self supportsQuartileTracking])
  {
    objc_msgSend_duration(self);
    v12 = v11;
    objc_msgSend_duration(self);
    v14 = v13;
    objc_msgSend_duration(self);
    v16 = v15;
    objc_initWeak(&location, self);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke_2;
    v33[3] = &unk_279BC5F40;
    objc_copyWeak(&v34, &location);
    v17 = MEMORY[0x2667795A0](v33);
    timeline5 = [(SVPlaybackCoordinator *)self timeline];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke_3;
    v31[3] = &unk_279BC5E00;
    v19 = v17;
    v32 = v19;
    v20 = [(SVTimeline *)timeline5 performBlock:v31 at:v12 * 0.25];

    timeline6 = [(SVPlaybackCoordinator *)self timeline];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke_4;
    v29[3] = &unk_279BC5E00;
    v22 = v19;
    v30 = v22;
    v23 = [(SVTimeline *)timeline6 performBlock:v29 at:v14 * 0.5];

    timeline7 = [(SVPlaybackCoordinator *)self timeline];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke_5;
    v27[3] = &unk_279BC5E00;
    v25 = v22;
    v28 = v25;
    v26 = [(SVTimeline *)timeline7 performBlock:v27 at:v16 * 0.75];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }
}

void __42__SVPlaybackCoordinator_configureTimeline__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained video];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained video];
    [v3 playbackPassedImpressionThreshold];
  }
}

void __42__SVPlaybackCoordinator_configureTimeline__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [WeakRetained video];
    [v5 playbackPassedQuartile:a2];
  }
}

- (void)playbackResumedAtTime:(double)time
{
  [(SVPlaybackCoordinator *)self pausedAtTime];
  v5 = v4;
  [(SVPlaybackCoordinator *)self time];
  v7 = v5 - v6;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  if (v7 > 0.5)
  {
    timeline = [(SVPlaybackCoordinator *)self timeline];
    [(SVTimeline *)timeline cancelScheduledBlocks];
  }

  [(SVPlaybackCoordinator *)self setPausedAtTime:0.0];
}

- (BOOL)supportImpressionTracking
{
  video = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  video2 = [(SVPlaybackCoordinator *)self video];
  [video2 impressionThreshold];
  v7 = v6 > 0.0;

  return v7;
}

- (BOOL)supportsQuartileTracking
{
  objc_msgSend_duration(self, a2);
  objc_msgSend_duration(self);
  return v3 > 0.0;
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(SVPlaybackCoordinator *)self stateChanged];
  }
}

- (void)setMuted:(BOOL)muted
{
  if (self->_muted != muted)
  {
    mutedCopy = muted;
    self->_muted = muted;
    player = [(SVPlaybackCoordinator *)self player];
    [player setMuted:mutedCopy];
  }
}

- (CGSize)dimensions
{
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SVVideoPlaybackHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end