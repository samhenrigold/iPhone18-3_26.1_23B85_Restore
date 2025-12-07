@interface KNWebVideoRenderer
- (KNBuildRenderer)buildInRenderer;
- (void)animate;
- (void)forceRemoveAnimations;
- (void)interruptAndReset;
- (void)p_didFailWithError:(id)error;
- (void)p_didStartVideo;
- (void)p_didStopVideo;
- (void)p_scheduleVideoAtStartTime;
- (void)p_startVideo;
- (void)p_stopVideo;
- (void)pauseAnimations;
- (void)registerForAmbientBuildStartCallback:(SEL)callback target:(id)target;
- (void)removeAnimationsAndFinish:(BOOL)finish;
- (void)resumeAnimationsIfPaused;
- (void)stopAnimations;
- (void)updateAnimationsForLayerTime:(double)time;
@end

@implementation KNWebVideoRenderer

- (void)animate
{
  self->_needsToSendAmbientBuildStartCallback = 1;
  self->_needsToSendBuildEndCallback = 1;
  if ([(KNWebVideoRenderer *)self addAnimationsAtLayerTime:CACurrentMediaTime()])
  {

    MEMORY[0x2821F9670](self, sel_p_scheduleVideoAtStartTime);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_p_didFailWithError_);
  }
}

- (void)updateAnimationsForLayerTime:(double)time
{
  if (self->_startTime <= time)
  {
    MEMORY[0x2821F9670](self, sel_p_startVideo);
  }
}

- (void)removeAnimationsAndFinish:(BOOL)finish
{
  [(KNWebVideoRenderer *)self p_stopVideo];

  MEMORY[0x2821F9670](self, sel_p_didStopVideo);
}

- (void)forceRemoveAnimations
{
  [(KNWebVideoRenderer *)self p_stopVideo];

  MEMORY[0x2821F9670](self, sel_p_didStopVideo);
}

- (void)stopAnimations
{
  [(KNWebVideoRenderer *)self p_stopVideo];

  MEMORY[0x2821F9670](self, sel_p_didStopVideo);
}

- (void)pauseAnimations
{
  if (!self->_animationsPaused)
  {
    if (self->_needsVideoAtStartTime)
    {
      [(KNWebVideoRenderer *)self p_unscheduleVideoAtStartTime];
      self->_playbackAtStartTimePauseTime = CACurrentMediaTime();
    }

    self->_animationsPaused = 1;
  }
}

- (void)resumeAnimationsIfPaused
{
  if (self->_animationsPaused)
  {
    self->_animationsPaused = 0;
    if (self->_needsVideoAtStartTime)
    {
      self->_playbackAtStartTimePauseOffset = CACurrentMediaTime() - self->_playbackAtStartTimePauseTime + self->_playbackAtStartTimePauseOffset;

      MEMORY[0x2821F9670](self, sel_p_scheduleVideoAtStartTime);
    }
  }
}

- (void)interruptAndReset
{
  [(KNWebVideoRenderer *)self p_stopVideo];

  MEMORY[0x2821F9670](self, sel_p_didStopVideo);
}

- (void)registerForAmbientBuildStartCallback:(SEL)callback target:(id)target
{
  objc_storeWeak(&self->_ambientBuildStartCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_ambientBuildCallbackSelector = callbackCopy;
}

- (void)p_didStartVideo
{
  self->_hasAmbientBuildStarted = 1;
  if (self->_needsToSendAmbientBuildStartCallback)
  {
    WeakRetained = objc_loadWeakRetained(&self->_ambientBuildStartCallbackTarget);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_ambientBuildStartCallbackTarget);
      v6 = v5;
      ambientBuildCallbackSelector = self->_ambientBuildCallbackSelector;
      if (ambientBuildCallbackSelector)
      {
        [v5 ambientBuildCallbackSelector];
      }

      else
      {
        [v5 0];
      }
    }

    self->_needsToSendAmbientBuildStartCallback = 0;
  }
}

- (void)p_didStopVideo
{
  needsToSendAmbientBuildStartCallback = self->_needsToSendAmbientBuildStartCallback;
  if (!self->_hasAmbientBuildStarted)
  {
    [(KNWebVideoRenderer *)self p_didStartVideo];
  }

  if (self->_needsToSendBuildEndCallback)
  {
    buildEndCallbackTarget = self->super._buildEndCallbackTarget;
    if (buildEndCallbackTarget)
    {
      buildEndCallbackSelector = self->super._buildEndCallbackSelector;
      if (needsToSendAmbientBuildStartCallback)
      {
        if (buildEndCallbackSelector)
        {
          v6 = self->super._buildEndCallbackSelector;
        }

        else
        {
          v6 = 0;
        }

        [buildEndCallbackTarget performSelector:v6 withObject:self afterDelay:0.0];
      }

      else if (buildEndCallbackSelector)
      {
        [buildEndCallbackTarget buildEndCallbackSelector];
      }

      else
      {
        [buildEndCallbackTarget 0];
      }
    }

    self->_needsToSendBuildEndCallback = 0;
  }

  self->_hasAmbientBuildStarted = 0;
}

- (void)p_startVideo
{
  selfCopy = [(KNWebVideoRenderer *)self buildInRenderer];
  v6 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  textureSet = [selfCopy textureSet];
  posterImageTextureSet = self->_posterImageTextureSet;
  self->_posterImageTextureSet = textureSet;
}

- (void)p_stopVideo
{
  [(KNWebVideoRenderer *)self p_cancelVideoAtStartTime];
  posterImageTextureSet = self->_posterImageTextureSet;
  self->_posterImageTextureSet = 0;
}

- (void)p_scheduleVideoAtStartTime
{
  self->_needsVideoAtStartTime = 1;
  if (self->_animationsPaused)
  {
    self->_playbackAtStartTimePauseTime = CACurrentMediaTime();
  }

  else
  {
    v3 = fmax(self->_startTime + self->_playbackAtStartTimePauseOffset - CACurrentMediaTime(), 0.0);

    [(KNWebVideoRenderer *)self performSelector:sel_p_showVideoAtStartTime withObject:0 afterDelay:v3];
  }
}

- (void)p_didFailWithError:(id)error
{
  [(KNWebVideoRenderer *)self p_stopVideo];

  MEMORY[0x2821F9670](self, sel_p_didStopVideo);
}

- (KNBuildRenderer)buildInRenderer
{
  WeakRetained = objc_loadWeakRetained(&self->_buildInRenderer);

  return WeakRetained;
}

@end