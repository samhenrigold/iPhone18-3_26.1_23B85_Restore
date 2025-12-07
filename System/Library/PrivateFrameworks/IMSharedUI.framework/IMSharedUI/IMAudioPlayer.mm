@interface IMAudioPlayer
+ (IMAudioPlayer)audioPlayerWithContentsOfURL:(id)l;
+ (IMAudioPlayer)audioPlayerWithContentsOfURL:(id)l shouldUseAVPlayer:(BOOL)player;
- (BOOL)isPlaying;
- (BOOL)usesAVPlayer;
- (IMAudioPlayer)initWithContentsOfURL:(id)l shouldUseAVPlayer:(BOOL)player;
- (IMAudioPlayerDelegate)delegate;
- (double)currentTime;
- (double)duration;
- (float)volume;
- (void)dealloc;
- (void)internalAVAudioPlayerDidPrepareAudioForPlaying:(id)playing successfully:(BOOL)successfully;
- (void)internalAudioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)pause;
- (void)playAfterDelay:(double)delay completion:(id)completion;
- (void)prepareToPlay;
- (void)setVolume:(float)volume;
- (void)startTimer;
- (void)stop;
- (void)stopTimer;
- (void)timerDidExpire:(id)expire;
@end

@implementation IMAudioPlayer

- (void)dealloc
{
  if (objc_msgSend_isPlaying(self->_audioPlayer, a2, v2, v4, v3) && self->_block)
  {
    v10 = objc_msgSend_audio(IMSharedUILogs, v6, v7, v9, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_254805CD0(v10);
    }
  }

  objc_msgSend_setDelegate_(self->_audioPlayer, v6, 0, v9, v8);
  objc_msgSend_stopTimer(self, v11, v12, v14, v13);
  v15.receiver = self;
  v15.super_class = IMAudioPlayer;
  [(IMAudioPlayer *)&v15 dealloc];
}

- (IMAudioPlayer)initWithContentsOfURL:(id)l shouldUseAVPlayer:(BOOL)player
{
  playerCopy = player;
  lCopy = l;
  v25.receiver = self;
  v25.super_class = IMAudioPlayer;
  v10 = [(IMAudioPlayer *)&v25 init];
  if (v10)
  {
    v12 = objc_msgSend_copy(lCopy, v7, v8, v11, v9);
    v13 = *(v10 + 1);
    *(v10 + 1) = v12;

    v14 = [IMInternalAVAudioPlayer alloc];
    v17 = objc_msgSend_initWithContentsOfURL_playerType_(v14, v15, *(v10 + 1), v16, playerCopy);
    objc_msgSend_setDelegate_(v17, v18, v10, v20, v19);
    objc_msgSend_setAudioPlayer_(v10, v21, v17, v23, v22);
  }

  return v10;
}

+ (IMAudioPlayer)audioPlayerWithContentsOfURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc(objc_opt_class());
  shouldUseAVPlayer = objc_msgSend_initWithContentsOfURL_shouldUseAVPlayer_(v4, v5, lCopy, v6, 0);

  return shouldUseAVPlayer;
}

+ (IMAudioPlayer)audioPlayerWithContentsOfURL:(id)l shouldUseAVPlayer:(BOOL)player
{
  playerCopy = player;
  lCopy = l;
  v6 = objc_alloc(objc_opt_class());
  shouldUseAVPlayer = objc_msgSend_initWithContentsOfURL_shouldUseAVPlayer_(v6, v7, lCopy, v8, playerCopy);

  return shouldUseAVPlayer;
}

- (void)playAfterDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  v10.n128_u64[0] = 0;
  v11 = fmax(delay, 0.0);
  v27 = completionCopy;
  if (self->_block)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  else if (!completionCopy)
  {
    goto LABEL_5;
  }

  objc_msgSend_setBlock_(self, v7, v27, v10, v9);
LABEL_5:
  v12 = objc_msgSend_audioPlayer(self, v7, v8, v10, v9);
  objc_msgSend_deviceCurrentTime(v12, v13, v14, v16, v15);
  v18.n128_f64[0] = v11 + v17;
  objc_msgSend_playAtTime_(v12, v19, v20, v18, v21);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    objc_msgSend_startTimer(self, v23, v24, v26, v25);
  }
}

- (BOOL)usesAVPlayer
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  v10 = objc_msgSend_playerType(v5, v6, v7, v9, v8) == 1;

  return v10;
}

- (void)startTimer
{
  objc_msgSend_stopTimer(self, a2, v2, v4, v3);
  v15 = objc_msgSend_displayLinkWithTarget_selector_(IMDisplayLink, v6, self, v7, sel_timerDidExpire_);
  objc_msgSend_schedule(v15, v8, v9, v11, v10);
  objc_msgSend_setDisplayLink_(self, v12, v15, v14, v13);
}

- (void)stopTimer
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    objc_msgSend_invalidate(displayLink, a2, v2, v4, v3);
    v7 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)timerDidExpire:(id)expire
{
  v9 = objc_msgSend_delegate(self, a2, expire, v4, v3);
  objc_msgSend_audioPlayerCurrentTimeDidChange_(v9, v6, self, v8, v7);
}

- (void)stop
{
  v6 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_setDelegate_(v6, v7, 0, v9, v8);

  v14 = objc_msgSend_audioPlayer(self, v10, v11, v13, v12);
  objc_msgSend_stop(v14, v15, v16, v18, v17);

  objc_msgSend_stopTimer(self, v19, v20, v22, v21);
}

- (void)pause
{
  v6 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_pause(v6, v7, v8, v10, v9);

  objc_msgSend_stopTimer(self, v11, v12, v14, v13);
}

- (void)prepareToPlay
{
  v9 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_prepareToPlay(v9, v5, v6, v8, v7);
}

- (BOOL)isPlaying
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  isPlaying = objc_msgSend_isPlaying(v5, v6, v7, v9, v8);

  return isPlaying;
}

- (double)currentTime
{
  prevCurrentTime = self->_prevCurrentTime;
  v7 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_currentTime(v7, v11, v8, v9, v10);
  v13 = v12;

  if (prevCurrentTime >= v13)
  {
    result = prevCurrentTime;
  }

  else
  {
    result = v13;
  }

  self->_prevCurrentTime = result;
  return result;
}

- (double)duration
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_duration(v5, v9, v6, v7, v8);
  v11 = v10;

  return v11;
}

- (void)setVolume:(float)volume
{
  v10 = objc_msgSend_audioPlayer(self, a2, v3, *&volume, v4);
  v6.n128_f32[0] = volume;
  objc_msgSend_setVolume_(v10, v7, v8, v6, v9);
}

- (float)volume
{
  v5 = objc_msgSend_audioPlayer(self, a2, v2, v4, v3);
  objc_msgSend_volume(v5, v6, v7, v9, v8);
  v11 = v10;

  return v11;
}

- (void)internalAudioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  selfCopy = self;
  block = selfCopy->_block;
  v12 = selfCopy;
  if (block)
  {
    block[2](block, 1, successfullyCopy, 0);
    selfCopy = v12;
    v7 = v12->_block;
  }

  else
  {
    v7 = 0;
  }

  selfCopy->_block = 0;

  objc_msgSend_stopTimer(v12, v8, v9, v11, v10);
}

- (void)internalAVAudioPlayerDidPrepareAudioForPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v9 = objc_msgSend_delegate(self, a2, playing, v4, successfully);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_audioPlayerDidPrepareAudioToPlay_successfully_(v9, v7, self, v8, successfullyCopy);
  }
}

- (IMAudioPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end