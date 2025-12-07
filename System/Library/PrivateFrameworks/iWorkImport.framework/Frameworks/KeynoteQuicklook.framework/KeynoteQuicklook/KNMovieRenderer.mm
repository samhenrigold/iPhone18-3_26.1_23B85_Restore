@interface KNMovieRenderer
+ (id)movieInfoForMovieTimelineMovieIdentifier:(id)identifier;
+ (id)movieTimelineMovieIdentifierForMovieInfo:(id)info;
- (BOOL)addAnimationsAtLayerTime:(double)time;
- (CALayer)offscreenVideoLayer;
- (CGImage)p_copyCurrentVideoFrameImage;
- (KNMovieRenderer)initWithAnimatedBuild:(id)build info:(id)info buildStage:(id)stage animatedSlideView:(id)view;
- (NSCopying)movieTimelineMovieIdentifier;
- (TSDMovieInfo)movieInfo;
- (void)animate;
- (void)applyMovieControl:(int64_t)control;
- (void)dealloc;
- (void)interruptAndReset;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_applyActionEffect:(id)effect;
- (void)p_cancelPlaybackAtStartTime;
- (void)p_didEndMoviePlayback;
- (void)p_didStartMoviePlayback;
- (void)p_playbackDidFailWithError:(id)error;
- (void)p_schedulePlaybackAtStartTime;
- (void)p_setupPlayerController;
- (void)p_setupReflectionAndMaskingOnMovieTexture:(id)texture strokeTexture:(id)strokeTexture reflectionMaskTexture:(id)maskTexture frameMaskTexture:(id)frameMaskTexture;
- (void)p_showVideoLayer;
- (void)p_startPlaybackAtStartTime;
- (void)p_teardownUpdatingTexture:(BOOL)texture;
- (void)pauseAnimations;
- (void)playbackDidStopForPlayerController:(id)controller;
- (void)registerForAmbientBuildStartCallback:(SEL)callback target:(id)target;
- (void)resumeAnimationsIfPaused;
- (void)setBuildInRenderer:(id)renderer;
- (void)updateAnimationsForLayerTime:(double)time;
@end

@implementation KNMovieRenderer

- (KNMovieRenderer)initWithAnimatedBuild:(id)build info:(id)info buildStage:(id)stage animatedSlideView:(id)view
{
  v7.receiver = self;
  v7.super_class = KNMovieRenderer;
  result = [(KNBuildRenderer *)&v7 initWithAnimatedBuild:build info:info buildStage:stage animatedSlideView:view];
  if (result)
  {
    *(result + 312) |= 0x80u;
    result->super._shouldUseMagicMoveTextures = 1;
  }

  return result;
}

- (void)dealloc
{
  [(TSKLayerMediaPlayerController *)self->_playerController teardown];

  videoLayer = self->_videoLayer;
  if (videoLayer)
  {
    if ((*(self + 312) & 8) != 0)
    {
      [(CALayer *)videoLayer removeObserver:self forKeyPath:@"readyForDisplay" context:qword_280A3B740];
      *(self + 312) &= ~8u;
      videoLayer = self->_videoLayer;
    }

    [(CALayer *)videoLayer removeFromSuperlayer];
  }

  v4.receiver = self;
  v4.super_class = KNMovieRenderer;
  [(KNBuildRenderer *)&v4 dealloc];
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  [(KNBuildRenderer *)self info];

  return TSUCheckedDynamicCast();
}

- (void)setBuildInRenderer:(id)renderer
{
  if ([(KNMovieRenderer *)self buildInRenderer]!= renderer)
  {

    self->_buildInRendererReference = [objc_alloc(MEMORY[0x277D81370]) initWithObject:renderer];
  }
}

- (void)animate
{
  *(self + 312) |= 2u;
  *(self + 312) |= 4u;
  [(KNMovieRenderer *)self p_setupPlayerController];
  if ([(KNMovieRenderer *)self addAnimationsAtLayerTime:CACurrentMediaTime()])
  {

    MEMORY[0x2821F9670](self, sel_p_schedulePlaybackAtStartTime);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_p_playbackDidFailWithError_);
  }
}

- (BOOL)addAnimationsAtLayerTime:(double)time
{
  movieInfo = [(KNMovieRenderer *)self movieInfo];
  movieData = [(TSDMovieInfo *)movieInfo movieData];
  if (movieInfo)
  {
    isReadable = [movieData isReadable];
    if (isReadable)
    {
      self->_startTime = time;
      [(KNMovieRenderer *)self p_setupVideoLayer];
      LOBYTE(isReadable) = 1;
    }
  }

  else
  {
    LOBYTE(isReadable) = 0;
  }

  return isReadable;
}

- (void)updateAnimationsForLayerTime:(double)time
{
  if (self->_startTime <= time)
  {
    [(KNMovieRenderer *)self p_startMoviePlaybackIfNeeded];
  }
}

- (void)pauseAnimations
{
  if (!self->super.super._areAnimationsPaused)
  {
    if (self->_playerController)
    {
      if ([(KNPlaybackSession *)self->super.super._session shouldAutomaticallyPlayMovies])
      {
        *(self + 313) = *(self + 313) & 0xFE | [(TSKLayerMediaPlayerController *)self->_playerController isPlaying];
        [(TSKLayerMediaPlayerController *)self->_playerController setPlaying:0];
      }

      if ((*(self + 312) & 0x10) != 0)
      {
        [(KNMovieRenderer *)self p_unschedulePlaybackAtStartTime];
        self->_playbackAtStartTimePauseTime = CACurrentMediaTime();
      }
    }

    self->super.super._areAnimationsPaused = 1;
  }
}

- (void)resumeAnimationsIfPaused
{
  if (self->super.super._areAnimationsPaused)
  {
    self->super.super._areAnimationsPaused = 0;
    if (self->_playerController)
    {
      if ([(KNPlaybackSession *)self->super.super._session shouldAutomaticallyPlayMovies])
      {
        [(TSKLayerMediaPlayerController *)self->_playerController setPlaying:*(self + 313) & 1];
        *(self + 313) &= ~1u;
      }

      if ((*(self + 312) & 0x10) != 0)
      {
        self->_playbackAtStartTimePauseOffset = CACurrentMediaTime() - self->_playbackAtStartTimePauseTime + self->_playbackAtStartTimePauseOffset;

        MEMORY[0x2821F9670](self, sel_p_schedulePlaybackAtStartTime);
      }
    }
  }
}

- (void)interruptAndReset
{
  v17 = *MEMORY[0x277D85DE8];
  [(KNMovieRenderer *)self p_teardownUpdatingTexture:0];
  v3 = [(KNPlaybackSession *)self->super.super._session repForInfo:self->super._info onCanvas:[(KNAnimatedSlideView *)self->super.super._ASV canvas]];
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    [v4 setAlternatePosterImage:0];
    self->super._shouldUseMagicMoveTextures = 0;
    [(KNAnimatedSlideView *)self->super.super._ASV setTexture:0 forRep:v3 forDescription:[(KNBuildRenderer *)self textureDescription]];
    self->super._shouldUseMagicMoveTextures = 1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    animatedBuilds = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super.super._ASV model] animatedBuilds];
    v6 = [(NSArray *)animatedBuilds countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(animatedBuilds);
          }

          v10 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super.super._ASV model] rendererForAnimatedBuild:*(*(&v12 + 1) + 8 * v9)];
          info = self->super._info;
          if (info == [v10 info])
          {
            [v10 teardown];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)animatedBuilds countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)registerForAmbientBuildStartCallback:(SEL)callback target:(id)target
{
  self->_movieStartCallbackTarget = target;
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_movieStartCallbackSelector = callbackCopy;
}

- (void)p_didStartMoviePlayback
{
  *(self + 312) |= 1u;
  if ((*(self + 312) & 2) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if (self->_movieStartCallbackSelector)
      {
        movieStartCallbackSelector = self->_movieStartCallbackSelector;
      }

      else
      {
        movieStartCallbackSelector = 0;
      }

      [self->_movieStartCallbackTarget performSelector:movieStartCallbackSelector withObject:self];
    }

    *(self + 312) &= ~2u;
  }
}

- (void)p_didEndMoviePlayback
{
  v3 = *(self + 312);
  if ((v3 & 1) == 0)
  {
    [(KNMovieRenderer *)self p_didStartMoviePlayback];
  }

  if ((*(self + 312) & 4) != 0)
  {
    buildEndCallbackTarget = self->super._buildEndCallbackTarget;
    if (buildEndCallbackTarget)
    {
      buildEndCallbackSelector = self->super._buildEndCallbackSelector;
      if ((v3 & 2) != 0)
      {
        if (buildEndCallbackSelector)
        {
          v7 = self->super._buildEndCallbackSelector;
        }

        else
        {
          v7 = 0;
        }

        [buildEndCallbackTarget performSelector:v7 withObject:self afterDelay:0.0];
      }

      else
      {
        if (buildEndCallbackSelector)
        {
          v6 = self->super._buildEndCallbackSelector;
        }

        else
        {
          v6 = 0;
        }

        [buildEndCallbackTarget performSelector:v6 withObject:self];
      }
    }

    *(self + 312) &= ~4u;
  }

  *(self + 312) &= ~1u;
}

- (void)p_setupPlayerController
{
  if (self->_playerController)
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNMovieRenderer p_setupPlayerController]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMovieRenderer.m") description:{381, 0, "expected nil value for '%{public}s'", "_playerController"}];
    v4 = MEMORY[0x277D81150];

    [v4 logBacktraceThrottled];
  }
}

- (void)p_schedulePlaybackAtStartTime
{
  *(self + 312) |= 0x10u;
  if (self->super.super._areAnimationsPaused)
  {
    self->_playbackAtStartTimePauseTime = CACurrentMediaTime();
  }

  else
  {
    v3 = fmax(self->_startTime + self->_playbackAtStartTimePauseOffset - CACurrentMediaTime(), 0.0);

    [(KNMovieRenderer *)self performSelector:sel_p_startPlaybackAtStartTime withObject:0 afterDelay:v3];
  }
}

- (void)p_startPlaybackAtStartTime
{
  *(self + 312) &= ~0x10u;
  [(KNMovieRenderer *)self p_startMoviePlaybackIfNeeded];
  if ((*(self + 312) & 0x20) != 0)
  {
    v4 = *(self + 312);
    *(self + 312) = v4 & 0xDF;
    *(self + 312) &= ~0x40u;
    if ((v4 & 0x40) == 0)
    {
      return;
    }
  }

  else
  {
    shouldAutomaticallyPlayMovies = [(KNPlaybackSession *)self->super.super._session shouldAutomaticallyPlayMovies];
    *(self + 312) &= ~0x20u;
    *(self + 312) &= ~0x40u;
    if (!shouldAutomaticallyPlayMovies)
    {
      return;
    }
  }

  playerController = self->_playerController;

  [(TSKLayerMediaPlayerController *)playerController setPlaying:1];
}

- (void)p_cancelPlaybackAtStartTime
{
  [(KNMovieRenderer *)self p_unschedulePlaybackAtStartTime];
  *(self + 312) &= ~0x10u;
  *(self + 312) &= ~0x20u;
  *(self + 312) &= ~0x40u;
}

- (void)p_showVideoLayer
{
  selfCopy = self;
  v62 = *MEMORY[0x277D85DE8];
  if (!self->_videoLayer)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNMovieRenderer p_showVideoLayer]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMovieRenderer.m") description:{591, 0, "invalid nil value for '%{public}s'", "_videoLayer"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v5 = 0x277CD9000uLL;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CALayer *)selfCopy->super._parentLayer setSublayers:0];
  [(CALayer *)selfCopy->super._parentLayer addSublayer:[(TSDTextureSet *)selfCopy->super._textureSet layer]];
  [(TSDTextureSet *)selfCopy->super._textureSet textureAngle];
  v7 = fabs(v6) < 0.00999999978 || v6 == 0.0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [(TSDTextureSet *)selfCopy->super._textureSet visibleTexturesIncludingCaptions];
  v8 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (!v8)
  {
    v44 = 0;
    v54 = 0;
LABEL_51:
    v45 = MEMORY[0x277D81150];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNMovieRenderer p_showVideoLayer]"];
    [v45 handleFailureInFunction:v46 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMovieRenderer.m") description:{678, 0, "invalid nil value for '%{public}s'", "movieObjectTexture"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
    v42 = 0;
    v43 = 1;
    goto LABEL_52;
  }

  v51 = 0;
  v9 = selfCopy;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v12 = *v58;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v58 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v57 + 1) + 8 * i);
      textureType = [v14 textureType];
      v16 = 0;
      v17 = 1;
      if (textureType > 8)
      {
        if (textureType <= 12)
        {
          if ((textureType - 9) < 2)
          {
            goto LABEL_28;
          }

          if (textureType != 11)
          {
            if (textureType == 12)
            {
              [objc_msgSend(v14 "layer")];
              v16 = 0;
              v18 = 0;
              v54 = v14;
              goto LABEL_39;
            }

            goto LABEL_32;
          }

          [objc_msgSend(v14 "layer")];
        }

        else
        {
          if (textureType <= 14)
          {
            if (textureType != 13)
            {
              goto LABEL_28;
            }

            [objc_msgSend(v14 "layer")];
            v16 = 0;
            v18 = 1;
            v52 = v14;
            goto LABEL_39;
          }

          if ((textureType - 15) >= 2)
          {
            if (textureType == 17)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }

          [objc_msgSend(v14 "layer")];
          v17 = 0;
        }

        v16 = 0;
        v18 = 1;
        goto LABEL_39;
      }

      if (textureType <= 4)
      {
        if ((textureType - 2) < 3)
        {
          [objc_msgSend(v14 "layer")];
          v16 = 0;
          v18 = 0;
          goto LABEL_39;
        }

        if (textureType < 2)
        {
LABEL_28:
          v19 = MEMORY[0x277D81150];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNMovieRenderer p_showVideoLayer]"];
          [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMovieRenderer.m") description:{662, 0, "unexpected texture type for movie textures"}];
          [MEMORY[0x277D81150] logBacktraceThrottled];
          v16 = 0;
          v18 = 0;
          v17 = 1;
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      if ((textureType - 6) < 2)
      {
        goto LABEL_28;
      }

      if (textureType != 5)
      {
        if (textureType == 8)
        {
          [objc_msgSend(v14 "layer")];
          v18 = 0;
          v16 = 1;
          v53 = v14;
          goto LABEL_39;
        }

LABEL_32:
        v18 = 0;
        goto LABEL_39;
      }

      [objc_msgSend(v14 "layer")];
      if (!v7)
      {
        [v14 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        [(TSDTextureSet *)v9->super._textureSet textureAngle];
        CGAffineTransformMakeRotation(&v56, -v29);
        v63.origin.x = v22;
        v63.origin.y = v24;
        v63.size.width = v26;
        v63.size.height = v28;
        CGRectApplyAffineTransform(v63, &v56);
        TSUMultiplySizeScalar();
        v10 = v30;
        v11 = v31;
      }

      v16 = 0;
      v18 = 0;
      v51 = v14;
LABEL_39:
      [v14 textureOpacity];
      v33 = v32;
      layer = [v14 layer];
      *&v35 = v33;
      [layer setOpacity:v35];
      if (((v7 | v18) & 1) == 0)
      {
        layer2 = [v14 layer];
        v37 = MEMORY[0x277CCABB0];
        [(TSDTextureSet *)v9->super._textureSet textureAngle];
        [layer2 setValue:objc_msgSend(v37 forKeyPath:{"numberWithDouble:", -v38), @"transform.rotation.z"}];
      }

      if (v16)
      {
        [(TSDTextureSet *)v9->super._textureSet center];
        [v14 adjustAnchorRelativeToCenterOfRotation:0x7FFFFFFFLL atEventIndex:?];
      }

      if (((v7 | v17) & 1) == 0)
      {
        [v14 offset];
        v40 = v39 - v10;
        [v14 offset];
        [v14 setOffset:{v40, v41 - v11}];
      }
    }

    v8 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  }

  while (v8);
  v42 = v51;
  if (!v51)
  {
    selfCopy = v9;
    v5 = 0x277CD9000uLL;
    v44 = v52;
    v8 = v53;
    goto LABEL_51;
  }

  v43 = 0;
  selfCopy = v9;
  v5 = 0x277CD9000;
  v44 = v52;
  v8 = v53;
LABEL_52:
  [objc_msgSend(v42 "layer")];
  layer3 = [(TSDTextureSet *)selfCopy->super._textureSet layer];
  v48 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:{objc_msgSend(v42, "layer")}];
  [layer3 setValue:v48 forKey:*MEMORY[0x277D805E0]];
  if (v44 | v8 && [(KNPlaybackSession *)selfCopy->super.super._session shouldShowVideoReflectionsAndMasks])
  {
    [(KNMovieRenderer *)selfCopy p_setupReflectionAndMaskingOnMovieTexture:v42 strokeTexture:v8 reflectionMaskTexture:v44 frameMaskTexture:v54];
  }

  else if ((v43 & 1) == 0)
  {
    [-[TSDTextureSet layer](selfCopy->super._textureSet "layer")];
    [objc_msgSend(v42 "layer")];
  }

  layer4 = [(TSDTextureSet *)selfCopy->super._textureSet layer];
  v50 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:selfCopy->_videoLayer];
  [layer4 setValue:v50 forKey:*MEMORY[0x277D805E8]];
  [*(v5 + 4080) commit];
  [(TSDTextureSet *)selfCopy->super._textureSet setAlternateLayer:[(TSDTextureSet *)selfCopy->super._textureSet layer]];
  [(KNMovieRenderer *)selfCopy p_didStartMoviePlayback];
}

- (void)p_setupReflectionAndMaskingOnMovieTexture:(id)texture strokeTexture:(id)strokeTexture reflectionMaskTexture:(id)maskTexture frameMaskTexture:(id)frameMaskTexture
{
  [-[TSDTextureSet layer](self->super._textureSet "layer")];
  if (maskTexture)
  {
    [objc_msgSend(maskTexture "layer")];
    [objc_msgSend(maskTexture "layer")];
  }

  v11 = (maskTexture | frameMaskTexture);
  [-[TSDTextureSet layer](self->super._textureSet "layer")];
  TSURectWithOriginAndSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (maskTexture | frameMaskTexture && (v11 = [MEMORY[0x277CD9ED0] layer], objc_msgSend(v11, "setFrame:", v13, v15, v17, v19), v11))
  {
    if (frameMaskTexture)
    {
      layer = [frameMaskTexture layer];
      v21 = v11;
    }

    else
    {
      layer2 = [MEMORY[0x277CD9ED0] layer];
      [layer2 setBackgroundColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D81180], "blackColor"), "CGColor")}];
      [-[TSDTextureSet layer](self->super._textureSet "layer")];
      [layer2 setFrame:?];
      videoLayer = self->_videoLayer;
      if (videoLayer)
      {
        objc_msgSend_transform(videoLayer);
      }

      else
      {
        memset(&v38, 0, sizeof(v38));
      }

      v37 = v38;
      [layer2 setTransform:&v37];
      v21 = v11;
      layer = layer2;
    }

    [v21 addSublayer:layer];
    if (maskTexture)
    {
      [v11 addSublayer:{objc_msgSend(maskTexture, "layer")}];
      [objc_msgSend(maskTexture "layer")];
    }

    [v11 setShouldRasterize:1];
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  [objc_msgSend(texture "layer")];
  layer3 = [MEMORY[0x277CD9ED0] layer];
  [layer3 setFrame:{v13, v15, v17, v19}];
  if ((v22 & 1) == 0)
  {
    [layer3 setMask:v11];
  }

  if (maskTexture)
  {
    layer4 = [MEMORY[0x277CD9F48] layer];
    [-[TSDTextureSet layer](self->super._textureSet "layer")];
    [(CALayer *)layer4 setFrame:?];
    [(CALayer *)layer4 addSublayer:self->_videoLayer];
    if (strokeTexture)
    {
      -[CALayer addSublayer:](layer4, "addSublayer:", [strokeTexture layer]);
    }

    [(CALayer *)layer4 setInstanceCount:2];
    v27 = [(KNPlaybackSession *)self->super.super._session repForInfo:[(KNMovieRenderer *)self movieInfo] onCanvas:[(KNAnimatedSlideView *)self->super.super._ASV canvas]];
    [v27 naturalBounds];
    [v27 convertNaturalRectToUnscaledCanvas:?];
    [(TSDCanvas *)[(KNAnimatedSlideView *)self->super.super._ASV canvas] viewScale];
    TSUMultiplyRectScalar();
    v29 = v28;
    [(TSDCanvas *)[(KNAnimatedSlideView *)self->super.super._ASV canvas] viewScale];
    TSUAliasRound();
    v31 = v30;
    [(TSDCanvas *)[(KNAnimatedSlideView *)self->super.super._ASV canvas] viewScale];
    memset(&v37, 0, sizeof(v37));
    CATransform3DMakeTranslation(&v37, 0.0, v29 + v31 / v32, 0.0);
    v35 = v37;
    CATransform3DRotate(&v36, &v35, 3.14159265, 1.0, 0.0, 0.0);
    v37 = v36;
    [(CALayer *)layer4 setInstanceTransform:&v36];
    v33 = layer3;
    v34 = layer4;
  }

  else
  {
    v34 = self->_videoLayer;
    v33 = layer3;
  }

  [v33 addSublayer:v34];
  [-[TSDTextureSet layer](self->super._textureSet "layer")];
}

- (void)p_teardownUpdatingTexture:(BOOL)texture
{
  v47 = *MEMORY[0x277D85DE8];
  if ((*(self + 313) & 2) == 0)
  {
    textureCopy = texture;
    [(KNMovieRenderer *)self p_cancelPlaybackAtStartTime];
    if ((*(self + 312) & 8) != 0)
    {
      [(CALayer *)self->_videoLayer removeObserver:self forKeyPath:@"readyForDisplay" context:qword_280A3B740];
      *(self + 312) &= ~8u;
    }

    [(TSKLayerMediaPlayerController *)self->_playerController stopSynchronously];
    layer = [(TSDTextureSet *)self->super._textureSet layer];
    [layer setValue:0 forKey:*MEMORY[0x277D805E0]];
    layer2 = [(TSDTextureSet *)self->super._textureSet layer];
    [layer2 setValue:0 forKey:*MEMORY[0x277D805E8]];
    [(TSDTextureSet *)self->super._textureSet setAlternateLayer:0];
    layer3 = [(TSDTextureSet *)self->super._textureSet layer];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v8 = sub_275DB197C;
    v42 = sub_275DB197C;
    v43 = &unk_27A698A70;
    selfCopy = self;
    if (layer3)
    {
      v9 = layer3;
      if ((*(self + 312) & 1) != 0 || !self->_playerController && self->_videoLayer)
      {
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        movieInfo = [(KNMovieRenderer *)self movieInfo];
        v11 = [(KNPlaybackSession *)self->super.super._session repForInfo:self->super._info onCanvas:[(KNAnimatedSlideView *)self->super.super._ASV canvas]];
        p_copyCurrentVideoFrameImage = 0;
        v13 = 0;
        if (textureCopy && v11)
        {
          if (([(TSDMovieInfo *)movieInfo isAudioOnly]& 1) != 0 || ([(TSDMovieInfo *)movieInfo isStreaming]& 1) != 0 || ![(KNPlaybackSession *)self->super.super._session isShowLayerVisible])
          {
            v13 = 0;
            p_copyCurrentVideoFrameImage = 0;
          }

          else
          {
            p_copyCurrentVideoFrameImage = [(KNMovieRenderer *)self p_copyCurrentVideoFrameImage];
            v13 = 1;
          }
        }

        v32 = v13;
        v30 = p_copyCurrentVideoFrameImage;
        v31 = movieInfo;
        if ([v9 sublayers] && v11 && (-[TSDMovieInfo isAudioOnly](movieInfo, "isAudioOnly") & 1) == 0)
        {
          superlayer = [[(CALayer *)self->_videoLayer superlayer] superlayer];
          if ([(CALayer *)superlayer mask])
          {
            v29 = superlayer;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            visibleTextures = [(TSDTextureSet *)self->super._textureSet visibleTextures];
            v16 = [visibleTextures countByEnumeratingWithState:&v37 objects:v46 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v38;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(visibleTextures);
                  }

                  [v9 addSublayer:{objc_msgSend(*(*(&v37 + 1) + 8 * i), "layer")}];
                }

                v17 = [visibleTextures countByEnumeratingWithState:&v37 objects:v46 count:16];
              }

              while (v17);
            }

            [(CALayer *)v29 removeFromSuperlayer];
          }

          else
          {
            videoLayer = self->_videoLayer;
            if (videoLayer)
            {
              [(CALayer *)videoLayer removeFromSuperlayer];
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              visibleTextures2 = [(TSDTextureSet *)self->super._textureSet visibleTextures];
              v25 = [visibleTextures2 countByEnumeratingWithState:&v33 objects:v45 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v34;
                do
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v34 != v27)
                    {
                      objc_enumerationMutation(visibleTextures2);
                    }

                    [objc_msgSend(*(*(&v33 + 1) + 8 * j) "layer")];
                  }

                  v26 = [visibleTextures2 countByEnumeratingWithState:&v33 objects:v45 count:16];
                }

                while (v26);
              }
            }
          }
        }

        if (v32)
        {
          if (v30)
          {
            objc_opt_class();
            [TSUCheckedDynamicCast() setAlternatePosterImage:v30];
            CGImageRelease(v30);
          }

          self->super._shouldUseMagicMoveTextures = 0;
          self->super._isNonCachedTextureValid = 0;
          v20 = [(KNAnimatedSlideView *)self->super.super._ASV nonCachedTextureSetForRep:v11 description:0 shouldRender:1];
          [(KNAnimatedSlideView *)self->super.super._ASV setTexture:v20 forRep:v11 forDescription:[(KNBuildRenderer *)self textureDescription]];
          self->super._shouldUseMagicMoveTextures = 1;
          if (v20)
          {
            [MEMORY[0x277CD9FF0] setCompletionBlock:v41];
            *(self + 313) |= 2u;
            [v20 setLayerGeometry];
            v21 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super.super._ASV model] actionEffectForDrawable:v31 atBeginningOfEvent:[(KNAnimatedSlideView *)self->super.super._ASV currentEventIndex]+ [(KNAnimatedSlideView *)self->super.super._ASV hasEventStarted]];
            [(KNAnimationContext *)[(KNPlaybackSession *)self->super.super._session animationContext] viewScale];
            [v20 applyActionEffect:v21 viewScale:0 isMagicMove:0 shouldBake:0 applyScaleOnly:0 ignoreScale:0 shouldCheckActionKeys:0 eventIndex:?];
            [objc_msgSend(v9 "superlayer")];
            [(TSDTextureSet *)self->super._textureSet teardown];
            v22 = v20;

            self->super._textureSet = v20;
            [MEMORY[0x277CD9FF0] commit];
            return;
          }
        }

        [MEMORY[0x277CD9FF0] commit];
        v8 = v42;
      }
    }

    v8(v41);
  }
}

- (CGImage)p_copyCurrentVideoFrameImage
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contents = [(CALayer *)self->_videoLayer contents];

    return CGImageRetain(contents);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return MEMORY[0x2821F9670](self, sel_p_copyCurrentVideoFrameImageUsingAVAssetImageGenerator);
    }

    else
    {
      videoLayer = self->_videoLayer;

      return MEMORY[0x2821F9670](videoLayer, sel_newRasterizedImageRef);
    }
  }
}

- (void)applyMovieControl:(int64_t)control
{
  if (control == 1)
  {
    [(KNMovieRenderer *)self p_cancelPlaybackAtStartTime];
    if (self->_playerController)
    {
      [(KNMovieRenderer *)self p_startMoviePlaybackIfNeeded];
      v4 = [(TSKLayerMediaPlayerController *)self->_playerController isPlaying]^ 1;
      playerController = self->_playerController;

      [(TSKLayerMediaPlayerController *)playerController setPlaying:v4];
    }

    else
    {
      *(self + 312) |= 0x20u;
      *(self + 312) ^= 0x40u;
    }

    return;
  }

  if (!self->_playerController)
  {
    return;
  }

  [(KNMovieRenderer *)self p_startMoviePlaybackIfNeeded];
  if (control > 5)
  {
    if (control != 6)
    {
      if (control == 7)
      {
        v11 = self->_playerController;

        MEMORY[0x2821F9670](v11, sel_seekToBeginning);
      }

      else if (control == 8)
      {
        *(self + 312) &= ~0x80u;
        v7 = self->_playerController;

        MEMORY[0x2821F9670](v7, sel_seekToEnd);
      }

      return;
    }

    [(TSKLayerMediaPlayerController *)self->_playerController setFastForwarding:0];
    v10 = self->_playerController;
    goto LABEL_27;
  }

  if (control == 4)
  {
    isPlaying = [(TSKLayerMediaPlayerController *)self->_playerController isPlaying];
    v10 = self->_playerController;
    if (isPlaying)
    {
LABEL_27:

      MEMORY[0x2821F9670](v10, sel_setFastReversing_);
      return;
    }

    MEMORY[0x2821F9670](v10, sel_seekBackwardByOneFrame);
  }

  else if (control == 5)
  {
    isPlaying2 = [(TSKLayerMediaPlayerController *)self->_playerController isPlaying];
    v9 = self->_playerController;
    if (isPlaying2)
    {

      [(TSKLayerMediaPlayerController *)v9 setFastForwarding:1];
    }

    else
    {

      MEMORY[0x2821F9670](v9, sel_seekForwardByOneFrame);
    }
  }
}

- (void)p_playbackDidFailWithError:(id)error
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275DB1DBC;
  block[3] = &unk_27A698A70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (qword_280A3B740 == context)
  {
    if ([objc_msgSend(change objectForKey:{*MEMORY[0x277CCA2F0], object), "BOOLValue"}])
    {
      [(CALayer *)self->_videoLayer removeObserver:self forKeyPath:@"readyForDisplay" context:qword_280A3B740];
      *(self + 312) &= ~8u;
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      [(KNMovieRenderer *)self p_showVideoLayer];
      v7 = MEMORY[0x277CD9FF0];

      [v7 commit];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = KNMovieRenderer;
    [(KNMovieRenderer *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)p_applyActionEffect:(id)effect
{
  if (effect)
  {
    v5 = [effect valueForKey:*MEMORY[0x277D80110]];
    if (v5)
    {
      [v5 floatValue];
      -[CALayer setValue:forKeyPath:](self->_videoLayer, "setValue:forKeyPath:", [MEMORY[0x277CCABB0] numberWithFloat:?], @"transform.scale.xy");
    }

    v6 = [effect valueForKey:*MEMORY[0x277D80100]];
    if (v6)
    {
      [v6 doubleValue];
      videoLayer = self->_videoLayer;
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7 * 0.0174532925];

      [(CALayer *)videoLayer setValue:v9 forKeyPath:@"transform.rotation.z"];
    }
  }
}

- (void)playbackDidStopForPlayerController:(id)controller
{
  standardUserDefaults = [objc_msgSend(MEMORY[0x277CBEBD0] standardUserDefaults];
  if (*(self + 312) < 0 && (standardUserDefaults & 1) == 0)
  {

    [(KNMovieRenderer *)self removeAnimationsAndFinish:1];
  }
}

- (CALayer)offscreenVideoLayer
{
  if (self->_playerController)
  {
    return 0;
  }

  else
  {
    return self->_videoLayer;
  }
}

- (NSCopying)movieTimelineMovieIdentifier
{
  [(KNMovieRenderer *)self movieInfo];
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_movieTimelineMovieIdentifierForMovieInfo_);
}

+ (id)movieTimelineMovieIdentifierForMovieInfo:(id)info
{
  if (info)
  {
    return [MEMORY[0x277CCAE60] valueWithNonretainedObject:?];
  }

  else
  {
    return 0;
  }
}

+ (id)movieInfoForMovieTimelineMovieIdentifier:(id)identifier
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v4 = result;
    objc_opt_class();
    [v4 nonretainedObjectValue];

    return TSUDynamicCast();
  }

  return result;
}

@end