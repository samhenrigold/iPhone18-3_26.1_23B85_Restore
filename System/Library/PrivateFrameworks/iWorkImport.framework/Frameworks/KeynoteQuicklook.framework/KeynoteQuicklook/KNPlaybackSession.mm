@interface KNPlaybackSession
+ (double)p_viewScaleByUpdatingShowLayerGeometry:(id)geometry forConfiguration:(id)configuration showSize:(CGSize)size;
+ (void)p_updateAnimationContext:(id)context fromConfiguration:(id)configuration;
- (BOOL)atBeginningOfDeck;
- (BOOL)atEndOfDeck;
- (BOOL)canMakeInfoVisible:(id)visible allowAudioOnlyMovies:(BOOL)movies;
- (BOOL)isOffscreenPlayback;
- (BOOL)isPreCachingOperationActive;
- (BOOL)isPrintingCanvas;
- (BOOL)isTexturePreCachingThread;
- (BOOL)p_checkArrayInclusionIncludingUUID:(id)d object:(id)object;
- (BOOL)p_slideNodeIsPlayable:(id)playable;
- (BOOL)shouldShowInstructionalText;
- (KNAnimatedSlideView)animatedSlideViewForCurrentSlide;
- (KNPlaybackSession)initWithShow:(id)show configuration:(id)configuration canvasDelegate:(id)delegate;
- (KNSlide)currentSlide;
- (KNSlide)nextSlideAfterCurrent;
- (KNSlideNode)firstSlideNode;
- (KNSlideNode)lastSlideNode;
- (NSArray)breadCrumbTrail;
- (NSArray)playableSlideNodes;
- (TSDCanvasDelegate)canvasDelegate;
- (TSKAccessController)accessController;
- (double)showScale;
- (id)animatedSlideViewFor:(id)for;
- (id)breadCrumb;
- (id)gotoFirstSlide;
- (id)gotoLastSlide;
- (id)gotoNextSlide;
- (id)gotoPreviousSlide;
- (id)newCanvasForInfos:(id)infos;
- (id)nextSlideNodeAfterSlideNode:(id)node;
- (id)p_intersectArraysWithUUIDEquality:(id)equality secondArray:(id)array;
- (id)p_nextBestSlideNodeToSlideNode:(id)node;
- (id)previousSlideNodeBeforeSlideNode:(id)node;
- (id)repForInfo:(id)info onCanvas:(id)canvas;
- (int64_t)analyticsVisitedSlideCount;
- (unint64_t)p_findIndexIncludingUUID:(id)d object:(id)object;
- (unint64_t)slideNumberForSlideNode:(id)node;
- (void)analyticsVisitedSlideNode:(id)node;
- (void)dealloc;
- (void)didChangeRootLayerGeometryAndScreenEnvironment;
- (void)dropABreadCrumb;
- (void)enableMetalBadge:(BOOL)badge;
- (void)executeEndShowHandlerAfterDelay:(double)delay;
- (void)gotoSlideNode:(id)node;
- (void)p_executeEndShowHandler;
- (void)performSlideRead:(id)read;
- (void)setBreadCrumbTrail:(id)trail;
- (void)setPlayMode:(int64_t)mode;
- (void)waitUntilSlideTextureRenderingIsCompleteForIdentifier:(id)identifier;
@end

@implementation KNPlaybackSession

- (KNPlaybackSession)initWithShow:(id)show configuration:(id)configuration canvasDelegate:(id)delegate
{
  showCopy = show;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v41.receiver = self;
  v41.super_class = KNPlaybackSession;
  v12 = [(KNPlaybackSession *)&v41 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_show, show);
    objc_storeStrong(&v13->_configuration, configuration);
    [showCopy size];
    v15 = v14;
    v17 = v16;
    layerHost = [configurationCopy layerHost];
    rootLayer = [layerHost rootLayer];

    layer = [MEMORY[0x277CD9ED0] layer];
    [objc_opt_class() p_viewScaleByUpdatingShowLayerGeometry:layer forConfiguration:configurationCopy showSize:{v15, v17}];
    v22 = v21;
    [rootLayer addSublayer:layer];
    v23 = [[KNAnimationContext alloc] initWithShowSize:layer viewScale:v15 showLayer:v17, v22];
    animationContext = v13->_animationContext;
    v13->_animationContext = v23;

    [objc_opt_class() p_updateAnimationContext:v13->_animationContext fromConfiguration:configurationCopy];
    v25 = objc_alloc_init(KNAnimationRegistryWithFallbacks);
    registry = v13->_registry;
    v13->_registry = v25;

    isMetalEnabled = [configurationCopy isMetalEnabled];
    objc_storeWeak(&v13->_canvasDelegate, delegateCopy);
    v13->_shouldShowVideoReflectionsAndMasks = 1;
    v13->_shouldDrawTexturesAsynchronously = 1;
    v13->_shouldShowLiveVideos = 1;
    v13->_floatingCommentBehavior = isMetalEnabled;
    v13->_isShowLayerVisible = 1;
    [showCopy autoplayBuildDelay];
    v13->_autoplayBuildDelay = v28;
    [showCopy autoplayTransitionDelay];
    v13->_autoplayTransitionDelay = v29;
    v30 = [[KNAnimatedTextureManager alloc] initWithSession:v13];
    textureManager = v13->_textureManager;
    v13->_textureManager = v30;

    if (+[KNAnimationUtils isResponsivenessLoggingEnabled])
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
      eventDurationArray = v13->_eventDurationArray;
      v13->_eventDurationArray = v32;

      v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
      animationDurationArray = v13->_animationDurationArray;
      v13->_animationDurationArray = v34;

      v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
      workDurationArray = v13->_workDurationArray;
      v13->_workDurationArray = v36;

      v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
      animationStringArray = v13->_animationStringArray;
      v13->_animationStringArray = v38;
    }
  }

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = KNPlaybackSession;
  [(KNPlaybackSession *)&v2 dealloc];
}

- (void)setPlayMode:(int64_t)mode
{
  if (self->_playMode != mode)
  {
    self->_playMode = mode;
  }
}

- (BOOL)shouldShowInstructionalText
{
  canvasDelegate = [(KNPlaybackSession *)self canvasDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [canvasDelegate shouldShowInstructionalTextForLayout:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TSKAccessController)accessController
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  documentRoot = [WeakRetained documentRoot];
  accessController = [documentRoot accessController];

  return accessController;
}

- (void)performSlideRead:(id)read
{
  readCopy = read;
  accessController = [(KNPlaybackSession *)self accessController];
  accessControllerReadTicket = self->_accessControllerReadTicket;
  v7 = accessController;
  if (accessControllerReadTicket)
  {
    [accessController performReadWithTicket:accessControllerReadTicket block:readCopy];
  }

  else
  {
    [accessController performRead:readCopy];
  }
}

- (void)gotoSlideNode:(id)node
{
  nodeCopy = node;
  v9 = nodeCopy;
  if (!nodeCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSession gotoSlideNode:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:232 isFatal:0 description:{"invalid nil value for '%{public}s'", "slideNode"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    nodeCopy = 0;
  }

  v8 = [(KNPlaybackSession *)self p_nextBestSlideNodeToSlideNode:nodeCopy];
  if (v8)
  {
    [(KNPlaybackSession *)self p_setCurrentSlideNode:v8];
    [(KNPlaybackSession *)self dropABreadCrumb];
  }
}

- (KNSlide)currentSlide
{
  currentSlideNode = self->_currentSlideNode;
  if (currentSlideNode)
  {
    currentSlideNode = [currentSlideNode slide];
    v2 = vars8;
  }

  return currentSlideNode;
}

- (id)nextSlideNodeAfterSlideNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  alternateNextSlideNode = self->_alternateNextSlideNode;
  if (alternateNextSlideNode && self->_currentSlideNode == nodeCopy)
  {
    v16 = alternateNextSlideNode;
    goto LABEL_21;
  }

  if (self->_shouldRespectSkippedSlides || ![(KNSlideNode *)nodeCopy isSkipped])
  {
    slideTree = [(KNShow *)self->_show slideTree];
    visibleSlideNodes = [slideTree visibleSlideNodes];
  }

  else
  {
    slideTree = [(KNShow *)self->_show slideTree];
    visibleSlideNodes = [slideTree slideNodes];
  }

  v9 = visibleSlideNodes;

  slideNodesWithinPlayableRange = [(KNPlaybackSession *)self slideNodesWithinPlayableRange];

  if (slideNodesWithinPlayableRange)
  {
    slideNodesWithinPlayableRange2 = [(KNPlaybackSession *)self slideNodesWithinPlayableRange];
    v12 = [(KNPlaybackSession *)self p_intersectArraysWithUUIDEquality:v9 secondArray:slideNodesWithinPlayableRange2];

    v9 = v12;
  }

  if ([(KNPlaybackSession *)self p_checkArrayInclusionIncludingUUID:v9 object:v5])
  {
    lastObject = [v9 lastObject];
    v14 = [(KNPlaybackSession *)self p_checkNodeEqualityIncludingUUID:lastObject secondSlideNode:v5];

    if (v14)
    {
      if (![(KNShow *)self->_show loopPresentation]&& ![(KNPlaybackSession *)self shouldAlwaysLoop])
      {
        v16 = 0;
        goto LABEL_20;
      }

      firstObject = [v9 firstObject];
    }

    else
    {
      v17 = [(KNPlaybackSession *)self p_findIndexIncludingUUID:v9 object:v5]+ 1;
      if (v17 >= [v9 count])
      {
        v18 = MEMORY[0x277D81150];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSession nextSlideNodeAfterSlideNode:]"];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m"];
        [v18 handleFailureInFunction:v19 file:v20 lineNumber:286 isFatal:0 description:"Index of next slide node is out of bounds."];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      firstObject = [v9 objectAtIndexedSubscript:v17];
    }
  }

  else
  {
    firstObject = [(KNPlaybackSession *)self p_nextBestSlideNodeToSlideNode:v5];
  }

  v16 = firstObject;
LABEL_20:

LABEL_21:

  return v16;
}

- (id)p_nextBestSlideNodeToSlideNode:(id)node
{
  nodeCopy = node;
  v5 = [(KNPlaybackSession *)self p_slideNodeIsPlayable:nodeCopy];
  previous = nodeCopy;
  if (nodeCopy)
  {
    previous = nodeCopy;
    if (!v5)
    {
      previous = nodeCopy;
      do
      {
        v7 = previous;
        previous = [previous previous];

        v8 = [(KNPlaybackSession *)self p_slideNodeIsPlayable:previous];
      }

      while (previous && !v8);
      if (!previous)
      {
        previous = [nodeCopy next];
        v9 = [(KNPlaybackSession *)self p_slideNodeIsPlayable:previous];
        if (previous && !v9)
        {
          do
          {
            v10 = previous;
            previous = [previous next];

            v11 = [(KNPlaybackSession *)self p_slideNodeIsPlayable:previous];
          }

          while (previous && !v11);
        }

        if (!previous)
        {
          v12 = MEMORY[0x277D81150];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSession p_nextBestSlideNodeToSlideNode:]"];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m"];
          [v12 handleFailureInFunction:v13 file:v14 lineNumber:323 isFatal:0 description:"SERIOUS BUG: Show slide tree should never be mutually exclusive from playback session slide tree."];

          [MEMORY[0x277D81150] logBacktraceThrottled];
          previous = 0;
        }
      }
    }
  }

  return previous;
}

- (KNSlide)nextSlideAfterCurrent
{
  nextSlideNodeAfterCurrent = [(KNPlaybackSession *)self nextSlideNodeAfterCurrent];
  slide = [nextSlideNodeAfterCurrent slide];

  return slide;
}

- (id)gotoNextSlide
{
  nextSlideNodeAfterCurrent = [(KNPlaybackSession *)self nextSlideNodeAfterCurrent];
  if (nextSlideNodeAfterCurrent)
  {
    [(KNPlaybackSession *)self p_setCurrentSlideNode:nextSlideNodeAfterCurrent];
    slide = [(KNSlideNode *)self->_currentSlideNode slide];
  }

  else
  {
    slide = 0;
  }

  [(KNPlaybackSession *)self dropABreadCrumb];

  return slide;
}

- (id)previousSlideNodeBeforeSlideNode:(id)node
{
  nodeCopy = node;
  playableSlideNodes = [(KNPlaybackSession *)self playableSlideNodes];
  if (![(KNPlaybackSession *)self p_slideNodeIsPlayable:nodeCopy])
  {
    lastObject = [(KNPlaybackSession *)self p_nextBestSlideNodeToSlideNode:nodeCopy];
    goto LABEL_10;
  }

  firstObject = [playableSlideNodes firstObject];
  v7 = [(KNPlaybackSession *)self p_checkNodeEqualityIncludingUUID:firstObject secondSlideNode:nodeCopy];

  if (!v7)
  {
    v9 = [(KNPlaybackSession *)self p_findIndexIncludingUUID:playableSlideNodes object:nodeCopy];
    if (!v9)
    {
      v10 = MEMORY[0x277D81150];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSession previousSlideNodeBeforeSlideNode:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:366 isFatal:0 description:"Index of previous slide node is out of bounds."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    lastObject = [playableSlideNodes objectAtIndexedSubscript:v9 - 1];
    goto LABEL_10;
  }

  if ([(KNShow *)self->_show loopPresentation]|| [(KNPlaybackSession *)self shouldAlwaysLoop])
  {
    lastObject = [playableSlideNodes lastObject];
LABEL_10:
    v13 = lastObject;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)gotoPreviousSlide
{
  previousSlideNodeBeforeCurrent = [(KNPlaybackSession *)self previousSlideNodeBeforeCurrent];
  if (previousSlideNodeBeforeCurrent)
  {
    [(KNPlaybackSession *)self p_setCurrentSlideNode:previousSlideNodeBeforeCurrent];
    slide = [(KNSlideNode *)self->_currentSlideNode slide];
  }

  else
  {
    slide = 0;
  }

  [(KNPlaybackSession *)self dropABreadCrumb];

  return slide;
}

- (BOOL)atBeginningOfDeck
{
  selfCopy = self;
  currentSlideNode = self->_currentSlideNode;
  playableSlideNodes = [(KNPlaybackSession *)self playableSlideNodes];
  firstObject = [playableSlideNodes firstObject];
  LOBYTE(selfCopy) = [(KNPlaybackSession *)selfCopy p_checkNodeEqualityIncludingUUID:currentSlideNode secondSlideNode:firstObject];

  return selfCopy;
}

- (BOOL)atEndOfDeck
{
  selfCopy = self;
  currentSlideNode = self->_currentSlideNode;
  playableSlideNodes = [(KNPlaybackSession *)self playableSlideNodes];
  lastObject = [playableSlideNodes lastObject];
  LOBYTE(selfCopy) = [(KNPlaybackSession *)selfCopy p_checkNodeEqualityIncludingUUID:currentSlideNode secondSlideNode:lastObject];

  return selfCopy;
}

- (KNSlideNode)firstSlideNode
{
  playableSlideNodes = [(KNPlaybackSession *)self playableSlideNodes];
  firstObject = [playableSlideNodes firstObject];

  return firstObject;
}

- (id)gotoFirstSlide
{
  firstSlideNode = [(KNPlaybackSession *)self firstSlideNode];
  [(KNPlaybackSession *)self p_setCurrentSlideNode:firstSlideNode];
  [(KNPlaybackSession *)self dropABreadCrumb];
  slide = [firstSlideNode slide];

  return slide;
}

- (KNSlideNode)lastSlideNode
{
  playableSlideNodes = [(KNPlaybackSession *)self playableSlideNodes];
  lastObject = [playableSlideNodes lastObject];

  return lastObject;
}

- (id)gotoLastSlide
{
  lastSlideNode = [(KNPlaybackSession *)self lastSlideNode];
  [(KNPlaybackSession *)self p_setCurrentSlideNode:lastSlideNode];
  [(KNPlaybackSession *)self dropABreadCrumb];
  slide = [lastSlideNode slide];

  return slide;
}

- (NSArray)breadCrumbTrail
{
  if (self->_breadCrumbTrail)
  {
    return self->_breadCrumbTrail;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)setBreadCrumbTrail:(id)trail
{
  v4 = [trail mutableCopy];
  breadCrumbTrail = self->_breadCrumbTrail;
  self->_breadCrumbTrail = v4;
}

- (void)dropABreadCrumb
{
  breadCrumbTrail = self->_breadCrumbTrail;
  if (!breadCrumbTrail)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v5 = self->_breadCrumbTrail;
    self->_breadCrumbTrail = v4;

    breadCrumbTrail = self->_breadCrumbTrail;
  }

  currentSlideNode = self->_currentSlideNode;
  lastObject = [(NSMutableArray *)breadCrumbTrail lastObject];

  if (currentSlideNode != lastObject)
  {
    v9 = self->_currentSlideNode;
    v8 = self->_breadCrumbTrail;

    [(NSMutableArray *)v8 addObject:v9];
  }
}

- (id)breadCrumb
{
  v3 = self->_currentSlideNode;
  if (![(NSMutableArray *)self->_breadCrumbTrail count])
  {
    goto LABEL_4;
  }

  lastObject = [(NSMutableArray *)self->_breadCrumbTrail lastObject];

  [(NSMutableArray *)self->_breadCrumbTrail removeLastObject];
  if (lastObject != self->_currentSlideNode)
  {
    v3 = lastObject;
LABEL_4:
    breadCrumb = v3;
    lastObject = breadCrumb;
    goto LABEL_6;
  }

  breadCrumb = [(KNPlaybackSession *)self breadCrumb];
LABEL_6:

  return breadCrumb;
}

- (KNAnimatedSlideView)animatedSlideViewForCurrentSlide
{
  if (self->_currentSlideNode)
  {
    v3 = [(KNPlaybackSession *)self animatedSlideViewFor:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)animatedSlideViewFor:(id)for
{
  forCopy = for;
  textureManager = [(KNPlaybackSession *)self textureManager];
  v6 = [textureManager ASVForSlideNode:forCopy];

  return v6;
}

- (unint64_t)slideNumberForSlideNode:(id)node
{
  show = self->_show;
  nodeCopy = node;
  slideTree = [(KNShow *)show slideTree];
  v6 = [slideTree slideNumberForSlideNode:nodeCopy];

  return v6;
}

- (BOOL)isPrintingCanvas
{
  canvasDelegate = [(KNPlaybackSession *)self canvasDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  canvasDelegate2 = [(KNPlaybackSession *)self canvasDelegate];
  isPrintingCanvas = [canvasDelegate2 isPrintingCanvas];

  return isPrintingCanvas;
}

- (BOOL)isOffscreenPlayback
{
  if ((self->_playMode - 5) < 2)
  {
    return 1;
  }

  showLayer = [(KNAnimationContext *)self->_animationContext showLayer];
  v2 = showLayer == 0;

  return v2;
}

- (double)showScale
{
  animationContext = [(KNPlaybackSession *)self animationContext];
  if (animationContext)
  {
    animationContext2 = [(KNPlaybackSession *)self animationContext];
    [animationContext2 showScale];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (BOOL)canMakeInfoVisible:(id)visible allowAudioOnlyMovies:(BOOL)movies
{
  visibleCopy = visible;
  if (!movies)
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = v7;
      isAudioOnly = [v7 isAudioOnly];

      if (isAudioOnly)
      {
        goto LABEL_8;
      }
    }
  }

  if (![(KNPlaybackSession *)self shouldShowLiveVideos])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }
  }

  if ([(KNPlaybackSession *)self floatingCommentBehavior]== 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v11 = TSUDynamicCast();
  if (v11)
  {
    v12 = v11;
    imageData = [v11 imageData];
    mEMORY[0x277D802D0] = [MEMORY[0x277D802D0] sharedPool];
    v15 = [mEMORY[0x277D802D0] providerForData:imageData shouldValidate:0];

    if (![v15 isError])
    {
LABEL_15:

      goto LABEL_16;
    }

    thumbnailImageData = [v12 thumbnailImageData];
    mEMORY[0x277D802D0]2 = [MEMORY[0x277D802D0] sharedPool];
    v18 = [mEMORY[0x277D802D0]2 providerForData:thumbnailImageData shouldValidate:0];

    if (![v18 isError])
    {
LABEL_14:

      goto LABEL_15;
    }

    fallbackColor = [imageData fallbackColor];
    if (fallbackColor)
    {

      goto LABEL_14;
    }

    fallbackColor2 = [thumbnailImageData fallbackColor];

    if (!fallbackColor2)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_26;
    }
  }

LABEL_16:
  objc_opt_class();
  v20 = TSUDynamicCast();
  v21 = v20;
  if (v20)
  {
    fill = [v20 fill];
    objc_opt_class();
    v23 = TSUDynamicCast();
    v24 = v23;
    if (v23)
    {
      imageData2 = [v23 imageData];
      mEMORY[0x277D802D0]3 = [MEMORY[0x277D802D0] sharedPool];
      v27 = [mEMORY[0x277D802D0]3 providerForData:imageData2 shouldValidate:0];

      if ([v27 isError])
      {
        fallbackColor3 = [imageData2 fallbackColor];
        v10 = fallbackColor3 != 0;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_26:
  return v10;
}

- (id)newCanvasForInfos:(id)infos
{
  v26 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v5 = objc_alloc_init(MEMORY[0x277D801E0]);
  canvasDelegate = [(KNPlaybackSession *)self canvasDelegate];
  [v5 setDelegate:canvasDelegate];

  animationContext = [(KNPlaybackSession *)self animationContext];
  [animationContext unscaledSlideRect];
  [v5 setUnscaledSize:{v8, v9}];
  [animationContext viewScale];
  [v5 setViewScale:?];
  [v5 setInfosToDisplay:infosCopy];
  [v5 setSupportsHDR:{-[KNPlaybackSession supportsHDR](self, "supportsHDR")}];
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  layoutController = [v5 layoutController];
  rootLayout = [layoutController rootLayout];
  children = [rootLayout children];

  v13 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(children);
        }

        objc_opt_class();
        v17 = TSUDynamicCast();
        v18 = v17;
        if (v17)
        {
          containedLayout = [v17 containedLayout];
          [containedLayout invalidateTextLayout];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [v5 nonInteractiveLayoutIfNeeded];
  return v5;
}

- (id)repForInfo:(id)info onCanvas:(id)canvas
{
  canvasCopy = canvas;
  infoCopy = info;
  layoutController = [canvasCopy layoutController];
  v9 = [layoutController layoutForInfo:infoCopy];

  v10 = [canvasCopy repForLayout:v9];

  shouldBeDisplayedInShowMode = [v9 shouldBeDisplayedInShowMode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (shouldBeDisplayedInShowMode)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ([(KNPlaybackSession *)self floatingCommentBehavior]== 1)
  {
LABEL_5:

    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (void)waitUntilSlideTextureRenderingIsCompleteForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    canvasDelegate = [(KNPlaybackSession *)self canvasDelegate];
    documentRoot = [canvasDelegate documentRoot];
    accessController = [documentRoot accessController];

    [accessController waitOnIdentifier:identifierCopy];
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSession waitUntilSlideTextureRenderingIsCompleteForIdentifier:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:618 isFatal:0 description:{"invalid nil value for '%{public}s'", "identifier"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (void)executeEndShowHandlerAfterDelay:(double)delay
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277CBE738];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(KNPlaybackSession *)self performSelector:sel_p_executeEndShowHandler withObject:0 afterDelay:v5 inModes:delay];

  self->_hasEndShowHandlerBeenCancelled = 0;
}

- (void)p_executeEndShowHandler
{
  if (!self->_hasEndShowHandlerBeenCancelled)
  {
    endShowHandler = self->_endShowHandler;
    if (endShowHandler)
    {
      endShowHandler[2]();
    }
  }
}

- (BOOL)isPreCachingOperationActive
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:*MEMORY[0x277D805D8]];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isTexturePreCachingThread
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:*MEMORY[0x277D80478]];
  v5 = v4 != 0;

  return v5;
}

- (void)didChangeRootLayerGeometryAndScreenEnvironment
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v11 = self->_configuration;
  configurationWithUpdatedLayerScreenEnvironment = [(KNPlaybackSessionConfiguration *)self->_configuration configurationWithUpdatedLayerScreenEnvironment];
  configuration = self->_configuration;
  self->_configuration = configurationWithUpdatedLayerScreenEnvironment;

  v5 = objc_opt_class();
  showLayer = [(KNAnimationContext *)self->_animationContext showLayer];
  v7 = self->_configuration;
  show = [(KNPlaybackSession *)self show];
  [show size];
  [v5 p_viewScaleByUpdatingShowLayerGeometry:showLayer forConfiguration:v7 showSize:?];
  v10 = v9;

  if (v11 != self->_configuration)
  {
    [objc_opt_class() p_updateAnimationContext:self->_animationContext fromConfiguration:self->_configuration];
  }

  [(KNAnimationContext *)self->_animationContext updateGeometryToFitShowLayerAtViewScale:v10];
  [MEMORY[0x277CD9FF0] commit];
}

+ (double)p_viewScaleByUpdatingShowLayerGeometry:(id)geometry forConfiguration:(id)configuration showSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  geometryCopy = geometry;
  configurationCopy = configuration;
  [configurationCopy canvasViewScaleForUnscaledSize:{width, height}];
  v11 = v10;
  if (v10 < 1.0 && +[KNAnimationUtils shouldDisableViewScaling])
  {
    TSURectWithSize();
    [geometryCopy setFrame:?];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [geometryCopy setValue:v12 forKeyPath:@"transform.scale.xy"];

    v11 = 1.0;
  }

  else
  {
    [configurationCopy boundsSize];
    TSURectWithSize();
    [geometryCopy setFrame:?];
  }

  return v11;
}

+ (void)p_updateAnimationContext:(id)context fromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  contextCopy = context;
  [contextCopy setColorSpace:{objc_msgSend(configurationCopy, "colorSpace")}];
  [configurationCopy pixelAspectRatio];
  v7 = v6;

  [contextCopy setPixelAspectRatio:v7];
}

- (NSArray)playableSlideNodes
{
  shouldRespectSkippedSlides = self->_shouldRespectSkippedSlides;
  slideTree = [(KNShow *)self->_show slideTree];
  v5 = slideTree;
  if (shouldRespectSkippedSlides)
  {
    [slideTree visibleSlideNodes];
  }

  else
  {
    [slideTree slideNodes];
  }
  v6 = ;

  slideNodesWithinPlayableRange = [(KNPlaybackSession *)self slideNodesWithinPlayableRange];

  if (slideNodesWithinPlayableRange)
  {
    slideNodesWithinPlayableRange2 = [(KNPlaybackSession *)self slideNodesWithinPlayableRange];
    v9 = [(KNPlaybackSession *)self p_intersectArraysWithUUIDEquality:v6 secondArray:slideNodesWithinPlayableRange2];

    v6 = v9;
  }

  return v6;
}

- (void)enableMetalBadge:(BOOL)badge
{
  badgeCopy = badge;
  [MEMORY[0x277CD9FF0] begin];
  v5 = 1;
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
  [(CALayer *)self->_noMetalBadgeLayer setHidden:badgeCopy];
  if (badgeCopy)
  {
    v5 = [(KNPlaybackSession *)self isSceneRenderingEnabled]^ 1;
  }

  [(CALayer *)self->_sceneRenderingMetalBadgeLayer setHidden:v5];
  v6 = MEMORY[0x277CD9FF0];

  [v6 commit];
}

- (id)p_intersectArraysWithUUIDEquality:(id)equality secondArray:(id)array
{
  v21 = *MEMORY[0x277D85DE8];
  equalityCopy = equality;
  arrayCopy = array;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = equalityCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([(KNPlaybackSession *)self p_checkArrayInclusionIncludingUUID:arrayCopy object:v14, v16])
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

- (BOOL)p_slideNodeIsPlayable:(id)playable
{
  playableCopy = playable;
  playableSlideNodes = [(KNPlaybackSession *)self playableSlideNodes];
  LOBYTE(self) = [(KNPlaybackSession *)self p_checkArrayInclusionIncludingUUID:playableSlideNodes object:playableCopy];

  return self;
}

- (BOOL)p_checkArrayInclusionIncludingUUID:(id)d object:(id)object
{
  dCopy = d;
  objectCopy = object;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_275DAF684;
  v10[3] = &unk_27A697EB8;
  v10[4] = self;
  v8 = objectCopy;
  v11 = v8;
  v12 = &v13;
  [dCopy enumerateObjectsUsingBlock:v10];
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

- (unint64_t)p_findIndexIncludingUUID:(id)d object:(id)object
{
  dCopy = d;
  objectCopy = object;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275DAF7D8;
  v11[3] = &unk_27A697EB8;
  v11[4] = self;
  v8 = objectCopy;
  v12 = v8;
  v13 = &v14;
  [dCopy enumerateObjectsUsingBlock:v11];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (int64_t)analyticsVisitedSlideCount
{
  result = self->_analyticsSlideNodesVisited;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (void)analyticsVisitedSlideNode:(id)node
{
  nodeCopy = node;
  analyticsSlideNodesVisited = self->_analyticsSlideNodesVisited;
  v8 = nodeCopy;
  if (!analyticsSlideNodesVisited)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_analyticsSlideNodesVisited;
    self->_analyticsSlideNodesVisited = v6;

    nodeCopy = v8;
    analyticsSlideNodesVisited = self->_analyticsSlideNodesVisited;
  }

  [(NSMutableSet *)analyticsSlideNodesVisited addObject:nodeCopy];
}

- (TSDCanvasDelegate)canvasDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);

  return WeakRetained;
}

@end