@interface IMInternalAVAudioPlayer
- (BOOL)_playAtTime:(double)time;
- (BOOL)isPlaying;
- (BOOL)playAtTime:(double)time;
- (IMInternalAVAudioPlayer)initWithContentsOfURL:(id)l playerType:(int64_t)type;
- (IMInternalAVAudioPlayerDelegate)delegate;
- (double)currentTime;
- (double)deviceCurrentTime;
- (double)duration;
- (float)volume;
- (void)_handleAVPlayerItemStateChange;
- (void)_notifyPlayerDidFinishSuccessfully:(BOOL)successfully;
- (void)_notifyPlayerDidPrepareAudioFileSuccessfully:(BOOL)successfully;
- (void)_playerItemDidEndNotification:(id)notification;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)prepareToPlay;
- (void)setVolume:(float)volume;
- (void)stop;
@end

@implementation IMInternalAVAudioPlayer

- (IMInternalAVAudioPlayer)initWithContentsOfURL:(id)l playerType:(int64_t)type
{
  v64[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v62.receiver = self;
  v62.super_class = IMInternalAVAudioPlayer;
  v7 = [(IMInternalAVAudioPlayer *)&v62 init];
  v12 = v7;
  v13 = 0;
  if (lCopy && v7)
  {
    if (objc_msgSend_isFileURL(lCopy, v8, v9, v11, v10))
    {
      *(v12 + 48) = type;
      if (type == 1)
      {
        v63 = *MEMORY[0x277CE6260];
        v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v14, 0xFFFFLL, v16, v15);
        v64[0] = v17;
        v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v64, v19, &v63, 1);

        v23 = objc_msgSend_URLAssetWithURL_options_(MEMORY[0x277CE6650], v21, lCopy, v22, v20);
        v27 = objc_msgSend_playerItemWithAsset_(MEMORY[0x277CE65B0], v24, v23, v26, v25);
        v28 = *(v12 + 24);
        *(v12 + 24) = v27;

        objc_msgSend_setPlayHapticTracks_(*(v12 + 24), v29, 1, v31, v30);
        v35 = objc_msgSend_playerWithPlayerItem_(MEMORY[0x277CE6598], v32, *(v12 + 24), v34, v33);
        v36 = *(v12 + 16);
        *(v12 + 16) = v35;

        objc_msgSend_addObserver_forKeyPath_options_context_(*(v12 + 24), v37, v12, v38, @"status", 3, qword_27F6116A0);
        v43 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v39, v40, v42, v41);
        objc_msgSend_addObserver_selector_name_object_(v43, v44, v12, v45, sel__playerItemDidEndNotification_, *MEMORY[0x277CE60C0], *(v12 + 24));

        v50 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v46, v47, v49, v48);
        objc_msgSend_addObserver_selector_name_object_(v50, v51, v12, v52, sel__playerItemDidEndNotification_, *MEMORY[0x277CE60D0], *(v12 + 24));
      }

      else
      {
        v53 = objc_alloc(MEMORY[0x277CB83D0]);
        v56 = objc_msgSend_initWithContentsOfURL_error_(v53, v54, lCopy, v55, 0);
        v57 = *(v12 + 8);
        *(v12 + 8) = v56;

        objc_msgSend_setDelegate_(*(v12 + 8), v58, v12, v60, v59);
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (qword_27F6116A0 == context)
  {
    if (objc_msgSend_isEqualToString_(path, v10, @"status", v13, v11))
    {
      v17 = objc_msgSend_objectForKeyedSubscript_(changeCopy, v14, *MEMORY[0x277CCA2F0], v16, v15);
      v21 = objc_msgSend_objectForKeyedSubscript_(changeCopy, v18, *MEMORY[0x277CCA300], v20, v19);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isEqualToNumber_(v17, v22, v21, v24, v23) & 1) == 0)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_2547FFAD8;
          block[3] = &unk_2797890E0;
          block[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = IMInternalAVAudioPlayer;
    [(IMInternalAVAudioPlayer *)&v26 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

- (BOOL)playAtTime:(double)time
{
  timeCopy = time;
  if (self->_playerType == 1 && !objc_msgSend_status(self->_playerItem, a2, v3, *&time, v4))
  {
    self->_avPlayerPlayRequested = 1;
    return 1;
  }

  else
  {
    time = timeCopy;

    return MEMORY[0x2821F9670](self, sel__playAtTime_, v3, *&time);
  }
}

- (BOOL)_playAtTime:(double)time
{
  v5 = MEMORY[0x259C1A7F0]("kCMTimeZero", @"CoreMedia");
  v9 = *v5;
  v15 = *v5;
  v16 = *(v5 + 16);
  if (self->_playerType == 1)
  {
    self->_avPlayerPlayRequested = 0;
    if (self->_avPlayerState == 3)
    {
      avPlayer = self->_avPlayer;
      v13 = v15;
      v14 = v16;
      objc_msgSend_seekToTime_(avPlayer, v6, &v13, v15, v8);
    }

    objc_msgSend_play(self->_avPlayer, v6, v7, v9, v8);
    self->_avPlayerState = 1;
    return 1;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;
    v9.n128_f64[0] = time;

    return objc_msgSend_playAtTime_(avAudioPlayer, v6, v7, v9, v8);
  }
}

- (double)deviceCurrentTime
{
  if (self->_playerType == 1)
  {
    return 0.0;
  }

  objc_msgSend_deviceCurrentTime(self->_avAudioPlayer, a2, v2, v4, v3);
  return result;
}

- (void)stop
{
  if (self->_playerType == 1)
  {
    if ((self->_avPlayerState & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      objc_msgSend_pause(self->_avPlayer, a2, v2, v4, v3);
    }

    self->_avPlayerState = 3;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    objc_msgSend_stop(avAudioPlayer, a2, v2, v4, v3);
  }
}

- (void)pause
{
  if (self->_playerType == 1)
  {
    objc_msgSend_pause(self->_avPlayer, a2, v2, v4, v3);
    self->_avPlayerState = 2;
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    objc_msgSend_pause(avAudioPlayer, a2, v2, v4, v3);
  }
}

- (float)volume
{
  v5 = 8;
  if (self->_playerType == 1)
  {
    v5 = 16;
  }

  objc_msgSend_volume(*(&self->super.isa + v5), a2, v2, v4, v3);
  return result;
}

- (void)setVolume:(float)volume
{
  v5 = 8;
  if (self->_playerType == 1)
  {
    v5 = 16;
  }

  objc_msgSend_setVolume_(*(&self->super.isa + v5), a2, v3, *&volume, v4);
}

- (BOOL)isPlaying
{
  if (self->_playerType == 1)
  {
    return self->_avPlayerState == 1;
  }

  else
  {
    return objc_msgSend_isPlaying(self->_avAudioPlayer, a2, v2, v4, v3);
  }
}

- (double)currentTime
{
  if (qword_27F611770 != -1)
  {
    sub_25480566C();
  }

  if (self->_playerType == 1)
  {
    v6 = off_27F611768;
    avPlayer = self->_avPlayer;
    if (avPlayer)
    {
      objc_msgSend_currentTime(avPlayer, v4, a2, v2, v3);
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    v6(v10);
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    objc_msgSend_currentTime(avAudioPlayer, v4, a2, v2, v3);
  }

  return result;
}

- (double)duration
{
  if (qword_27F611780 != -1)
  {
    sub_254805680();
  }

  if (qword_27F611790 != -1)
  {
    sub_254805694();
  }

  v3 = MEMORY[0x259C1A7F0]("kCMTimeIndefinite", @"CoreMedia");
  v7 = *v3;
  v22 = *v3;
  v23 = *(v3 + 16);
  if (self->_playerType == 1)
  {
    v20 = 0uLL;
    v21 = 0;
    v8 = objc_msgSend_currentItem(self->_avPlayer, v4, v5, v7, v6);
    v13 = v8;
    if (v8)
    {
      objc_msgSend_duration(v8, v12, v9, v10, v11);
    }

    else
    {
      v20 = 0uLL;
      v21 = 0;
    }

    v18 = v20;
    v19 = v21;
    v16 = v22;
    v17 = v23;
    if (off_27F611778(&v18, &v16))
    {
      v18 = v20;
      v19 = v21;
      off_27F611788(&v18);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    avAudioPlayer = self->_avAudioPlayer;

    objc_msgSend_duration(avAudioPlayer, v7, v4, v5, v6);
  }

  return result;
}

- (void)prepareToPlay
{
  if (self->_playerType != 1)
  {
    v11 = objc_msgSend_prepareToPlay(self->_avAudioPlayer, a2, v2, v4, v3);
LABEL_7:
    selfCopy2 = self;
    goto LABEL_8;
  }

  if (!objc_msgSend_isPlaying(self, a2, v2, v4, v3))
  {
    v12 = objc_msgSend_status(self->_playerItem, v6, v7, v9, v8);
    if (!v12)
    {
      self->_avPlayerPrepareRequested = 1;
      return;
    }

    v11 = v12 == 1;
    goto LABEL_7;
  }

  selfCopy2 = self;
  v11 = 1;
LABEL_8:

  objc_msgSend__notifyPlayerDidPrepareAudioFileSuccessfully_(selfCopy2, v6, v11, v9, v8);
}

- (void)dealloc
{
  objc_msgSend_removeObserver_forKeyPath_(self->_playerItem, a2, self, v2, @"status");
  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5, v7, v6);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, v10, *MEMORY[0x277CE60C0], self->_playerItem);

  v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v11, v12, v14, v13);
  objc_msgSend_removeObserver_name_object_(v15, v16, self, v17, *MEMORY[0x277CE60D0], self->_playerItem);

  objc_msgSend_setDelegate_(self->_avAudioPlayer, v18, 0, v20, v19);
  v21.receiver = self;
  v21.super_class = IMInternalAVAudioPlayer;
  [(IMInternalAVAudioPlayer *)&v21 dealloc];
}

- (void)_playerItemDidEndNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2548001C8;
  v6[3] = &unk_279789020;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_handleAVPlayerItemStateChange
{
  v6 = objc_msgSend_status(self->_playerItem, a2, v2, v4, v3);
  v11 = v6;
  if (self->_avPlayerPrepareRequested)
  {
    self->_avPlayerPrepareRequested = 0;
    objc_msgSend__notifyPlayerDidPrepareAudioFileSuccessfully_(self, v7, v6 == 1, v10, v9);
  }

  if (self->_avPlayerPlayRequested && v11 != 0)
  {
    self->_avPlayerPlayRequested = 0;
    v10.n128_u64[0] = 0;

    MEMORY[0x2821F9670](self, sel__playAtTime_, v8, v10);
  }
}

- (void)_notifyPlayerDidFinishSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v9 = objc_msgSend_delegate(self, a2, successfully, v4, v3);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_internalAVAudioPlayerDidFinishPlaying_successfully_(v9, v7, self, v8, successfullyCopy);
  }
}

- (void)_notifyPlayerDidPrepareAudioFileSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v9 = objc_msgSend_delegate(self, a2, successfully, v4, v3);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_internalAVAudioPlayerDidPrepareAudioForPlaying_successfully_(v9, v7, self, v8, successfullyCopy);
  }
}

- (IMInternalAVAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end