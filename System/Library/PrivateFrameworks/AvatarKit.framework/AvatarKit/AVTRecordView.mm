@interface AVTRecordView
- (AVTRecordView)init;
- (AVTRecordView)initWithCoder:(id)coder;
- (AVTRecordView)initWithFrame:(CGRect)frame;
- (AVTRecordView)initWithFrame:(CGRect)frame options:(id)options;
- (AVTRecordViewDelegate)recordDelegate;
- (BOOL)exportMovieToURL:(id)l options:(id)options completionHandler:(id)handler;
- (BOOL)faceIsFullyActive;
- (BOOL)mergeAudio:(id)audio andVideoTo:(id)to error:(id *)error;
- (double)_renderer:(id)_renderer inputTimeForCurrentFrameWithTime:(double)time;
- (double)currentAudioTime;
- (double)finalVideoDuration;
- (double)recordingDuration;
- (id)_tmpAudioURL;
- (id)_tmpMaskVideoURL;
- (id)_tmpVideoURL;
- (id)faceTrackingRecordingURL;
- (opaqueCMSampleBuffer)createSilentAudioAtFrame:(int64_t)frame nFrames:(int)frames sampleRate:(double)rate numChannels:(int)channels;
- (void)_avt_commonInit;
- (void)_didLostTrackingForAWhile;
- (void)_drawAtTime:(double)time;
- (void)_playLivePreviewAnimation;
- (void)_processInfoThermalStateDidChange:(id)change;
- (void)_renderer:(id)_renderer updateAtTime:(double)time;
- (void)_setEffectivePreferredFramesPerSecond;
- (void)_smoothRecordedData;
- (void)_updateFrameRateForThermalState:(int64_t)state;
- (void)_updateTrackingState;
- (void)addRecordedAnimationToAvatar:(id)avatar;
- (void)audioPlayerItemDidReachEnd:(id)end;
- (void)audioSessionDidInterrupt:(id)interrupt;
- (void)avatarDidChange;
- (void)cancelRecording;
- (void)cancelRecordingAudio;
- (void)convertRecordedDataToAnimationGroup;
- (void)dealloc;
- (void)drawableNotAvailableForTime:(double)time;
- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error;
- (void)faceTracker:(id)tracker session:(id)session didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended;
- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted;
- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame;
- (void)fadePuppetToWhite:(float)white;
- (void)finalizeAudioFile;
- (void)playPreviewOnce;
- (void)removeRecordedAnimationFromAvatar:(id)avatar;
- (void)setAvatar:(id)avatar;
- (void)setDisableRendering:(BOOL)rendering;
- (void)setFaceTrackingPaused:(BOOL)paused;
- (void)setFaceTrackingRecordingURL:(id)l;
- (void)setMute:(BOOL)mute;
- (void)setPlayBakedAnimation:(BOOL)animation;
- (void)startPlayingAudio;
- (void)startPreviewing;
- (void)startRecording;
- (void)startRecordingAudio;
- (void)stopPlayingAudio;
- (void)stopPreviewing;
- (void)stopRecording;
- (void)stopRecordingAudio;
- (void)transitionToFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations completionHandler:(id)handler;
- (void)trimRecordedData;
- (void)updateAudioState;
- (void)updateForChangedFaceTrackingPaused;
@end

@implementation AVTRecordView

- (void)_avt_commonInit
{
  self->_maxRecordingDuration = 30.0;
  faceTracker = [(AVTView *)self faceTracker];
  [faceTracker setShouldUseAudioData:?];

  [(AVTView *)self setEnableFaceTracking:?];
  layer = [(AVTRecordView *)self layer];
  backingLayer = self->_backingLayer;
  self->_backingLayer = layer;

  v6 = self->_backingLayer;
  objc_opt_class();
  if ([(CALayer *)v6 isMemberOfClass:?])
  {
    v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:?];
    v8 = [v7 BOOLForKey:?];
    self->_checkDrawableAvailable = [v7 BOOLForKey:?] ^ 1;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    v10 = [mainScreen maximumFramesPerSecond] > 60;

    LOBYTE(mainScreen) = v10 | v8;
    self->_doubleBuffer = ((v10 | v8) & 1) == 0;
    v12 = avt_default_log(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (mainScreen)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_1BB472000, v12, OS_LOG_TYPE_DEFAULT, "[Record view] Start with triple buffering enabled.", buf, 2u);
      }
    }

    else if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1BB472000, v12, OS_LOG_TYPE_DEFAULT, "[Record view] Start with low latency, double buffering enabled.", buf, 2u);
    }

    [(CALayer *)self->_backingLayer setMaximumDrawableCount:?];
    v14 = objc_opt_new();
    droppedDoubleBufferFrames = self->_droppedDoubleBufferFrames;
    self->_droppedDoubleBufferFrames = v14;

    if ([v7 BOOLForKey:?])
    {
      [(CALayer *)self->_backingLayer setAllowsDisplayCompositing:?];
    }
  }

  pointOfView = [(AVTRecordView *)self pointOfView];

  if (!pointOfView)
  {
    v18 = avt_default_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView _avt_commonInit];
    }
  }

  v19 = objc_alloc_init(MEMORY[0x1E696AD10]);
  audioLock = self->_audioLock;
  self->_audioLock = v19;

  v23.receiver = self;
  v23.super_class = AVTRecordView;
  self->_preferredFramesPerSecond_user = [(AVTRecordView *)&v23 preferredFramesPerSecond];
  self->_preferredFramesPerSecond_thermal = 60;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:? selector:? name:? object:?];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo thermalState];
  [(AVTRecordView *)self _updateFrameRateForThermalState:?];
}

- (AVTRecordView)init
{
  v5.receiver = self;
  v5.super_class = AVTRecordView;
  v2 = [(AVTRecordView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVTRecordView *)v2 _avt_commonInit];
  }

  return v3;
}

- (AVTRecordView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVTRecordView;
  v3 = [(AVTView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AVTRecordView *)v3 _avt_commonInit];
  }

  return v4;
}

- (AVTRecordView)initWithFrame:(CGRect)frame options:(id)options
{
  v7.receiver = self;
  v7.super_class = AVTRecordView;
  v4 = [(AVTView *)&v7 initWithFrame:options options:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(AVTRecordView *)v4 _avt_commonInit];
  }

  return v5;
}

- (AVTRecordView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AVTRecordView;
  v3 = [(AVTView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTRecordView *)v3 _avt_commonInit];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:? name:? object:?];

  v4.receiver = self;
  v4.super_class = AVTRecordView;
  [(AVTView *)&v4 dealloc];
}

- (void)_setEffectivePreferredFramesPerSecond
{
  preferredFramesPerSecond_thermal = self->_preferredFramesPerSecond_thermal;
  preferredFramesPerSecond_user = self->_preferredFramesPerSecond_user;
  if (preferredFramesPerSecond_thermal)
  {
    if (preferredFramesPerSecond_user)
    {
      if (preferredFramesPerSecond_user < preferredFramesPerSecond_thermal)
      {
        preferredFramesPerSecond_thermal = self->_preferredFramesPerSecond_user;
      }

      [(AVTRecordView *)&v6 setPreferredFramesPerSecond:preferredFramesPerSecond_thermal, v4.receiver, v4.super_class, v5.receiver, v5.super_class, self, AVTRecordView];
    }

    else
    {
      [(AVTRecordView *)&v5 setPreferredFramesPerSecond:preferredFramesPerSecond_thermal, v4.receiver, v4.super_class, self, AVTRecordView, v6.receiver, v6.super_class];
    }
  }

  else
  {
    [(AVTRecordView *)&v4 setPreferredFramesPerSecond:preferredFramesPerSecond_user, self, AVTRecordView, v5.receiver, v5.super_class, v6.receiver, v6.super_class];
  }
}

- (void)_updateFrameRateForThermalState:(int64_t)state
{
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:?];
  if (([v5 BOOLForKey:?] & 1) == 0)
  {
    if (state <= 3)
    {
      self->_preferredFramesPerSecond_thermal = qword_1BB4F0E90[state];
    }

    [(AVTRecordView *)self _setEffectivePreferredFramesPerSecond];
  }
}

- (void)_processInfoThermalStateDidChange:(id)change
{
  object = [change object];
  [object thermalState];
  [(AVTRecordView *)self _updateFrameRateForThermalState:?];
}

- (id)faceTrackingRecordingURL
{
  faceTracker = [(AVTView *)self faceTracker];
  faceTrackingRecordingURL = [faceTracker faceTrackingRecordingURL];

  return faceTrackingRecordingURL;
}

- (void)setFaceTrackingRecordingURL:(id)l
{
  lCopy = l;
  faceTracker = [(AVTView *)self faceTracker];
  [faceTracker setFaceTrackingRecordingURL:?];
}

- (void)faceTracker:(id)tracker session:(id)session didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  [(NSLock *)self->_audioLock lock];
  if (self->_audioWriterInput)
  {
    p_currentAudioTime = &self->_currentAudioTime;
    CMSampleBufferGetPresentationTimeStamp(&v10, buffer);
    self->_currentAudioTime = v10;
    if (!self->_audioIsRecording)
    {
      audioWriter = self->_audioWriter;
      *&v10.value = *&p_currentAudioTime->value;
      v10.epoch = self->_currentAudioTime.epoch;
      [(AVAssetWriter *)audioWriter startSessionAtSourceTime:*&v10.value, v10.epoch];
      epoch = self->_currentAudioTime.epoch;
      *&self->_startAudioTime.value = *&p_currentAudioTime->value;
      self->_startAudioTime.epoch = epoch;
      self->_audioIsRecording = 1;
    }

    if ([(AVAssetWriterInput *)self->_audioWriterInput isReadyForMoreMediaData])
    {
      self->_recordedSampleCount += CMSampleBufferGetNumSamples(buffer);
      [(AVAssetWriterInput *)self->_audioWriterInput appendSampleBuffer:?];
    }
  }

  [(NSLock *)self->_audioLock unlock];
}

- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  recordDelegate = [(AVTRecordView *)self recordDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    recordDelegate2 = [(AVTRecordView *)self recordDelegate];
    [recordDelegate2 recordView:? session:? didFailWithError:?];
  }

  faceTrackingDelegate = [(AVTView *)self faceTrackingDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    faceTrackingDelegate2 = [(AVTView *)self faceTrackingDelegate];
    [faceTrackingDelegate2 avatarView:? faceTrackingSessionFailedWithError:?];
  }
}

- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  recordDelegate = [(AVTRecordView *)self recordDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    recordDelegate2 = [(AVTRecordView *)self recordDelegate];
    [recordDelegate2 recordView:? sessionWasInterrupted:?];
  }

  faceTrackingDelegate = [(AVTView *)self faceTrackingDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    faceTrackingDelegate2 = [(AVTView *)self faceTrackingDelegate];
    [faceTrackingDelegate2 avatarViewFaceTrackingSessionInterruptionDidBegin:?];
  }
}

- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended
{
  endedCopy = ended;
  recordDelegate = [(AVTRecordView *)self recordDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    recordDelegate2 = [(AVTRecordView *)self recordDelegate];
    [recordDelegate2 recordView:? sessionInterruptionEnded:?];
  }

  faceTrackingDelegate = [(AVTView *)self faceTrackingDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    faceTrackingDelegate2 = [(AVTView *)self faceTrackingDelegate];
    [faceTrackingDelegate2 avatarViewFaceTrackingSessionInterruptionDidEnd:?];
  }
}

- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame
{
  updateCopy = update;
  v25.receiver = self;
  v25.super_class = AVTRecordView;
  [(AVTView *)&v25 faceTrackerDidUpdate:updateCopy withARFrame:frame];
  if (!self->_exportingMovie)
  {
    if ([updateCopy faceIsTracked] && !self->_exportingMovie)
    {
      [(AVTView *)self faceTrackingIsPaused];
    }

    [(AVTView *)self setRendersContinuously:?];
    if (self->_recording)
    {
      if (self->_recordedCount >= self->_recordingCapacity)
      {
        [(AVTRecordView *)self stopRecording];
      }

      else
      {
        faceTrackingInfo = [updateCopy faceTrackingInfo];
        trackingData = [faceTrackingInfo trackingData];
        [(NSMutableData *)self->_rawTimesData increaseLengthBy:?];
        v9 = *trackingData;
        [(NSMutableData *)self->_rawTimesData mutableBytes][self->_recordedCount] = v9;
        [(NSMutableData *)self->_rawBlendShapesData increaseLengthBy:?];
        v10 = ([(NSMutableData *)self->_rawBlendShapesData mutableBytes]+ 204 * self->_recordedCount);
        *v10 = *(trackingData + 16);
        v11 = *(trackingData + 25);
        v12 = *(trackingData + 26);
        v13 = *(trackingData + 27);
        *(v10 + 188) = *(trackingData + 444);
        v10[10] = v12;
        v10[11] = v13;
        v10[9] = v11;
        v14 = *(trackingData + 21);
        v15 = *(trackingData + 22);
        v16 = *(trackingData + 24);
        v10[7] = *(trackingData + 23);
        v10[8] = v16;
        v10[5] = v14;
        v10[6] = v15;
        v17 = *(trackingData + 17);
        v18 = *(trackingData + 18);
        v19 = *(trackingData + 20);
        v10[3] = *(trackingData + 19);
        v10[4] = v19;
        v10[1] = v17;
        v10[2] = v18;
        [(NSMutableData *)self->_rawTransformsData increaseLengthBy:?];
        v20 = &[(NSMutableData *)self->_rawTransformsData mutableBytes][8 * self->_recordedCount];
        [updateCopy rawTransform];
        *v20 = v21;
        v20[1] = v22;
        v20[2] = v23;
        v20[3] = v24;
        [(NSMutableData *)self->_rawParametersData increaseLengthBy:?];
        *([(NSMutableData *)self->_rawParametersData mutableBytes]+ self->_recordedCount++) = *(trackingData + 116);
      }
    }
  }
}

- (void)transitionToFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations completionHandler:(id)handler
{
  animationsCopy = animations;
  handlerCopy = handler;
  if (!self->_exportingMovie && !self->_playing)
  {
    v13.receiver = self;
    v13.super_class = AVTRecordView;
    [(AVTView *)&v13 transitionToFaceTrackingWithDuration:style style:animationsCopy enableBakedAnimations:handlerCopy completionHandler:duration];
    goto LABEL_9;
  }

  avatar = [(AVTView *)self avatar];
  [avatar setPose:?];

  avatar2 = [(AVTView *)self avatar];
  [avatar2 stopTransitionAnimation];

  if ([(AVTView *)self enableFaceTracking])
  {
    [(AVTRecordView *)self setFaceTrackingPaused:?];
    if (!handlerCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  [(AVTView *)self setEnableFaceTracking:?];
  if (handlerCopy)
  {
LABEL_7:
    handlerCopy[2](handlerCopy);
  }

LABEL_9:
}

- (void)_didLostTrackingForAWhile
{
  recordDelegate = [(AVTRecordView *)self recordDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    recordDelegate2 = [(AVTRecordView *)self recordDelegate];
    [recordDelegate2 recordViewDidLostTrackingWhileRecording:?];
  }
}

- (void)_renderer:(id)_renderer updateAtTime:(double)time
{
  _rendererCopy = _renderer;
  if ([(AVTRecordView *)self isPreviewing])
  {
    memset(&v12, 0, sizeof(v12));
    if (self->_audioPlayer)
    {
      [&v12 currentTime];
    }

    v11 = v12;
    v7 = fmax(CMTimeGetSeconds(&v11), 0.0);
    if (v7 == 0.0 || self->_lastAudioPlayerTime != v7)
    {
      self->_lastAudioPlayerTime = v7;
      self->_lastAudioSystemTime = time;
    }

    world = [_rendererCopy world];
    clock = [world clock];
    [clock setTime:?];
  }

  [(AVTView *)self updateAtTime:?];
}

- (double)_renderer:(id)_renderer inputTimeForCurrentFrameWithTime:(double)time
{
  result = 0.0;
  if (!self->_playing && !self->_exportingMovie)
  {
    [(AVTView *)self currentlyRenderedTrackingDate];
    if (result == 0.0)
    {
      return time;
    }
  }

  return result;
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = AVTRecordView;
  [(AVTView *)&v5 setAvatar:avatarCopy];

  kdebug_trace();
}

- (void)avatarDidChange
{
  [(AVTView *)self lockAvatar];
  [(AVTRecordView *)self convertRecordedDataToAnimationGroup];
  environment = [(AVTView *)self environment];
  avatar = [(AVTView *)self avatar];
  presentationConfiguration = [(AVTView *)self presentationConfiguration];
  [environment avatarDidChange:? presentationConfiguration:?];

  if (!self->_recordedAnimationGroup)
  {
    self->_referenceAnimationBeginTime = CACurrentMediaTime();
  }

  avatar2 = [(AVTView *)self avatar];
  [avatar2 setBakedAnimationReferenceTime:?];

  [(AVTView *)self unlockAvatar];
}

- (void)startRecording
{
  [(AVTView *)self lockAvatar];
  self->_playing = 0;
  self->_recordingCapacity = (self->_maxRecordingDuration * 60.0);
  v3 = [MEMORY[0x1E695DF88] dataWithCapacity:?];
  rawTimesData = self->_rawTimesData;
  self->_rawTimesData = v3;

  v5 = [MEMORY[0x1E695DF88] dataWithCapacity:?];
  rawBlendShapesData = self->_rawBlendShapesData;
  self->_rawBlendShapesData = v5;

  v7 = [MEMORY[0x1E695DF88] dataWithCapacity:?];
  rawTransformsData = self->_rawTransformsData;
  self->_rawTransformsData = v7;

  v9 = [MEMORY[0x1E695DF88] dataWithCapacity:?];
  rawParametersData = self->_rawParametersData;
  self->_rawParametersData = v9;

  self->_recording = 1;
  self->_recordingStartTime = CACurrentMediaTime();
  self->_recordedCount = 0;
  recordedAnimationGroup = self->_recordedAnimationGroup;
  self->_recordedAnimationGroup = 0;

  faceTracker = [(AVTView *)self faceTracker];
  [faceTracker startRecording];

  [(AVTRecordView *)self cancelRecordingAudio];
  [(AVTRecordView *)self startRecordingAudio];

  [(AVTView *)self unlockAvatar];
}

- (void)cancelRecording
{
  [(AVTView *)self lockAvatar];
  rawTimesData = self->_rawTimesData;
  self->_rawTimesData = 0;

  rawBlendShapesData = self->_rawBlendShapesData;
  self->_rawBlendShapesData = 0;

  rawTransformsData = self->_rawTransformsData;
  self->_rawTransformsData = 0;

  rawParametersData = self->_rawParametersData;
  self->_rawParametersData = 0;

  self->_recording = 0;
  self->_recordedCount = 0;
  recordedAnimationGroup = self->_recordedAnimationGroup;
  self->_recordedAnimationGroup = 0;

  faceTracker = [(AVTView *)self faceTracker];
  [faceTracker stopRecording];

  [(AVTRecordView *)self cancelRecordingAudio];

  [(AVTView *)self unlockAvatar];
}

- (void)_smoothRecordedData
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)stopRecording
{
  [(AVTView *)self lockAvatar];
  if (self->_recording)
  {
    self->_recording = 0;
    faceTracker = [(AVTView *)self faceTracker];
    [faceTracker stopRecording];

    [(AVTRecordView *)self stopRecordingAudio];
    [(AVTRecordView *)self trimRecordedData];
    [(AVTRecordView *)self finalizeAudioFile];
    [(AVTRecordView *)self _smoothRecordedData];
    [(AVTRecordView *)self convertRecordedDataToAnimationGroup];
  }

  [(AVTView *)self unlockAvatar];
}

- (void)addRecordedAnimationToAvatar:(id)avatar
{
  avatarCopy = avatar;
  [avatarCopy pauseBakedAnimation];
  v4 = self->_recordedAnimationGroup;
  bakedAnimationCopy = [avatarCopy bakedAnimationCopy];
  v6 = bakedAnimationCopy;
  if (bakedAnimationCopy)
  {
    [bakedAnimationCopy setBeginTime:?];
    [v6 setTimeOffset:?];
    v7 = [(CAAnimationGroup *)v4 copy];

    animations = [(CAAnimationGroup *)v7 animations];
    v9 = [animations arrayByAddingObject:?];
    [(CAAnimationGroup *)v7 setAnimations:?];

    v4 = v7;
  }

  v10 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:?];
  [v10 setRemovedOnCompletion:?];
  avatarNode = [avatarCopy avatarNode];
  [avatarNode addAnimation:? forKey:?];
}

- (void)removeRecordedAnimationFromAvatar:(id)avatar
{
  avatarCopy = avatar;
  avatarNode = [avatarCopy avatarNode];
  [avatarNode removeAnimationForKey:?];

  [avatarCopy resumeBakedAnimation];
}

- (void)_playLivePreviewAnimation
{
  avatar = [(AVTView *)self avatar];
  environment = [(AVTView *)self environment];
  showReticle = [environment showReticle];

  if (showReticle)
  {
    environment2 = [(AVTView *)self environment];
    [environment2 setShowReticle:?];

    [(AVTView *)self setFaceIsTracked:?];
  }

  [(AVTRecordView *)self addRecordedAnimationToAvatar:?];
}

- (void)startPreviewing
{
  [(AVTView *)self lockAvatar];
  self->_playing = 1;
  [(AVTRecordView *)self _playLivePreviewAnimation];
  [(AVTRecordView *)self updateAudioState];
  [(AVTRecordView *)self _updateTrackingState];
  [(AVTView *)self unlockAvatar];
  recordDelegate = [(AVTRecordView *)self recordDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    recordDelegate2 = [(AVTRecordView *)self recordDelegate];
    [recordDelegate2 recordView:? previewDidChangeStatus:?];
  }
}

- (void)playPreviewOnce
{
  if (self->_playing)
  {
    recordDelegate = [(AVTRecordView *)self recordDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      recordDelegate2 = [(AVTRecordView *)self recordDelegate];
      [recordDelegate2 recordView:? previewDidChangeStatus:?];
    }

    [(AVTView *)self lockAvatar];
    [(AVTRecordView *)self _playLivePreviewAnimation];
    [(AVTRecordView *)self stopPlayingAudio];
    [(AVTRecordView *)self startPlayingAudio];
    [(AVTRecordView *)self _updateTrackingState];
    [(AVTView *)self unlockAvatar];
    recordDelegate3 = [(AVTRecordView *)self recordDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      recordDelegate4 = [(AVTRecordView *)self recordDelegate];
      [recordDelegate4 recordView:? previewDidChangeStatus:?];
    }
  }

  else
  {

    [(AVTRecordView *)self startPreviewing];
  }
}

- (void)stopPreviewing
{
  [(AVTView *)self lockAvatar];
  self->_playing = 0;
  avatar = [(AVTView *)self avatar];
  [(AVTRecordView *)self removeRecordedAnimationFromAvatar:?];
  [(AVTRecordView *)self updateAudioState];
  [(AVTRecordView *)self stopPlayingAudio];
  [(AVTRecordView *)self _updateTrackingState];
  [(AVTView *)self unlockAvatar];
  recordDelegate = [(AVTRecordView *)self recordDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    recordDelegate2 = [(AVTRecordView *)self recordDelegate];
    [recordDelegate2 recordView:? previewDidChangeStatus:?];
  }
}

- (void)setPlayBakedAnimation:(BOOL)animation
{
  if (self->_playBakedAnimation != animation)
  {
    self->_playBakedAnimation = animation;
    [(AVTRecordView *)self _updateTrackingState];
  }
}

- (void)setDisableRendering:(BOOL)rendering
{
  if (self->_disableRendering != rendering)
  {
    self->_disableRendering = rendering;
    world = [(AVTRecordView *)self world];
    rootNode = [world rootNode];
    [rootNode setHidden:?];
  }
}

- (void)_updateTrackingState
{
  if (self->_playBakedAnimation || [(AVTView *)self faceTrackingIsPaused]|| self->_playing || self->_exportingMovie)
  {
    faceTracker = [(AVTView *)self faceTracker];
    [faceTracker pauseByPausingARSession];
  }

  else
  {
    faceTracker = [(AVTView *)self faceTracker];
    [faceTracker run];
  }
}

- (void)setFaceTrackingPaused:(BOOL)paused
{
  if (!self->_playing)
  {
    v3.receiver = self;
    v3.super_class = AVTRecordView;
    [(AVTView *)&v3 setFaceTrackingPaused:paused];
  }
}

- (void)updateForChangedFaceTrackingPaused
{
  [(AVTView *)self faceTrackingIsPaused];
  world = [(AVTRecordView *)self world];
  clock = [world clock];
  [clock setPaused:?];

  [(AVTRecordView *)self _updateTrackingState];
}

- (BOOL)faceIsFullyActive
{
  environment = [(AVTView *)self environment];
  faceIsFullyVisible = [environment faceIsFullyVisible];

  return faceIsFullyVisible;
}

- (void)trimRecordedData
{
  mutableBytes = [(NSMutableData *)self->_rawTimesData mutableBytes];
  mutableBytes2 = [(NSMutableData *)self->_rawBlendShapesData mutableBytes];
  __dst = [(NSMutableData *)self->_rawTransformsData mutableBytes];
  mutableBytes3 = [(NSMutableData *)self->_rawParametersData mutableBytes];
  time = self->_startAudioTime;
  Seconds = CMTimeGetSeconds(&time);
  time = self->_stopAudioTime;
  v6 = CMTimeGetSeconds(&time);
  recordedCount = self->_recordedCount;
  if (recordedCount < 1)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = 0;
    while (mutableBytes[v8] <= Seconds)
    {
      if (recordedCount == ++v8)
      {
        LODWORD(v8) = self->_recordedCount;
        goto LABEL_12;
      }
    }
  }

  if (v8 >= recordedCount)
  {
LABEL_12:
    v9 = v8;
    LODWORD(recordedCount) = v8;
  }

  else
  {
    v9 = v8;
    v10 = v8;
    while (mutableBytes[v10] <= v6)
    {
      if (recordedCount <= ++v10)
      {
        goto LABEL_14;
      }
    }

    LODWORD(recordedCount) = v10;
  }

LABEL_14:
  v11 = recordedCount - v8;
  self->_recordedCount = v11;
  memmove(mutableBytes, &mutableBytes[v9], 8 * v11);
  [(NSMutableData *)self->_rawTimesData setLength:?];
  memmove(mutableBytes2, &mutableBytes2[4 * (51 * v8)], 204 * self->_recordedCount);
  [(NSMutableData *)self->_rawBlendShapesData setLength:?];
  memmove(__dst, &__dst[64 * v9], self->_recordedCount << 6);
  [(NSMutableData *)self->_rawTransformsData setLength:?];
  memmove(mutableBytes3, &mutableBytes3[4 * v9], 4 * self->_recordedCount);
  [(NSMutableData *)self->_rawParametersData setLength:?];
}

- (double)recordingDuration
{
  mutableBytes = [(NSMutableData *)self->_rawTimesData mutableBytes];
  recordedCount = self->_recordedCount;
  if (recordedCount <= 1)
  {
    recordedCount = 1;
  }

  return mutableBytes[recordedCount - 1] - *mutableBytes;
}

- (double)finalVideoDuration
{
  v17 = *MEMORY[0x1E69E9840];
  recordingDuration = [(AVTRecordView *)self recordingDuration];
  v4 = v3 + 0.25;
  *&v3 = (v3 + 0.25) * 60.0;
  v5 = vcvtps_u32_f32(*&v3);
  v6 = avt_default_log(recordingDuration);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v4;
    v9 = 134218752;
    v10 = (v5 / 60.0);
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = 60;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_1BB472000, v6, OS_LOG_TYPE_DEFAULT, "[Record view] Final video duration: %.3fs (for %d frames at %dfps ; exact duration: %.3fs)", &v9, 0x22u);
  }

  return (v5 / 60.0);
}

- (void)convertRecordedDataToAnimationGroup
{
  [(NSMutableData *)self->_rawTimesData mutableBytes];
  mutableBytes = [(NSMutableData *)self->_rawBlendShapesData mutableBytes];
  mutableBytes2 = [(NSMutableData *)self->_rawTransformsData mutableBytes];
  mutableBytes3 = [(NSMutableData *)self->_rawParametersData mutableBytes];
  if (self->_recordedCount)
  {
    v6 = mutableBytes3;
    [(AVTRecordView *)self recordingDuration];
    if (v7 > 0.0)
    {
      v8 = v7;
      v42 = mutableBytes;
      v40 = mutableBytes2;
      v9 = self->_recordedCount + 1;
      v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v45 = v9;
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
      v11 = [MEMORY[0x1E69793D0] functionWithName:?];
      if (self->_recordedCount > 1)
      {
        v12 = 0;
        do
        {
          [v10 addObject:?];
          ++v12;
        }

        while (v12 < self->_recordedCount - 1);
      }

      v13 = v8 + 0.25;
      v14 = [MEMORY[0x1E69793D0] functionWithName:?];
      [v10 addObject:?];

      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
      if (self->_recordedCount >= 1)
      {
        v16 = 0;
        do
        {
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v15 addObject:?];

          ++v16;
        }

        while (v16 < self->_recordedCount);
      }

      [v15 addObject:?];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke;
      v59[3] = &__block_descriptor_48_e37_f40__0Q8Q16__NSNumber_24__NSNumber_32l;
      v59[4] = v42;
      v59[5] = v6;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v51 = __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke_2;
      v52 = &unk_1E7F49E40;
      selfCopy = self;
      v56 = v13;
      v43 = v10;
      v54 = v43;
      v57 = v45;
      v58 = v59;
      v41 = v15;
      v55 = v41;
      v18 = AVTBlendShapeLocationToARIndex(*MEMORY[0x1E6986408]);
      v48 = 0u;
      v49 = 0u;
      avatar = [(AVTView *)self avatar];
      if (avatar)
      {
        [&v48 morphInfoForARKitBlendShapeIndex:?];
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      if (BYTE8(v49) == 1)
      {
        v20 = v51(v50, v18, 0);
        if (v20)
        {
          [v44 addObject:?];
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = 0;
      v22 = 0uLL;
      do
      {
        if (v18 != v21)
        {
          v46 = v22;
          v47 = v22;
          avatar2 = [(AVTView *)self avatar];
          if (avatar2)
          {
            [&v46 morphInfoForARKitBlendShapeIndex:?];
          }

          else
          {
            v46 = 0u;
            v47 = 0u;
          }

          if (BYTE8(v47))
          {
            v24 = v51(v50, v21, v20);
            if (v24)
            {
              [v44 addObject:?];
            }
          }

          v22 = 0uLL;
        }

        ++v21;
      }

      while (v21 != 52);
      v25 = [MEMORY[0x1E6979390] animationWithKeyPath:?];
      [v25 setDuration:?];
      [v25 setFillMode:?];
      [v25 setTimingFunctions:?];
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
      if (self->_recordedCount)
      {
        v27 = 0;
        v28 = v40 + 48;
        do
        {
          v28 += 64;
          v29 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
          [v26 addObject:?];

          ++v27;
        }

        while (v27 < self->_recordedCount);
      }

      v30 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
      [v26 addObject:?];

      [v25 setKeyTimes:?];
      [v25 setValues:?];
      [v44 addObject:?];
      v31 = [MEMORY[0x1E6979390] animationWithKeyPath:?];

      [v31 setDuration:?];
      [v31 setFillMode:?];
      v39 = v31;
      [v31 setTimingFunctions:?];
      v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];

      if (self->_recordedCount)
      {
        v33 = 0;
        v34 = v40 + 32;
        do
        {
          if (![(AVTView *)self arMode])
          {
            [AVTAvatar applyGazeCorrectionWithInputAngle:"applyGazeCorrectionWithInputAngle:translation:" translation:?];
          }

          v35 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
          [v32 addObject:?];

          ++v33;
          v34 += 64;
        }

        while (v33 < self->_recordedCount);
      }

      v36 = [v32 objectAtIndex:?];
      [v32 addObject:?];

      [v39 setKeyTimes:?];
      [v39 setValues:?];
      [v44 addObject:?];
      animation = [MEMORY[0x1E6979308] animation];
      [(CAAnimationGroup *)animation setAnimations:?];
      [(CAAnimationGroup *)animation setDuration:?];
      [(CAAnimationGroup *)animation setFillMode:?];
      recordedAnimationGroup = self->_recordedAnimationGroup;
      self->_recordedAnimationGroup = animation;
    }
  }
}

float __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (a2 > 0x32)
  {
    v11 = (*(a1 + 40) + 4 * a2 + 4 * a3 - 204);
  }

  else
  {
    v11 = (*(a1 + 32) + 204 * a3 + 4 * a2);
  }

  v12 = *v11;
  v13 = AVTBlendShapeLocationFromARIndex(a2);
  v14 = AVTMorphWeightApplyBlinkCorrection(v13, v12);
  v15 = AVTBlendShapeLocationFromARIndex(a2);

  if (v9 && v15 == *MEMORY[0x1E6986408])
  {
    [v9 floatValue];
    v14 = v16 + ((v14 - v16) * 0.3);
  }

  if (v10)
  {
    [v10 floatValue];
    v18 = v17;
  }

  else
  {
    v18 = -1.0;
  }

  v19 = AVTMorphWeightApplyCorrectionForTongue(v13, v14, v18);

  return v19;
}

id __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v30 = 0u;
  v31 = 0u;
  v6 = [*(a1 + 32) avatar];
  if (v6)
  {
    [&v30 morphInfoForARKitBlendShapeIndex:?];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = AVTBlendShapeLocationFromARIndex(a2);
    v9 = [*(&v30 + 1) name];
    if (!v9)
    {
      __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke_2_cold_2();
    }

    v10 = MEMORY[0x1E6979390];
    v28 = v9;
    v29 = v8;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v8];
    v12 = [v10 animationWithKeyPath:?];

    [v12 setDuration:?];
    [v12 setFillMode:?];
    v27 = v12;
    [v12 setTimingFunctions:?];
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
    if (*(*(a1 + 32) + 872))
    {
      v14 = 0;
      do
      {
        v15 = *(a1 + 72);
        v16 = [v13 lastObject];
        v17 = [v5 values];
        v18 = [v17 objectAtIndexedSubscript:?];
        v19 = (*(v15 + 16))(v15, a2, v14, v16, v18);

        if (v19 == -1.0)
        {
          __52__AVTRecordView_convertRecordedDataToAnimationGroup__block_invoke_2_cold_1();
        }

        v20 = [MEMORY[0x1E696AD98] numberWithFloat:?];
        [v13 addObject:?];

        ++v14;
      }

      while (v14 < *(*(a1 + 32) + 872));
    }

    v21 = *(a1 + 72);
    v22 = [v13 lastObject];
    v23 = [v5 values];
    v24 = [v23 objectAtIndexedSubscript:?];
    (*(v21 + 16))(v21, a2, 0, v22, v24);

    v25 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [v13 addObject:?];

    v7 = v27;
    [v27 setKeyTimes:?];
    [v27 setValues:?];
  }

  return v7;
}

- (id)_tmpAudioURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  v4 = [temporaryDirectory URLByAppendingPathComponent:?];

  return v4;
}

- (id)_tmpVideoURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  v4 = [temporaryDirectory URLByAppendingPathComponent:?];

  return v4;
}

- (id)_tmpMaskVideoURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  v4 = [temporaryDirectory URLByAppendingPathComponent:?];

  return v4;
}

- (BOOL)mergeAudio:(id)audio andVideoTo:(id)to error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  audioCopy = audio;
  toCopy = to;
  composition = [MEMORY[0x1E6988048] composition];
  _tmpVideoURL = [(AVTRecordView *)self _tmpVideoURL];
  v7 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:? options:?];
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = avt_default_log(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AVTRecordView mergeAudio:andVideoTo:error:];
  }

  sleep(1u);
  v7 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:? options:?];
  if (v7)
  {
LABEL_5:
    memset(&v51, 0, sizeof(v51));
    [&duration duration];
    v9 = 0;
  }

  else
  {
    v40 = avt_default_log(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView mergeAudio:andVideoTo:error:];
    }

    v7 = 0;
    memset(&v51, 0, sizeof(v51));
    memset(&duration, 0, 24);
    v9 = 1;
  }

  v41 = *MEMORY[0x1E6960CC0];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  start.start.epoch = v10;
  CMTimeRangeMake(&v51, &start.start, &duration.start);
  if (!self->_mute)
  {
    memset(&duration, 0, sizeof(duration));
    if (v9)
    {
      memset(&start, 0, 24);
    }

    else
    {
      [&start duration];
    }

    *&v50.value = v41;
    v50.epoch = v10;
    CMTimeRangeMake(&duration, &v50, &start.start);
    v11 = [composition addMutableTrackWithMediaType:? preferredTrackID:?];
    v12 = [audioCopy tracksWithMediaType:?];
    firstObject = [v12 firstObject];

    if (firstObject)
    {
      start = duration;
      *&v50.value = v41;
      v50.epoch = v10;
      [v11 insertTimeRange:? ofTrack:? atTime:? error:?];
    }

    else
    {
      v15 = avt_default_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AVTRecordView mergeAudio:audioCopy andVideoTo:? error:?];
      }
    }
  }

  v44 = [composition addMutableTrackWithMediaType:v41 preferredTrackID:?];
  v16 = [v7 tracksWithMediaType:?];
  firstObject2 = [v16 firstObject];

  if (firstObject2)
  {
    duration = v51;
    *&start.start.value = v42;
    start.start.epoch = v10;
    [v44 insertTimeRange:? ofTrack:? atTime:? error:?];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [toCopy path];
    v21 = [defaultManager fileExistsAtPath:?];

    if (v21)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [toCopy path];
      [defaultManager2 removeItemAtPath:? error:?];
    }

    v24 = [objc_alloc(MEMORY[0x1E6987E60]) initWithAsset:? presetName:?];
    [v24 setOutputFileType:?];
    [v24 setOutputURL:?];
    metadataItem = [MEMORY[0x1E6988050] metadataItem];
    [metadataItem setKeySpace:?];
    [metadataItem setKey:?];
    LODWORD(start.start.value) = 0;
    [metadataItem setDataType:?];
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    [metadataItem setValue:?];

    metadataItem2 = [MEMORY[0x1E6988050] metadataItem];
    [metadataItem2 setKeySpace:?];
    [metadataItem2 setKey:?];
    [metadataItem2 setDataType:?];
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    [metadataItem2 setValue:?];

    v52 = metadataItem;
    v53 = metadataItem2;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [v24 setMetadata:?];

    v30 = dispatch_semaphore_create(0);
    v31 = avt_default_log(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(duration.start.value) = 138412290;
      *(&duration.start.value + 4) = v24;
      _os_log_impl(&dword_1BB472000, v31, OS_LOG_TYPE_DEFAULT, "[Record view] Video export will start with session %@", &duration, 0xCu);
    }

    duration.start.value = 0;
    *&duration.start.timescale = &duration;
    duration.start.epoch = 0x3032000000;
    duration.duration.value = __Block_byref_object_copy__8;
    *&duration.duration.timescale = __Block_byref_object_dispose__8;
    duration.duration.epoch = 0;
    v32 = v24;
    v33 = v30;
    [v32 exportAsynchronouslyWithCompletionHandler:?];
    v34 = dispatch_time(0, 20000000000);
    dispatch_semaphore_wait(v33, v34);
    v35 = *(*&duration.start.timescale + 40);
    v36 = v35 == 0;
    if (error && v35)
    {
      *error = v35;
    }

    _Block_object_dispose(&duration, 8);
  }

  else
  {
    v37 = avt_default_log(v18);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView mergeAudio:v7 andVideoTo:audioCopy error:?];
    }

    if (!error)
    {
      v36 = 0;
      goto LABEL_30;
    }

    v38 = MEMORY[0x1E696ABC0];
    v54 = *MEMORY[0x1E696A578];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    v55 = v32;
    metadataItem = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    [v38 errorWithDomain:? code:? userInfo:?];
    *error = v36 = 0;
  }

LABEL_30:
  return v36;
}

intptr_t __45__AVTRecordView_mergeAudio_andVideoTo_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) status];
  if (v3 == 3 && ([*v2 error], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = avt_default_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Record view] Video export did complete", v10, 2u);
    }
  }

  else
  {
    v5 = avt_default_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__AVTRecordView_mergeAudio_andVideoTo_error___block_invoke_cold_1(v2);
    }
  }

  v6 = [*(a1 + 32) error];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)fadePuppetToWhite:(float)white
{
  environment = [(AVTView *)self environment];
  [environment setFadeFactor:?];
}

- (BOOL)exportMovieToURL:(id)l options:(id)options completionHandler:(id)handler
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = COERCE_DOUBLE(l);
  optionsCopy = options;
  handlerCopy = handler;
  [(AVTRecordView *)self stopRecording];
  world = [(AVTRecordView *)self world];

  if (world)
  {
    exportingMovie = self->_exportingMovie;
    v14 = avt_default_log(v12);
    v15 = v14;
    if (exportingMovie)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AVTRecordView exportMovieToURL:options:completionHandler:];
      }

      v16 = 0;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v8;
        _os_log_impl(&dword_1BB472000, v15, OS_LOG_TYPE_DEFAULT, "[Record view] Video export: exporting movie to %@", buf, 0xCu);
      }

      self->_exportingMovie = 1;
      currentProgress = [MEMORY[0x1E696AE38] currentProgress];
      v50 = v8;
      if (currentProgress)
      {
        v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:?];
      }

      else
      {
        v15 = 0;
      }

      [v15 becomeCurrentWithPendingUnitCount:?];
      [(AVTRecordView *)self _updateTrackingState];
      [(AVTRecordView *)self fadePuppetToWhite:?];
      pointOfView = [(AVTRecordView *)self pointOfView];
      camera = [pointOfView camera];
      [pointOfView position];
      [camera zFar];
      [(AVTView *)self lockAvatar];
      [MEMORY[0x1E69DF378] lock];
      avatar = [(AVTView *)self avatar];
      v21 = [avatar copy];

      [v21 updateWithOptions:?];
      [(AVTRecordView *)self addRecordedAnimationToAvatar:?];
      [0x370 duration];
      v23 = v22;
      [MEMORY[0x1E69DF378] unlock];
      unlockAvatar = [(AVTView *)self unlockAvatar];
      v16 = v23 > 0.0166666667;
      if (v23 > 0.0166666667)
      {
        v25 = avt_default_log(unlockAvatar);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v23;
          *buf = 134217984;
          v61 = v26;
          _os_log_impl(&dword_1BB472000, v25, OS_LOG_TYPE_DEFAULT, "[Record view] Video export: scene duration %.3fs", buf, 0xCu);
        }

        v27 = [optionsCopy objectForKeyedSubscript:?];
        v49 = camera;
        v46 = v27;
        v47 = handlerCopy;
        if (v27)
        {
          [v27 CGSizeValue];
        }

        v28 = [optionsCopy mutableCopy];
        v29 = [optionsCopy objectForKeyedSubscript:?];
        if (v29)
        {
          [v28 setObject:? forKeyedSubscript:?];
          [v28 removeObjectForKey:?];
        }

        v45 = v29;
        v30 = [optionsCopy objectForKeyedSubscript:?];
        bOOLValue = [v30 BOOLValue];

        v31 = [optionsCopy objectForKeyedSubscript:?];

        if (v31)
        {
          [v28 removeObjectForKey:?];
        }

        if (bOOLValue)
        {
          [v28 setObject:? forKeyedSubscript:?];
        }

        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
        [v28 setObject:? forKeyedSubscript:?];

        [v28 removeObjectForKey:?];
        [v28 removeObjectForKey:?];
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
        [v28 setObject:? forKeyedSubscript:?];

        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
        v35 = [VFXRenderer rendererWithDevice:"rendererWithDevice:options:" options:?];

        [v35 set_superSamplingFactor:?];
        if (bOOLValue)
        {
          [MEMORY[0x1E69DC888] clearColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] whiteColor];
        }
        v36 = ;
        [v35 setBackgroundColor:?];

        [v35 setAvatar:?];
        world2 = [v35 world];
        [world2 setStartTime:?];
        [world2 setEndTime:?];
        [MEMORY[0x1E69DF378] begin];
        [MEMORY[0x1E69DF378] setAnimationDuration:?];
        [pointOfView setPosition:?];
        [v49 zFar];
        [v49 setZFar:?];
        v38 = MEMORY[0x1E69DF378];
        v51 = v15;
        v52 = v35;
        v53 = v28;
        v54 = world2;
        v55 = *&v50;
        v56 = v21;
        v59 = v47;
        v57 = pointOfView;
        v58 = v49;
        v39 = world2;
        v40 = v28;
        handlerCopy = v47;
        v41 = v40;
        v42 = v35;
        v43 = v38;
        camera = v49;
        [v43 setCompletionBlock:?];
        [MEMORY[0x1E69DF378] commit];
      }

      v8 = v50;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  [*(a1 + 48) setRendersContinuously:?];
  v2 = [*(a1 + 48) world];
  v3 = [v2 clock];
  [v3 setPaused:?];

  [*(a1 + 56) resignCurrent];
  [*(a1 + 56) becomeCurrentWithPendingUnitCount:?];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = [*(a1 + 48) _tmpVideoURL];
  v6 = [v5 path];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:?];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtPath:? error:?];
  }

  v10 = [*(a1 + 64) renderMovieToURL:? size:? antialiasingMode:? attributes:? error:?];
  v11 = 0;
  v12 = v11;
  if (v10)
  {
    v13 = CFAbsoluteTimeGetCurrent();
    v15 = avt_default_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v13 - Current;
      v17 = v16;
      v18 = v17;
      [*(a1 + 80) endTime];
      v20 = v19;
      [*(a1 + 80) endTime];
      *&v21 = v21 * 60.0 / v16;
      *buf = 134218496;
      v36 = v18;
      v37 = 2048;
      v38 = v20;
      v39 = 2048;
      v40 = *&v21;
      _os_log_impl(&dword_1BB472000, v15, OS_LOG_TYPE_DEFAULT, "[Record view] Video export: movie rendered in %.3fs for a length of %.3fs (%.3f frames rendered per second)", buf, 0x20u);
    }

    v22 = [*(a1 + 48) _tmpAudioURL];
    v23 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:? options:?];
    v24 = [*(a1 + 48) mergeAudio:? andVideoTo:? error:?];
    v25 = v12;

    if (v24)
    {
      v12 = v25;
    }

    else
    {
      v27 = avt_default_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_2();
      }

      sleep(1u);
      v28 = [*(a1 + 48) mergeAudio:? andVideoTo:? error:?];
      v12 = v25;

      v30 = avt_default_log(v29);
      v31 = v30;
      if (v28)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BB472000, v31, OS_LOG_TYPE_DEFAULT, "[Record view] Video export: audio merge succeeded after 2nd try", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_3();
      }
    }
  }

  else
  {
    v22 = avt_default_log(v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __60__AVTRecordView_exportMovieToURL_options_completionHandler___block_invoke_cold_1();
    }
  }

  [*(a1 + 56) resignCurrent];
  [*(a1 + 96) willRemoveFromWorld:?];
  v32 = [*(a1 + 48) world];
  v33 = [v32 clock];
  [v33 setPaused:?];

  v34 = *(a1 + 120);
  if (v34)
  {
    (*(v34 + 16))(v34, v12);
  }

  *(*(a1 + 48) + 816) = 0;
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  [*(a1 + 104) setPosition:?];
  [*(a1 + 112) setZFar:?];
  [*(a1 + 48) _updateTrackingState];
  [MEMORY[0x1E69DF378] commit];
}

- (void)startRecordingAudio
{
  v31 = *MEMORY[0x1E69E9840];
  self->_recordedSampleCount = 0;
  _tmpAudioURL = [(AVTRecordView *)self _tmpAudioURL];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtURL:? error:?];

  self->_audioIsRecording = 0;
  v25 = _tmpAudioURL;
  v5 = [MEMORY[0x1E6987ED8] assetWriterWithURL:? fileType:? error:?];
  v6 = 0;
  audioWriter = self->_audioWriter;
  self->_audioWriter = v5;

  if (v6)
  {
    v9 = avt_default_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_1BB472000, v9, OS_LOG_TYPE_DEFAULT, "[Record view] Audio: failed to create AVAssetWriter with error %@", buf, 0xCu);
    }
  }

  v24 = v6;
  v28 = 0;
  v27 = 0;
  v30 = 0;
  v29 = 0;
  *buf = 6553601;
  v23 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v11 = *MEMORY[0x1E69582B0];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v13 = *MEMORY[0x1E6958300];
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v15 = *MEMORY[0x1E6958348];
  v16 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  v17 = *MEMORY[0x1E6958258];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v19 = [v23 dictionaryWithObjectsAndKeys:{v11, v12, v13, v14, v15, v16, v17, v18, *MEMORY[0x1E6958280], 0}];

  v20 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:? outputSettings:?];
  [v20 setExpectsMediaDataInRealTime:?];
  v21 = [(AVAssetWriter *)self->_audioWriter canAddInput:?];
  if (v21)
  {
    [(AVAssetWriter *)self->_audioWriter addInput:?];
    [(AVAssetWriter *)self->_audioWriter startWriting];
    [(NSLock *)self->_audioLock lock];
    objc_storeStrong(&self->_audioWriterInput, v20);
    [(NSLock *)self->_audioLock unlock];
  }

  else
  {
    v22 = avt_default_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView startRecordingAudio];
    }
  }
}

- (opaqueCMSampleBuffer)createSilentAudioAtFrame:(int64_t)frame nFrames:(int)frames sampleRate:(double)rate numChannels:(int)channels
{
  v10 = 2 * channels;
  destinationBuffer = 0;
  v11 = *MEMORY[0x1E695E480];
  v12 = 2 * channels * frames;
  v13 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v12, 0, 0, 0, v12, 1u, &destinationBuffer);
  if (v13)
  {
    v14 = avt_default_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView createSilentAudioAtFrame:nFrames:sampleRate:numChannels:];
    }

LABEL_10:

    return 0;
  }

  v15 = CMBlockBufferFillDataBytes(0, destinationBuffer, 0, v12);
  if (v15)
  {
    v14 = avt_default_log(v15);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView createSilentAudioAtFrame:nFrames:sampleRate:numChannels:];
    }

    goto LABEL_10;
  }

  asbd.mSampleRate = rate;
  *&asbd.mFormatID = 0x46C70636DLL;
  asbd.mBytesPerPacket = v10;
  asbd.mFramesPerPacket = 1;
  asbd.mBytesPerFrame = v10;
  asbd.mChannelsPerFrame = channels;
  *&asbd.mBitsPerChannel = 16;
  formatDescriptionOut = 0;
  v16 = CMAudioFormatDescriptionCreate(v11, &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
  if (v16)
  {
    v14 = avt_default_log(v16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView createSilentAudioAtFrame:nFrames:sampleRate:numChannels:];
    }

    goto LABEL_10;
  }

  sampleBufferOut = 0;
  v18 = destinationBuffer;
  v19 = formatDescriptionOut;
  CMTimeMake(&presentationTimeStamp, frame, 1);
  v20 = CMAudioSampleBufferCreateReadyWithPacketDescriptions(v11, v18, v19, frames, &presentationTimeStamp, 0, &sampleBufferOut);
  CFRelease(destinationBuffer);
  if (v20)
  {
    v22 = avt_default_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AVTRecordView createSilentAudioAtFrame:nFrames:sampleRate:numChannels:];
    }

    return 0;
  }

  return sampleBufferOut;
}

- (void)stopRecordingAudio
{
  if (self->_audioWriter)
  {
    [(NSLock *)self->_audioLock lock];
    epoch = self->_currentAudioTime.epoch;
    *&self->_stopAudioTime.value = *&self->_currentAudioTime.value;
    self->_stopAudioTime.epoch = epoch;
    audioLock = self->_audioLock;

    [(NSLock *)audioLock unlock];
  }
}

- (void)finalizeAudioFile
{
  v26 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_audioLock lock];
  finalVideoDuration = [(AVTRecordView *)self finalVideoDuration];
  v4 = self->_recordedSampleCount / 44100.0;
  v6 = fmax(v5 - v4, 0.0) + 0.0166666667;
  v7 = avt_default_log(finalVideoDuration);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v4 + v6;
    recordedSampleCount = self->_recordedSampleCount;
    *buf = 134219008;
    v10 = v4;
    v17 = v8;
    v18 = 2048;
    v19 = v10;
    v20 = 1024;
    v21 = recordedSampleCount;
    v22 = 1024;
    v23 = 44100;
    v24 = 1024;
    v25 = (v6 * 44100.0);
    _os_log_impl(&dword_1BB472000, v7, OS_LOG_TYPE_DEFAULT, "[Record view] Final audio duration: %.3fs (exact duration: %.3fs for %d samples at %dHz ; %d generated silent samples)", buf, 0x28u);
  }

  if (v6 > 0.0 && self->_audioIsRecording)
  {
    v11 = [AVTRecordView createSilentAudioAtFrame:"createSilentAudioAtFrame:nFrames:sampleRate:numChannels:" nFrames:? sampleRate:? numChannels:?];
    if (v11)
    {
      v12 = v11;
      [(AVAssetWriterInput *)self->_audioWriterInput appendSampleBuffer:?];
      CFRelease(v12);
    }
  }

  audioWriterInput = self->_audioWriterInput;
  self->_audioWriterInput = 0;

  [(AVAssetWriter *)self->_audioWriter finishWritingWithCompletionHandler:?];
  [(NSLock *)self->_audioLock lock];
  [(NSLock *)self->_audioLock unlock];
  audioWriter = self->_audioWriter;
  self->_audioWriter = 0;

  [(AVCaptureMovieFileOutput *)self->_movieFileOutput stopRecording];
  movieFileOutput = self->_movieFileOutput;
  self->_movieFileOutput = 0;
}

void __34__AVTRecordView_finalizeAudioFile__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 912);
  v3 = [v2 status];
  if (v3 == 2 && ([v2 error], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = avt_default_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Record view] Audio writing did finish", v8, 2u);
    }
  }

  else
  {
    v5 = avt_default_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 912) status];
      v7 = [*(*(a1 + 32) + 912) error];
      v8[0] = 67109378;
      v8[1] = v6;
      v9 = 2112;
      v10 = v7;
      _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "[Record view] Audio writing did finish with status:%d, error:%@", v8, 0x12u);
    }
  }

  [*(*(a1 + 32) + 920) unlock];
}

- (void)cancelRecordingAudio
{
  [(AVCaptureMovieFileOutput *)self->_movieFileOutput stopRecording];
  movieFileOutput = self->_movieFileOutput;
  self->_movieFileOutput = 0;
}

- (void)updateAudioState
{
  if (self->_playing)
  {
    [(AVTRecordView *)self startPlayingAudio];
  }
}

- (void)setMute:(BOOL)mute
{
  if (self->_mute != mute)
  {
    self->_mute = mute;
    [(AVTRecordView *)self updateMuteState];
  }
}

- (void)audioPlayerItemDidReachEnd:(id)end
{
  recordDelegate = [(AVTRecordView *)self recordDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    recordDelegate2 = [(AVTRecordView *)self recordDelegate];
    [recordDelegate2 recordView:? previewDidChangeStatus:?];
  }
}

- (void)startPlayingAudio
{
  if (!self->_audioPlayer)
  {
    _tmpAudioURL = [(AVTRecordView *)self _tmpAudioURL];
    v3 = [objc_alloc(MEMORY[0x1E69880B0]) initWithURL:?];
    v4 = [MEMORY[0x1E6988098] playerWithPlayerItem:?];
    audioPlayer = self->_audioPlayer;
    self->_audioPlayer = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    currentItem = [(AVPlayer *)self->_audioPlayer currentItem];
    [defaultCenter addObserver:? selector:? name:? object:?];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:? selector:? name:? object:?];

    [(AVTRecordView *)self updateMuteState];
    [(AVPlayer *)self->_audioPlayer play];
  }
}

- (void)audioSessionDidInterrupt:(id)interrupt
{
  if (self->_playing)
  {
    v19 = v3;
    v20 = v4;
    userInfo = [interrupt userInfo];
    v7 = [userInfo objectForKey:?];
    unsignedLongValue = [v7 unsignedLongValue];
    if (unsignedLongValue)
    {
      if (unsignedLongValue != 1)
      {
        goto LABEL_13;
      }

      v9 = avt_default_log(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB472000, v9, OS_LOG_TYPE_DEFAULT, "[Record view] Audio session was interrupted", buf, 2u);
      }

      recordDelegate = [(AVTRecordView *)self recordDelegate];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }

      recordDelegate2 = [(AVTRecordView *)self recordDelegate];
      mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
      [recordDelegate2 recordView:? audioSessionWasInterrupted:?];
    }

    else
    {
      v14 = avt_default_log(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1BB472000, v14, OS_LOG_TYPE_DEFAULT, "[Record view] Audio session interruption ended", v17, 2u);
      }

      [(AVPlayer *)self->_audioPlayer play];
      recordDelegate3 = [(AVTRecordView *)self recordDelegate];
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }

      recordDelegate2 = [(AVTRecordView *)self recordDelegate];
      mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
      [recordDelegate2 recordView:? audioSessionInterruptionEnded:?];
    }

LABEL_13:
  }
}

- (void)stopPlayingAudio
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  currentItem = [(AVPlayer *)self->_audioPlayer currentItem];
  [defaultCenter removeObserver:? name:? object:?];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:? name:? object:?];

  [(AVPlayer *)self->_audioPlayer pause];
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;
}

- (double)currentAudioTime
{
  if (self->_audioPlayer)
  {
    [&time currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (void)_drawAtTime:(double)time
{
  if (!self->_checkDrawableAvailable)
  {
    goto LABEL_4;
  }

  v5 = self->_backingLayer;
  if (([(CALayer *)v5 isDrawableAvailable]& 1) != 0)
  {

LABEL_4:
    v6.receiver = self;
    v6.super_class = AVTRecordView;
    [(AVTView *)&v6 _drawAtTime:time];
    return;
  }

  if (self->_doubleBuffer)
  {
    [(AVTRecordView *)self drawableNotAvailableForTime:?];
  }
}

- (void)drawableNotAvailableForTime:(double)time
{
  droppedDoubleBufferFrames = self->_droppedDoubleBufferFrames;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [(NSMutableArray *)droppedDoubleBufferFrames addObject:?];

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if ([(AVTRecordView *)self preferredFramesPerSecond]< 1)
  {
    preferredFramesPerSecond = 60;
  }

  else
  {
    preferredFramesPerSecond = [(AVTRecordView *)self preferredFramesPerSecond];
  }

  v8 = 1.0 / preferredFramesPerSecond;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v9 = self->_droppedDoubleBufferFrames;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __45__AVTRecordView_drawableNotAvailableForTime___block_invoke;
  v17 = &unk_1E7F49EB8;
  v18 = v28;
  v19 = v23;
  v21 = time + v8 * -12.0;
  v22 = v8;
  v20 = &v24;
  [(NSMutableArray *)v9 enumerateObjectsUsingBlock:?];
  [(NSMutableArray *)self->_droppedDoubleBufferFrames removeObjectsInRange:?];
  if (v25[3] >= 5)
  {
    backingLayer = self->_backingLayer;
    objc_opt_class();
    v11 = [(CALayer *)backingLayer isMemberOfClass:?];
    if (v11)
    {
      v12 = avt_default_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1BB472000, v12, OS_LOG_TYPE_DEFAULT, "[Record view] *****drawableNotAvailableForTime: SWITCHING TO TRIPLE BUFFERING", v13, 2u);
      }

      self->_doubleBuffer = 0;
      [(CALayer *)self->_backingLayer setMaximumDrawableCount:?];
    }
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
}

void *__45__AVTRecordView_drawableNotAvailableForTime___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 doubleValue];
  if (v6 >= *(a1 + 56))
  {
    if (*(*(*(a1 + 40) + 8) + 24) + *(a1 + 64) * 1.5 < v6)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  return result;
}

- (AVTRecordViewDelegate)recordDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordDelegate);

  return WeakRetained;
}

- (void)mergeAudio:andVideoTo:error:.cold.1()
{
  [0 statusOfValueForKey:? error:?];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)mergeAudio:(void *)a1 andVideoTo:error:.cold.3(void *a1)
{
  [a1 statusOfValueForKey:? error:?];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)mergeAudio:(uint64_t)a1 andVideoTo:(void *)a2 error:.cold.4(uint64_t a1, void *a2)
{
  [a2 statusOfValueForKey:? error:?];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __45__AVTRecordView_mergeAudio_andVideoTo_error___block_invoke_cold_1(id *a1)
{
  [*a1 status];
  v7 = [*a1 error];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)createSilentAudioAtFrame:nFrames:sampleRate:numChannels:.cold.1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)createSilentAudioAtFrame:nFrames:sampleRate:numChannels:.cold.2()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)createSilentAudioAtFrame:nFrames:sampleRate:numChannels:.cold.3()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)createSilentAudioAtFrame:nFrames:sampleRate:numChannels:.cold.4()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end