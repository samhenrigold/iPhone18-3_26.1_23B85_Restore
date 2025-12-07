@interface KNTransitionRenderer
- (BOOL)addAnimationsAtTime:(double)time relativeToCurrentMediaTime:(BOOL)mediaTime;
- (BOOL)p_addAnimations:(id)animations atTime:(double)time relativeToCurrentMediaTime:(BOOL)mediaTime;
- (KNTransitionRenderer)initWithEffectClass:(Class)class direction:(unint64_t)direction duration:(double)duration session:(id)session attributes:(id)attributes animatedSlideView:(id)view;
- (NSString)description;
- (id)plugin;
- (void)animate;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)generateTextures;
- (void)p_checkForNullTransitions:(Class)transitions;
- (void)p_removeAnimationsShouldForceRemove:(BOOL)remove;
- (void)pauseAnimationsAtTime:(double)time;
- (void)registerForTransitionEndCallback:(SEL)callback target:(id)target;
- (void)removeAnimationsAndFinish:(BOOL)finish;
- (void)renderSlideIndex:(unint64_t)index;
- (void)renderTextures;
- (void)renderTexturesSynchronously;
- (void)resumeAnimationsIfPausedAtTime:(double)time;
- (void)setupLayerTreeForTransition;
- (void)setupPluginContext;
- (void)teardown;
- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)cancel;
@end

@implementation KNTransitionRenderer

- (KNTransitionRenderer)initWithEffectClass:(Class)class direction:(unint64_t)direction duration:(double)duration session:(id)session attributes:(id)attributes animatedSlideView:(id)view
{
  v17.receiver = self;
  v17.super_class = KNTransitionRenderer;
  v14 = [(KNTransitionRenderer *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->super._ASV = view;
    v14->super._session = session;
    v14->super._pluginClass = class;
    v14->super._direction = direction;
    v14->_numberOfAnimationsStarted = 0;
    v14->_attributes = attributes;
    [(KNAnimationRenderer *)v15 setDuration:duration];
    [(KNTransitionRenderer *)v15 p_checkForNullTransitions:class];
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNTransitionRenderer;
  [(KNAnimationRenderer *)&v3 dealloc];
}

- (void)teardown
{
  objc_sync_enter(self);
  if (!self->_hasBeenTornDown)
  {
    if (self->_shouldTearDownIncomingTexture)
    {
      [-[NSMutableArray lastObject](self->_textures "lastObject")];
    }

    self->_textures = 0;
    self->_animatedLayers = 0;

    self->super._plugin = 0;
    v3.receiver = self;
    v3.super_class = KNTransitionRenderer;
    [(KNAnimationRenderer *)&v3 teardown];
    self->_hasBeenTornDown = 1;
  }

  objc_sync_exit(self);
}

- (id)plugin
{
  result = self->super._plugin;
  if (!result)
  {
    if (self->_shouldAnimateTransition)
    {
      result = [objc_alloc(self->super._pluginClass) initWithAnimationContext:{-[KNPlaybackSession animationContext](self->super._session, "animationContext")}];
      self->super._plugin = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setupPluginContext
{
  v12.receiver = self;
  v12.super_class = KNTransitionRenderer;
  [(KNAnimationRenderer *)&v12 setupPluginContext];
  objc_opt_class();
  [(KNAnimationRenderer *)self pluginContext];
  v3 = TSUCheckedDynamicCast();
  [v3 setRendererType:3];
  [v3 setTextures:self->_textures];
  [v3 setDuration:self->super._duration];
  [v3 setDirection:self->super._direction];
  [v3 setTransitionAttributes:self->_attributes];
  [v3 setIsMotionBlurred:{+[KNAnimationUtils isMotionBlurCapableWithAnimationContext:](KNAnimationUtils, "isMotionBlurCapableWithAnimationContext:", -[KNPlaybackSession animationContext](self->super._session, "animationContext"))}];
  [(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] slideRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 setBoundingRectOnCanvas:?];
  [v3 setBoundingRect:{v5, v7, v9, v11}];
}

- (void)registerForTransitionEndCallback:(SEL)callback target:(id)target
{
  self->_transitionEndCallbackTarget = target;
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_transitionEndCallbackSelector = callbackCopy;
}

- (void)p_checkForNullTransitions:(Class)transitions
{
  pluginClass = self->super._pluginClass;
  v5 = objc_opt_class();
  shouldAnimateNullTransitions = [(KNPlaybackSession *)self->super._session shouldAnimateNullTransitions];
  v7 = pluginClass != v5 || shouldAnimateNullTransitions;
  self->_shouldAnimateTransition = v7;
  if (pluginClass == v5)
  {

    [(KNAnimationRenderer *)self setDuration:0.001];
  }
}

- (NSString)description
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277CCACA8];
  v5 = [objc_opt_class() localizedMenuString:3];
  v6 = objc_opt_class();
  [array addObject:{objc_msgSend(v4, "stringWithFormat:", @"%@(%@)", v5, NSStringFromClass(v6))}];
  [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%0.2fs", *&self->super._duration)}];
  v7 = [array componentsJoinedByString:{@", "}];
  v9.receiver = self;
  v9.super_class = KNTransitionRenderer;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", -[KNTransitionRenderer description](&v9, sel_description), v7];
}

- (void)setupLayerTreeForTransition
{
  showLayer = [(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] showLayer];
  [(CALayer *)showLayer setSublayers:0];
  [(KNPlaybackSession *)self->super._session makeSharedMetalLayerVisible:0];
  self->_backgroundLayer = [MEMORY[0x277CD9ED0] layer];
  [(CALayer *)showLayer bounds];
  [(CALayer *)self->_backgroundLayer setFrame:?];
  backgroundLayer = self->_backgroundLayer;
  [(CALayer *)backgroundLayer bounds];
  [(CALayer *)backgroundLayer tsd_addPerspectiveSublayerProjectionUsingScreenSize:v5, v6];
  v7 = self->_backgroundLayer;

  [(CALayer *)showLayer addSublayer:v7];
}

- (void)generateTextures
{
  objc_sync_enter(self);
  if (!self->_textures)
  {
    v3 = [(KNAnimatedSlideView *)self->super._ASV newSlideTextureForEvent:[(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super._ASV model] buildEventCount]];
    incomingAnimatedSlideView = [(KNTransitionRenderer *)self incomingAnimatedSlideView];
    if (incomingAnimatedSlideView)
    {
      v5 = [(KNAnimatedSlideView *)incomingAnimatedSlideView newSlideTextureForEvent:0];
      v6 = 0;
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_275DA32A0;
      v10[3] = &unk_27A6989A8;
      v10[4] = self;
      v7 = objc_alloc(MEMORY[0x277D803E8]);
      [(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] slideRect];
      v5 = [v7 initWithSize:v10 offset:v8 renderBlock:{v9, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      [v5 setColorSpace:{-[KNAnimationContext colorSpace](-[KNPlaybackSession animationContext](self->super._session, "animationContext"), "colorSpace")}];
      v6 = 1;
    }

    self->_shouldTearDownIncomingTexture = v6;
    if (v3 == v5)
    {

      v5 = [v3 copy];
    }

    self->_textures = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v3, v5, 0}];

    self->_hasBeenTornDown = 0;
  }

  objc_sync_exit(self);
}

- (void)renderTextures
{
  v12 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMutableArray *)self->_textures copy];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(KNAnimatedTextureManager *)[(KNPlaybackSession *)self->super._session textureManager] addTextureToRasterizationQueue:*(*(&v7 + 1) + 8 * v6++) asv:self->super._ASV];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(self);
}

- (void)renderTexturesSynchronously
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableArray *)self->_textures copy];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) renderLayerContentsIfNeeded];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)cancel
{
  cancelCopy = cancel;
  v14 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  textures = self->_textures;
  v6 = [(NSMutableArray *)textures countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(textures);
        }

        [*(*(&v9 + 1) + 8 * i) waitUntilAsyncRenderingIsCompleteShouldCancel:cancelCopy];
      }

      v6 = [(NSMutableArray *)textures countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(self);
}

- (void)renderSlideIndex:(unint64_t)index
{
  objc_sync_enter(self);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  textures = self->_textures;
  if (textures)
  {
    v6 = [-[NSMutableArray objectAtIndexedSubscript:](textures objectAtIndexedSubscript:{0), "layer"}];
    v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->_textures objectAtIndexedSubscript:{1), "layer"}];
    [v6 setSublayers:0];
    [v7 setSublayers:0];
    [v6 setEdgeAntialiasingMask:0];
    [v7 setEdgeAntialiasingMask:0];
    [v6 setShouldRasterize:0];
    [v7 setShouldRasterize:0];
    v16 = *(MEMORY[0x277CD9DE8] + 80);
    v22 = *(MEMORY[0x277CD9DE8] + 64);
    v17 = v22;
    v23 = v16;
    v14 = *(MEMORY[0x277CD9DE8] + 112);
    v24 = *(MEMORY[0x277CD9DE8] + 96);
    v15 = v24;
    v25 = v14;
    v12 = *(MEMORY[0x277CD9DE8] + 16);
    v18 = *MEMORY[0x277CD9DE8];
    v13 = v18;
    v19 = v12;
    v10 = *(MEMORY[0x277CD9DE8] + 48);
    v20 = *(MEMORY[0x277CD9DE8] + 32);
    v11 = v20;
    v21 = v10;
    [v6 setTransform:&v18];
    v22 = v17;
    v23 = v16;
    v24 = v15;
    v25 = v14;
    v18 = v13;
    v19 = v12;
    v20 = v11;
    v21 = v10;
    [v7 setTransform:&v18];
  }

  else
  {
    [(KNTransitionRenderer *)self generateTextures];
  }

  [(KNTransitionRenderer *)self renderTextures];
  v8 = [(NSMutableArray *)self->_textures objectAtIndex:index];
  [v8 waitUntilAsyncRenderingIsCompleteShouldCancel:0];
  [(KNTransitionRenderer *)self setupLayerTreeForTransition];
  layer = [v8 layer];
  [layer setHidden:0];
  [(CALayer *)self->_backgroundLayer addSublayer:layer];
  [MEMORY[0x277CD9FF0] commit];
  objc_sync_exit(self);
}

- (void)animate
{
  if (!self->_shouldAnimateTransition || ![(KNTransitionRenderer *)self addAnimationsAtTime:1 relativeToCurrentMediaTime:0.0]) && self->_transitionEndCallbackTarget && (objc_opt_respondsToSelector())
  {
    transitionEndCallbackTarget = self->_transitionEndCallbackTarget;
    if (self->_transitionEndCallbackSelector)
    {
      transitionEndCallbackSelector = self->_transitionEndCallbackSelector;
    }

    else
    {
      transitionEndCallbackSelector = 0;
    }

    [transitionEndCallbackTarget performSelector:transitionEndCallbackSelector withObject:self];
  }
}

- (BOOL)addAnimationsAtTime:(double)time relativeToCurrentMediaTime:(BOOL)mediaTime
{
  mediaTimeCopy = mediaTime;
  if (self->_animatedLayers)
  {
    [(KNTransitionRenderer *)self stopAnimations];
  }

  plugin = [(KNTransitionRenderer *)self plugin];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  if (!self->_textures)
  {
    [(KNTransitionRenderer *)self generateTextures];
    [(KNTransitionRenderer *)self renderTextures];
  }

  [(KNTransitionRenderer *)self waitUntilAsyncRenderingIsCompleteShouldCancel:0];
  [(KNTransitionRenderer *)self setupLayerTreeForTransition];
  self->_animationsRanToCompletion = 0;
  if (plugin)
  {
    v8 = [-[NSMutableArray objectAtIndex:](self->_textures objectAtIndex:{1), "layer"}];
    [v8 setHidden:0];
    [(CALayer *)self->_backgroundLayer addSublayer:v8];
    -[CALayer addSublayer:](self->_backgroundLayer, "addSublayer:", [-[NSMutableArray objectAtIndex:](self->_textures objectAtIndex:{0), "layer"}]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    -[CALayer addSublayer:](self->_backgroundLayer, "addSublayer:", [-[NSMutableArray objectAtIndex:](self->_textures objectAtIndex:{0), "layer"}]);
  }

  [(KNAnimationRenderer *)self setDuration:0.001];
LABEL_10:
  [(KNTransitionRenderer *)self setupPluginContext];
  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  [plugin addAnimationsTo:weakToStrongObjectsMapTable context:{-[KNAnimationRenderer pluginContext](self, "pluginContext")}];
  v10 = weakToStrongObjectsMapTable && [weakToStrongObjectsMapTable count] && -[KNTransitionRenderer p_addAnimations:atTime:relativeToCurrentMediaTime:](self, "p_addAnimations:atTime:relativeToCurrentMediaTime:", weakToStrongObjectsMapTable, mediaTimeCopy, time);
  [MEMORY[0x277CD9FF0] commit];
  return v10;
}

- (BOOL)p_addAnimations:(id)animations atTime:(double)time relativeToCurrentMediaTime:(BOOL)mediaTime
{
  mediaTimeCopy = mediaTime;
  v32 = *MEMORY[0x277D85DE8];
  self->_numberOfAnimationsStarted = 0;
  self->_animatedLayers = animations;
  timeCopy = 1.0e-100;
  if (mediaTimeCopy)
  {
    timeCopy = time;
  }

  if (time == 0.0)
  {
    time = timeCopy;
  }

  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [animations keyEnumerator];
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v13 = time > 0.0 && mediaTimeCopy;
    v25 = *MEMORY[0x277D801A0];
    v26 = *MEMORY[0x277CDA230];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [animations objectForKey:v15];
        if (v16)
        {
          v17 = v16;
          if (v13)
          {
            animation = [MEMORY[0x277CD9E00] animation];
            [animation setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v17, 0)}];
            objc_msgSend_duration(self);
            [animation setDuration:time + v19];
            [animation setRemovedOnCompletion:0];
            [animation setFillMode:v26];
            [v17 beginTime];
            [v17 setBeginTime:time + v20];
            if (![(KNPlaybackSession *)self->super._session disableAutoAnimationRemoval])
            {
              [animation setDelegate:self];
            }

            v21 = v15;
            v22 = animation;
          }

          else
          {
            [v16 setRemovedOnCompletion:0];
            [v17 setFillMode:v26];
            [v17 setBeginTime:time];
            if (![(KNPlaybackSession *)self->super._session disableAutoAnimationRemoval])
            {
              [v17 setDelegate:self];
            }

            v21 = v15;
            v22 = v17;
          }

          [v21 addAnimation:v22 forKey:v25];
          ++self->_numberOfAnimationsStarted;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  return 1;
}

- (void)p_removeAnimationsShouldForceRemove:(BOOL)remove
{
  v38 = *MEMORY[0x277D85DE8];
  [(KNTransitionRenderer *)self waitUntilAsyncRenderingIsCompleteShouldCancel:0];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  context = objc_autoreleasePoolPush();
  animatedLayers = self->_animatedLayers;
  if (remove || animatedLayers)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    keyEnumerator = [(NSMapTable *)animatedLayers keyEnumerator];
    v7 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          [*(*(&v31 + 1) + 8 * i) removeAllAnimations];
        }

        v8 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v8);
    }

    self->_numberOfAnimationsStarted = 0;
    v11 = self->_animatedLayers;
    if (v11)
    {

      self->_animatedLayers = 0;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  textures = self->_textures;
  v13 = [(NSMutableArray *)textures countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(textures);
        }

        v17 = [objc_msgSend(objc_msgSend(*(*(&v27 + 1) + 8 * j) "layer")];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v24;
          do
          {
            for (k = 0; k != v19; ++k)
            {
              if (*v24 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [*(*(&v23 + 1) + 8 * k) removeFromSuperlayer];
            }

            v19 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
          }

          while (v19);
        }
      }

      v14 = [(NSMutableArray *)textures countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  [objc_msgSend(-[NSMutableArray lastObject](self->_textures "lastObject")];
  objc_autoreleasePoolPop(context);
  [MEMORY[0x277CD9FF0] commit];
}

- (void)removeAnimationsAndFinish:(BOOL)finish
{
  if (finish)
  {
    self->_numberOfAnimationsStarted = 0;
    self->_animationsRanToCompletion = 1;
  }

  MEMORY[0x2821F9670](self, sel_p_removeAnimationsShouldForceRemove_);
}

- (void)pauseAnimationsAtTime:(double)time
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_numberOfAnimationsStarted >= 1)
  {
    animatedLayers = self->_animatedLayers;
    if (animatedLayers)
    {
      if (!self->super._areAnimationsPaused)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        keyEnumerator = [(NSMapTable *)animatedLayers keyEnumerator];
        v7 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v12;
          do
          {
            v10 = 0;
            do
            {
              if (*v12 != v9)
              {
                objc_enumerationMutation(keyEnumerator);
              }

              [*(*(&v11 + 1) + 8 * v10) kn_pauseAtTime:time];
              self->super._areAnimationsPaused = 1;
              ++v10;
            }

            while (v8 != v10);
            v8 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
          }

          while (v8);
        }
      }
    }
  }
}

- (void)resumeAnimationsIfPausedAtTime:(double)time
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_numberOfAnimationsStarted >= 1 && self->super._areAnimationsPaused)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    keyEnumerator = [(NSMapTable *)self->_animatedLayers keyEnumerator];
    v6 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          [*(*(&v10 + 1) + 8 * v9++) kn_resumeAtTime:time];
        }

        while (v7 != v9);
        v7 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    self->super._areAnimationsPaused = 0;
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (self->_numberOfAnimationsStarted >= 1 && ![(KNPlaybackSession *)self->super._session disableAutoAnimationRemoval:stop])
  {
    v5 = self->_numberOfAnimationsStarted - 1;
    self->_numberOfAnimationsStarted = v5;
    if (!v5)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v6 = objc_autoreleasePoolPush();
      [(KNTransitionRenderer *)self removeAnimationsAndFinish:1];
      if (self->_transitionEndCallbackTarget && (objc_opt_respondsToSelector() & 1) != 0)
      {
        if (self->_transitionEndCallbackSelector)
        {
          transitionEndCallbackSelector = self->_transitionEndCallbackSelector;
        }

        else
        {
          transitionEndCallbackSelector = 0;
        }

        [self->_transitionEndCallbackTarget performSelector:transitionEndCallbackSelector withObject:self];
      }

      objc_autoreleasePoolPop(v6);
      v8 = MEMORY[0x277CD9FF0];

      [v8 commit];
    }
  }
}

@end