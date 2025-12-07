@interface PKMediaPlayerView
- (void)addMovieItem:(id)item;
- (void)breakFirstEnqueuedLoop;
- (void)dealloc;
- (void)dequeueNonPlayingItemsFromMediaItem:(id)item;
- (void)enqueueItemsFromMediaItem:(id)item afterItem:(id)afterItem;
- (void)handleBoundaryTimeObserverForMediaItem:(id)item;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playerItemDidReachEnd:(id)end;
- (void)removeAllQueuedItems;
- (void)removeMovieItem:(id)item;
- (void)seekToTime:(id *)time;
- (void)setPausesAfterEachItem:(BOOL)item;
- (void)setUpTimeRangeNotificationsForItem:(id)item;
- (void)speedUpRemainderOfCurrentItem;
- (void)startMovieLoopWithPath:(id)path;
- (void)startMovieLoopWithPath:(id)path assetType:(int)type adjustmentsURL:(id)l;
- (void)stop;
- (void)stopSpeedUpTimer;
- (void)updateViewForAssetType:(int)type adjustmentsURL:(id)l;
@end

@implementation PKMediaPlayerView

- (void)dealloc
{
  if (self->_isKVOObserver && self->_avQueuePlayer)
  {
    v3 = framework_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(PKMediaPlayerView *)v3 dealloc];
    }

    [(AVQueuePlayer *)self->_avQueuePlayer removeObserver:self forKeyPath:@"currentItem" context:SFMediaPlayerViewObserverContext];
  }

  v4.receiver = self;
  v4.super_class = PKMediaPlayerView;
  [(PKMediaPlayerView *)&v4 dealloc];
}

- (void)startMovieLoopWithPath:(id)path
{
  pathCopy = path;
  v4 = self->_avQueuePlayer;
  if (!v4)
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

    v4 = objc_alloc_init(MEMORY[0x277CE65F8]);
    [(AVQueuePlayer *)v4 setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v4 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)v4 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
    objc_storeStrong(&self->_avQueuePlayer, v4);
    layer = [(PKMediaPlayerView *)self layer];
    [layer setPlayer:v4];

    [(PKMediaPlayerView *)self setPausesAfterEachItem:[(PKMediaPlayerView *)self pausesAfterEachItem]];
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
  v8 = [MEMORY[0x277CE65B0] playerItemWithURL:v7];
  v9 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:v4 templateItem:v8];
  avLooper = self->_avLooper;
  self->_avLooper = v9;

  [(PKMediaPlayerView *)self play];
}

- (void)updateViewForAssetType:(int)type adjustmentsURL:(id)l
{
  v6 = PKAdjustmentFiltersForAssetTypeAndURL(type, l);
  layer = [(PKMediaPlayerView *)self layer];
  [layer setFilters:v6];
}

- (void)startMovieLoopWithPath:(id)path assetType:(int)type adjustmentsURL:(id)l
{
  v6 = *&type;
  pathCopy = path;
  [(PKMediaPlayerView *)self updateViewForAssetType:v6 adjustmentsURL:l];
  [(PKMediaPlayerView *)self startMovieLoopWithPath:pathCopy];
}

- (void)stop
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = framework_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[PKMediaPlayerView stop]";
    _os_log_impl(&dword_260E02000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PKMediaPlayerView *)self _pause];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableArray *)self->_mediaItems copy];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKMediaPlayerView *)self removeMovieItem:*(*(&v13 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_isKVOObserver)
  {
    [(AVQueuePlayer *)self->_avQueuePlayer removeObserver:self forKeyPath:@"currentItem" context:SFMediaPlayerViewObserverContext];
  }

  avQueuePlayer = self->_avQueuePlayer;
  self->_avQueuePlayer = 0;

  avLooper = self->_avLooper;
  self->_avLooper = 0;

  mediaItems = self->_mediaItems;
  self->_mediaItems = 0;

  [(PKMediaPlayerView *)self stopSpeedUpTimer];
}

- (void)play
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = framework_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PKMediaPlayerView play]";
    _os_log_impl(&dword_260E02000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(AVQueuePlayer *)self->_avQueuePlayer play];
}

- (void)pause
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = framework_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PKMediaPlayerView pause]";
    _os_log_impl(&dword_260E02000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(PKMediaPlayerView *)self _pause];
}

- (void)setPausesAfterEachItem:(BOOL)item
{
  itemCopy = item;
  v11 = *MEMORY[0x277D85DE8];
  v5 = framework_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "no";
    if (itemCopy)
    {
      v6 = "yes";
    }

    v7 = 136315394;
    v8 = "[PKMediaPlayerView setPausesAfterEachItem:]";
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_260E02000, v5, OS_LOG_TYPE_DEFAULT, "%s %s", &v7, 0x16u);
  }

  self->_pausesAfterEachItem = itemCopy;
  [(AVQueuePlayer *)self->_avQueuePlayer setActionAtItemEnd:itemCopy];
}

- (void)addMovieItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  mediaItems = self->_mediaItems;
  if (!mediaItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mediaItems;
    self->_mediaItems = v6;

    mediaItems = self->_mediaItems;
  }

  [(NSMutableArray *)mediaItems addObject:itemCopy];
  v8 = MEMORY[0x277CE65B0];
  v9 = [itemCopy url];
  v10 = [v8 playerItemWithURL:v9];

  [itemCopy setPlayerItem:v10];
  v11 = self->_avQueuePlayer;
  v12 = v11;
  if (!v11)
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

    v12 = objc_alloc_init(MEMORY[0x277CE65F8]);
    [(AVQueuePlayer *)v12 setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v12 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)v12 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
    objc_storeStrong(&self->_avQueuePlayer, v12);
    layer = [(PKMediaPlayerView *)self layer];
    [layer setPlayer:v12];

    [(PKMediaPlayerView *)self setPausesAfterEachItem:[(PKMediaPlayerView *)self pausesAfterEachItem]];
    v11 = [(AVQueuePlayer *)self->_avQueuePlayer addObserver:self forKeyPath:@"currentItem" options:3 context:SFMediaPlayerViewObserverContext];
    self->_isKVOObserver = 1;
  }

  v15 = framework_log(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[PKMediaPlayerView addMovieItem:]";
    v18 = 2112;
    v19 = itemCopy;
    _os_log_impl(&dword_260E02000, v15, OS_LOG_TYPE_DEFAULT, "%s %@", &v16, 0x16u);
  }

  [(PKMediaPlayerView *)self enqueueItemsFromMediaItem:itemCopy afterItem:0];
}

- (void)removeAllQueuedItems
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_mediaItems copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PKMediaPlayerView *)self removeMovieItem:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeMovieItem:(id)item
{
  v13 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = framework_log(itemCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PKMediaPlayerView removeMovieItem:]";
    v11 = 2112;
    v12 = itemCopy;
    _os_log_impl(&dword_260E02000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  observerToken = [itemCopy observerToken];

  if (observerToken)
  {
    avQueuePlayer = self->_avQueuePlayer;
    observerToken2 = [itemCopy observerToken];
    [(AVQueuePlayer *)avQueuePlayer removeTimeObserver:observerToken2];
  }

  [itemCopy invalidate];
  [(NSMutableArray *)self->_mediaItems removeObject:itemCopy];
}

- (void)breakFirstEnqueuedLoop
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_mediaItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 shouldLoop])
        {
          [v8 setShouldLoop:0];
          v9 = framework_log([(PKMediaPlayerView *)self dequeueNonPlayingItemsFromMediaItem:v8]);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v15 = "[PKMediaPlayerView breakFirstEnqueuedLoop]";
            v16 = 2112;
            v17 = v8;
            _os_log_impl(&dword_260E02000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
          }

          goto LABEL_13;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)speedUpRemainderOfCurrentItem
{
  [(PKMediaPlayerView *)self stopSpeedUpTimer];
  currentItem = [(AVQueuePlayer *)self->_avQueuePlayer currentItem];
  if (currentItem)
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    speedUpTimer = self->_speedUpTimer;
    self->_speedUpTimer = v4;

    v6 = self->_speedUpTimer;
    v7 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v6, v7, 0x5F5E100uLL, 0x17D7840uLL);
    v8 = self->_speedUpTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __50__PKMediaPlayerView_speedUpRemainderOfCurrentItem__block_invoke;
    handler[3] = &unk_279AC3D60;
    handler[4] = self;
    handler[5] = currentItem;
    handler[6] = 200;
    v10 = xmmword_260E6AB70;
    v11 = 100;
    v12 = 0x4000000000000000;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_speedUpTimer);
  }
}

void __50__PKMediaPlayerView_speedUpRemainderOfCurrentItem__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 416) rate];
  v3 = v2;
  memset(&v25, 0, sizeof(v25));
  v4 = *(a1 + 40);
  if (v4)
  {
    objc_msgSend_duration(v4);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v5 = *(*(a1 + 32) + 416);
  if (v5)
  {
    objc_msgSend_currentTime(v5);
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  CMTimeSubtract(&v25, &lhs, &v24);
  lhs = v25;
  v7 = (CMTimeGetSeconds(&lhs) * 1000.0);
  v8 = *(a1 + 48);
  v9 = v7 >= v8;
  v10 = v7 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = v3;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = v3 - v12;
  v15 = *(a1 + 72);
  v16 = (v14 / v13 * v15);
  if (v10 <= v16)
  {
    if (v14 <= v12)
    {
      v14 = *(a1 + 56);
    }

    v19 = v14 / v10 * v15;
    v20 = v3 - v19;
    if (v12 >= v20)
    {
      v18 = v12;
    }

    else
    {
      v18 = v20;
    }
  }

  else
  {
    v17 = v13 + v11;
    if (v13 + v11 >= *(a1 + 80))
    {
      v17 = *(a1 + 80);
    }

    v18 = v17;
  }

  if (vabds_f32(v3, v18) >= 0.00000011921)
  {
    v21 = framework_log(v6);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 48);
      LODWORD(lhs.value) = 136316418;
      *(&lhs.value + 4) = "[PKMediaPlayerView speedUpRemainderOfCurrentItem]_block_invoke";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = v16;
      HIWORD(lhs.epoch) = 2048;
      v27 = v7;
      v28 = 2048;
      v29 = v22;
      v30 = 2048;
      v31 = v3;
      v32 = 2048;
      v33 = v18;
      _os_log_impl(&dword_260E02000, v21, OS_LOG_TYPE_DEFAULT, "%s timeToReturnMS:%lums, timeRemaining:%lums (buffer: %lums), rate change %f->%f", &lhs, 0x3Eu);
    }

    *&v23 = v18;
    [*(*(a1 + 32) + 416) setRate:v23];
  }
}

- (void)stopSpeedUpTimer
{
  v13 = *MEMORY[0x277D85DE8];
  speedUpTimer = self->_speedUpTimer;
  if (speedUpTimer)
  {
    v4 = speedUpTimer;
    dispatch_source_cancel(v4);
    v5 = self->_speedUpTimer;
    self->_speedUpTimer = 0;

    LODWORD(v6) = 1.0;
    v7 = framework_log([(AVQueuePlayer *)self->_avQueuePlayer setRate:v6]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [(AVQueuePlayer *)self->_avQueuePlayer rate];
      v9 = 136315394;
      v10 = "[PKMediaPlayerView stopSpeedUpTimer]";
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_260E02000, v7, OS_LOG_TYPE_DEFAULT, "%s Resetting rate to %f", &v9, 0x16u);
    }
  }
}

- (void)seekToTime:(id *)time
{
  avQueuePlayer = self->_avQueuePlayer;
  v6 = framework_log(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (avQueuePlayer)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_260E02000, v6, OS_LOG_TYPE_DEFAULT, "Seeking to time", &v9, 2u);
    }

    v8 = self->_avQueuePlayer;
    v9 = *&time->var0;
    var3 = time->var3;
    [(AVQueuePlayer *)v8 seekToTime:&v9];
  }

  else
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_260E02000, v6, OS_LOG_TYPE_DEFAULT, "No player to seek to time", &v9, 2u);
    }
  }
}

- (void)enqueueItemsFromMediaItem:(id)item afterItem:(id)afterItem
{
  v35 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  afterItemCopy = afterItem;
  v8 = framework_log(afterItemCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[PKMediaPlayerView enqueueItemsFromMediaItem:afterItem:]";
    _os_log_impl(&dword_260E02000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = afterItemCopy;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = itemCopy;
  obj = [itemCopy playerItems];
  v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  v21 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    v22 = *MEMORY[0x277CE60C0];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        items = [(AVQueuePlayer *)self->_avQueuePlayer items];
        v16 = [items containsObject:v14];

        if ((v16 & 1) == 0)
        {
          *buf = *MEMORY[0x277CC08F0];
          *&buf[16] = *(MEMORY[0x277CC08F0] + 16);
          v26 = *buf;
          v27 = *&buf[16];
          v24 = *buf;
          v25 = *&buf[16];
          v17 = framework_log([v14 seekToTime:buf toleranceBefore:&v26 toleranceAfter:&v24 completionHandler:0]);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "[PKMediaPlayerView enqueueItemsFromMediaItem:afterItem:]";
            *&buf[12] = 2112;
            *&buf[14] = v14;
            *&buf[22] = 2112;
            v33 = v9;
            _os_log_impl(&dword_260E02000, v17, OS_LOG_TYPE_DEFAULT, "%s insertItem: %@ afterItem: %@", buf, 0x20u);
          }

          [(AVQueuePlayer *)self->_avQueuePlayer insertItem:v14 afterItem:v9];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter addObserver:self selector:sel_playerItemDidReachEnd_ name:v22 object:v14];

          v19 = v14;
          v9 = v19;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }
}

- (void)dequeueNonPlayingItemsFromMediaItem:(id)item
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = framework_log(itemCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[PKMediaPlayerView dequeueNonPlayingItemsFromMediaItem:]";
    _os_log_impl(&dword_260E02000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  currentItem = [(AVQueuePlayer *)self->_avQueuePlayer currentItem];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = itemCopy;
  playerItems = [itemCopy playerItems];
  v8 = [playerItems countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(playerItems);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = currentItem;
        v14 = v12;
        v15 = v14;
        if (v13 == v14)
        {

          continue;
        }

        if ((currentItem != 0) != (v14 == 0))
        {
          v16 = [v13 isEqual:v14];

          if (v16)
          {
            continue;
          }
        }

        else
        {
        }

        v18 = framework_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v25 = "[PKMediaPlayerView dequeueNonPlayingItemsFromMediaItem:]";
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_260E02000, v18, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
        }

        [(AVQueuePlayer *)self->_avQueuePlayer removeItem:v15];
      }

      v9 = [playerItems countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v46 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (SFMediaPlayerViewObserverContext == context)
  {
    v13 = pathCopy;
    if (v13 == @"currentItem" || (v14 = v13) != 0 && (v15 = [(__CFString *)v13 isEqual:@"currentItem"], v14, v15))
    {
      v30 = objectCopy;
      v31 = pathCopy;
      v16 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
      v17 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v18 = framework_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v41 = "[PKMediaPlayerView observeValueForKeyPath:ofObject:change:context:]";
        v42 = 2112;
        v43 = v16;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&dword_260E02000, v18, OS_LOG_TYPE_DEFAULT, "%s currentItem: %@ -> %@", buf, 0x20u);
      }

      v29 = v16;

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = self->_mediaItems;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v34 + 1) + 8 * i);
            playerItems = [v24 playerItems];
            v26 = [playerItems containsObject:v17];

            if (v26)
            {
              startedHandler = [v24 startedHandler];

              if (startedHandler)
              {
                startedHandler2 = [v24 startedHandler];
                startedHandler2[2]();
              }

              [(PKMediaPlayerView *)self setUpTimeRangeNotificationsForItem:v24];
              if ([v24 shouldLoop])
              {
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __68__PKMediaPlayerView_observeValueForKeyPath_ofObject_change_context___block_invoke;
                block[3] = &unk_279AC3D88;
                block[4] = self;
                block[5] = v24;
                v33 = v17;
                dispatch_async(MEMORY[0x277D85CD0], block);
              }
            }
          }

          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v21);
      }

      objectCopy = v30;
      pathCopy = v31;
    }
  }

  else
  {
    v38.receiver = self;
    v38.super_class = PKMediaPlayerView;
    [(PKMediaPlayerView *)&v38 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setUpTimeRangeNotificationsForItem:(id)item
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  playbackNotificationTimeRanges = [itemCopy playbackNotificationTimeRanges];
  v6 = [playbackNotificationTimeRanges count];

  if (v6)
  {
    v7 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    playbackNotificationTimeRanges2 = [itemCopy playbackNotificationTimeRanges];
    v9 = [playbackNotificationTimeRanges2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(playbackNotificationTimeRanges2);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          memset(&location, 0, sizeof(location));
          if (v12)
          {
            objc_msgSend_CMTimeRangeValue(v12);
          }

          *&range.start.value = *&location.start.value;
          range.start.epoch = location.start.epoch;
          v13 = [MEMORY[0x277CCAE60] valueWithCMTime:&range];
          [v7 addObject:v13];

          v14 = MEMORY[0x277CCAE60];
          range = location;
          CMTimeRangeGetEnd(&v29, &range);
          v15 = [v14 valueWithCMTime:&v29];
          [v7 addObject:v15];
        }

        v9 = [playbackNotificationTimeRanges2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    observerToken = [itemCopy observerToken];

    if (observerToken)
    {
      avQueuePlayer = self->_avQueuePlayer;
      observerToken2 = [itemCopy observerToken];
      [(AVQueuePlayer *)avQueuePlayer removeTimeObserver:observerToken2];
    }

    objc_initWeak(&location, self);
    objc_initWeak(&range, itemCopy);
    v19 = self->_avQueuePlayer;
    v20 = MEMORY[0x277D85CD0];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __56__PKMediaPlayerView_setUpTimeRangeNotificationsForItem___block_invoke;
    v25 = &unk_279AC3DB0;
    objc_copyWeak(&v26, &location);
    objc_copyWeak(&v27, &range);
    v21 = [(AVQueuePlayer *)v19 addBoundaryTimeObserverForTimes:v7 queue:MEMORY[0x277D85CD0] usingBlock:&v22];
    [itemCopy setObserverToken:{v21, v22, v23, v24, v25}];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&range);
    objc_destroyWeak(&location);
  }
}

void __56__PKMediaPlayerView_setUpTimeRangeNotificationsForItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleBoundaryTimeObserverForMediaItem:v2];
}

- (void)handleBoundaryTimeObserverForMediaItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  memset(&v23, 0, sizeof(v23));
  avQueuePlayer = self->_avQueuePlayer;
  if (avQueuePlayer)
  {
    objc_msgSend_currentTime(avQueuePlayer);
  }

  memset(&v22, 0, sizeof(v22));
  CMTimeMake(&v22, 1, 10);
  playbackNotificationTimeRanges = [itemCopy playbackNotificationTimeRanges];
  v7 = [playbackNotificationTimeRanges count];

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      playbackNotificationTimeRanges2 = [itemCopy playbackNotificationTimeRanges];
      v10 = [playbackNotificationTimeRanges2 objectAtIndexedSubscript:v8];

      memset(&v21, 0, sizeof(v21));
      if (v10)
      {
        objc_msgSend_CMTimeRangeValue(v10);
      }

      start = v21.start;
      lhs = v21.start;
      rhs = v22;
      CMTimeSubtract(&time1.start, &lhs, &rhs);
      lhs = v23;
      if (CMTimeCompare(&time1.start, &lhs) < 0)
      {
        lhs = start;
        rhs = v22;
        CMTimeAdd(&time1.start, &lhs, &rhs);
        lhs = v23;
        v11 = CMTimeCompare(&time1.start, &lhs);
        if (v11 >= 1)
        {
          break;
        }
      }

      memset(&lhs, 0, sizeof(lhs));
      time1 = v21;
      CMTimeRangeGetEnd(&lhs, &time1);
      rhs = lhs;
      v17 = v22;
      CMTimeSubtract(&time1.start, &rhs, &v17);
      rhs = v23;
      if (CMTimeCompare(&time1.start, &rhs) < 0)
      {
        rhs = lhs;
        v17 = v22;
        CMTimeAdd(&time1.start, &rhs, &v17);
        rhs = v23;
        v12 = CMTimeCompare(&time1.start, &rhs);
        if (v12 >= 1)
        {
          v15 = framework_log(v12);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(time1.start.value) = 136315650;
            *(&time1.start.value + 4) = "[PKMediaPlayerView handleBoundaryTimeObserverForMediaItem:]";
            LOWORD(time1.start.flags) = 2112;
            *(&time1.start.flags + 2) = itemCopy;
            HIWORD(time1.start.epoch) = 2048;
            time1.duration.value = v8;
            _os_log_impl(&dword_260E02000, v15, OS_LOG_TYPE_DEFAULT, "%s mediaItem: %@, triggering timeRangeHandler with end of range %ld", &time1, 0x20u);
          }

          goto LABEL_18;
        }
      }

      ++v8;
      playbackNotificationTimeRanges3 = [itemCopy playbackNotificationTimeRanges];
      v14 = [playbackNotificationTimeRanges3 count];

      if (v8 >= v14)
      {
        goto LABEL_19;
      }
    }

    v15 = framework_log(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time1.start.value) = 136315650;
      *(&time1.start.value + 4) = "[PKMediaPlayerView handleBoundaryTimeObserverForMediaItem:]";
      LOWORD(time1.start.flags) = 2112;
      *(&time1.start.flags + 2) = itemCopy;
      HIWORD(time1.start.epoch) = 2048;
      time1.duration.value = v8;
      _os_log_impl(&dword_260E02000, v15, OS_LOG_TYPE_DEFAULT, "%s mediaItem: %@, triggering timeRangeHandler with start of range %ld", &time1, 0x20u);
    }

LABEL_18:

    timeRangeHandler = [itemCopy timeRangeHandler];
    timeRangeHandler[2]();
  }

LABEL_19:
}

- (void)playerItemDidReachEnd:(id)end
{
  v15 = *MEMORY[0x277D85DE8];
  endCopy = end;
  [(PKMediaPlayerView *)self stopSpeedUpTimer];
  object = [endCopy object];

  v7 = framework_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PKMediaPlayerView playerItemDidReachEnd:]";
    v13 = 2112;
    v14 = object;
    _os_log_impl(&dword_260E02000, v7, OS_LOG_TYPE_DEFAULT, "%s playerItem: %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PKMediaPlayerView_playerItemDidReachEnd___block_invoke;
  v9[3] = &unk_279AC3DD8;
  v9[4] = self;
  v10 = object;
  v8 = object;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __43__PKMediaPlayerView_playerItemDidReachEnd___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 424);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 playerItems];
        v9 = [v8 containsObject:*(a1 + 40)];

        if (v9)
        {
          v10 = [v7 shouldLoop];
          if ((v10 & 1) == 0)
          {
            v11 = framework_log(v10);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v19 = "[PKMediaPlayerView playerItemDidReachEnd:]_block_invoke";
              v20 = 2112;
              v21 = v7;
              _os_log_impl(&dword_260E02000, v11, OS_LOG_TYPE_DEFAULT, "%s endedItem: %@", buf, 0x16u);
            }

            v12 = [v7 completedHandler];

            if (v12)
            {
              v13 = [v7 completedHandler];
              v13[2]();
            }

            [*(a1 + 32) removeMovieItem:v7];
          }

          goto LABEL_16;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

@end