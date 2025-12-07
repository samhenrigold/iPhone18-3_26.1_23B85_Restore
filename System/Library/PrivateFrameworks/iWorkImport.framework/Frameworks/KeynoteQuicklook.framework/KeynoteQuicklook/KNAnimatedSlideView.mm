@interface KNAnimatedSlideView
+ (void)registerUserDefaults;
- (BOOL)hasTransitionAtEventIndex:(int64_t)index;
- (BOOL)isCanvasDrawingIntoPDF:(id)f;
- (BOOL)isInfoAKeynoteTemplateObject:(id)object;
- (BOOL)isMotionBlurEnabledWithEvent:(unint64_t)event;
- (BOOL)isRenderingForKPF;
- (BOOL)p_shouldSkipActionBuild:(id)build onDrawable:(id)drawable;
- (BOOL)playAutomaticEvents;
- (BOOL)shouldPreCache;
- (BOOL)shouldShowInstructionalTextForLayout:(id)layout;
- (BOOL)shouldSuppressBackgrounds;
- (CGRect)boundingRectOnCanvasForInfo:(id)info;
- (KNAnimatedSlideView)nextASV;
- (KNPlaybackSession)session;
- (NSArray)allInfos;
- (NSArray)allInfosIncludingAudio;
- (NSArray)allReps;
- (NSArray)infosCurrentlyVisible;
- (NSArray)repsCurrentlyVisible;
- (NSSet)movieRenderers;
- (TSDCanvas)canvas;
- (id)documentRoot;
- (id)infoToConnectToForConnectionLineConnectedToInfo:(id)info;
- (id)infosVisibleAtEvent:(unint64_t)event ignoreBuildVisibility:(BOOL)visibility;
- (id)initForSlideNode:(id)node session:(id)session;
- (id)newSlideTextureForEvent:(unint64_t)event;
- (id)nonCachedTextureSetForRep:(id)rep description:(id)description shouldRender:(BOOL)render;
- (id)p_addParentLayerForInfo:(id)info;
- (id)p_initializeTextureSetForRep:(id)rep info:(id)info eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility isRenderingToContext:(BOOL)context;
- (id)p_repsForInfos:(id)infos;
- (id)p_textureSetForRep:(id)rep shouldRender:(BOOL)render;
- (id)textureSetForInfo:(id)info eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility;
- (id)textureSetForRep:(id)rep description:(id)description shouldRender:(BOOL)render;
- (void)addActiveAnimatedBuild:(id)build;
- (void)applyASVColorSpaceToTextureSet:(id)set;
- (void)buildHasFinishedAnimating:(id)animating;
- (void)dealloc;
- (void)generateTextures;
- (void)interruptAndReset;
- (void)p_addAmbientBuildRenderer:(id)renderer;
- (void)p_addInfoToLayerTree:(id)tree rep:(id)rep renderer:(id)renderer builtInfos:(id)infos;
- (void)p_ambientBuildEnded:(id)ended;
- (void)p_ambientBuildStarted:(id)started;
- (void)p_animateBuild:(id)build;
- (void)p_animateBuild:(id)build afterDelay:(double)delay;
- (void)p_animateBuild:(id)build isAmbientBuild:(BOOL)ambientBuild;
- (void)p_animateCurrentEventIgnoringDelays:(BOOL)delays;
- (void)p_animateTransition:(id)transition;
- (void)p_clearAmbientBuildRenderers;
- (void)p_evictCacheAmbientBuildTexturesForTransition:(id)transition;
- (void)p_notifyAmbientBuildEndWithObject:(id)object;
- (void)p_notifyAmbientBuildStartWithObject:(id)object;
- (void)p_notifyEventAnimationActiveWithObject:(id)object;
- (void)p_notifyEventEndWithObject:(id)object;
- (void)p_notifyEventImmediateEndWithObject:(id)object;
- (void)p_notifyEventStart;
- (void)p_performAnimationWithTarget:(id)target selector:(SEL)selector object:(id)object delay:(double)delay performAsynchronously:(BOOL)asynchronously;
- (void)p_recursivelyRemoveCallbackObserversFromAnimatedBuilds:(id)builds;
- (void)p_removeAmbientBuildRenderer:(id)renderer;
- (void)p_renderCurrentEvent;
- (void)p_renderSlideContentWithCALayers;
- (void)p_setMotionBlurStatus;
- (void)p_setupTransitionStartTime;
- (void)p_stopAllAmbientBuildRenderers;
- (void)pauseAnimations;
- (void)prepareAnimations;
- (void)registerForAmbientBuildEndCallback:(SEL)callback target:(id)target;
- (void)registerForAmbientBuildStartCallback:(SEL)callback target:(id)target;
- (void)registerForEventAnimationActiveCallback:(SEL)callback target:(id)target;
- (void)registerForEventEndCallback:(SEL)callback target:(id)target;
- (void)registerForEventImmediateEndCallback:(SEL)callback target:(id)target;
- (void)registerForEventStartCallback:(SEL)callback target:(id)target;
- (void)renderCurrentEvent;
- (void)renderIntoContext:(CGContext *)context eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility;
- (void)renderTextures;
- (void)reset;
- (void)resetAmbientBuildTextures;
- (void)resumeAnimationsIfPaused;
- (void)serializeTextures;
- (void)setCurrentEventIndex:(unint64_t)index;
- (void)setEventIndexesToAnimate:(id)animate;
- (void)setTexture:(id)texture forRep:(id)rep forDescription:(id)description;
- (void)stopAnimations;
- (void)tearDown;
- (void)tearDownTransition;
- (void)transitionHasFinishedAnimating:(id)animating;
- (void)triggerNextEventIgnoringDelay:(BOOL)delay;
- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)cancel;
@end

@implementation KNAnimatedSlideView

+ (void)registerUserDefaults
{
  if (qword_280A3C070 != -1)
  {
    sub_275E5B50C();
  }
}

- (id)initForSlideNode:(id)node session:(id)session
{
  nodeCopy = node;
  sessionCopy = session;
  v29.receiver = self;
  v29.super_class = KNAnimatedSlideView;
  v9 = [(KNAnimatedSlideView *)&v29 init];
  if (v9)
  {
    v9->_slideNumber = [sessionCopy slideNumberForSlideNode:nodeCopy];
    if (KNAnimationEngineCat_init_token != -1)
    {
      sub_275E5B520();
    }

    objc_storeStrong(&v9->_slideNode, node);
    slide = [nodeCopy slide];
    slide = v9->_slide;
    v9->_slide = slide;

    objc_storeWeak(&v9->_session, sessionCopy);
    v9->_playsAutomaticTransitions = 1;
    v12 = objc_alloc_init(KNAnimationDelayedCallbacks);
    delayedCallbacks = v9->_delayedCallbacks;
    v9->_delayedCallbacks = v12;

    buildChunks = [(KNAbstractSlide *)v9->_slide buildChunks];
    infosToDisplay = [(KNSlide *)v9->_slide infosToDisplay];
    WeakRetained = objc_loadWeakRetained(&v9->_session);
    shouldSkipBuilds = [WeakRetained shouldSkipBuilds];

    if (shouldSkipBuilds)
    {

      buildChunks = MEMORY[0x277CBEBF8];
      infosToDisplay = MEMORY[0x277CBEBF8];
    }

    v18 = [KNAnimatedSlideModel alloc];
    v19 = objc_loadWeakRetained(&v9->_session);
    v20 = [(KNAnimatedSlideModel *)v18 initWithBuildChunks:buildChunks infos:infosToDisplay session:v19 animatedSlideView:v9];
    model = v9->_model;
    v9->_model = v20;

    animatedBuilds = [(KNAnimatedSlideModel *)v9->_model animatedBuilds];
    v9->_isSlideBuildable = [animatedBuilds count] != 0;

    v23 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    textureDescriptionAndSetForRepMapLock = v9->_textureDescriptionAndSetForRepMapLock;
    v9->_textureDescriptionAndSetForRepMapLock = v23;

    v25 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [(KNAnimatedSlideView *)v9 setCanvasLock:v25];

    [(KNAnimatedSlideView *)v9 p_setupTransitionStartTime];
    [(KNAnimatedSlideView *)v9 p_setMotionBlurStatus];
    v26 = TSULogCreateCategory();
    signpostLog = v9->_signpostLog;
    v9->_signpostLog = v26;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_textureDescriptionAndSetForRepMap)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView dealloc]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:181 isFatal:0 description:"tearDown not performed - leaking objects"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v6.receiver = self;
  v6.super_class = KNAnimatedSlideView;
  [(KNAnimatedSlideView *)&v6 dealloc];
}

- (void)tearDown
{
  v75 = *MEMORY[0x277D85DE8];
  [(KNAnimatedSlideView *)self tearDownTransition];
  animatedBuilds = [(KNAnimatedSlideModel *)self->_model animatedBuilds];
  [(KNAnimatedSlideView *)self p_recursivelyRemoveCallbackObserversFromAnimatedBuilds:animatedBuilds];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  [(KNAnimationDelayedCallbacks *)self->_delayedCallbacks cancelAllCallbacks];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  animatedBuilds2 = [(KNAnimatedSlideModel *)self->_model animatedBuilds];
  v5 = [animatedBuilds2 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v66;
    do
    {
      v8 = 0;
      do
      {
        if (*v66 != v7)
        {
          objc_enumerationMutation(animatedBuilds2);
        }

        v9 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v65 + 1) + 8 * v8)];
        [v9 teardown];

        ++v8;
      }

      while (v6 != v8);
      v6 = [animatedBuilds2 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v6);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSLock *)self->_textureDescriptionAndSetForRepMapLock lock];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  objectEnumerator = [(NSMapTable *)self->_textureDescriptionAndSetForRepMap objectEnumerator];
  v12 = [objectEnumerator countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v62;
    do
    {
      v15 = 0;
      do
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v16 = *(*(&v61 + 1) + 8 * v15);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        objectEnumerator2 = [v16 objectEnumerator];
        v18 = [objectEnumerator2 countByEnumeratingWithState:&v57 objects:v72 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v58;
          do
          {
            v21 = 0;
            do
            {
              if (*v58 != v20)
              {
                objc_enumerationMutation(objectEnumerator2);
              }

              [v10 addObject:*(*(&v57 + 1) + 8 * v21++)];
            }

            while (v19 != v21);
            v19 = [objectEnumerator2 countByEnumeratingWithState:&v57 objects:v72 count:16];
          }

          while (v19);
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [objectEnumerator countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v13);
  }

  textureDescriptionAndSetForRepMap = self->_textureDescriptionAndSetForRepMap;
  self->_textureDescriptionAndSetForRepMap = 0;

  [(NSLock *)self->_textureDescriptionAndSetForRepMapLock unlock];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v23 = v10;
  v24 = [v23 countByEnumeratingWithState:&v53 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v54;
    do
    {
      v27 = 0;
      do
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v53 + 1) + 8 * v27++) teardown];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v53 objects:v71 count:16];
    }

    while (v25);
  }

  precachedStaticTextureSets = self->_precachedStaticTextureSets;
  self->_precachedStaticTextureSets = 0;

  self->_didRenderPrecachedStaticTextures = 0;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  objectEnumerator3 = [(NSMapTable *)self->_eventToSlideTextureMap objectEnumerator];
  v30 = [objectEnumerator3 countByEnumeratingWithState:&v49 objects:v70 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v50;
    do
    {
      v33 = 0;
      do
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(objectEnumerator3);
        }

        [*(*(&v49 + 1) + 8 * v33++) teardown];
      }

      while (v31 != v33);
      v31 = [objectEnumerator3 countByEnumeratingWithState:&v49 objects:v70 count:16];
    }

    while (v31);
  }

  eventToSlideTextureMap = self->_eventToSlideTextureMap;
  self->_eventToSlideTextureMap = 0;

  animatedBuilds3 = [(KNAnimatedSlideModel *)self->_model animatedBuilds];
  [(KNAnimatedSlideView *)self p_recursivelyRemoveCallbackObserversFromAnimatedBuilds:animatedBuilds3];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  animatedBuilds4 = [(KNAnimatedSlideModel *)self->_model animatedBuilds];
  v37 = [animatedBuilds4 countByEnumeratingWithState:&v45 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v46;
    do
    {
      v40 = 0;
      do
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(animatedBuilds4);
        }

        v41 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v45 + 1) + 8 * v40)];
        [v41 teardown];

        ++v40;
      }

      while (v38 != v40);
      v38 = [animatedBuilds4 countByEnumeratingWithState:&v45 objects:v69 count:16];
    }

    while (v38);
  }

  if (self->_canvas)
  {
    canvasLock = [(KNAnimatedSlideView *)self canvasLock];
    [canvasLock lock];

    [(TSDCanvas *)self->_canvas setDelegate:0];
    [(TSDCanvas *)self->_canvas teardown];
    canvas = self->_canvas;
    self->_canvas = 0;

    canvasLock2 = [(KNAnimatedSlideView *)self canvasLock];
    [canvasLock2 unlock];
  }
}

- (void)tearDownTransition
{
  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  if (transitionRenderer)
  {
    v3 = transitionRenderer;
    [transitionRenderer registerForTransitionEndCallback:0 target:0];
    [v3 teardown];
    transitionRenderer = v3;
  }
}

- (void)p_recursivelyRemoveCallbackObserversFromAnimatedBuilds:(id)builds
{
  v19 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [buildsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(buildsCopy);
        }

        v9 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v14 + 1) + 8 * i)];
        [v9 registerForBuildEndCallback:0 target:0];
        objc_opt_class();
        v13 = &unk_28851BA00;
        v10 = TSUClassAndProtocolCast();
        v11 = v10;
        if (v10)
        {
          [v10 registerForAmbientBuildStartCallback:0 target:{0, &unk_28851BA00}];
        }

        animatedBuildsToStartAtEnd = [v9 animatedBuildsToStartAtEnd];
        [(KNAnimatedSlideView *)self p_recursivelyRemoveCallbackObserversFromAnimatedBuilds:animatedBuildsToStartAtEnd];
      }

      v6 = [buildsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  canvasDelegate = [WeakRetained canvasDelegate];
  documentRoot = [canvasDelegate documentRoot];

  return documentRoot;
}

- (BOOL)shouldSuppressBackgrounds
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  canvasDelegate = [WeakRetained canvasDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_session);
  canvasDelegate2 = [v6 canvasDelegate];
  shouldSuppressBackgrounds = [canvasDelegate2 shouldSuppressBackgrounds];

  return shouldSuppressBackgrounds;
}

- (BOOL)shouldShowInstructionalTextForLayout:(id)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  shouldShowInstructionalText = [WeakRetained shouldShowInstructionalText];

  return shouldShowInstructionalText;
}

- (BOOL)isCanvasDrawingIntoPDF:(id)f
{
  fCopy = f;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  canvasDelegate = [WeakRetained canvasDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_session);
    canvasDelegate2 = [v8 canvasDelegate];
    v10 = [canvasDelegate2 isCanvasDrawingIntoPDF:fCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isRenderingForKPF
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  canvasDelegate = [WeakRetained canvasDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_session);
  canvasDelegate2 = [v6 canvasDelegate];
  isRenderingForKPF = [canvasDelegate2 isRenderingForKPF];

  return isRenderingForKPF;
}

- (BOOL)isInfoAKeynoteTemplateObject:(id)object
{
  v3 = [KNAbstractSlide parentSlideForInfo:object];
  isTemplateSlide = [v3 isTemplateSlide];

  return isTemplateSlide;
}

- (id)infoToConnectToForConnectionLineConnectedToInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = infoCopy;
  v7 = v6;
  if (v5)
  {
    v8 = [KNSlideNode parentSlideNodeForInfo:v5];
    slide = [v8 slide];

    templateSlide = [(KNSlide *)self->_slide templateSlide];

    v7 = v6;
    if (slide == templateSlide)
    {
      v11 = [(KNSlide *)self->_slide infoCorrespondingToTemplateSlideInfo:v6];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v5;
      }

      v7 = v13;
    }
  }

  return v7;
}

- (void)registerForEventStartCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_eventStartCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_eventStartCallbackSelector = callbackCopy;
}

- (void)registerForEventAnimationActiveCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_eventAnimationActiveCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_eventAnimationActiveCallbackSelector = callbackCopy;
}

- (void)registerForEventEndCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_eventEndCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_eventEndCallbackSelector = callbackCopy;
}

- (void)registerForEventImmediateEndCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_eventImmediateEndCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_eventImmediateEndCallbackSelector = callbackCopy;
}

- (void)registerForAmbientBuildStartCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_ambientBuildStartCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_ambientBuildStartCallbackSelector = callbackCopy;
}

- (void)registerForAmbientBuildEndCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_ambientBuildEndCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_ambientBuildEndCallbackSelector = callbackCopy;
}

- (void)p_notifyEventStart
{
  if (objc_opt_respondsToSelector())
  {
    eventStartCallbackTarget = self->_eventStartCallbackTarget;
    if (self->_eventStartCallbackSelector)
    {
      eventStartCallbackSelector = self->_eventStartCallbackSelector;
    }

    else
    {
      eventStartCallbackSelector = 0;
    }

    [eventStartCallbackTarget performSelector:eventStartCallbackSelector withObject:self];
  }
}

- (void)p_notifyEventAnimationActiveWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    if (self->_eventAnimationActiveCallbackSelector)
    {
      eventAnimationActiveCallbackSelector = self->_eventAnimationActiveCallbackSelector;
    }

    else
    {
      eventAnimationActiveCallbackSelector = 0;
    }

    [self->_eventAnimationActiveCallbackTarget performSelector:eventAnimationActiveCallbackSelector withObject:objectCopy];
  }
}

- (void)p_notifyEventImmediateEndWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    if (self->_eventImmediateEndCallbackSelector)
    {
      eventImmediateEndCallbackSelector = self->_eventImmediateEndCallbackSelector;
    }

    else
    {
      eventImmediateEndCallbackSelector = 0;
    }

    [self->_eventImmediateEndCallbackTarget performSelector:eventImmediateEndCallbackSelector withObject:objectCopy];
  }
}

- (void)p_notifyEventEndWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    if (self->_eventEndCallbackSelector)
    {
      eventEndCallbackSelector = self->_eventEndCallbackSelector;
    }

    else
    {
      eventEndCallbackSelector = 0;
    }

    [self->_eventEndCallbackTarget performSelector:eventEndCallbackSelector withObject:objectCopy];
  }
}

- (void)p_notifyAmbientBuildStartWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    if (self->_ambientBuildStartCallbackSelector)
    {
      ambientBuildStartCallbackSelector = self->_ambientBuildStartCallbackSelector;
    }

    else
    {
      ambientBuildStartCallbackSelector = 0;
    }

    [self->_ambientBuildStartCallbackTarget performSelector:ambientBuildStartCallbackSelector withObject:objectCopy];
  }
}

- (void)p_notifyAmbientBuildEndWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    if (self->_ambientBuildEndCallbackSelector)
    {
      ambientBuildEndCallbackSelector = self->_ambientBuildEndCallbackSelector;
    }

    else
    {
      ambientBuildEndCallbackSelector = 0;
    }

    [self->_ambientBuildEndCallbackTarget performSelector:ambientBuildEndCallbackSelector withObject:objectCopy];
  }
}

- (void)transitionHasFinishedAnimating:(id)animating
{
  animatingCopy = animating;
  if (animatingCopy)
  {
    [(KNAnimatedSlideView *)self p_notifyEventImmediateEndWithObject:animatingCopy];
  }

  if ([animatingCopy signpostId] != -1)
  {
    v5 = self->_signpostLog;
    signpostId = [animatingCopy signpostId];
    if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = signpostId;
      if (os_signpost_enabled(v5))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v5, OS_SIGNPOST_INTERVAL_END, v7, "Animation", "End", v16, 2u);
      }
    }
  }

  animationsActive = self->_animationsActive;
  if (!animationsActive)
  {
    if (self->_animationsStarted)
    {
      animationsActive = 0;
    }

    else
    {
      v9 = MEMORY[0x277D81150];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView transitionHasFinishedAnimating:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:443 isFatal:0 description:"number of animations started or active is invalid"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      animationsActive = self->_animationsActive;
    }
  }

  v12 = self->_animationsStarted - 1;
  self->_animationsActive = animationsActive - 1;
  self->_animationsStarted = v12;
  if (v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView transitionHasFinishedAnimating:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:446 isFatal:0 description:"There should be no other animations after a transition has finished animating."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (!self->_shouldStopAnimations)
  {
    [(KNAnimatedSlideView *)self setHasEventStarted:0];
    if (animatingCopy)
    {
      self->_transitionHasFinishedCallbackPending = 1;
      [(KNAnimatedSlideView *)self p_notifyEventEndWithObject:animatingCopy];
    }
  }
}

- (void)p_ambientBuildStarted:(id)started
{
  v18 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  [(KNAnimatedSlideView *)self p_notifyAmbientBuildStartWithObject:startedCopy];
  info = [startedCopy info];
  if (info)
  {
    v6 = [(NSMapTable *)self->_buildsToStartAfterAmbientBuildStartsMap objectForKey:info];
    v7 = v6;
    if (v6)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v13 + 1) + 8 * i);
            [v12 startTime];
            [(KNAnimatedSlideView *)self p_animateBuild:v12 afterDelay:?];
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      [(NSMapTable *)self->_buildsToStartAfterAmbientBuildStartsMap removeObjectForKey:info];
    }
  }

  [(KNAnimatedSlideView *)self performSelector:sel_buildHasFinishedAnimating_ withObject:startedCopy afterDelay:0.0];
}

- (void)p_ambientBuildEnded:(id)ended
{
  endedCopy = ended;
  [(KNAnimatedSlideView *)self p_notifyAmbientBuildEndWithObject:endedCopy];
  [(KNAnimatedSlideView *)self p_removeAmbientBuildRenderer:endedCopy];
}

- (void)buildHasFinishedAnimating:(id)animating
{
  v93 = *MEMORY[0x277D85DE8];
  animatingCopy = animating;
  if ([animatingCopy signpostId] != -1)
  {
    v5 = self->_signpostLog;
    signpostId = [animatingCopy signpostId];
    if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = signpostId;
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v5, OS_SIGNPOST_INTERVAL_END, v7, "Animation", "End", buf, 2u);
      }
    }
  }

  if (self->_shouldStopAnimations)
  {
    goto LABEL_65;
  }

  v8 = [animatingCopy rep];
  [v8 updateHitTestingForTextureStage:objc_msgSend(animatingCopy isAtEndOfBuild:{"textureStageIndex"), 1}];

  animatedBuildsToStartAtEnd = [animatingCopy animatedBuildsToStartAtEnd];

  v76 = animatingCopy;
  selfCopy = self;
  if (!animatedBuildsToStartAtEnd)
  {
    goto LABEL_42;
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  animatedBuildsToStartAtEnd2 = [animatingCopy animatedBuildsToStartAtEnd];
  v11 = [animatedBuildsToStartAtEnd2 copy];

  v12 = [v11 countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (!v12)
  {
    goto LABEL_41;
  }

  v13 = v12;
  v14 = *v86;
  v71 = *v86;
  v72 = v11;
  do
  {
    v15 = 0;
    v74 = v13;
    do
    {
      if (*v86 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v85 + 1) + 8 * v15);
      v17 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:v16, v71, v72];
      info = [v17 info];
      v19 = [(KNAnimatedSlideView *)self p_shouldSkipActionBuild:v16 onDrawable:info];

      [v16 startTime];
      if (v20 != 0.0)
      {
        goto LABEL_18;
      }

      animatedBuild = [animatingCopy animatedBuild];
      if (([animatedBuild isActionBuild] & 1) == 0)
      {

LABEL_18:
        if (!v19)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      v75 = v19;
      animatedBuild2 = [animatingCopy animatedBuild];
      if ([animatedBuild2 isEmphasisBuild])
      {
      }

      else
      {
        animationsActive = self->_animationsActive;

        if (animationsActive >= 2)
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v24 = self->_activeAnimatedBuilds;
          v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v81 objects:v91 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v82;
            do
            {
              v28 = 0;
              do
              {
                if (*v82 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v81 + 1) + 8 * v28);
                animatedBuild3 = [animatingCopy animatedBuild];
                if (animatedBuild3 == v29 || ![v29 isActionBuild] || objc_msgSend(v29, "isEmphasisBuild"))
                {
                }

                else
                {
                  [v29 eventEndTime];
                  v32 = v31;
                  animatedBuild4 = [animatingCopy animatedBuild];
                  [animatedBuild4 eventEndTime];
                  v35 = v34;

                  animatingCopy = v76;
                  if (v32 == v35)
                  {
                    self = selfCopy;
                    v37 = [(KNAnimatedSlideModel *)selfCopy->_model rendererForAnimatedBuild:v29];
                    [v37 addBuildToStartAtEnd:v16];

                    animatingCopy = v76;
                    [v76 removeBuildToStartAtEnd:v16];

                    v14 = v71;
                    v11 = v72;
                    v13 = v74;
                    goto LABEL_39;
                  }
                }

                ++v28;
              }

              while (v26 != v28);
              v36 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v81 objects:v91 count:16];
              v26 = v36;
            }

            while (v36);
          }

          v11 = v72;
          self = selfCopy;
          v14 = v71;
        }

        v13 = v74;
      }

      if (!v75)
      {
LABEL_38:
        [v16 startTime];
        [(KNAnimatedSlideView *)self p_animateBuild:v16 afterDelay:?];
      }

LABEL_39:

      ++v15;
    }

    while (v15 != v13);
    v13 = [v11 countByEnumeratingWithState:&v85 objects:v92 count:16];
  }

  while (v13);
LABEL_41:

LABEL_42:
  v38 = self->_animationsActive;
  if (!v38)
  {
    if (self->_animationsStarted)
    {
      v38 = 0;
    }

    else
    {
      v39 = MEMORY[0x277D81150];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView buildHasFinishedAnimating:]"];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
      v42 = v39;
      animatingCopy = v76;
      [v42 handleFailureInFunction:v40 file:v41 lineNumber:539 isFatal:0 description:"number of animations started or active is invalid"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      v38 = self->_animationsActive;
    }
  }

  animationsStarted = self->_animationsStarted - 1;
  self->_animationsActive = v38 - 1;
  self->_animationsStarted = animationsStarted;
  if (animatingCopy)
  {
    [animatingCopy animatedBuild];
    v45 = v44 = animatingCopy;

    if (v45)
    {
      animatedBuild5 = [v44 animatedBuild];
      [(KNAnimatedSlideView *)self removeActiveAnimatedBuild:animatedBuild5];
    }

    animationsStarted = self->_animationsStarted;
    animatingCopy = v44;
  }

  if (!animationsStarted)
  {
    [(KNAnimatedSlideView *)self setHasEventStarted:0];
    eventEndCallbackTarget = self->_eventEndCallbackTarget;
    if (eventEndCallbackTarget)
    {
      if (self->_eventEndCallbackSelector)
      {
        eventEndCallbackSelector = self->_eventEndCallbackSelector;
      }

      else
      {
        eventEndCallbackSelector = 0;
      }

      [eventEndCallbackTarget performSelector:eventEndCallbackSelector withObject:animatingCopy afterDelay:0.0];
    }

    [(KNAnimatedSlideView *)self p_notifyEventImmediateEndWithObject:animatingCopy];
    [(KNAnimatedSlideView *)self setCurrentEventIndex:[(KNAnimatedSlideView *)self currentEventIndex]+ 1];
    WeakRetained = objc_loadWeakRetained(&self->_session);
    if ([WeakRetained playMode] == 1)
    {
      goto LABEL_63;
    }

    v50 = objc_loadWeakRetained(&self->_session);
    if ([v50 playMode] == 2)
    {
      goto LABEL_62;
    }

    v51 = objc_loadWeakRetained(&self->_session);
    if ([v51 playMode] == 5)
    {
      goto LABEL_61;
    }

    v52 = objc_loadWeakRetained(&self->_session);
    if ([v52 playMode] == 6)
    {

LABEL_61:
LABEL_62:

LABEL_63:
LABEL_64:
      [(KNAnimatedSlideView *)self performSelector:sel_triggerNextEvent withObject:0 afterDelay:0.0];
    }

    else
    {
      triggerQueued = self->_triggerQueued;

      if (triggerQueued)
      {
        goto LABEL_64;
      }

      if ([(KNAnimatedSlideView *)self hasTransitionAtEventIndex:self->_currentEventIndex])
      {
        transition = [(KNAbstractSlide *)self->_slide transition];
        v55 = transition;
        if (transition && [transition hasAutomaticTrigger] && self->_playsAutomaticTransitions)
        {
          [(KNAnimatedSlideView *)self performSelector:sel_triggerNextEvent withObject:0 afterDelay:0.0];
        }

        else if (!self->_ambientBuildRenderers)
        {
          transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
          [transitionRenderer renderSlideIndex:0];

          animatingCopy = v76;
        }
      }

      else if ([(KNAnimatedSlideModel *)self->_model buildEventCount])
      {
        currentEventIndex = self->_currentEventIndex;
        if (currentEventIndex < [(KNAnimatedSlideModel *)self->_model buildEventCount])
        {
          v57 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v58 = [(KNAnimatedSlideModel *)self->_model eventsAtIndex:self->_currentEventIndex];
          v59 = [v58 countByEnumeratingWithState:&v77 objects:v90 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v78;
            do
            {
              for (i = 0; i != v60; ++i)
              {
                if (*v78 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v63 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v77 + 1) + 8 * i)];
                buildStage = [v63 buildStage];
                build = [buildStage build];
                drawable = [build drawable];

                if (([v57 containsObject:drawable] & 1) == 0 && (objc_msgSend(drawable, "conformsToProtocol:", &unk_288532838) & 1) == 0)
                {
                  [MEMORY[0x277CD9FF0] begin];
                  [MEMORY[0x277CD9FF0] setDisableActions:1];
                  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
                  v67 = objc_autoreleasePoolPush();
                  animationWillBegin = [v63 animationWillBegin];
                  objc_autoreleasePoolPop(v67);
                  [MEMORY[0x277CD9FF0] commit];
                  [v57 addObject:drawable];
                  v69 = [v63 rep];
                  [v69 updateHitTestingForTextureStage:objc_msgSend(v63 isAtEndOfBuild:{"textureStageIndex"), 0}];
                }

                self = selfCopy;
              }

              v60 = [v58 countByEnumeratingWithState:&v77 objects:v90 count:16];
            }

            while (v60);
          }

          animatingCopy = v76;
        }
      }
    }
  }

LABEL_65:
}

- (NSArray)allInfos
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  infosToDisplay = [(KNSlide *)self->_slide infosToDisplay];
  v5 = [infosToDisplay countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(infosToDisplay);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_session);
        v11 = [WeakRetained canMakeInfoVisible:v9 allowAudioOnlyMovies:0];

        if (v11)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [infosToDisplay countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  templateSlide = [(KNSlide *)self->_slide templateSlide];
  nonPlaceholderObjects = [templateSlide nonPlaceholderObjects];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = nonPlaceholderObjects;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_loadWeakRetained(&self->_session);
          v21 = [v20 canMakeInfoVisible:v19 allowAudioOnlyMovies:{0, v23}];

          if (v21)
          {
            [v3 addObject:v19];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  return v3;
}

- (NSArray)allInfosIncludingAudio
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isMetalEnabled = [WeakRetained isMetalEnabled];

  if (isMetalEnabled)
  {
    allInfos = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    infosToDisplay = [(KNSlide *)self->_slide infosToDisplay];
    v7 = [infosToDisplay countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(infosToDisplay);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = objc_loadWeakRetained(&self->_session);
          v13 = [v12 canMakeInfoVisible:v11 allowAudioOnlyMovies:1];

          if (v13)
          {
            [allInfos addObject:v11];
          }
        }

        v8 = [infosToDisplay countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    allInfos = [(KNAnimatedSlideView *)self allInfos];
  }

  return allInfos;
}

- (NSArray)infosCurrentlyVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  [WeakRetained shouldIgnoreBuildVisibility];

  return MEMORY[0x2821F9670](self, sel_infosVisibleAtEvent_ignoreBuildVisibility_);
}

- (id)p_repsForInfos:(id)infos
{
  v21 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = infosCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_session);
        canvas = [(KNAnimatedSlideView *)self canvas];
        v14 = [WeakRetained repForInfo:v11 onCanvas:canvas];

        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (NSArray)allReps
{
  v20 = *MEMORY[0x277D85DE8];
  allInfos = [(KNAnimatedSlideView *)self allInfos];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allInfos, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = allInfos;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_session);
        canvas = [(KNAnimatedSlideView *)self canvas];
        v13 = [WeakRetained repForInfo:v10 onCanvas:canvas];

        if (v13)
        {
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)repsCurrentlyVisible
{
  infosCurrentlyVisible = [(KNAnimatedSlideView *)self infosCurrentlyVisible];
  v4 = [(KNAnimatedSlideView *)self p_repsForInfos:infosCurrentlyVisible];

  return v4;
}

- (id)infosVisibleAtEvent:(unint64_t)event ignoreBuildVisibility:(BOOL)visibility
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  infosToDisplay = [(KNSlide *)self->_slide infosToDisplay];
  v8 = [infosToDisplay countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(infosToDisplay);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (visibility || [(KNAnimatedSlideModel *)self->_model info:*(*(&v17 + 1) + 8 * i) isVisibleDuringEvent:event])
        {
          WeakRetained = objc_loadWeakRetained(&self->_session);
          v14 = [WeakRetained canMakeInfoVisible:v12 allowAudioOnlyMovies:0];

          if (v14)
          {
            [v16 addObject:v12];
          }
        }
      }

      v9 = [infosToDisplay countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v16;
}

- (BOOL)hasTransitionAtEventIndex:(int64_t)index
{
  if ([(KNAnimatedSlideModel *)self->_model buildEventCount]!= index)
  {
    return 0;
  }

  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  v5 = transitionRenderer != 0;

  return v5;
}

- (KNAnimatedSlideView)nextASV
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v4 = [WeakRetained nextSlideNodeAfterSlideNode:self->_slideNode];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_session);
    v6 = [v5 animatedSlideViewFor:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldPreCache
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  animatedBuilds = [(KNAnimatedSlideModel *)self->_model animatedBuilds];
  v4 = [animatedBuilds countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(animatedBuilds);
        }

        v8 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v12 + 1) + 8 * i)];
        shouldPreGenerateTextures = [v8 shouldPreGenerateTextures];

        if (!shouldPreGenerateTextures)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [animatedBuilds countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)p_setMotionBlurStatus
{
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  isMotionBlurEnabledForEvent = self->_isMotionBlurEnabledForEvent;
  self->_isMotionBlurEnabledForEvent = array;

  WeakRetained = objc_loadWeakRetained(&self->_session);
  animationContext = [WeakRetained animationContext];
  v7 = [KNAnimationUtils isMotionBlurCapableWithAnimationContext:animationContext];

  buildEventCount = [(KNAnimatedSlideModel *)self->_model buildEventCount];
  v9 = [MEMORY[0x277CBEB58] set];
  if (buildEventCount)
  {
    v10 = 0;
    v21 = buildEventCount;
    do
    {
      if (v7)
      {
        v11 = v7;
        v12 = [(KNAnimatedSlideModel *)self->_model buildChunksForEventRange:v10, 1];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            v16 = 0;
            do
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              build = [*(*(&v22 + 1) + 8 * v16) build];
              drawable = [build drawable];
              [v9 addObject:drawable];

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v14);
        }

        v19 = self->_isMotionBlurEnabledForEvent;
        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "count") < 0xB}];
        [(NSMutableArray *)v19 addObject:v20];

        [v9 removeAllObjects];
        v7 = v11;
        buildEventCount = v21;
      }

      else
      {
        [(NSMutableArray *)self->_isMotionBlurEnabledForEvent addObject:MEMORY[0x277CBEC28]];
      }

      ++v10;
    }

    while (v10 != buildEventCount);
  }
}

- (BOOL)isMotionBlurEnabledWithEvent:(unint64_t)event
{
  v3 = [(NSMutableArray *)self->_isMotionBlurEnabledForEvent objectAtIndexedSubscript:event];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (TSDCanvas)canvas
{
  canvasLock = [(KNAnimatedSlideView *)self canvasLock];
  [canvasLock lock];

  if (!self->_canvas)
  {
    infosToDisplay = [(KNSlide *)self->_slide infosToDisplay];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_275DB51BC;
    v12[3] = &unk_27A698A98;
    v12[4] = self;
    v5 = [infosToDisplay tsu_arrayOfObjectsPassingTest:v12];

    WeakRetained = objc_loadWeakRetained(&self->_session);
    v7 = [WeakRetained newCanvasForInfos:v5];
    canvas = self->_canvas;
    self->_canvas = v7;
  }

  canvasLock2 = [(KNAnimatedSlideView *)self canvasLock];
  [canvasLock2 unlock];

  v10 = self->_canvas;

  return v10;
}

- (id)p_addParentLayerForInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  animationContext = [WeakRetained animationContext];
  showLayer = [animationContext showLayer];

  v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [showLayer bounds];
  [v8 setFrame:?];
  [showLayer addSublayer:v8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  animatedBuilds = [(KNAnimatedSlideModel *)self->_model animatedBuilds];
  v10 = [animatedBuilds countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(animatedBuilds);
        }

        v14 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v17 + 1) + 8 * i)];
        info = [v14 info];

        if (info == infoCopy)
        {
          [v14 setParentLayer:v8];
        }
      }

      v11 = [animatedBuilds countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)p_addInfoToLayerTree:(id)tree rep:(id)rep renderer:(id)renderer builtInfos:(id)infos
{
  treeCopy = tree;
  repCopy = rep;
  rendererCopy = renderer;
  infosCopy = infos;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  shouldIgnoreBuildVisibility = [WeakRetained shouldIgnoreBuildVisibility];

  v15 = objc_loadWeakRetained(&self->_session);
  animationContext = [v15 animationContext];
  showLayer = [animationContext showLayer];

  v18 = [(KNAnimatedSlideView *)self p_addParentLayerForInfo:treeCopy];
  if (rendererCopy && ([infosCopy containsObject:treeCopy] & 1) == 0)
  {
    animationWillBegin = [rendererCopy animationWillBegin];
    [infosCopy addObject:treeCopy];
    if (!animationWillBegin)
    {
      goto LABEL_8;
    }
  }

  else
  {
    animationWillBegin = [(KNAnimatedSlideView *)self p_initializeTextureSetForRep:repCopy info:treeCopy eventIndex:self->_currentEventIndex ignoreBuildVisibility:shouldIgnoreBuildVisibility isRenderingToContext:0];
    v20 = repCopy;
    objc_sync_enter(v20);
    [animationWillBegin renderLayerContentsIfNeeded];
    objc_sync_exit(v20);

    if (!animationWillBegin)
    {
      goto LABEL_8;
    }
  }

  if (showLayer)
  {
    layer = [animationWillBegin layer];
    [v18 addSublayer:layer];
  }

LABEL_8:
}

- (void)renderCurrentEvent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(KNAnimatedSlideView *)selfCopy p_renderCurrentEvent];
  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_session);
  textureManager = [WeakRetained textureManager];
  [textureManager setCurrentSlideNode:selfCopy->_slideNode];
}

- (void)p_renderCurrentEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isMetalEnabled = [WeakRetained isMetalEnabled];

  if (isMetalEnabled)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView p_renderCurrentEvent]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:905 isFatal:0 description:"SERIOUS BUG: Non-metal rendering being performed when Metal is enabled"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  if (![(KNAnimatedSlideView *)self hasTransitionAtEventIndex:self->_currentEventIndex])
  {
    goto LABEL_6;
  }

  v8 = objc_loadWeakRetained(&self->_session);
  show = [v8 show];
  if ([show mode] == 2)
  {

LABEL_6:
    [(KNAnimatedSlideView *)self p_renderSlideContentWithCALayers];
    goto LABEL_7;
  }

  v10 = objc_loadWeakRetained(&self->_session);
  playMode = [v10 playMode];

  if (playMode == 5 || !transitionRenderer)
  {
    goto LABEL_6;
  }

  [transitionRenderer renderSlideIndex:0];
LABEL_7:
}

- (void)p_renderSlideContentWithCALayers
{
  v34 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  context = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_session);
  animationContext = [WeakRetained animationContext];
  showLayer = [animationContext showLayer];

  [showLayer setSublayers:0];
  v26 = showLayer;
  [showLayer kn_removeAllAnimationsOnLayerTree];
  v6 = objc_loadWeakRetained(&self->_session);
  [v6 makeSharedMetalLayerVisible:0];

  v7 = objc_loadWeakRetained(&self->_session);
  bitmapRenderingQualityInfo = [v7 bitmapRenderingQualityInfo];

  if (bitmapRenderingQualityInfo)
  {
    canvas = [(KNAnimatedSlideView *)self canvas];
    v10 = objc_loadWeakRetained(&self->_session);
    bitmapRenderingQualityInfo2 = [v10 bitmapRenderingQualityInfo];
    [canvas addBitmapsToRenderingQualityInfo:bitmapRenderingQualityInfo2 inContext:0];
  }

  v28 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allInfos = [(KNAnimatedSlideView *)self allInfos];
  v13 = [allInfos countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(allInfos);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = objc_loadWeakRetained(&self->_session);
        canvas2 = [(KNAnimatedSlideView *)self canvas];
        v20 = [v18 repForInfo:v17 onCanvas:canvas2];

        if (v20)
        {
          v21 = objc_loadWeakRetained(&self->_session);
          isExitingShow = [v21 isExitingShow];

          if ((isExitingShow & 1) == 0)
          {
            objc_opt_class();
            v23 = TSUDynamicCast();
            if (v23)
            {
              v24 = [(KNAnimatedSlideModel *)self->_model animatedBuildForInfo:v23 atEvent:self->_currentEventIndex];
              v25 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:v24];
            }

            else
            {
              v25 = 0;
            }

            [(KNAnimatedSlideView *)self p_addInfoToLayerTree:v17 rep:v20 renderer:v25 builtInfos:v28];
            [v20 updateHitTestingForTextureStage:objc_msgSend(v25 isAtEndOfBuild:{"textureStageIndex"), 0}];
          }
        }
      }

      v14 = [allInfos countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
  [MEMORY[0x277CD9FF0] commit];
}

- (void)renderIntoContext:(CGContext *)context eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  v39 = *MEMORY[0x277D85DE8];
  if (!context)
  {
    v6 = MEMORY[0x277D81150];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView renderIntoContext:eventIndex:ignoreBuildVisibility:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:967 isFatal:0 description:{"invalid nil value for '%{public}s'", "context"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    context = 0;
  }

  contextCopy = context;
  v29 = TSDCGContextGetPdfTagger();
  canvas = [(KNAnimatedSlideView *)self canvas];
  v25 = TSDCGContextGetBitmapQualityInfo();
  if (v25)
  {
    [canvas addBitmapsToRenderingQualityInfo:v25 inContext:contextCopy];
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  context = objc_autoreleasePoolPush();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(KNAnimatedSlideView *)self allInfos];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v31 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_session);
        v13 = [WeakRetained repForInfo:v11 onCanvas:canvas];

        if (v13)
        {
          v14 = objc_loadWeakRetained(&self->_session);
          isExitingShow = [v14 isExitingShow];

          if ((isExitingShow & 1) == 0)
          {
            v16 = [(KNAnimatedSlideView *)self p_initializeTextureSetForRep:v13 info:v11 eventIndex:index ignoreBuildVisibility:visibilityCopy isRenderingToContext:1];
            v33 = 0;
            objc_opt_class();
            v17 = TSUDynamicCast();
            if (v17)
            {
              v18 = [(KNAnimatedSlideModel *)self->_model animatedBuildForInfo:v17 aroundEvent:index isAtEndOfBuild:&v33];
              v19 = v18;
              if (v18 && !visibilityCopy)
              {
                eventIndex = [v18 eventIndex];
                indexCopy = eventIndex + v33;
LABEL_18:
                v22 = v13;
                objc_sync_enter(v22);
                [v29 beginObject:v22];
                canvas2 = [(KNAnimatedSlideView *)self canvas];
                [v16 renderIntoContext:contextCopy eventIndex:indexCopy requiresTransparentBackground:{-[KNAnimatedSlideView isCanvasDrawingIntoPDF:](self, "isCanvasDrawingIntoPDF:", canvas2) ^ 1}];

                [v29 endObject:v22];
                objc_sync_exit(v22);

                goto LABEL_19;
              }
            }

            else
            {
              v19 = 0;
            }

            indexCopy = index;
            goto LABEL_18;
          }
        }

LABEL_19:
      }

      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)playAutomaticEvents
{
  v3 = [(KNAnimatedSlideModel *)self->_model eventsAtIndex:self->_currentEventIndex];
  if (-[KNAnimatedSlideView hasTransitionAtEventIndex:](self, "hasTransitionAtEventIndex:", self->_currentEventIndex) || ![v3 count])
  {
    automatic = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    automatic = [v4 automatic];
  }

  if ([(KNAnimatedSlideView *)self hasTransitionAtEventIndex:self->_currentEventIndex])
  {
    transition = [(KNAbstractSlide *)self->_slide transition];
    v7 = transition;
    if (transition)
    {
      automatic |= [transition hasAutomaticTrigger];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  if ([WeakRetained playMode] == 1)
  {
  }

  else
  {
    triggerQueued = self->_triggerQueued;

    if (((triggerQueued | automatic) & 1) == 0)
    {
      v10 = 0;
      goto LABEL_14;
    }
  }

  [(KNAnimatedSlideView *)self performSelector:sel_triggerNextEvent withObject:0 afterDelay:0.0];
  v10 = 1;
LABEL_14:

  return v10;
}

- (void)triggerNextEventIgnoringDelay:(BOOL)delay
{
  delayCopy = delay;
  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  if (self->_animationsStarted || self->_transitionHasFinishedCallbackPending)
  {
    self->_triggerQueued = 1;
    goto LABEL_4;
  }

  v22 = transitionRenderer;
  if (![(KNAnimatedSlideView *)self hasTransitionAtEventIndex:self->_currentEventIndex])
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  nextSlideAfterCurrent = [WeakRetained nextSlideAfterCurrent];

  if (nextSlideAfterCurrent)
  {
    goto LABEL_9;
  }

  plugin = [v22 plugin];
  if (plugin)
  {
    v16 = plugin;
    plugin2 = [v22 plugin];
    animationName = [objc_opt_class() animationName];
    if ([animationName isEqualToString:*MEMORY[0x277D80160]])
    {
    }

    else
    {
      v19 = objc_loadWeakRetained(&self->_session);
      shouldAnimateTransitionOnLastSlide = [v19 shouldAnimateTransitionOnLastSlide];

      if (shouldAnimateTransitionOnLastSlide)
      {
LABEL_9:
        self->_triggerQueued = 0;
        self->_shouldStopAnimations = 0;
        eventIndexesToAnimate = [(KNAnimatedSlideView *)self eventIndexesToAnimate];
        v9 = eventIndexesToAnimate;
        if (eventIndexesToAnimate && (v10 = self->_currentEventIndex, v10 > [eventIndexesToAnimate lastIndex]))
        {
          v11 = objc_loadWeakRetained(&self->_session);
          playMode = [v11 playMode];

          if (playMode)
          {
            v13 = objc_loadWeakRetained(&self->_session);
            [v13 executeEndShowHandlerAfterDelay:0.0];
          }
        }

        else
        {
          currentEventIndex = self->_currentEventIndex;
          if (currentEventIndex < [(KNAnimatedSlideModel *)self->_model buildEventCount]+ 1)
          {
            [(KNAnimatedSlideView *)self p_animateCurrentEventIgnoringDelays:delayCopy];
          }
        }

        goto LABEL_16;
      }
    }
  }

  v21 = objc_loadWeakRetained(&self->_session);
  [v21 executeEndShowHandlerAfterDelay:self->_transitionStartTime];

LABEL_16:
  transitionRenderer = v22;
LABEL_4:
}

- (void)p_animateCurrentEventIgnoringDelays:(BOOL)delays
{
  delaysCopy = delays;
  v55 = *MEMORY[0x277D85DE8];
  [(KNAnimatedSlideView *)self p_minimumDelay];
  v6 = v5;
  if ([(KNAnimatedSlideView *)self hasTransitionAtEventIndex:self->_currentEventIndex])
  {
    if (!self->_isSlideBuildable || self->_currentEventIndex)
    {
      transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
      [transitionRenderer registerForTransitionEndCallback:sel_transitionHasFinishedAnimating_ target:self];
      ++self->_animationsStarted;
      self->_isInDelayBeforeActiveTransition = 1;
      [(KNAnimatedSlideView *)self setHasEventStarted:1];
      [(KNAnimatedSlideView *)self p_notifyEventStart];
      v7 = 0.0;
      if (!delaysCopy)
      {
        v7 = fmax(self->_transitionStartTime, v6);
      }

      if (+[KNAnimationUtils isResponsivenessLoggingEnabled])
      {
        objc_msgSend_duration(transitionRenderer);
        v9 = v8;
        plugin = [transitionRenderer plugin];
        if (plugin)
        {
          plugin2 = [transitionRenderer plugin];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (v7 == 0.0)
          {
            v13 = 0.001;
          }

          else
          {
            v13 = v7;
          }

          if ((isKindOfClass & 1) == 0)
          {
            v13 = v7 + v9;
          }
        }

        else if (v7 == 0.0)
        {
          v13 = 0.001;
        }

        else
        {
          v13 = v7;
        }

        WeakRetained = objc_loadWeakRetained(&self->_session);
        animationStringArray = [WeakRetained animationStringArray];
        v33 = NSStringFromClass([transitionRenderer pluginClass]);
        [animationStringArray addObject:v33];

        v34 = objc_loadWeakRetained(&self->_session);
        animationDurationArray = [v34 animationDurationArray];
        v36 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        [animationDurationArray addObject:v36];
      }

      [(KNAnimatedSlideView *)self p_performAnimationWithTarget:self selector:sel_p_animateTransition_ object:transitionRenderer delay:0 performAsynchronously:v7];
      [(KNAnimatedSlideView *)self p_setupTransitionStartTime];

      return;
    }
  }

  else if (!self->_isSlideBuildable)
  {
    return;
  }

  v14 = 0.0;
  if (delaysCopy)
  {
    [(KNAnimatedSlideModel *)self->_model initialDelayForEventIndex:self->_currentEventIndex];
    v14 = -v15;
  }

  if (+[KNAnimationUtils isResponsivenessLoggingEnabled])
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_275DB6694;
    v48 = sub_275DB66A4;
    v49 = &stru_2884D8E20;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v43[3] = 0;
    model = self->_model;
    currentEventIndex = self->_currentEventIndex;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_275DB66AC;
    v42[3] = &unk_27A698AC0;
    v42[4] = &v50;
    v42[5] = v43;
    v42[6] = &v44;
    [(KNAnimatedSlideModel *)model enumerateAnimatedBuildsAndTimeRangesAtIndex:currentEventIndex usingBlock:v42];
    v18 = objc_loadWeakRetained(&self->_session);
    animationStringArray2 = [v18 animationStringArray];
    [animationStringArray2 addObject:v45[5]];

    v20 = objc_loadWeakRetained(&self->_session);
    animationDurationArray2 = [v20 animationDurationArray];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v51[3]];
    [animationDurationArray2 addObject:v22];

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(&v44, 8);

    _Block_object_dispose(&v50, 8);
  }

  [(KNAnimatedSlideModel *)self->_model eventsAtIndex:self->_currentEventIndex];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v23 = v39 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v24)
  {
    v25 = *v39;
LABEL_20:
    v26 = 0;
    while (1)
    {
      if (*v39 != v25)
      {
        objc_enumerationMutation(v23);
      }

      v27 = *(*(&v38 + 1) + 8 * v26);
      if ([v27 isChildBuild] & 1) != 0 || (objc_msgSend(v27, "animateAtEndOfPreviousBuild"))
      {
        break;
      }

      [v27 startTime];
      v29 = v14 + v28;
      v30 = fmax(v29, v6);
      if (!delaysCopy)
      {
        v29 = v30;
      }

      [(KNAnimatedSlideView *)self p_animateBuild:v27 afterDelay:v29];
      if (v24 == ++v26)
      {
        v24 = [v23 countByEnumeratingWithState:&v38 objects:v54 count:16];
        if (v24)
        {
          goto LABEL_20;
        }

        break;
      }
    }
  }
}

- (void)setCurrentEventIndex:(unint64_t)index
{
  if ([(KNAnimatedSlideView *)self buildEventCount]+ 1 >= index)
  {
    self->_currentEventIndex = index;
  }
}

- (void)setEventIndexesToAnimate:(id)animate
{
  animateCopy = animate;
  if (![(NSIndexSet *)animateCopy count])
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView setEventIndexesToAnimate:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:1236 isFatal:0 description:"trying to animate an event range of length 0"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v7 = animateCopy;
  if (self->_eventIndexesToAnimate != animateCopy)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexSet:animateCopy];
    [(NSIndexSet *)v8 shiftIndexesStartingAtIndex:[(NSIndexSet *)v8 firstIndex] by:[(KNAnimatedSlideModel *)self->_model numberOfAddedEvents]];
    [(KNAnimatedSlideView *)self setCurrentEventIndex:[(NSIndexSet *)v8 firstIndex]];
    eventIndexesToAnimate = self->_eventIndexesToAnimate;
    self->_eventIndexesToAnimate = v8;

    v7 = animateCopy;
  }
}

- (void)reset
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  self->_triggerQueued = 0;
  self->_shouldStopAnimations = 0;
  self->_transitionHasFinishedCallbackPending = 0;
  [(KNAnimatedSlideView *)self stopAnimations];

  MEMORY[0x2821F9670](self, sel_resetAmbientBuildTextures);
}

- (void)interruptAndReset
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableSet *)self->_ambientBuildRenderers copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 interruptAndReset];
        [(KNAnimatedSlideView *)self p_removeAmbientBuildRenderer:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)p_stopAllAmbientBuildRenderers
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(NSMutableSet *)self->_ambientBuildRenderers copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) stopAnimations];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)stopAnimations
{
  v17 = *MEMORY[0x277D85DE8];
  self->_shouldStopAnimations = 1;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  [WeakRetained cancelEndShowHandler];

  [(KNAnimationDelayedCallbacks *)self->_delayedCallbacks cancelAllCallbacks];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  animatedBuilds = [(KNAnimatedSlideModel *)self->_model animatedBuilds];
  v5 = [animatedBuilds countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(animatedBuilds);
        }

        v9 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v12 + 1) + 8 * v8)];
        [v9 stopAnimations];

        ++v8;
      }

      while (v6 != v8);
      v6 = [animatedBuilds countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(KNAnimatedSlideView *)self p_stopAllAmbientBuildRenderers];
  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  v11 = transitionRenderer;
  if (transitionRenderer)
  {
    [transitionRenderer stopAnimations];
  }

  self->_isInDelayBeforeActiveBuild = 0;
  self->_isInDelayBeforeActiveTransition = 0;
  self->_animationsActive = 0;
  self->_animationsStarted = 0;
  [(KNAnimatedSlideView *)self clearActiveAnimatedBuilds];
  [(KNAnimatedSlideView *)self p_clearAmbientBuildRenderers];
}

- (void)pauseAnimations
{
  v24 = *MEMORY[0x277D85DE8];
  [(KNAnimationDelayedCallbacks *)self->_delayedCallbacks pauseAllCallbacks];
  if (![(KNAnimatedSlideView *)self hasTransitionAtEventIndex:self->_currentEventIndex])
  {
    if (!self->_isSlideBuildable)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (self->_isSlideBuildable && !self->_currentEventIndex)
  {
LABEL_6:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    transitionRenderer = [(KNAnimatedSlideModel *)self->_model eventsAtIndex:self->_currentEventIndex];
    v4 = [transitionRenderer countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(transitionRenderer);
          }

          v8 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v18 + 1) + 8 * i)];
          [v8 pauseAnimations];
        }

        v5 = [transitionRenderer countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    goto LABEL_13;
  }

  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  [transitionRenderer pauseAnimations];
LABEL_13:

LABEL_14:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_ambientBuildRenderers;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * j) pauseAnimations];
      }

      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)resumeAnimationsIfPaused
{
  v24 = *MEMORY[0x277D85DE8];
  [(KNAnimationDelayedCallbacks *)self->_delayedCallbacks resumeAllCallbacks];
  if (![(KNAnimatedSlideView *)self hasTransitionAtEventIndex:self->_currentEventIndex])
  {
    if (!self->_isSlideBuildable)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (self->_isSlideBuildable && !self->_currentEventIndex)
  {
LABEL_6:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    transitionRenderer = [(KNAnimatedSlideModel *)self->_model eventsAtIndex:self->_currentEventIndex];
    v4 = [transitionRenderer countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(transitionRenderer);
          }

          v8 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v18 + 1) + 8 * i)];
          [v8 resumeAnimationsIfPaused];
        }

        v5 = [transitionRenderer countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    goto LABEL_13;
  }

  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  [transitionRenderer resumeAnimationsIfPaused];
LABEL_13:

LABEL_14:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_ambientBuildRenderers;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * j) resumeAnimationsIfPaused];
      }

      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)p_setupTransitionStartTime
{
  self->_transitionStartTime = 0.0;
  transition = [(KNAbstractSlide *)self->_slide transition];
  if (transition && self->_playsAutomaticTransitions)
  {
    v9 = transition;
    if ([transition hasAutomaticTrigger])
    {
      [v9 delay];
      self->_transitionStartTime = v4;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_session);
      playMode = [WeakRetained playMode];

      transition = v9;
      if (playMode != 1)
      {
        goto LABEL_8;
      }

      v7 = objc_loadWeakRetained(&self->_session);
      [v7 autoplayTransitionDelay];
      self->_transitionStartTime = v8;
    }

    transition = v9;
  }

LABEL_8:
}

- (void)p_animateTransition:(id)transition
{
  v13 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  [transitionCopy setSignpostId:-1];
  [transitionCopy setSignpostId:{os_signpost_id_make_with_pointer(self->_signpostLog, transitionCopy)}];
  v5 = self->_signpostLog;
  signpostId = [transitionCopy signpostId];
  if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signpostId;
    if (os_signpost_enabled(v5))
    {
      v8 = [objc_msgSend(transitionCopy "pluginClass")];
      v11 = 138543362;
      v12 = v8;
      _os_signpost_emit_with_name_impl(&dword_275D41000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Animation", "Transitition-%{public}@", &v11, 0xCu);
    }
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  v9 = objc_autoreleasePoolPush();
  [(KNAnimatedSlideView *)self p_stopAllAmbientBuildRenderers];
  objc_autoreleasePoolPop(v9);
  [MEMORY[0x277CD9FF0] commit];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  v10 = objc_autoreleasePoolPush();
  ++self->_animationsActive;
  self->_isInDelayBeforeActiveTransition = 0;
  [(KNAnimatedSlideView *)self p_evictCacheAmbientBuildTexturesForTransition:transitionCopy];
  [(KNAnimatedSlideView *)self p_notifyEventAnimationActiveWithObject:transitionCopy];
  [transitionCopy animate];
  objc_autoreleasePoolPop(v10);
  [MEMORY[0x277CD9FF0] commit];
}

- (void)p_animateBuild:(id)build isAmbientBuild:(BOOL)ambientBuild
{
  ambientBuildCopy = ambientBuild;
  buildCopy = build;
  v6 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:?];
  eventIndexesToAnimate = [(KNAnimatedSlideView *)self eventIndexesToAnimate];
  v8 = eventIndexesToAnimate;
  if (eventIndexesToAnimate && ![eventIndexesToAnimate containsIndex:self->_currentEventIndex])
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    info = [v6 info];
    canvas = [(KNAnimatedSlideView *)self canvas];
    v13 = [WeakRetained repForInfo:info onCanvas:canvas];

    if (v13)
    {
      model = self->_model;
      info2 = [v6 info];
      v16 = [(KNAnimatedSlideModel *)model animatedBuildForInfo:info2 atEvent:self->_currentEventIndex];

      v17 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:v16];
      v18 = v17;
      if (v16)
      {
        [v17 textureSet];
      }

      else
      {
        [(KNAnimatedSlideView *)self p_textureSetForRep:v13 shouldRender:0];
      }
      v19 = ;
      v20 = v19;
      if (v19)
      {
        layer = [v19 layer];
        buildType = [buildCopy buildType];
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        [layer setHidden:buildType == 2];
        [MEMORY[0x277CD9FF0] commit];
      }
    }

    [(KNAnimatedSlideView *)self buildHasFinishedAnimating:v6];
  }

  else
  {
    v9 = &selRef_p_ambientBuildEnded_;
    if (!ambientBuildCopy)
    {
      v9 = &selRef_buildHasFinishedAnimating_;
    }

    [v6 registerForBuildEndCallback:*v9 target:self];
    [v6 animate];
  }
}

- (BOOL)p_shouldSkipActionBuild:(id)build onDrawable:(id)drawable
{
  v26 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  drawableCopy = drawable;
  if ([buildCopy isActionBuild])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_ambientBuildRenderers;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v9)
    {
      v11 = 0;
      goto LABEL_20;
    }

    v10 = v9;
    v11 = 0;
    v12 = *v22;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        info = [v14 info];
        if (info == drawableCopy)
        {
          hasAmbientBuildStarted = [v14 hasAmbientBuildStarted];

          if (hasAmbientBuildStarted)
          {
            continue;
          }

          buildsToStartAfterAmbientBuildStartsMap = self->_buildsToStartAfterAmbientBuildStartsMap;
          if (!buildsToStartAfterAmbientBuildStartsMap)
          {
            v18 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:1];
            v19 = self->_buildsToStartAfterAmbientBuildStartsMap;
            self->_buildsToStartAfterAmbientBuildStartsMap = v18;

            buildsToStartAfterAmbientBuildStartsMap = self->_buildsToStartAfterAmbientBuildStartsMap;
          }

          info = [(NSMapTable *)buildsToStartAfterAmbientBuildStartsMap objectForKey:drawableCopy];
          if (!info)
          {
            info = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
            [(NSMapTable *)self->_buildsToStartAfterAmbientBuildStartsMap setObject:info forKey:drawableCopy];
          }

          [info addObject:buildCopy];
          v11 = 1;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v10)
      {
LABEL_20:

        goto LABEL_21;
      }
    }
  }

  v11 = 0;
LABEL_21:

  return v11 & 1;
}

- (void)p_performAnimationWithTarget:(id)target selector:(SEL)selector object:(id)object delay:(double)delay performAsynchronously:(BOOL)asynchronously
{
  asynchronouslyCopy = asynchronously;
  targetCopy = target;
  objectCopy = object;
  if (delay == 0.0)
  {
    if (asynchronouslyCopy)
    {
      [(KNAnimatedSlideView *)self performSelector:selector withObject:objectCopy afterDelay:delay];
    }

    else
    {
      [(KNAnimatedSlideView *)self performSelector:selector withObject:objectCopy];
    }
  }

  else
  {
    v13 = [(KNAnimationDelayedCallbacks *)self->_delayedCallbacks performSelector:selector onTarget:targetCopy withObject:objectCopy afterDelay:delay];
  }
}

- (void)p_animateBuild:(id)build afterDelay:(double)delay
{
  buildCopy = build;
  animationsStarted = self->_animationsStarted;
  self->_animationsStarted = animationsStarted + 1;
  v11 = buildCopy;
  if (!animationsStarted)
  {
    self->_isInDelayBeforeActiveBuild = 1;
    [(KNAnimatedSlideView *)self setHasEventStarted:1];
    [(KNAnimatedSlideView *)self p_notifyEventStart];
    buildCopy = v11;
  }

  v8 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:buildCopy];
  objc_opt_class();
  v10 = &unk_28851BA00;
  v9 = TSUClassAndProtocolCast();
  if (v9)
  {
    [(KNAnimatedSlideView *)self p_addAmbientBuildRenderer:v9, &unk_28851BA00];
    [v9 registerForAmbientBuildStartCallback:sel_p_ambientBuildStarted_ target:self];
  }

  [(KNAnimatedSlideView *)self p_performAnimationWithTarget:self selector:sel_p_animateBuild_ object:v11 delay:1 performAsynchronously:delay, v10];
}

- (void)p_animateBuild:(id)build
{
  v41 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  ++self->_animationsActive;
  v5 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:buildCopy];
  if (self->_isInDelayBeforeActiveBuild)
  {
    self->_isInDelayBeforeActiveBuild = 0;
    [(KNAnimatedSlideView *)self p_notifyEventAnimationActiveWithObject:v5];
  }

  [(KNAnimatedSlideView *)self addActiveAnimatedBuild:buildCopy];
  v6 = [v5 conformsToProtocol:&unk_28851BA00];
  if (![buildCopy isActionBuild])
  {
    if (![buildCopy isBuildOut])
    {
      info = [v5 info];
      v28 = [(KNAnimatedSlideView *)self p_shouldSkipActionBuild:buildCopy onDrawable:info];

      if (v28)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v30 = v6;
    v19 = [(NSMutableSet *)self->_ambientBuildRenderers copy];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = v19;
    v20 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v7);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          info2 = [v5 info];
          info3 = [v24 info];

          if (info2 == info3)
          {
            [v24 stopAnimations];
          }
        }

        v21 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v21);
    }

    goto LABEL_33;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [(NSMutableSet *)self->_ambientBuildRenderers copy];
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v30 = v6;
    selfCopy = self;
    v10 = *v36;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * j);
        info4 = [v5 info];
        if ([v12 shouldActionBuildsStopAnimations])
        {
          v14 = info4 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          info5 = [v12 info];

          if (info5 == info4)
          {
            [v12 stopAnimations];
          }
        }

        objc_opt_class();
        v16 = TSUDynamicCast();
        if (v16)
        {
          objc_opt_class();
          v17 = TSUDynamicCast();
          v18 = v17;
          if (v17)
          {
            [v17 info];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v9);
    self = selfCopy;
LABEL_33:
    v6 = v30;
  }

LABEL_35:
  [(KNAnimatedSlideView *)self p_animateBuild:buildCopy isAmbientBuild:v6];
LABEL_36:
}

- (CGRect)boundingRectOnCanvasForInfo:(id)info
{
  v61 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v59 = 0;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = [(KNAnimatedSlideModel *)self->_model animatedBuildForInfo:v5 aroundEvent:self->_currentEventIndex isAtEndOfBuild:&v59];
    if (v6)
    {
      v7 = v6;
      v8 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:v6];
      textureSet = [v8 textureSet];
      v10 = [textureSet copy];

      if (v59)
      {
        goto LABEL_4;
      }

      previousAttributes = [v7 previousAttributes];

      if (previousAttributes)
      {
        previousAttributes2 = [v7 previousAttributes];
        goto LABEL_11;
      }

      if (v59)
      {
LABEL_4:
        finalAttributes = [v7 finalAttributes];

        if (finalAttributes)
        {
          previousAttributes2 = [v7 finalAttributes];
LABEL_11:
          v23 = previousAttributes2;
          WeakRetained = objc_loadWeakRetained(&self->_session);
          animationContext = [WeakRetained animationContext];
          [animationContext viewScale];
          [v10 applyActionEffect:v23 viewScale:0 isMagicMove:0 shouldBake:0 applyScaleOnly:0 ignoreScale:0 shouldCheckActionKeys:self->_currentEventIndex eventIndex:?];

LABEL_14:
          goto LABEL_15;
        }
      }

      [v10 setLayerGeometry];
      goto LABEL_14;
    }
  }

  v13 = objc_loadWeakRetained(&self->_session);
  canvas = [(KNAnimatedSlideView *)self canvas];
  v7 = [v13 repForInfo:infoCopy onCanvas:canvas];

  if (!v7)
  {
    v15 = MEMORY[0x277D81150];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView boundingRectOnCanvasForInfo:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:1604 isFatal:0 description:{"invalid nil value for '%{public}s'", "rep"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v18 = MEMORY[0x277D803D8];
  v19 = objc_loadWeakRetained(&self->_session);
  v20 = [v18 descriptionWithSession:v19];
  v21 = [(KNAnimatedSlideView *)self textureSetForRep:v7 description:v20 shouldRender:0];
  v10 = [v21 copy];

  [v10 setLayerGeometry];
LABEL_15:

  if (!v10)
  {
    v26 = MEMORY[0x277D81150];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView boundingRectOnCanvasForInfo:]"];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v26 handleFailureInFunction:v27 file:v28 lineNumber:1608 isFatal:0 description:{"invalid nil value for '%{public}s'", "textureSet"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  allTextures = [v10 allTextures];
  v34 = [allTextures countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v56;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(allTextures);
        }

        layer = [*(*(&v55 + 1) + 8 * i) layer];
        [layer frame];
        v67.origin.x = v39;
        v67.origin.y = v40;
        v67.size.width = v41;
        v67.size.height = v42;
        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = width;
        v62.size.height = height;
        v63 = CGRectUnion(v62, v67);
        x = v63.origin.x;
        y = v63.origin.y;
        width = v63.size.width;
        height = v63.size.height;
      }

      v35 = [allTextures countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v35);
  }

  [v10 frame];
  v44 = v43;
  [v10 frame];
  v46 = v45;
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  v65 = CGRectOffset(v64, v44, v46);
  v47 = v65.origin.x;
  v48 = v65.origin.y;
  v49 = v65.size.width;
  v50 = v65.size.height;
  [v10 teardown];

  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  result.size.height = v54;
  result.size.width = v53;
  result.origin.y = v52;
  result.origin.x = v51;
  return result;
}

- (NSSet)movieRenderers
{
  v2 = [(NSMutableSet *)self->_ambientBuildRenderers objectsPassingTest:&unk_2884D5090];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v5 = v4;

  return v5;
}

- (void)p_addAmbientBuildRenderer:(id)renderer
{
  rendererCopy = renderer;
  ambientBuildRenderers = self->_ambientBuildRenderers;
  v15 = rendererCopy;
  if (ambientBuildRenderers)
  {
    v6 = [(NSMutableSet *)ambientBuildRenderers containsObject:rendererCopy];
    v7 = v15;
    if (v6)
    {
      goto LABEL_18;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    v9 = self->_ambientBuildRenderers;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

LABEL_12:
    v11 = 1;
    goto LABEL_13;
  }

  v8 = [MEMORY[0x277CBEB98] setWithObject:v15];
  v9 = self->_ambientBuildRenderers;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = 4;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  [(KNAnimatedSlideView *)self willChangeValueForKey:@"movieRenderers" withSetMutation:v10 usingObjects:v8];
  v11 = 0;
  v9 = self->_ambientBuildRenderers;
LABEL_13:
  v12 = v15;
  if (!v9)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v14 = self->_ambientBuildRenderers;
    self->_ambientBuildRenderers = v13;

    v12 = v15;
    v9 = self->_ambientBuildRenderers;
  }

  [(NSMutableSet *)v9 addObject:v12];
  if ((v11 & 1) == 0)
  {
    [(KNAnimatedSlideView *)self didChangeValueForKey:@"movieRenderers" withSetMutation:v10 usingObjects:v8];
  }

  v7 = v15;
LABEL_18:
}

- (void)p_removeAmbientBuildRenderer:(id)renderer
{
  rendererCopy = renderer;
  if ([(NSMutableSet *)self->_ambientBuildRenderers containsObject:?])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x277CBEB98] setWithObject:rendererCopy], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      [(KNAnimatedSlideView *)self willChangeValueForKey:@"movieRenderers" withSetMutation:2 usingObjects:v4];
      [(NSMutableSet *)self->_ambientBuildRenderers removeObject:rendererCopy];
      [(KNAnimatedSlideView *)self didChangeValueForKey:@"movieRenderers" withSetMutation:2 usingObjects:v5];
    }

    else
    {
      [(NSMutableSet *)self->_ambientBuildRenderers removeObject:rendererCopy];
    }
  }
}

- (void)p_clearAmbientBuildRenderers
{
  v3 = [MEMORY[0x277CBEB98] set];
  [(KNAnimatedSlideView *)self willChangeValueForKey:@"movieRenderers" withSetMutation:4 usingObjects:v3];
  [(NSMutableSet *)self->_ambientBuildRenderers removeAllObjects];
  [(KNAnimatedSlideView *)self didChangeValueForKey:@"movieRenderers" withSetMutation:4 usingObjects:v3];
}

- (void)resetAmbientBuildTextures
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  ambientBuildRenderers = [(KNAnimatedSlideModel *)self->_model ambientBuildRenderers];
  v3 = [ambientBuildRenderers countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(ambientBuildRenderers);
        }

        [*(*(&v7 + 1) + 8 * v6++) interruptAndReset];
      }

      while (v4 != v6);
      v4 = [ambientBuildRenderers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)p_evictCacheAmbientBuildTexturesForTransition:(id)transition
{
  v25 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  ambientBuildRenderers = [(KNAnimatedSlideModel *)self->_model ambientBuildRenderers];
  if (![ambientBuildRenderers count])
  {
LABEL_15:

    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  shouldIgnoreBuildVisibility = [WeakRetained shouldIgnoreBuildVisibility];

  if ((shouldIgnoreBuildVisibility & 1) == 0)
  {
    [transitionCopy teardown];
    eventToSlideTextureMap = self->_eventToSlideTextureMap;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentEventIndex];
    ambientBuildRenderers = [(NSMapTable *)eventToSlideTextureMap objectForKey:v9];

    if (ambientBuildRenderers)
    {
      [ambientBuildRenderers teardown];
    }

    v10 = self->_eventToSlideTextureMap;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentEventIndex];
    [(NSMapTable *)v10 removeObjectForKey:v11];

    [(NSLock *)self->_textureDescriptionAndSetForRepMapLock lock];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(NSMapTable *)self->_textureDescriptionAndSetForRepMap copy];
    keyEnumerator = [v12 keyEnumerator];

    v14 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          objc_opt_class();
          v19 = TSUDynamicCast();
          if (v19)
          {
            [(NSMapTable *)self->_textureDescriptionAndSetForRepMap removeObjectForKey:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    [(NSLock *)self->_textureDescriptionAndSetForRepMapLock unlock];
    [transitionCopy generateTextures];
    [transitionCopy renderTexturesSynchronously];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)setTexture:(id)texture forRep:(id)rep forDescription:(id)description
{
  textureCopy = texture;
  repCopy = rep;
  descriptionCopy = description;
  [(NSLock *)self->_textureDescriptionAndSetForRepMapLock lock];
  v10 = [descriptionCopy copy];
  textureDescriptionAndSetForRepMap = self->_textureDescriptionAndSetForRepMap;
  if (!textureDescriptionAndSetForRepMap)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:1];
    v13 = self->_textureDescriptionAndSetForRepMap;
    self->_textureDescriptionAndSetForRepMap = v12;

    textureDescriptionAndSetForRepMap = self->_textureDescriptionAndSetForRepMap;
  }

  strongToStrongObjectsMapTable = [(NSMapTable *)textureDescriptionAndSetForRepMap objectForKey:repCopy];
  v15 = textureCopy;
  if (textureCopy && !strongToStrongObjectsMapTable)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    [(NSMapTable *)self->_textureDescriptionAndSetForRepMap setObject:strongToStrongObjectsMapTable forKey:repCopy];
    v15 = textureCopy;
  }

  if (([v15 containsFinalTextures] & 1) == 0 && (objc_msgSend(textureCopy, "containsContentBuildTextures") & 1) == 0 && objc_msgSend(descriptionCopy, "stage"))
  {
    [v10 setStage:0];
  }

  v16 = [strongToStrongObjectsMapTable objectForKey:v10];
  if (v16 != textureCopy)
  {
    if (v16)
    {
      [v16 teardown];
    }

    if (textureCopy)
    {
      [strongToStrongObjectsMapTable setObject:textureCopy forKey:v10];
    }

    else
    {
      [strongToStrongObjectsMapTable removeObjectForKey:v10];
      if (![strongToStrongObjectsMapTable count])
      {
        [(NSMapTable *)self->_textureDescriptionAndSetForRepMap removeObjectForKey:repCopy];
      }
    }
  }

  [(NSLock *)self->_textureDescriptionAndSetForRepMapLock unlock];
}

- (id)p_initializeTextureSetForRep:(id)rep info:(id)info eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility isRenderingToContext:(BOOL)context
{
  contextCopy = context;
  visibilityCopy = visibility;
  v49 = *MEMORY[0x277D85DE8];
  repCopy = rep;
  infoCopy = info;
  v14 = infoCopy;
  if (repCopy)
  {
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = infoCopy;
    v24 = MEMORY[0x277D81150];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView p_initializeTextureSetForRep:info:eventIndex:ignoreBuildVisibility:isRenderingToContext:]"];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v24 handleFailureInFunction:v25 file:v26 lineNumber:1768 isFatal:0 description:{"invalid nil value for '%{public}s'", "rep"}];

    v14 = v23;
    [MEMORY[0x277D81150] logBacktraceThrottled];
    if (v23)
    {
      goto LABEL_3;
    }
  }

  v27 = MEMORY[0x277D81150];
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView p_initializeTextureSetForRep:info:eventIndex:ignoreBuildVisibility:isRenderingToContext:]"];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
  [v27 handleFailureInFunction:v28 file:v29 lineNumber:1769 isFatal:0 description:{"invalid nil value for '%{public}s'", "info"}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_3:
  v47 = 0;
  objc_opt_class();
  v15 = TSUDynamicCast();
  if (v15)
  {
    v16 = [(KNAnimatedSlideModel *)self->_model animatedBuildForInfo:v15 aroundEvent:index isAtEndOfBuild:&v47];
    if (v16 && !visibilityCopy)
    {
      v17 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:v16];
      v18 = v47;
      model = [(KNAnimatedSlideView *)self model];
      v20 = [model buildEventCount] == index;
      textureDescription = [v17 textureDescription];
      v22 = [v17 initializeTextureSetForEndOfBuild:v18 endOfSlide:v20 description:textureDescription isRenderingToContext:contextCopy];

      [v17 setLayerVisibility:v22 isAtEndOfBuild:v47];
      goto LABEL_28;
    }
  }

  else
  {
    v16 = 0;
  }

  if (visibilityCopy)
  {
    v47 = 0;

    v16 = 0;
    index = 0;
  }

  v40 = v15;
  if (contextCopy)
  {
    v30 = 0;
  }

  else
  {
    v30 = [(KNAnimatedSlideModel *)self->_model isMetalSlide]^ 1;
  }

  v42 = repCopy;
  v22 = [(KNAnimatedSlideView *)self p_textureSetForRep:repCopy shouldRender:v30];
  [v22 setLayerGeometryAtEventIndex:index];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  v17 = [v22 viewLayerAtEventIndex:index];
  [v17 setHidden:!visibilityCopy];
  v41 = v14;
  if ([(KNAnimatedSlideModel *)self->_model info:v14 isVisibleDuringEvent:index])
  {
    [v17 setHidden:0];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  visibleTexturesIncludingCaptions = [v22 visibleTexturesIncludingCaptions];
  v32 = [visibleTexturesIncludingCaptions countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v44;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(visibleTexturesIncludingCaptions);
        }

        v36 = *(*(&v43 + 1) + 8 * i);
        v37 = [v36 viewLayerAtEventIndex:index];
        isIncomingContent = [v36 isIncomingContent];
        if (v16 && [v16 isContentBuild])
        {
          isIncomingContent ^= v47;
        }

        [v37 setHidden:isIncomingContent & 1];
      }

      v33 = [visibleTexturesIncludingCaptions countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v33);
  }

  [MEMORY[0x277CD9FF0] commit];
  v14 = v41;
  repCopy = v42;
  v15 = v40;
LABEL_28:

  [v22 setRep:repCopy];

  return v22;
}

- (id)p_textureSetForRep:(id)rep shouldRender:(BOOL)render
{
  renderCopy = render;
  v6 = MEMORY[0x277D803D8];
  repCopy = rep;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v9 = [v6 descriptionWithSession:WeakRetained];
  v10 = [(KNAnimatedSlideView *)self textureSetForRep:repCopy description:v9 shouldRender:renderCopy];

  return v10;
}

- (id)textureSetForRep:(id)rep description:(id)description shouldRender:(BOOL)render
{
  renderCopy = render;
  repCopy = rep;
  descriptionCopy = description;
  v10 = repCopy;
  objc_sync_enter(v10);
  if (v10 && (WeakRetained = objc_loadWeakRetained(&self->_session), v12 = [WeakRetained isExitingShow], WeakRetained, (v12 & 1) == 0))
  {
    v14 = [descriptionCopy copy];
    objc_opt_class();
    info = [v10 info];
    v16 = TSUDynamicCast();

    if ([descriptionCopy deliveryStyle] && (!v16 || (objc_msgSend(v16, "suppliesFinalTextures") & 1) == 0) && objc_msgSend(descriptionCopy, "stage"))
    {
      [v14 setStage:0];
    }

    [(NSLock *)self->_textureDescriptionAndSetForRepMapLock lock];
    v17 = [(NSMapTable *)self->_textureDescriptionAndSetForRepMap objectForKey:v10];
    v18 = [v17 objectForKey:v14];
    v13 = v18;
    if (v18 && ([v18 isRenderable] & 1) == 0)
    {
      [v17 removeObjectForKey:v14];

      v13 = 0;
    }

    [(NSLock *)self->_textureDescriptionAndSetForRepMapLock unlock];
    if (!v13)
    {
      v13 = [(KNAnimatedSlideView *)self nonCachedTextureSetForRep:v10 description:v14 shouldRender:renderCopy];
      [(KNAnimatedSlideView *)self setTexture:v13 forRep:v10 forDescription:v14];
    }
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v10);

  return v13;
}

- (void)applyASVColorSpaceToTextureSet:(id)set
{
  setCopy = set;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  animationContext = [WeakRetained animationContext];
  [setCopy setColorSpace:{objc_msgSend(animationContext, "colorSpace")}];

  if ([setCopy objectType] == 10)
  {
    [setCopy setColorSpace:TSUP3ColorSpace()];
    [setCopy setShouldUseFloatingPointTextures:0];
  }
}

- (id)nonCachedTextureSetForRep:(id)rep description:(id)description shouldRender:(BOOL)render
{
  renderCopy = render;
  repCopy = rep;
  descriptionCopy = description;
  v10 = repCopy;
  objc_sync_enter(v10);
  if (!descriptionCopy)
  {
    v11 = MEMORY[0x277D803D8];
    WeakRetained = objc_loadWeakRetained(&self->_session);
    descriptionCopy = [v11 descriptionWithSession:WeakRetained];
  }

  v13 = [v10 textureForDescription:descriptionCopy];
  [v13 setRep:v10];
  [v13 setTextureDescription:descriptionCopy];
  [(KNAnimatedSlideView *)self applyASVColorSpaceToTextureSet:v13];
  v14 = objc_loadWeakRetained(&self->_session);
  shouldUseContentlessLayers = [v14 shouldUseContentlessLayers];

  if ((shouldUseContentlessLayers & 1) == 0 && renderCopy)
  {
    v16 = objc_loadWeakRetained(&self->_session);
    bitmapRenderingQualityInfo = [v16 bitmapRenderingQualityInfo];

    if (bitmapRenderingQualityInfo)
    {
      v18 = objc_loadWeakRetained(&self->_session);
      bitmapRenderingQualityInfo2 = [v18 bitmapRenderingQualityInfo];
      [v13 setBitmapRenderingQualityInfo:bitmapRenderingQualityInfo2];
    }

    [v13 renderLayerContentsIfNeeded];
  }

  objc_sync_exit(v10);

  return v13;
}

- (id)textureSetForInfo:(id)info eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  canvas = [(KNAnimatedSlideView *)self canvas];
  v11 = [WeakRetained repForInfo:infoCopy onCanvas:canvas];

  if (v11)
  {
    v12 = [(KNAnimatedSlideView *)self p_initializeTextureSetForRep:v11 info:infoCopy eventIndex:index ignoreBuildVisibility:visibilityCopy isRenderingToContext:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)newSlideTextureForEvent:(unint64_t)event
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_initWeak(&location, selfCopy);
  eventToSlideTextureMap = selfCopy->_eventToSlideTextureMap;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:event];
  v7 = [(NSMapTable *)eventToSlideTextureMap objectForKey:v6];

  if (v7)
  {
    if ([v7 isRenderable])
    {
      goto LABEL_7;
    }

    v8 = selfCopy->_eventToSlideTextureMap;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:event];
    [(NSMapTable *)v8 removeObjectForKey:v9];
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_session);
  shouldIgnoreBuildVisibility = [WeakRetained shouldIgnoreBuildVisibility];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275DB959C;
  aBlock[3] = &unk_27A698B30;
  aBlock[4] = selfCopy;
  objc_copyWeak(v26, &location);
  v26[1] = event;
  v27 = shouldIgnoreBuildVisibility;
  v12 = _Block_copy(aBlock);
  v13 = objc_alloc(MEMORY[0x277D803E8]);
  v14 = objc_loadWeakRetained(&selfCopy->_session);
  animationContext = [v14 animationContext];
  [animationContext slideRect];
  v7 = [v13 initWithSize:v12 offset:v16 renderBlock:{v17, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v18 = objc_loadWeakRetained(&selfCopy->_session);
  animationContext2 = [v18 animationContext];
  [v7 setColorSpace:{objc_msgSend(animationContext2, "colorSpace")}];

  v20 = selfCopy->_eventToSlideTextureMap;
  if (!v20)
  {
    v21 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    v22 = selfCopy->_eventToSlideTextureMap;
    selfCopy->_eventToSlideTextureMap = v21;

    v20 = selfCopy->_eventToSlideTextureMap;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:event];
  [(NSMapTable *)v20 setObject:v7 forKey:v23];

  objc_destroyWeak(v26);
LABEL_7:
  objc_destroyWeak(&location);
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)generateTextures
{
  v59 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isSerialized = 0;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (selfCopy->_isSlideBuildable)
  {
    allInfos2 = [MEMORY[0x277CBEB58] set];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    animatedBuilds = [(KNAnimatedSlideModel *)selfCopy->_model animatedBuilds];
    v6 = [animatedBuilds countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v6)
    {
      v7 = *v52;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v52 != v7)
          {
            objc_enumerationMutation(animatedBuilds);
          }

          v9 = [(KNAnimatedSlideModel *)selfCopy->_model rendererForAnimatedBuild:*(*(&v51 + 1) + 8 * i)];
          [v9 generateTextures];
          info = [v9 info];
          [allInfos2 addObject:info];
        }

        v6 = [animatedBuilds countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v6);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    ambientBuildRenderers = [(KNAnimatedSlideModel *)selfCopy->_model ambientBuildRenderers];
    v12 = [ambientBuildRenderers countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v12)
    {
      v13 = *v48;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(ambientBuildRenderers);
          }

          v15 = *(*(&v47 + 1) + 8 * j);
          [v15 generateTextures];
          info2 = [v15 info];
          [allInfos2 addObject:info2];
        }

        v12 = [ambientBuildRenderers countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v12);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    allInfos = [(KNAnimatedSlideView *)selfCopy allInfos];
    v18 = [allInfos countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v18)
    {
      v19 = *v44;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(allInfos);
          }

          v21 = *(*(&v43 + 1) + 8 * k);
          if (([allInfos2 containsObject:v21] & 1) == 0)
          {
            WeakRetained = objc_loadWeakRetained(&selfCopy->_session);
            canvas = [(KNAnimatedSlideView *)selfCopy canvas];
            v24 = [WeakRetained repForInfo:v21 onCanvas:canvas];

            if (v24)
            {
              v25 = [(KNAnimatedSlideView *)selfCopy p_textureSetForRep:v24 shouldRender:0];
              if (v25)
              {
                [v3 addObject:v25];
              }
            }
          }
        }

        v18 = [allInfos countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allInfos2 = [(KNAnimatedSlideView *)selfCopy allInfos];
    v26 = [allInfos2 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v26)
    {
      v27 = *v40;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(allInfos2);
          }

          v29 = *(*(&v39 + 1) + 8 * m);
          v30 = objc_loadWeakRetained(&selfCopy->_session);
          canvas2 = [(KNAnimatedSlideView *)selfCopy canvas];
          v32 = [v30 repForInfo:v29 onCanvas:canvas2];

          if (v32)
          {
            v33 = [(KNAnimatedSlideView *)selfCopy p_textureSetForRep:v32 shouldRender:0];
            if (v33)
            {
              [v3 addObject:v33];
            }
          }
        }

        v26 = [allInfos2 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v26);
    }
  }

  if ([(KNAnimatedSlideView *)selfCopy shouldPreCache])
  {
    nextASV = [(KNAnimatedSlideView *)selfCopy nextASV];
    if (!nextASV || (-[KNAnimatedSlideView nextASV](selfCopy, "nextASV"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 shouldPreCache], v35, nextASV, v36))
    {
      transitionRenderer = [(KNAnimatedSlideModel *)selfCopy->_model transitionRenderer];
      [transitionRenderer generateTextures];
    }
  }

  objc_autoreleasePoolPop(context);
  [MEMORY[0x277CD9FF0] commit];
  objc_sync_exit(selfCopy);
}

- (void)renderTextures
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isTexturePreCachingThread = [WeakRetained isTexturePreCachingThread];

  if ((isTexturePreCachingThread & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView renderTextures]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:2051 isFatal:0 description:"Running on unexpected thread"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  v8 = objc_autoreleasePoolPush();
  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  [transitionRenderer renderTextures];
  if (self->_isSlideBuildable)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    animatedBuilds = [(KNAnimatedSlideModel *)self->_model animatedBuilds];
    v11 = [animatedBuilds countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(animatedBuilds);
          }

          v15 = [(KNAnimatedSlideModel *)self->_model rendererForAnimatedBuild:*(*(&v16 + 1) + 8 * v14)];
          [v15 renderTextures];

          ++v14;
        }

        while (v12 != v14);
        v12 = [animatedBuilds countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  objc_autoreleasePoolPop(v8);
  [MEMORY[0x277CD9FF0] commit];
}

- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)cancel
{
  cancelCopy = cancel;
  v77 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isTexturePreCachingThread = [WeakRetained isTexturePreCachingThread];

  if ((isTexturePreCachingThread & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView waitUntilAsyncRenderingIsCompleteShouldCancel:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:2117 isFatal:0 description:"Running on unexpected thread"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
  [transitionRenderer waitUntilAsyncRenderingIsCompleteShouldCancel:cancelCopy];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  objectEnumerator = [(NSMapTable *)self->_eventToSlideTextureMap objectEnumerator];
  v11 = [objectEnumerator countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v68;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v68 != v13)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v67 + 1) + 8 * i) waitUntilAsyncRenderingIsCompleteShouldCancel:cancelCopy];
      }

      v12 = [objectEnumerator countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v12);
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSLock *)self->_textureDescriptionAndSetForRepMapLock lock];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = self;
  objectEnumerator2 = [(NSMapTable *)self->_textureDescriptionAndSetForRepMap objectEnumerator];
  v17 = [objectEnumerator2 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v64;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        v21 = *(*(&v63 + 1) + 8 * j);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        objectEnumerator3 = [v21 objectEnumerator];
        v23 = [objectEnumerator3 countByEnumeratingWithState:&v59 objects:v74 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v60;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v60 != v25)
              {
                objc_enumerationMutation(objectEnumerator3);
              }

              [v15 addObject:*(*(&v59 + 1) + 8 * k)];
            }

            v24 = [objectEnumerator3 countByEnumeratingWithState:&v59 objects:v74 count:16];
          }

          while (v24);
        }
      }

      v18 = [objectEnumerator2 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v18);
  }

  [(NSLock *)selfCopy->_textureDescriptionAndSetForRepMapLock unlock];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v27 = v15;
  v28 = [v27 countByEnumeratingWithState:&v55 objects:v73 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v56;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v56 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v55 + 1) + 8 * m);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        allTextures = [v32 allTextures];
        v34 = [allTextures countByEnumeratingWithState:&v51 objects:v72 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v52;
          do
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v52 != v36)
              {
                objc_enumerationMutation(allTextures);
              }

              renderingOperation = [*(*(&v51 + 1) + 8 * n) renderingOperation];
              [renderingOperation waitUntilFinished];
            }

            v35 = [allTextures countByEnumeratingWithState:&v51 objects:v72 count:16];
          }

          while (v35);
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v55 objects:v73 count:16];
    }

    while (v29);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  animatedBuilds = [(KNAnimatedSlideModel *)selfCopy->_model animatedBuilds];
  v40 = [animatedBuilds countByEnumeratingWithState:&v47 objects:v71 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v48;
    do
    {
      for (ii = 0; ii != v41; ++ii)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(animatedBuilds);
        }

        v44 = [(KNAnimatedSlideModel *)selfCopy->_model rendererForAnimatedBuild:*(*(&v47 + 1) + 8 * ii)];
        [v44 waitUntilAsyncRenderingIsCompleteShouldCancel:cancelCopy];
      }

      v41 = [animatedBuilds countByEnumeratingWithState:&v47 objects:v71 count:16];
    }

    while (v41);
  }
}

- (void)prepareAnimations
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isTexturePreCachingThread = [WeakRetained isTexturePreCachingThread];

  if ((isTexturePreCachingThread & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView prepareAnimations]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:2163 isFatal:0 description:"Running on unexpected thread"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([(KNAnimatedSlideView *)self shouldPrepareAnimationsAsynchronously])
  {
    nextASV = [(KNAnimatedSlideView *)self nextASV];
    if (!nextASV || (v9 = nextASV, -[KNAnimatedSlideView nextASV](self, "nextASV"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 shouldPreCache], v10, v9, v11))
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
      v12 = objc_autoreleasePoolPush();
      [(KNAnimatedSlideView *)self waitUntilAsyncRenderingIsCompleteShouldCancel:0];
      transitionRenderer = [(KNAnimatedSlideModel *)self->_model transitionRenderer];
      [transitionRenderer prepareAnimations];

      objc_autoreleasePoolPop(v12);
      v14 = MEMORY[0x277CD9FF0];

      [v14 commit];
    }
  }
}

- (void)serializeTextures
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isTexturePreCachingThread = [WeakRetained isTexturePreCachingThread];

  if ((isTexturePreCachingThread & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideView serializeTextures]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:2193 isFatal:0 description:"Running on unexpected thread"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  obj = self;
  objc_sync_enter(obj);
  v8 = objc_autoreleasePoolPush();
  if (!obj->_isSerialized)
  {
    [(KNAnimatedSlideView *)obj waitUntilAsyncRenderingIsCompleteShouldCancel:1];
    [(KNAnimatedSlideView *)obj tearDown];
    obj->_isSerialized = 1;
  }

  objc_autoreleasePoolPop(v8);
  objc_sync_exit(obj);
}

- (void)addActiveAnimatedBuild:(id)build
{
  buildCopy = build;
  activeAnimatedBuilds = self->_activeAnimatedBuilds;
  v8 = buildCopy;
  if (!activeAnimatedBuilds)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v7 = self->_activeAnimatedBuilds;
    self->_activeAnimatedBuilds = v6;

    buildCopy = v8;
    activeAnimatedBuilds = self->_activeAnimatedBuilds;
  }

  [(NSMutableSet *)activeAnimatedBuilds addObject:buildCopy];
}

- (KNPlaybackSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end