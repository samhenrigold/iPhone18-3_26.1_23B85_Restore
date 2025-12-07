@interface KNBuildRenderer
- (BOOL)addAnimationsAtLayerTime:(double)time;
- (BOOL)p_isDriftAnimation;
- (BOOL)p_isTextDrawable;
- (KNBuildRenderer)initWithAnimatedBuild:(id)build info:(id)info buildStage:(id)stage animatedSlideView:(id)view;
- (NSString)description;
- (TSDRep)rep;
- (TSDTextureDescription)textureDescription;
- (TSDTextureSet)textureSet;
- (id)animationWillBegin;
- (id)initializeTextureSetForEndOfBuild:(BOOL)build endOfSlide:(BOOL)slide description:(id)description isRenderingToContext:(BOOL)context;
- (id)loadPluginIfNeeded;
- (id)p_filterForTextDelivery:(int64_t)delivery childRepTextDeliveryFilter:(id *)filter;
- (id)p_initializeTextureSetForEndOfBuild:(BOOL)build endOfSlide:(BOOL)slide description:(id)description isRenderingToContext:(BOOL)context;
- (id)p_keyForAnimation;
- (id)p_textureSetForStage:(int64_t)stage description:(id)description isAtEndOfBuild:(BOOL)build shouldForceRebuild:(BOOL)rebuild shouldRender:(BOOL)render;
- (id)setupFinalTextureGivenCurrentTextureSet:(id)set isRenderingToContext:(BOOL)context;
- (id)textureDescriptionForStage:(int64_t)stage isAtEndOfBuild:(BOOL)build;
- (id)textureSetForStage:(int64_t)stage description:(id)description isAtEndOfBuild:(BOOL)build shouldForceRebuild:(BOOL)rebuild shouldRender:(BOOL)render;
- (id)textureSetWithoutRenderedContents;
- (int64_t)textureStageIndex;
- (unint64_t)textureDeliveryStyle;
- (void)addBuildToStartAtEnd:(id)end;
- (void)animate;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)fadeOutPreviousStageOn:(id)on atLayerTime:(double)time;
- (void)forceRemoveAnimations;
- (void)generateTextures;
- (void)p_removeAnimations;
- (void)p_resetAnimations;
- (void)p_updateTextureDescription:(id)description forStage:(int64_t)stage isAtEndOfBuild:(BOOL)build;
- (void)pauseAnimationsAtTime:(double)time;
- (void)registerForBuildEndCallback:(SEL)callback target:(id)target;
- (void)removeAnimationsAndFinish:(BOOL)finish;
- (void)removeBuildToStartAtEnd:(id)end;
- (void)renderTextures;
- (void)resetHighlightsBeforeAnimationOnTextureSet:(id)set;
- (void)resetPreviousStageToUnhighlightOnTextureSet:(id)set;
- (void)resumeAnimationsIfPausedAtTime:(double)time;
- (void)setEndOfBuildTextureSet:(id)set;
- (void)setGeometryAndActionAttributesOnTextureSet:(id)set isAtEndOfBuild:(BOOL)build isAtEndOfSlide:(BOOL)slide isRenderingToContext:(BOOL)context;
- (void)setLayerVisibility:(id)visibility isAtEndOfBuild:(BOOL)build;
- (void)setupPluginContext;
- (void)stopAnimations;
- (void)teardown;
- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)cancel;
@end

@implementation KNBuildRenderer

- (KNBuildRenderer)initWithAnimatedBuild:(id)build info:(id)info buildStage:(id)stage animatedSlideView:(id)view
{
  v16.receiver = self;
  v16.super_class = KNBuildRenderer;
  v10 = [(KNBuildRenderer *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_animatedBuild = build;
    v10->_buildStage = stage;
    v11->_info = info;
    v11->super._session = [view session];
    v11->_numberOfAnimationsStarted = 0;
    v11->_animatedLayers = 0;
    v11->_animatedBuildsToStartAtEnd = 0;
    v11->_interrupted = 0;
    v11->super._ASV = view;
    v11->super._direction = [build direction];
    v11->_isNonCachedTextureValid = 0;
    v11->_texturesToTeardown = objc_alloc_init(MEMORY[0x277CBEB58]);
    session = v11->super._session;
    if (session)
    {
      registry = [(KNPlaybackSession *)session registry];
    }

    else
    {
      registry = +[KNAnimationRegistry instance];
    }

    v14 = [(KNAnimationRegistryWithFallbacks *)registry animationInfoForEffectIdentifier:[(KNAnimatedBuild *)v11->_animatedBuild effectIdentifier] animationType:[(KNAnimatedBuild *)v11->_animatedBuild buildType]];
    v11->_animationInfo = v14;
    v11->super._pluginClass = [(KNAnimationInfo *)v14 animationClass];
  }

  return v11;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];

  [(TSDTextureSet *)self->_finalAttributesTextureSet teardown];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  texturesToTeardown = self->_texturesToTeardown;
  v4 = [(NSMutableSet *)texturesToTeardown countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(texturesToTeardown);
        }

        [*(*(&v9 + 1) + 8 * i) teardown];
      }

      v5 = [(NSMutableSet *)texturesToTeardown countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(TSDTextureSet *)self->_textureSet teardown];
  [(TSDTextureSet *)self->_endOfBuildTextureSet teardown];

  self->super._session = 0;
  v8.receiver = self;
  v8.super_class = KNBuildRenderer;
  [(KNAnimationRenderer *)&v8 dealloc];
}

- (void)teardown
{
  [(TSDTextureSet *)self->_textureSet teardown];

  self->_textureSet = 0;
  [(TSDTextureSet *)self->_finalAttributesTextureSet teardown];

  self->_finalAttributesTextureSet = 0;
  self->_isNonCachedTextureValid = 0;
  self->_areAnimationsReadyToStart = 0;
  v3.receiver = self;
  v3.super_class = KNBuildRenderer;
  [(KNAnimationRenderer *)&v3 teardown];
}

- (NSString)description
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(KNAnimationRenderer *)self plugin])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [objc_opt_class() localizedMenuString:{-[KNAnimatedBuild buildType](self->_animatedBuild, "buildType")}];
    v6 = objc_opt_class();
    [array addObject:{objc_msgSend(v4, "stringWithFormat:", @"%@(%@)", v5, NSStringFromClass(v6))}];
  }

  if ([(KNBuildChunk *)self->_buildStage build])
  {
    [(KNAnimatedBuild *)self->_animatedBuild buildType];
    [array addObject:KNAnimationTypeAsString()];
  }

  v7 = MEMORY[0x277CCACA8];
  objc_msgSend_duration(self->_animatedBuild);
  [array addObject:{objc_msgSend(v7, "stringWithFormat:", @"%0.2fs", v8)}];
  if (self->_isPreview)
  {
    [array addObject:@"preview"];
  }

  if ([(KNBuildRenderer *)self textureStageIndex])
  {
    [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"texture stage:%lu", -[KNBuildRenderer textureStageIndex](self, "textureStageIndex"))}];
  }

  v9 = [array componentsJoinedByString:{@", "}];
  v11.receiver = self;
  v11.super_class = KNBuildRenderer;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", -[KNBuildRenderer description](&v11, sel_description), v9];
}

- (id)loadPluginIfNeeded
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277D81150];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer loadPluginIfNeeded]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{157, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  v5 = [(KNBuildRenderer *)self rep];
  objc_sync_enter(v5);
  plugin = self->super._plugin;
  if (!plugin)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plugin = self->super._plugin;
    }

    else
    {
      plugin = [objc_alloc(-[KNAnimatedBuild pluginClass](self->_animatedBuild "pluginClass"))];
      self->super._plugin = plugin;
    }
  }

  objc_sync_exit(v5);
  return plugin;
}

- (void)setupPluginContext
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277D81150];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer setupPluginContext]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{168, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  v18.receiver = self;
  v18.super_class = KNBuildRenderer;
  [(KNAnimationRenderer *)&v18 setupPluginContext];
  objc_opt_class();
  [(KNAnimationRenderer *)self pluginContext];
  v5 = TSUCheckedDynamicCast();
  [v5 setRendererType:1];
  objc_msgSend_duration(self->_animatedBuild);
  [v5 setDuration:?];
  [v5 setDirection:self->super._direction];
  [v5 setAnimatedBuild:self->_animatedBuild];
  [v5 setBuildAttributes:{-[KNAnimationAttributes attributes](-[KNAnimatedBuild attributes](self->_animatedBuild, "attributes"), "attributes")}];
  [v5 setIsMotionBlurred:{-[KNAnimatedSlideView isMotionBlurEnabledWithEvent:](self->super._ASV, "isMotionBlurEnabledWithEvent:", -[KNAnimatedBuild eventIndex](self->_animatedBuild, "eventIndex"))}];
  [(TSDTextureSet *)self->_textureSet boundingRectForStage:[(KNBuildRenderer *)self textureStageIndex] isBuildIn:[(KNAnimatedBuild *)self->_animatedBuild isBuildIn] isContentBuild:[(KNAnimatedBuild *)self->_animatedBuild isContentBuild]];
  [v5 setBoundingRect:?];
  [v5 boundingRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(TSDTextureSet *)self->_textureSet frame];
  v15 = v14;
  [(TSDTextureSet *)self->_textureSet frame];
  v17 = v16;
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  v20 = CGRectOffset(v19, v15, v17);
  [v5 setBoundingRectOnCanvas:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
  [v5 setRep:{-[KNBuildRenderer rep](self, "rep")}];
}

- (TSDRep)rep
{
  session = self->super._session;
  info = self->_info;
  canvas = [(KNAnimatedSlideView *)self->super._ASV canvas];

  return [(KNPlaybackSession *)session repForInfo:info onCanvas:canvas];
}

- (id)p_filterForTextDelivery:(int64_t)delivery childRepTextDeliveryFilter:(id *)filter
{
  [(KNBuildRenderer *)self loadPluginIfNeeded];
  animationFilter2 = *MEMORY[0x277D805A0];
  if (delivery <= 1)
  {
    if (delivery)
    {
      if (delivery == 1)
      {
        animationFilter = *MEMORY[0x277D805A0];
      }

      else
      {
        animationFilter = 0;
      }
    }

    else
    {
      animationFilter = [objc_opt_class() animationFilter];
    }
  }

  else
  {
    switch(delivery)
    {
      case 2:
        v8 = MEMORY[0x277D80588];
        break;
      case 3:
        v8 = MEMORY[0x277D80578];
        break;
      case 4:
        v8 = MEMORY[0x277D80580];
        break;
      default:
        animationFilter = 0;
        goto LABEL_15;
    }

    animationFilter = *v8;
  }

LABEL_15:
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v10 = [(KNAnimationInfo *)self->_animationInfo customAttributesForAttributeKey:@"KNBuildCustomAttributesTextDelivery"];
    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:&unk_2884F3870];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_275DA5A88;
      v13[3] = &unk_27A698A20;
      v13[4] = &v14;
      v13[5] = delivery;
      [v11 enumerateKeysAndObjectsUsingBlock:v13];
    }
  }

  if ((v15[3] & 1) == 0)
  {
    animationFilter2 = [objc_opt_class() animationFilter];
    animationFilter = animationFilter2;
  }

  *filter = animationFilter2;
  _Block_object_dispose(&v14, 8);
  return animationFilter;
}

- (TSDTextureDescription)textureDescription
{
  v3 = [(KNBuildRenderer *)self rep];
  objc_sync_enter(v3);
  textureDescription = self->_textureDescription;
  if (textureDescription)
  {
    if ([(KNPlaybackSession *)self->super._session isMetalEnabled]|| self->_shouldUseMagicMoveTextures == [(TSDTextureDescription *)self->_textureDescription isMagicMove])
    {
      goto LABEL_8;
    }

    textureDescription = self->_textureDescription;
  }

  self->_textureDescription = [MEMORY[0x277D803D8] descriptionWithSession:self->super._session];
  if (![(KNPlaybackSession *)self->super._session isMetalEnabled]&& self->_shouldUseMagicMoveTextures)
  {
    [(TSDTextureDescription *)self->_textureDescription setIsMagicMove:1];
    [(TSDTextureDescription *)self->_textureDescription setShouldSeparateReflection:1];
    [(TSDTextureDescription *)self->_textureDescription setShouldSeparateStroke:1];
    [(TSDTextureDescription *)self->_textureDescription setShouldSeparateShadow:1];
    [(TSDTextureDescription *)self->_textureDescription setShouldAddMasks:1];
    [(TSDTextureDescription *)self->_textureDescription setShouldAddVideoBackgroundFill:1];
  }

LABEL_8:
  v5 = self->_textureDescription;
  objc_sync_exit(v3);
  return v5;
}

- (void)generateTextures
{
  if ([(KNBuildRenderer *)self shouldPreGenerateTextures]&& ![(KNAnimatedBuild *)[(KNBuildRenderer *)self animatedBuild] previousAttributes])
  {
    textureDescription = [(KNBuildRenderer *)self textureDescription];

    [(KNBuildRenderer *)self initializeTextureSetForEndOfBuild:0 endOfSlide:0 description:textureDescription isRenderingToContext:0];
  }
}

- (void)renderTextures
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allTextures = [(TSDTextureSet *)self->_textureSet allTextures];
  v4 = [allTextures countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allTextures);
        }

        [(KNAnimatedTextureManager *)[(KNPlaybackSession *)self->super._session textureManager] addTextureToRasterizationQueue:*(*(&v8 + 1) + 8 * v7++) asv:self->super._ASV];
      }

      while (v5 != v7);
      v5 = [allTextures countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)cancel
{
  cancelCopy = cancel;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allTextures = [(TSDTextureSet *)self->_textureSet allTextures];
  v5 = [allTextures countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allTextures);
        }

        [*(*(&v9 + 1) + 8 * v8++) waitUntilAsyncRenderingIsCompleteShouldCancel:cancelCopy];
      }

      while (v6 != v8);
      v6 = [allTextures countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (TSDTextureSet)textureSet
{
  textureStageIndex = [(KNBuildRenderer *)self textureStageIndex];
  textureDescription = [(KNBuildRenderer *)self textureDescription];

  return [(KNBuildRenderer *)self textureSetForStage:textureStageIndex description:textureDescription isAtEndOfBuild:0 shouldForceRebuild:0 shouldRender:1];
}

- (id)textureSetWithoutRenderedContents
{
  textureStageIndex = [(KNBuildRenderer *)self textureStageIndex];
  textureDescription = [(KNBuildRenderer *)self textureDescription];

  return [(KNBuildRenderer *)self textureSetForStage:textureStageIndex description:textureDescription isAtEndOfBuild:0 shouldForceRebuild:0 shouldRender:0];
}

- (id)textureSetForStage:(int64_t)stage description:(id)description isAtEndOfBuild:(BOOL)build shouldForceRebuild:(BOOL)rebuild shouldRender:(BOOL)render
{
  renderCopy = render;
  rebuildCopy = rebuild;
  buildCopy = build;
  v13 = [(KNBuildRenderer *)self rep];
  objc_sync_enter(v13);
  v14 = [(KNBuildRenderer *)self p_textureSetForStage:stage description:description isAtEndOfBuild:buildCopy shouldForceRebuild:rebuildCopy shouldRender:renderCopy];
  objc_sync_exit(v13);
  return v14;
}

- (id)textureDescriptionForStage:(int64_t)stage isAtEndOfBuild:(BOOL)build
{
  buildCopy = build;
  v7 = [MEMORY[0x277D803D8] descriptionWithSession:self->super._session];
  [(KNBuildRenderer *)self p_updateTextureDescription:v7 forStage:stage isAtEndOfBuild:buildCopy];
  return v7;
}

- (void)setEndOfBuildTextureSet:(id)set
{
  endOfBuildTextureSet = self->_endOfBuildTextureSet;
  if (endOfBuildTextureSet != set)
  {
    if (endOfBuildTextureSet)
    {
      [(NSMutableSet *)self->_texturesToTeardown addObject:?];
      v6 = self->_endOfBuildTextureSet;
    }

    else
    {
      v6 = 0;
    }

    self->_endOfBuildTextureSet = set;
  }
}

- (id)p_textureSetForStage:(int64_t)stage description:(id)description isAtEndOfBuild:(BOOL)build shouldForceRebuild:(BOOL)rebuild shouldRender:(BOOL)render
{
  renderCopy = render;
  buildCopy = build;
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer p_textureSetForStage:description:isAtEndOfBuild:shouldForceRebuild:shouldRender:]"];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{345, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  v14 = [(KNBuildRenderer *)self rep];
  p_isMovieInfo = [(KNBuildRenderer *)self p_isMovieInfo];
  if (!description)
  {
    description = [(KNBuildRenderer *)self textureDescription];
  }

  if ([(KNAnimatedBuild *)self->_animatedBuild isActionBuild]&& p_isMovieInfo)
  {

    self->_textureSet = 0;
  }

  if (buildCopy)
  {
    if ([(KNBuildRenderer *)self textureDeliveryStyle]&& [(TSDDrawableInfo *)self->_info suppliesFinalTextures])
    {
      stage += [(KNAnimatedBuild *)self->_animatedBuild isBuildIn];
    }

    p_textureSet = &self->_textureSet;
    p_endOfBuildTextureSet = &self->_endOfBuildTextureSet;
  }

  else
  {
    p_endOfBuildTextureSet = &self->_textureSet;
    p_textureSet = &self->_textureSet;
  }

  v17 = *p_endOfBuildTextureSet;
  isRenderable = [*p_endOfBuildTextureSet isRenderable];
  if (!v17 || (v19 = isRenderable, stage != -[KNBuildRenderer textureStageIndex](self, "textureStageIndex")) || rebuild || [v17 isBaked] && !(p_isMovieInfo | !-[KNAnimatedBuild isActionBuild](self->_animatedBuild, "isActionBuild")) || (-[TSDTextureDescription isEqual:](self->_textureDescription, "isEqual:", description) & v19) != 1 || !-[KNPlaybackSession isMetalEnabled](self->super._session, "isMetalEnabled") && self->_shouldUseMagicMoveTextures && !objc_msgSend(v17, "isMagicMove") || !-[KNBuildRenderer shouldPreGenerateTextures](self, "shouldPreGenerateTextures") && !-[KNPlaybackSession shouldForceTextureGeneration](self->super._session, "shouldForceTextureGeneration"))
  {
    objc_opt_class();
    [(KNBuildRenderer *)self info];
    v20 = TSUDynamicCast();
    v17 = 0;
    if (v14 && v20)
    {
      [(KNBuildRenderer *)self p_updateTextureDescription:description forStage:stage isAtEndOfBuild:buildCopy];
      loadPluginIfNeeded = [(KNBuildRenderer *)self loadPluginIfNeeded];
      if (objc_opt_respondsToSelector())
      {
        v22 = [loadPluginIfNeeded animationInfoForAnimatedBuild:self->_animatedBuild];
        [(TSDRep *)v14 setTextureAnimationInfo:v22];
      }

      else
      {
        [(TSDRep *)v14 setTextureAnimationInfo:0];
      }

      shouldPreGenerateTextures = [(KNBuildRenderer *)self shouldPreGenerateTextures];
      ASV = self->super._ASV;
      if (shouldPreGenerateTextures)
      {
        v25 = [(KNAnimatedSlideView *)ASV textureSetForRep:v14 description:description shouldRender:renderCopy];
      }

      else
      {
        v25 = [(KNAnimatedSlideView *)ASV nonCachedTextureSetForRep:v14 description:description shouldRender:renderCopy];
      }

      v17 = v25;
      if (buildCopy)
      {
        [(KNBuildRenderer *)self setEndOfBuildTextureSet:v25];
      }

      else if (stage == [(KNBuildRenderer *)self textureStageIndex]&& *v28 != v17)
      {
        [*v28 teardown];

        *v28 = v17;
        [(KNBuildRenderer *)self setTextureDescription:description];
      }
    }
  }

  return v17;
}

- (void)p_updateTextureDescription:(id)description forStage:(int64_t)stage isAtEndOfBuild:(BOOL)build
{
  v9 = [(KNBuildRenderer *)self rep];
  objc_opt_class();
  [(KNBuildRenderer *)self info];
  v10 = TSUDynamicCast();
  if (v9 && v10)
  {
    model = [(KNAnimatedSlideView *)self->super._ASV model];
    textureDeliveryStyle = [(KNBuildRenderer *)self textureDeliveryStyle];
    if ([(objc_class *)self->super._pluginClass conformsToProtocol:&unk_2885463D0])
    {
      if (build)
      {
        [description setShouldSeparateStroke:0];
        [description setShouldAddParameterizedStroke:0];
        [description setShouldReverseStrokeDrawing:{objc_msgSend(objc_opt_class(), "wantsParameterizedStrokeDrawingReversedWithAnimatedBuild:", self->_animatedBuild)}];
        wantsSeparateGroupedTextures = 0;
      }

      else
      {
        v14 = model;
        playMode = [(KNPlaybackSession *)self->super._session playMode];
        v16 = playMode != 5;
        [description setShouldSeparateStroke:v16];
        [description setShouldAddParameterizedStroke:v16];
        [description setShouldReverseStrokeDrawing:{objc_msgSend(objc_opt_class(), "wantsParameterizedStrokeDrawingReversedWithAnimatedBuild:", self->_animatedBuild)}];
        if (playMode == 5)
        {
          wantsSeparateGroupedTextures = 0;
        }

        else
        {
          wantsSeparateGroupedTextures = [objc_opt_class() wantsSeparateGroupedTextures];
        }

        model = v14;
      }

      [description setShouldSeparateGroupedTextures:wantsSeparateGroupedTextures];
    }

    if ([(TSDDrawableInfo *)self->_info suppliesFinalTextures])
    {
      v17 = textureDeliveryStyle == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17 && ![(KNBuildRenderer *)self p_isDriftAnimation])
    {
      [description setShouldAddFinal:1];
    }

    [description setDeliveryStyle:textureDeliveryStyle];
    [description setStage:stage];
    loadPluginIfNeeded = [(KNBuildRenderer *)self loadPluginIfNeeded];
    if ([loadPluginIfNeeded conformsToProtocol:&unk_288512818])
    {
      LOBYTE(v19) = 0;
    }

    else
    {
      v19 = [loadPluginIfNeeded conformsToProtocol:&unk_288546490] ^ 1;
    }

    v20 = 0;
    if (build)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0;
      if ((v19 & 1) == 0)
      {
        if (-[KNBuildRenderer p_isMovieInfo](self, "p_isMovieInfo") || (v22 = -[TSDDrawableInfo animationFilters](self->_info, "animationFilters"), v23 = MEMORY[0x277D80578], ![v22 containsObject:*MEMORY[0x277D80578]]))
        {
          v20 = 0;
          v21 = 0;
        }

        else
        {
          v24 = [(NSDictionary *)[(KNAnimationAttributes *)[(KNAnimatedBuild *)self->_animatedBuild attributes] attributes] objectForKey:@"KNBuildCustomAttributesTextDelivery"];
          v29 = *MEMORY[0x277D805A0];
          v25 = -[KNBuildRenderer p_filterForTextDelivery:childRepTextDeliveryFilter:](self, "p_filterForTextDelivery:childRepTextDeliveryFilter:", [v24 integerValue], &v29);
          v26 = [v25 isEqualToString:*v23];
          v27 = MEMORY[0x277D80588];
          if (v26)
          {
            v21 = 1;
          }

          else if ([v25 isEqualToString:*MEMORY[0x277D80588]])
          {
            v21 = 2;
          }

          else if ([v25 isEqualToString:*MEMORY[0x277D80580]])
          {
            v21 = 3;
          }

          else
          {
            v21 = 0;
          }

          if ([v29 isEqualToString:*v23])
          {
            v20 = 1;
          }

          else if ([v29 isEqualToString:*v27])
          {
            v20 = 2;
          }

          else
          {
            v20 = 0;
          }
        }
      }
    }

    [description setByGlyphStyle:v21];
    [description setChildRepByGlyphStyle:v20];
    [description setShouldSeparateText:{-[KNAnimatedBuild isContentBuild](self->_animatedBuild, "isContentBuild")}];
    objc_opt_class();
    [(TSDRep *)v9 info];
    [(KNAnimatedSlideModel *)model maxScaleFactorForDrawable:TSUDynamicCast()];
    if (v28 > 1.0)
    {
      [description setShouldIgnoreScaleInSourceImage:1];
    }
  }
}

- (BOOL)p_isTextDrawable
{
  if (!self->_info)
  {
    v2 = MEMORY[0x277D81150];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer p_isTextDrawable]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{507, 0, "invalid nil value for '%{public}s'", "_info"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (void)setLayerVisibility:(id)visibility isAtEndOfBuild:(BOOL)build
{
  buildCopy = build;
  v71 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer setLayerVisibility:isAtEndOfBuild:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{512, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  isBuildIn = [(KNAnimatedBuild *)self->_animatedBuild isBuildIn];
  isContentBuild = [(KNAnimatedBuild *)self->_animatedBuild isContentBuild];
  textureStageIndex = [(KNBuildRenderer *)self textureStageIndex];
  v11 = [(KNAnimatedBuild *)self->_animatedBuild eventIndex]+ buildCopy;
  [objc_msgSend(visibility viewLayerAtEventIndex:{v11), "setHidden:", 0}];
  textureDeliveryStyle = [(KNBuildRenderer *)self textureDeliveryStyle];
  v57 = textureDeliveryStyle;
  if ([(TSDDrawableInfo *)self->_info suppliesFinalTextures])
  {
    v13 = textureDeliveryStyle == 0;
  }

  else
  {
    v13 = 1;
  }

  v56 = isBuildIn;
  if (v13)
  {
    if ([visibility containsFinalTextures] && objc_msgSend(visibility, "objectType") == 1)
    {
      [visibility hideLayersOfFinalTexturesAtEventIndex:v11];
    }

    goto LABEL_21;
  }

  [visibility setShouldIncludeFinalTexturesInVisibleSet:0];
  [visibility hideLayersOfFinalTexturesAtEventIndex:v11];
  v14 = [visibility finalTexturesForStage:textureStageIndex - (!buildCopy || !isBuildIn)];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v66;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v66 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [objc_msgSend(*(*(&v65 + 1) + 8 * i) viewLayerAtEventIndex:{v11), "setHidden:", 0}];
      }

      v16 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v16);
  }

  if (!v14)
  {
LABEL_21:
    v55 = 0;
    goto LABEL_22;
  }

  v55 = [v14 count] != 0;
LABEL_22:
  p_isTextDrawable = [(KNBuildRenderer *)self p_isTextDrawable];
  if (!p_isTextDrawable)
  {
    goto LABEL_33;
  }

  v20 = 0;
  if (![(KNAnimatedBuild *)self->_animatedBuild isBuildOut]|| v57 != 3)
  {
    goto LABEL_34;
  }

  v21 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super._ASV model] previousBuildInForInfo:self->_info priorToBuild:self->_animatedBuild];
  if (!v21 || (v22 = v21, ![v21 isBuildIn]))
  {
LABEL_33:
    v20 = 0;
    goto LABEL_34;
  }

  v20 = [v22 deliveryStyle] == 3 && textureStageIndex == 0;
LABEL_34:
  v59 = textureStageIndex;
  v58 = buildCopy;
  v24 = [objc_msgSend(visibility "titleAndCaptionTextures")];
  v25 = v24;
  if (isContentBuild && (v63 = 0u, v64 = 0u, v61 = 0u, v62 = 0u, (v26 = [v24 countByEnumeratingWithState:&v61 objects:v69 count:16]) != 0))
  {
    v27 = v26;
    v28 = *v62;
    while (2)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(v25);
        }

        if ([*(*(&v61 + 1) + 8 * j) isIncomingContent])
        {
          v30 = 1;
          goto LABEL_46;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v61 objects:v69 count:16];
      v30 = 0;
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_46:
  v31 = [v25 count];
  if (v31 - 1 >= 0)
  {
    v32 = v31;
    v33 = 0;
    if (v59)
    {
      v34 = 0;
    }

    else
    {
      v34 = v20;
    }

    v35 = v57 == 3 && p_isTextDrawable;
    v52 = v35;
    v53 = v34;
    v36 = v30 & v58;
    if (v59 == -1)
    {
      v36 = 0;
    }

    v54 = v36;
    while (1)
    {
      v37 = v33;
      v38 = [v25 objectAtIndex:--v32];
      v39 = [v38 viewLayerAtEventIndex:v11];
      [v38 textureOpacity];
      *&v40 = v40;
      [v39 setOpacity:v40];
      v41 = [visibility stageIndexForTexture:v38];
      if ([(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
      {
        if ([visibility alternateLayer])
        {
          goto LABEL_89;
        }

        if ([(KNAnimatedBuild *)self->_animatedBuild isVisibleAtBeginning])
        {
          v42 = [(KNBuildRenderer *)self textureStageIndex]<= v41 && [(KNBuildRenderer *)self textureStageIndex]!= 0;
        }

        else
        {
          v42 = 1;
        }

        v44 = v39;
LABEL_88:
        [v44 setHidden:v42];
        goto LABEL_89;
      }

      if (isContentBuild)
      {
        break;
      }

      [v39 setHidden:1];
      if ([visibility hasTexture:v38 beenFlattenedForKey:self] && !-[KNPlaybackSession isPreCachingOperationActive](self->super._session, "isPreCachingOperationActive") || objc_msgSend(v38, "isFlattenedRepresentation") && -[KNPlaybackSession isPreCachingOperationActive](self->super._session, "isPreCachingOperationActive"))
      {
        goto LABEL_89;
      }

      if ([(KNAnimatedBuild *)self->_animatedBuild isImplicitlyVisibleAtBeginning])
      {
        goto LABEL_73;
      }

      if (v41 == -2)
      {
        if ([(KNBuildRenderer *)self p_isDriftAnimation])
        {
          goto LABEL_89;
        }

        if (v55 || !v56)
        {
          if (v56 || v55)
          {
            goto LABEL_89;
          }

          if (!v57)
          {
            goto LABEL_125;
          }

          if (v59)
          {
            if ([v25 count] != 1)
            {
              goto LABEL_89;
            }

            goto LABEL_131;
          }
        }

        else
        {
          if (!v57)
          {
            goto LABEL_131;
          }

          if (v59 != [v25 count] - 1)
          {
            if ([v25 count] != 1)
            {
              goto LABEL_89;
            }

            goto LABEL_125;
          }
        }

LABEL_132:
        v44 = v39;
        v42 = 0;
        goto LABEL_88;
      }

      if (v41 == -1)
      {
        if ([(KNBuildRenderer *)self p_isDriftAnimation])
        {
          goto LABEL_89;
        }

        if (v55 || !v56)
        {
          if (v56 || v55)
          {
            goto LABEL_89;
          }

          if (v57)
          {
            if ((v33 & 1) == 0)
            {
              v33 = 0;
              if ([v25 count] != 1 || v58)
              {
                goto LABEL_90;
              }
            }

            goto LABEL_132;
          }

LABEL_125:
          if (v58)
          {
            goto LABEL_89;
          }

          goto LABEL_132;
        }

        if (v57)
        {
          if ((v33 & 1) == 0)
          {
            v33 = 0;
            if ([v25 count] != 1 || !v58)
            {
              goto LABEL_90;
            }
          }

          goto LABEL_132;
        }

LABEL_131:
        if (!v58)
        {
          goto LABEL_89;
        }

        goto LABEL_132;
      }

      if ([v38 isIncomingContent])
      {
        goto LABEL_89;
      }

      if (!v56)
      {
        [v38 textureOpacity];
        v49 = v48;
        requiresStagesBuildingInReverse = [(TSDDrawableInfo *)self->_info requiresStagesBuildingInReverse];
        if (v53)
        {
          if (v41 != [visibility maxStageIndex])
          {
            v49 = v49 * 0.3;
          }

          [v39 setHidden:0];
          goto LABEL_139;
        }

        if (v41 == v59 && !v58 || !v55 && v41 > v59 && (requiresStagesBuildingInReverse & 1) != 0 || !((v55 || v41 >= v59) | requiresStagesBuildingInReverse & 1))
        {
          [v39 setHidden:0];
          v51 = v49 * 0.3;
          if (v52 && v41 > v59)
          {
            v49 = v49 * 0.3;
          }

LABEL_139:
          v37 = 1;
        }

        *&v51 = v49;
        [v39 setOpacity:v51];
LABEL_89:
        v33 = v37;
        goto LABEL_90;
      }

      v45 = !v58;
      if (v41 != v59)
      {
        v45 = 1;
      }

      if (v41 < v59)
      {
        v45 = 0;
      }

      if ((v55 | v45))
      {
        goto LABEL_89;
      }

      if ([(KNBuildRenderer *)self p_isDriftAnimation])
      {
        goto LABEL_90;
      }

      [v39 setHidden:0];
      if (v41 < v59 - !v58 && v52)
      {
        LODWORD(v46) = 1050253722;
        [v39 setOpacity:v46];
      }

LABEL_74:
      v33 = 1;
LABEL_90:
      if ([(KNBuildRenderer *)self p_isMovieInfo])
      {
        if ([v38 textureType] == 12)
        {
          [v39 setHidden:1];
        }
      }

      if (v32 <= 0)
      {
        return;
      }
    }

    isIncomingContent = [v38 isIncomingContent];
    if (![(KNAnimatedBuild *)self->_animatedBuild isVisibleAtBeginning])
    {
      goto LABEL_67;
    }

    if (v41 == v59)
    {
      if (isIncomingContent & v58)
      {
LABEL_73:
        [v39 setHidden:0];
        goto LABEL_74;
      }

      if ((isIncomingContent & 1) == 0)
      {
        if (v54)
        {
LABEL_67:
          v44 = v39;
          v42 = 1;
          goto LABEL_88;
        }

        goto LABEL_73;
      }
    }

    if (v41 != -1)
    {
      goto LABEL_67;
    }

    goto LABEL_73;
  }
}

- (void)animate
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277D81150];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer animate]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{724, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  self->_isAnimationForPlayback = 1;
  if (![(KNBuildRenderer *)self addAnimationsAtLayerTime:CACurrentMediaTime()])
  {
    self->_isAnimationForPlayback = 0;
    buildEndCallbackTarget = self->_buildEndCallbackTarget;
    if (self->_buildEndCallbackSelector)
    {
      buildEndCallbackSelector = self->_buildEndCallbackSelector;
    }

    else
    {
      buildEndCallbackSelector = 0;
    }

    [buildEndCallbackTarget performSelector:buildEndCallbackSelector withObject:self afterDelay:0.0];
  }
}

- (void)setGeometryAndActionAttributesOnTextureSet:(id)set isAtEndOfBuild:(BOOL)build isAtEndOfSlide:(BOOL)slide isRenderingToContext:(BOOL)context
{
  buildCopy = build;
  v52 = *MEMORY[0x277D85DE8];
  v11 = [(KNAnimatedBuild *)self->_animatedBuild eventIndex]+ build;
  [set setLayerGeometryAtEventIndex:v11];
  loadPluginIfNeeded = [(KNBuildRenderer *)self loadPluginIfNeeded];
  v13 = loadPluginIfNeeded;
  if (buildCopy && [loadPluginIfNeeded conformsToProtocol:&unk_288546370])
  {
    finalAttributes = [(KNAnimatedBuild *)self->_animatedBuild finalAttributes];
  }

  else
  {
    finalAttributes = [(KNAnimatedBuild *)self->_animatedBuild previousAttributes];
    if (!-[KNAnimatedSlideModel isMetalSlide](-[KNAnimatedSlideView model](self->super._ASV, "model"), "isMetalSlide") && !context && [v13 conformsToProtocol:&unk_288546370] && !-[KNBuildRenderer p_isMovieInfo](self, "p_isMovieInfo") && (objc_msgSend(set, "isImageSource") & 1) == 0 && !self->_finalAttributesTextureSet)
    {
      v15 = [set copy];
      self->_finalAttributesTextureSet = v15;
      [(TSDTextureSet *)v15 setShouldTransformUsingTextureCenter:1];
      v40 = [objc_opt_class() applyActionEffect:-[KNAnimatedBuild finalAttributes](self->_animatedBuild toAttributes:{"finalAttributes"), 0}];
      [(TSDTextureSet *)self->_finalAttributesTextureSet setColorSpace:[(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] colorSpace]];
      finalAttributesTextureSet = self->_finalAttributesTextureSet;
      [(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] viewScale];
      [(TSDTextureSet *)finalAttributesTextureSet applyActionEffect:v40 viewScale:0 isMagicMove:1 shouldBake:0 applyScaleOnly:0 ignoreScale:0 shouldCheckActionKeys:v11 eventIndex:?];
    }
  }

  if (finalAttributes || [(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
  {
    [set adjustAnchorPointRelativeToCenterOfRotationAtEventIndex:v11];
    [(TSDTextureSet *)self->_finalAttributesTextureSet adjustAnchorPointRelativeToCenterOfRotationAtEventIndex:v11];
  }

  if ([set isBaked])
  {
    [set resetToOriginalSourceAtEventIndex:v11];
    if (!finalAttributes && ![(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
    {
      [set resetAnchorPointAtEventIndex:v11];
    }
  }

  v41 = finalAttributes;
  if (![(KNAnimatedBuild *)self->_animatedBuild isActionBuild]|| context)
  {
    if (context)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  if (slide)
  {
LABEL_40:
    if (context)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  if (([set isImageSource] & 1) == 0 && !-[KNBuildRenderer p_isMovieInfo](self, "p_isMovieInfo"))
  {
    activeAnimatedBuilds = [(KNAnimatedSlideView *)self->super._ASV activeAnimatedBuilds];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v18 = activeAnimatedBuilds;
    v19 = [(NSMutableSet *)activeAnimatedBuilds countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (!v19)
    {
      if (context)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    }

    v20 = v19;
    v21 = *v47;
    contextCopy = context;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v46 + 1) + 8 * i);
        v24 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super._ASV model] rendererForAnimatedBuild:v23];
        info = [(KNBuildRenderer *)v24 info];
        if (v24 != self && info == self->_info)
        {
          [v23 isActionBuild];
          context = contextCopy;
          goto LABEL_40;
        }
      }

      v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
      context = contextCopy;
      if (v20)
      {
        continue;
      }

      goto LABEL_40;
    }
  }

  if (context)
  {
    goto LABEL_48;
  }

LABEL_43:
  if (![(KNAnimatedBuild *)self->_animatedBuild isBuildOut])
  {
    isBuildIn = [(KNAnimatedBuild *)self->_animatedBuild isBuildIn];
    if (!v41 || !isBuildIn)
    {
      [(KNAnimatedBuild *)self->_animatedBuild isEmphasisBuild];
    }
  }

LABEL_48:
  [(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] viewScale];
  [set applyActionEffect:v11 viewScale:? isMagicMove:? shouldBake:? applyScaleOnly:? ignoreScale:? shouldCheckActionKeys:? eventIndex:?];
  if (v41)
  {
    self->_isNonCachedTextureValid = 0;
  }

  if (!context)
  {
    isActionBuild = [(KNAnimatedBuild *)self->_animatedBuild isActionBuild];
    if (v41)
    {
      if (!isActionBuild)
      {
        [set resetAnchorPointAtEventIndex:v11];
      }
    }
  }

  if (![(KNPlaybackSession *)self->super._session isMetalEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([set isMagicMove])
      {
        [set textureAngle];
        if (v29 != 0.0)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          allTextures = [set allTextures];
          v31 = [allTextures countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v43;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v43 != v33)
                {
                  objc_enumerationMutation(allTextures);
                }

                v35 = *(*(&v42 + 1) + 8 * j);
                if ([v35 textureType] != 11 && objc_msgSend(v35, "textureType") != 3)
                {
                  v36 = [v35 viewLayerAtEventIndex:v11];
                  v37 = MEMORY[0x277CCABB0];
                  [set textureAngle];
                  [v36 setValue:objc_msgSend(v37 forKeyPath:{"numberWithDouble:", -v38), @"transform.rotation.z"}];
                }
              }

              v32 = [allTextures countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v32);
          }
        }
      }
    }
  }
}

- (id)initializeTextureSetForEndOfBuild:(BOOL)build endOfSlide:(BOOL)slide description:(id)description isRenderingToContext:(BOOL)context
{
  contextCopy = context;
  slideCopy = slide;
  buildCopy = build;
  v11 = [(KNBuildRenderer *)self rep];
  objc_sync_enter(v11);
  v12 = [(KNBuildRenderer *)self p_initializeTextureSetForEndOfBuild:buildCopy endOfSlide:slideCopy description:description isRenderingToContext:contextCopy];
  objc_sync_exit(v11);
  return v12;
}

- (id)p_initializeTextureSetForEndOfBuild:(BOOL)build endOfSlide:(BOOL)slide description:(id)description isRenderingToContext:(BOOL)context
{
  contextCopy = context;
  slideCopy = slide;
  buildCopy = build;
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer p_initializeTextureSetForEndOfBuild:endOfSlide:description:isRenderingToContext:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{860, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  result = [(KNBuildRenderer *)self rep];
  if (result)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v14 = objc_autoreleasePoolPush();
    v15 = [(KNBuildRenderer *)self textureSetForStage:[(KNBuildRenderer *)self textureStageIndex] description:description isAtEndOfBuild:buildCopy shouldForceRebuild:0 shouldRender:0];
    if (v15)
    {
      if (![(KNPlaybackSession *)self->super._session isPreCachingOperationActive]|| contextCopy)
      {
        [(KNBuildRenderer *)self setGeometryAndActionAttributesOnTextureSet:v15 isAtEndOfBuild:buildCopy isAtEndOfSlide:slideCopy isRenderingToContext:contextCopy];
        textureDeliveryStyle = [(KNBuildRenderer *)self textureDeliveryStyle];
        if (buildCopy)
        {
          if (textureDeliveryStyle)
          {
            if (![(KNBuildRenderer *)self p_isDriftAnimation])
            {
              if ([(TSDDrawableInfo *)self->_info suppliesFinalTextures])
              {
                if (![(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
                {
                  v18 = [(KNBuildRenderer *)self setupFinalTextureGivenCurrentTextureSet:v15 isRenderingToContext:contextCopy];
                  if (v18 != v15)
                  {
                    v19 = v18;
                    if (v18)
                    {

                      [(KNBuildRenderer *)self setEndOfBuildTextureSet:v19];
                      v15 = v19;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    objc_autoreleasePoolPop(v14);
    [MEMORY[0x277CD9FF0] commit];

    return v15;
  }

  return result;
}

- (id)animationWillBegin
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer animationWillBegin]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{903, 0, "invalid nil value for '%{public}s'", "_animatedBuild"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (![(KNPlaybackSession *)self->super._session isMetalEnabled]&& [(KNAnimatedBuild *)self->_animatedBuild isActionBuild]&& [(KNBuildRenderer *)self p_isMovieInfo])
  {
    self->_shouldUseMagicMoveTextures = 1;
  }

  v5 = [(KNBuildRenderer *)self initializeTextureSetForEndOfBuild:0 endOfSlide:0 description:[(KNBuildRenderer *)self textureDescription] isRenderingToContext:[(KNPlaybackSession *)self->super._session shouldNotBakeActionTextures]];
  if (v5)
  {
    v6 = [(KNBuildRenderer *)self rep];
    objc_sync_enter(v6);
    [v5 renderLayerContentsIfNeeded];
    objc_sync_exit(v6);
    v7 = [objc_msgSend(v5 "layer")];
    if ([(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [(NSArray *)[(CALayer *)self->_parentLayer sublayers] copy];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if (([objc_msgSend(v13 "name")] & 1) == 0)
            {
              [v13 removeFromSuperlayer];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      -[CALayer addSublayer:](self->_parentLayer, "addSublayer:", [v5 layer]);
    }

    [(KNBuildRenderer *)self setLayerVisibility:v5 isAtEndOfBuild:0];
  }

  self->_areAnimationsReadyToStart = 1;
  return v5;
}

- (void)resetHighlightsBeforeAnimationOnTextureSet:(id)set
{
  if ([(KNAnimatedBuild *)self->_animatedBuild isBuildOut])
  {
    if ([(KNBuildRenderer *)self textureDeliveryStyle]== 3)
    {
      visibleTextures = [set visibleTextures];
      if ([visibleTextures count])
      {
        v6 = 0;
        v7 = *MEMORY[0x277D805D0];
        do
        {
          v8 = [visibleTextures objectAtIndex:v6];
          layer = [v8 layer];
          v10 = [set stageIndexForTexture:v8];
          [v8 textureOpacity];
          v12 = v11;
          if ([layer valueForKey:@"oldOpacity"])
          {
            [objc_msgSend(v8 "parent")];
            v12 = v13 * v12;
          }

          if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            textureStageIndex = [(KNBuildRenderer *)self textureStageIndex];
            v15 = v12 * 0.3;
            *&v15 = v15;
            if (v10 == textureStageIndex)
            {
              *&v15 = v12;
            }

            [layer setOpacity:v15];
          }

          if ([layer valueForKey:@"oldOpacity"])
          {
            v16 = MEMORY[0x277CCABB0];
            [layer opacity];
            v18 = v17;
            [set textureOpacity];
            [layer setValue:objc_msgSend(v16 forKey:{"numberWithDouble:", v18 / v19), @"oldOpacity"}];
          }

          [objc_msgSend(v8 "layer")];
          ++v6;
        }

        while (v6 < [visibleTextures count]);
      }
    }
  }
}

- (BOOL)addAnimationsAtLayerTime:(double)time
{
  v82 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer addAnimationsAtLayerTime:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{982, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  self->_interrupted = 0;
  v7 = 0x277CD9000uLL;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v8 = objc_autoreleasePoolPush();
  v9 = CACurrentMediaTime();
  if (self->_areAnimationsReadyToStart)
  {
    textureSet = self->_textureSet;
  }

  else
  {
    textureSet = [(KNBuildRenderer *)self animationWillBegin];
  }

  loadPluginIfNeeded = [(KNBuildRenderer *)self loadPluginIfNeeded];
  objc_opt_class();
  if (objc_opt_respondsToSelector() & 1) != 0 && ([objc_opt_class() requiresSingleTexturePerStage])
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = [(KNAnimatedBuild *)self->_animatedBuild isActionBuild]^ 1;
  }

  v13 = [(TSDTextureSet *)textureSet visibleTexturesForStage:[(KNBuildRenderer *)self textureStageIndex] isBuildIn:[(KNAnimatedBuild *)self->_animatedBuild isBuildIn] isContentBuild:[(KNAnimatedBuild *)self->_animatedBuild isContentBuild] shouldFlatten:v12 flattenKey:self shouldIncludeCaptions:v11];
  if ([v13 count])
  {
    goto LABEL_12;
  }

  if ([(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
  {
    if ([(TSDTextureSet *)textureSet alternateLayer])
    {
LABEL_12:
      v14 = 1;
      goto LABEL_17;
    }

    v14 = [-[TSDTextureSet allTextures](textureSet "allTextures")] != 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_17:
  if ([(KNAnimatedBuild *)self->_animatedBuild isContentBuild])
  {
    v14 &= [(KNAnimatedBuild *)self->_animatedBuild isVisibleAtBeginning];
  }

  if (textureSet && v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(KNAnimatedBuild *)self->_animatedBuild deliveryOption]== 2 || [(KNAnimatedBuild *)self->_animatedBuild deliveryOption]== 3;
    }

    else
    {
      v15 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && !v15 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_msgSend_duration(self->_animatedBuild), v20 < 0.001))
    {
      isPreview = [(KNPlaybackSession *)self->super._session isPreview];
      v22 = 0.001;
      if (isPreview)
      {
        v22 = 0.5;
      }

      [(KNAnimatedBuild *)self->_animatedBuild setDuration:v22];
    }

    [(KNBuildRenderer *)self setupPluginContext];
    [(KNBuildRenderer *)self resetHighlightsBeforeAnimationOnTextureSet:textureSet];
    objc_opt_class();
    [(KNAnimationRenderer *)self pluginContext];
    [TSUDynamicCast() setTextures:v13];
    if (objc_opt_respondsToSelector())
    {
      v23 = objc_autoreleasePoolPush();
      [loadPluginIfNeeded animationWillBeginWithContext:{-[KNAnimationRenderer pluginContext](self, "pluginContext")}];
      self->_animationWillBeginPerformed = 1;
      objc_autoreleasePoolPop(v23);
    }

    v66 = loadPluginIfNeeded;
    if ([(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
    {
      if ([(KNBuildRenderer *)self textureDeliveryStyle])
      {
        [(TSDTextureSet *)textureSet setShouldIncludeFinalTexturesInVisibleSet:1];
        [(TSDTextureSet *)self->_finalAttributesTextureSet setShouldIncludeFinalTexturesInVisibleSet:1];
      }
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v24 = [v13 countByEnumeratingWithState:&v75 objects:v81 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v76;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v76 != v26)
            {
              objc_enumerationMutation(v13);
            }

            v28 = *(*(&v75 + 1) + 8 * i);
            layer = [v28 layer];
            if (layer)
            {
              v30 = layer;
              superlayer = [layer superlayer];
              if (superlayer == [(TSDTextureSet *)textureSet layer])
              {
                [(CALayer *)[(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] showLayer] bounds];
                [(TSDTextureSet *)textureSet addPerspectiveLayerToTexture:v28 withShowSize:v34, v35];
              }

              else if (([objc_msgSend(objc_msgSend(v30 "superlayer")] & 1) == 0)
              {
                v32 = MEMORY[0x277D81150];
                v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer addAnimationsAtLayerTime:]"];
                [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1038, 0, "Why isn't the texture's layer's superlayer not the texture set's layer?"}];
                [MEMORY[0x277D81150] logBacktraceThrottled];
              }
            }
          }

          v25 = [v13 countByEnumeratingWithState:&v75 objects:v81 count:16];
        }

        while (v25);
      }
    }

    if ([v66 conformsToProtocol:&unk_288546370])
    {
      if ([objc_msgSend(objc_opt_class() "animationName")])
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        allTextures = [(TSDTextureSet *)textureSet allTextures];
        v37 = [allTextures countByEnumeratingWithState:&v71 objects:v80 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v72;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v72 != v39)
              {
                objc_enumerationMutation(allTextures);
              }

              layer2 = [*(*(&v71 + 1) + 8 * j) layer];
              superlayer2 = [layer2 superlayer];
              if (superlayer2 == [(TSDTextureSet *)textureSet layer])
              {
                v43 = layer2;
                layer3 = [MEMORY[0x277CD9ED0] layer];
                [layer3 setName:@"Perspective layer"];
                [-[TSDTextureSet layer](textureSet "layer")];
                v46 = v45;
                [-[TSDTextureSet layer](textureSet "layer")];
                [layer3 setFrame:{0.0, 0.0, v46}];
                [-[TSDTextureSet layer](textureSet "layer")];
                [layer3 addSublayer:v43];
                [(CALayer *)[(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] showLayer] bounds];
                [layer3 tsd_addPerspectiveSublayerProjectionUsingScreenSize:{v47, v48}];
              }
            }

            v38 = [allTextures countByEnumeratingWithState:&v71 objects:v80 count:16];
          }

          while (v38);
        }

        v7 = 0x277CD9000;
        v8 = v64;
        if (objc_opt_respondsToSelector())
        {
          weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
          self->_animatedLayers = weakToStrongObjectsMapTable;
          objc_opt_class();
          [(KNAnimationRenderer *)self pluginContext];
          [v66 addAnimationsTo:weakToStrongObjectsMapTable forTextureSet:textureSet context:TSUCheckedDynamicCast()];
        }
      }

      else
      {
        weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        self->_animatedLayers = weakToStrongObjectsMapTable2;
        v7 = 0x277CD9000uLL;
        v8 = v64;
        if ([(KNBuildRenderer *)self p_isMovieInfo])
        {
          finalAttributesTextureSet = 0;
        }

        else
        {
          finalAttributesTextureSet = self->_finalAttributesTextureSet;
        }

        objc_msgSend_duration(self->_animatedBuild);
        [v66 addAnimationsTo:weakToStrongObjectsMapTable2 forTextureSet:textureSet finalTextureSet:finalAttributesTextureSet duration:-[KNAnimationAttributes attributes](-[KNAnimatedBuild attributes](self->_animatedBuild attributes:"attributes") previousAttributes:{"attributes"), -[KNAnimatedBuild previousAttributes](self->_animatedBuild, "previousAttributes"), v53}];
      }
    }

    else
    {
      v7 = 0x277CD9000;
      v8 = v64;
      if ([v66 conformsToProtocol:&unk_288512818] || objc_msgSend(v66, "conformsToProtocol:", &unk_28852E720))
      {
        weakToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        self->_animatedLayers = weakToStrongObjectsMapTable3;
        [v66 addAnimationsTo:weakToStrongObjectsMapTable3 context:{-[KNAnimationRenderer pluginContext](self, "pluginContext")}];
      }
    }

    if (time == 0.0)
    {
      time = 1.0e-100;
    }

    if (self->_isAnimationForPlayback)
    {
      time = time + CACurrentMediaTime() - v9;
    }

    animatedLayers = self->_animatedLayers;
    if (animatedLayers && [(NSMapTable *)animatedLayers count])
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      keyEnumerator = [(NSMapTable *)self->_animatedLayers keyEnumerator];
      v56 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v67 objects:v79 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v68;
        v59 = *MEMORY[0x277CDA230];
        do
        {
          for (k = 0; k != v57; ++k)
          {
            if (*v68 != v58)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v61 = *(*(&v67 + 1) + 8 * k);
            v62 = [(NSMapTable *)self->_animatedLayers objectForKey:v61];
            [v61 convertTime:0 fromLayer:time];
            [v62 setBeginTime:?];
            [v62 setDelegate:self];
            [v62 setFillMode:v59];
            [v62 setRemovedOnCompletion:0];
            [v61 setBeginTime:0.0];
            [v61 addAnimation:v62 forKey:{-[KNBuildRenderer p_keyForAnimation](self, "p_keyForAnimation")}];
            if ([(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
            {
              [v61 setValue:@"YES" forKey:{objc_msgSend(objc_opt_class(), "animationName")}];
            }

            ++self->_numberOfAnimationsStarted;
          }

          v57 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v67 objects:v79 count:16];
        }

        while (v57);
      }

      [(KNBuildRenderer *)self fadeOutPreviousStageOn:textureSet atLayerTime:time];
      v7 = 0x277CD9000;
      v8 = v64;
    }

    else
    {
      [(KNBuildRenderer *)self fadeOutPreviousStageOn:textureSet atLayerTime:time];
      [(KNBuildRenderer *)self p_removeAnimations];
    }
  }

  else
  {
    layer4 = [MEMORY[0x277CD9ED0] layer];
    [layer4 setFrame:{0.0, 0.0, 100.0, 100.0}];
    [layer4 setBackgroundColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D81180], "clearColor"), "CGColor")}];
    [layer4 setName:@"dummyLayer"];
    [(CALayer *)self->_parentLayer addSublayer:layer4];
    v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"hidden"];
    objc_msgSend_duration(self->_animatedBuild);
    [v17 setDuration:?];
    [v17 setDelegate:self];
    v18 = MEMORY[0x277CBEC28];
    [v17 setToValue:MEMORY[0x277CBEC28]];
    [v17 setFromValue:v18];
    [v17 setRemovedOnCompletion:0];
    [v17 setFillMode:*MEMORY[0x277CDA230]];
    [layer4 convertTime:0 fromLayer:time];
    [v17 setBeginTime:?];
    [layer4 addAnimation:v17 forKey:{-[KNBuildRenderer p_keyForAnimation](self, "p_keyForAnimation")}];
    ++self->_numberOfAnimationsStarted;
    weakToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    [(NSMapTable *)weakToStrongObjectsMapTable4 setObject:v17 forKey:layer4];
    self->_animatedLayers = weakToStrongObjectsMapTable4;
    [(KNBuildRenderer *)self fadeOutPreviousStageOn:textureSet atLayerTime:time];
  }

  objc_autoreleasePoolPop(v8);
  [*(v7 + 4080) commit];
  return 1;
}

- (void)removeAnimationsAndFinish:(BOOL)finish
{
  finishCopy = finish;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v5 = objc_autoreleasePoolPush();
  if (self->_numberOfAnimationsStarted < 1 || self->_interrupted)
  {
    [(TSDTextureSet *)self->_finalAttributesTextureSet teardown];

    self->_finalAttributesTextureSet = 0;
    [(TSDTextureSet *)self->_textureSet resetAnchorPointAtEventIndex:0x7FFFFFFFLL];
  }

  else if (finishCopy)
  {
    self->_numberOfAnimationsStarted = 0;
    [(KNBuildRenderer *)self p_removeAnimations];
  }

  else
  {
    self->_interrupted = 1;
    [(KNBuildRenderer *)self p_resetAnimations];
  }

  objc_autoreleasePoolPop(v5);
  v6 = MEMORY[0x277CD9FF0];

  [v6 commit];
}

- (void)forceRemoveAnimations
{
  if (self->super._plugin)
  {
    [(KNBuildRenderer *)self p_removeAnimations];
  }
}

- (void)registerForBuildEndCallback:(SEL)callback target:(id)target
{
  self->_buildEndCallbackTarget = target;
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_buildEndCallbackSelector = callbackCopy;
}

- (unint64_t)textureDeliveryStyle
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277D81150];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer textureDeliveryStyle]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1201, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  deliveryStyle = [(KNAnimatedBuild *)self->_animatedBuild deliveryStyle];
  if (![(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
  {
    return deliveryStyle;
  }

  v6 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super._ASV model] previousAnimatedBuildForInfo:self->_info priorToBuild:self->_animatedBuild];
  if (!v6)
  {
    return deliveryStyle;
  }

  v7 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super._ASV model] rendererForAnimatedBuild:v6];
  if ([(KNAnimatedBuild *)self->_animatedBuild isEmphasisBuild])
  {
    if ([(KNAnimatedBuild *)self->_animatedBuild deliveryStyle]== 3 && [(KNAnimatedBuild *)self->_animatedBuild isBuildIn]&& [(KNBuildRenderer *)self p_isTextDrawable])
    {
      return deliveryStyle;
    }
  }

  return [v7 textureDeliveryStyle];
}

- (int64_t)textureStageIndex
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277D81150];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer textureStageIndex]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1219, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if ([(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
  {
    v5 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super._ASV model] previousAnimatedBuildForInfo:self->_info priorToBuild:self->_animatedBuild];
    if (v5)
    {
      v6 = v5;
      v7 = [-[KNAnimatedSlideModel rendererForAnimatedBuild:](-[KNAnimatedSlideView model](self->super._ASV "model")];
      if ([v6 isBuildIn])
      {
        if ([v6 deliveryStyle])
        {
          v7 += [v6 isActionBuild] ^ 1;
        }
      }

      return v7;
    }
  }

  else if (![(KNAnimatedBuild *)self->_animatedBuild isContentBuild])
  {
    v8 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super._ASV model] previousContentBuildForInfo:self->_info priorToBuild:self->_animatedBuild];
    if (v8)
    {
      return [v8 stageIndex] + 1;
    }
  }

  animatedBuild = self->_animatedBuild;

  return [(KNAnimatedBuild *)animatedBuild stageIndex];
}

- (void)stopAnimations
{
  v13 = *MEMORY[0x277D85DE8];
  [(KNBuildRenderer *)self removeAnimationsAndFinish:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  animatedBuildsToStartAtEnd = self->_animatedBuildsToStartAtEnd;
  v4 = [(NSMutableArray *)animatedBuildsToStartAtEnd countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(animatedBuildsToStartAtEnd);
        }

        [-[KNAnimatedSlideModel rendererForAnimatedBuild:](-[KNAnimatedSlideView model](self->super._ASV "model")];
      }

      v5 = [(NSMutableArray *)animatedBuildsToStartAtEnd countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)pauseAnimationsAtTime:(double)time
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_numberOfAnimationsStarted >= 1 && !self->super._areAnimationsPaused)
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

          [*(*(&v10 + 1) + 8 * v9) kn_pauseAtTime:time];
          self->super._areAnimationsPaused = 1;
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
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

- (void)addBuildToStartAtEnd:(id)end
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer addBuildToStartAtEnd:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1284, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  animatedBuildsToStartAtEnd = self->_animatedBuildsToStartAtEnd;
  if (!animatedBuildsToStartAtEnd)
  {
    animatedBuildsToStartAtEnd = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    self->_animatedBuildsToStartAtEnd = animatedBuildsToStartAtEnd;
  }

  [(NSMutableArray *)animatedBuildsToStartAtEnd addObject:end];
}

- (void)removeBuildToStartAtEnd:(id)end
{
  if (!self->_animatedBuild)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer removeBuildToStartAtEnd:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1292, 0, "encountered an unexpected nil animated build"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  animatedBuildsToStartAtEnd = self->_animatedBuildsToStartAtEnd;

  [(NSMutableArray *)animatedBuildsToStartAtEnd removeObject:end];
}

- (void)fadeOutPreviousStageOn:(id)on atLayerTime:(double)time
{
  v35 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer fadeOutPreviousStageOn:atLayerTime:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1297, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if ([(KNBuildRenderer *)self p_isTextDrawable]&& ![(KNAnimatedBuild *)self->_animatedBuild isActionBuild]&& [(KNBuildRenderer *)self textureDeliveryStyle]== 3)
  {
    if ([(KNAnimatedBuild *)self->_animatedBuild isBuildIn])
    {
      v9 = -1;
    }

    else
    {
      if (![(KNAnimatedBuild *)self->_animatedBuild isBuildOut])
      {
        v10 = 0;
        goto LABEL_13;
      }

      v9 = 1;
    }

    v10 = [(KNBuildRenderer *)self textureStageIndex]+ v9;
LABEL_13:
    v11 = [on visibleTexturesForStage:v10 isBuildIn:-[KNAnimatedBuild isBuildIn](self->_animatedBuild isContentBuild:"isBuildIn") shouldFlatten:-[KNAnimatedBuild isContentBuild](self->_animatedBuild flattenKey:{"isContentBuild"), 0, 0}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v11;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = *v31;
    v28 = *MEMORY[0x277CDA7B8];
    v27 = *MEMORY[0x277CDA230];
    v26 = *MEMORY[0x277D80198];
    v25 = *MEMORY[0x277D805D0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if ([on stageIndexForTexture:v16] <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
          [objc_msgSend(v16 "layer")];
          [v17 setBeginTime:?];
          [v16 textureOpacity];
          v19 = v18;
          if ([objc_msgSend(v16 "layer")])
          {
            [objc_msgSend(v16 "parent")];
            v19 = v19 * v20;
          }

          if ([(KNAnimatedBuild *)self->_animatedBuild isBuildIn])
          {
            *&v21 = v19;
            [v17 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v21)}];
            v19 = v19 * 0.3;
            goto LABEL_25;
          }

          if ([(KNAnimatedBuild *)self->_animatedBuild isBuildOut])
          {
            v23 = v19 * 0.3;
            *&v23 = v19 * 0.3;
            [v17 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v23)}];
LABEL_25:
            *&v22 = v19;
            [v17 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v22)}];
          }

          [v17 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v28)}];
          objc_msgSend_duration(self->_animatedBuild);
          [v17 setDuration:?];
          [v17 setRemovedOnCompletion:0];
          [v17 setFillMode:v27];
          [objc_msgSend(v16 "layer")];
          layer = [v16 layer];
          [layer setValue:MEMORY[0x277CBEC38] forKey:v25];
          continue;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }
}

- (BOOL)p_isDriftAnimation
{
  v2 = [-[KNBuildRenderer loadPluginIfNeeded](self "loadPluginIfNeeded")];
  if (v2)
  {
    v3 = objc_opt_class();

    LOBYTE(v2) = MEMORY[0x2821F9670](v3, sel_isDriftAnimation);
  }

  return v2;
}

- (id)setupFinalTextureGivenCurrentTextureSet:(id)set isRenderingToContext:(BOOL)context
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer setupFinalTextureGivenCurrentTextureSet:isRenderingToContext:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1359, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if (![(KNBuildRenderer *)self rep])
  {
    return 0;
  }

  eventIndex = [(KNAnimatedBuild *)self->_animatedBuild eventIndex];
  if ([(KNBuildRenderer *)self p_isMovieInfo]|| [(KNBuildRenderer *)self p_isDriftAnimation])
  {
    return 0;
  }

  if ([(KNAnimatedBuild *)self->_animatedBuild isBuildIn]|| (v20 = [(KNAnimatedBuild *)self->_animatedBuild isActionBuild], !set) || v20)
  {
    v12 = [(TSDTextureDescription *)[(KNBuildRenderer *)self textureDescription] copy];
    textureStageIndex = [(KNBuildRenderer *)self textureStageIndex];
    v14 = textureStageIndex + [(KNAnimatedBuild *)self->_animatedBuild isBuildIn];
    v10 = [(KNBuildRenderer *)self textureSetForStage:v14 description:v12 isAtEndOfBuild:0 shouldForceRebuild:0 shouldRender:0];
    v15 = [v10 finalTexturesForStage:v14 - 1];
    v16 = v15;
    if (v15 && [v15 count])
    {
      v17 = eventIndex + 1;
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] activateBackground:{objc_msgSend(MEMORY[0x277CCACC8], "isMainThread") ^ 1}];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v18 = objc_autoreleasePoolPush();
      [v10 renderLayerContentsIfNeeded];
      [v10 setLayerGeometryAtEventIndex:v17];
      previousAttributes = [(KNAnimatedBuild *)self->_animatedBuild previousAttributes];
      [(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] viewScale];
      [v10 applyActionEffect:previousAttributes viewScale:0 isMagicMove:0 shouldBake:0 applyScaleOnly:0 ignoreScale:0 shouldCheckActionKeys:v17 eventIndex:?];
      if (!context)
      {
        [(CALayer *)self->_parentLayer setSublayers:0];
        -[CALayer addSublayer:](self->_parentLayer, "addSublayer:", [v10 layer]);
      }

      objc_autoreleasePoolPop(v18);
      [MEMORY[0x277CD9FF0] commit];
    }

    else
    {
      if (v10 != set)
      {
        [v10 teardown];
      }

      v10 = 0;
    }
  }

  else
  {
    v21 = [set finalTexturesForStage:{-[KNBuildRenderer textureStageIndex](self, "textureStageIndex") - 1}];
    if (!v21)
    {
      return 0;
    }

    if ([v21 count])
    {
      return set;
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

- (id)p_keyForAnimation
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277D81150];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer p_keyForAnimation]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1415, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if ([(KNAnimatedBuild *)self->_animatedBuild isContentBuild])
  {
    v5 = MEMORY[0x277D80180];
  }

  else
  {
    isBuildIn = [(KNAnimatedBuild *)self->_animatedBuild isBuildIn];
    v5 = MEMORY[0x277D80188];
    if (!isBuildIn)
    {
      v5 = MEMORY[0x277D80190];
    }
  }

  v7 = *v5;
  if (![-[KNBuildRenderer loadPluginIfNeeded](self "loadPluginIfNeeded")])
  {
    return v7;
  }

  v8 = objc_opt_class();

  return [v8 animationName];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (self->_isAnimationForPlayback)
  {
    v5 = self->_numberOfAnimationsStarted - 1;
    self->_numberOfAnimationsStarted = v5;
    if (!v5 && !self->_interrupted)
    {
      [(KNBuildRenderer *)self p_removeAnimations:stop];
      self->_isAnimationForPlayback = 0;
    }
  }
}

- (void)resetPreviousStageToUnhighlightOnTextureSet:(id)set
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer resetPreviousStageToUnhighlightOnTextureSet:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1452, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if ([(KNBuildRenderer *)self textureDeliveryStyle]== 3)
  {
    if ([(KNAnimatedBuild *)self->_animatedBuild isBuildIn])
    {
      v7 = -1;
    }

    else
    {
      if (![(KNAnimatedBuild *)self->_animatedBuild isBuildOut])
      {
        v8 = 0;
        goto LABEL_11;
      }

      v7 = 1;
    }

    v8 = [(KNBuildRenderer *)self textureStageIndex]+ v7;
LABEL_11:
    v9 = [set visibleTexturesForStage:v8 isBuildIn:-[KNAnimatedBuild isBuildIn](self->_animatedBuild isContentBuild:"isBuildIn") shouldFlatten:-[KNAnimatedBuild isContentBuild](self->_animatedBuild flattenKey:{"isContentBuild"), 0, 0}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = *v20;
    v13 = *MEMORY[0x277D80198];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([set stageIndexForTexture:v15] <= 0xFFFFFFFFFFFFFFFDLL)
        {
          layer = [v15 layer];
          isBuildIn = [(KNAnimatedBuild *)self->_animatedBuild isBuildIn];
          LODWORD(v18) = 1050253722;
          if (isBuildIn)
          {
            goto LABEL_20;
          }

          if ([(KNAnimatedBuild *)self->_animatedBuild isBuildOut])
          {
            [v15 textureOpacity];
            *&v18 = v18;
LABEL_20:
            [layer setOpacity:v18];
          }

          [layer removeAnimationForKey:v13];
          continue;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)p_removeAnimations
{
  v76 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277D81150];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer p_removeAnimations]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1484, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  if (!self->super._plugin)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer p_removeAnimations]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1485, 0, "invalid nil value for '%{public}s'", "_plugin"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  context = objc_autoreleasePoolPush();
  if (self->_animationWillBeginPerformed && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [self->super._plugin animationDidEndWithContext:{-[KNAnimationRenderer pluginContext](self, "pluginContext")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [self->super._plugin restoreLayerHierarchy];
  }

  self->_animationWillBeginPerformed = 0;
  activeAnimatedBuilds = [(KNAnimatedSlideView *)self->super._ASV activeAnimatedBuilds];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v8 = [(NSMutableSet *)activeAnimatedBuilds countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v69;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v69 != v11)
        {
          objc_enumerationMutation(activeAnimatedBuilds);
        }

        v13 = [(KNAnimatedSlideModel *)[(KNAnimatedSlideView *)self->super._ASV model] rendererForAnimatedBuild:*(*(&v68 + 1) + 8 * i)];
        info = [(KNBuildRenderer *)v13 info];
        if (v13 != self && info == self->_info)
        {
          ++v10;
        }
      }

      v9 = [(NSMutableSet *)activeAnimatedBuilds countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v9);
    v16 = v10 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = [(KNBuildRenderer *)self rep];
  if (v17)
  {
    v18 = v17;
    v54 = v16;
    textureSet = self->_textureSet;
    if ([(KNAnimatedBuild *)self->_animatedBuild isActionBuild])
    {
      p_keyForAnimation = [(KNBuildRenderer *)self p_keyForAnimation];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v21 = 0x280A39000uLL;
      keyEnumerator = [(NSMapTable *)self->_animatedLayers keyEnumerator];
      v23 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v65;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v65 != v25)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v27 = *(*(&v64 + 1) + 8 * j);
            [v27 removeAnimationForKey:p_keyForAnimation];
            [v27 setValue:0 forKey:{objc_msgSend(objc_opt_class(), "animationName")}];
          }

          v24 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v64 objects:v74 count:16];
        }

        while (v24);
      }

      [-[TSDTextureSet layer](textureSet "layer")];
      self->_isNonCachedTextureValid = 0;
      v16 = v54;
      if (v54 || (v28 = -[objc_class animationName](self->super._pluginClass, "animationName"), ![v28 isEqualToString:*MEMORY[0x277D800E0]]))
      {
        v29 = 0;
      }

      else
      {
        v29 = [(KNPlaybackSession *)self->super._session shouldNotBakeActionTextures]^ 1;
      }

      finalAttributes = [(KNAnimatedBuild *)self->_animatedBuild finalAttributes];
      [(KNAnimationContext *)[(KNPlaybackSession *)self->super._session animationContext] viewScale];
      [(TSDTextureSet *)textureSet applyActionEffect:finalAttributes viewScale:0 isMagicMove:v54 shouldBake:v29 applyScaleOnly:0 ignoreScale:1 shouldCheckActionKeys:v43 eventIndex:[(KNAnimatedBuild *)self->_animatedBuild eventIndex]+ 1];
    }

    else
    {
      v53 = v18;
      v30 = [(TSDTextureSet *)textureSet visibleTexturesForStage:[(KNBuildRenderer *)self textureStageIndex] isBuildIn:[(KNAnimatedBuild *)self->_animatedBuild isBuildIn] isContentBuild:[(KNAnimatedBuild *)self->_animatedBuild isContentBuild] shouldFlatten:0 flattenKey:0 shouldIncludeCaptions:1];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v31 = [v30 countByEnumeratingWithState:&v60 objects:v73 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v61;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v61 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v60 + 1) + 8 * k);
            layer = [v35 layer];
            superlayer = [layer superlayer];
            if (superlayer != [(TSDTextureSet *)textureSet layer])
            {
              v38 = layer;
              superlayer2 = [v38 superlayer];
              [v38 removeFromSuperlayer];
              [-[TSDTextureSet layer](textureSet "layer")];
            }

            [layer removeAnimationForKey:{-[KNBuildRenderer p_keyForAnimation](self, "p_keyForAnimation")}];
            if ([(KNAnimatedBuild *)self->_animatedBuild isBuildOut]&& ![(KNAnimatedBuild *)self->_animatedBuild isImplicitlyVisibleAtBeginning])
            {
              isDriftBuild = 1;
            }

            else if ([(KNAnimatedBuild *)self->_animatedBuild isBuildIn])
            {
              isDriftBuild = [(KNAnimatedBuild *)self->_animatedBuild isDriftBuild];
            }

            else
            {
              isDriftBuild = 0;
            }

            [objc_msgSend(v35 "layer")];
          }

          v32 = [v30 countByEnumeratingWithState:&v60 objects:v73 count:16];
        }

        while (v32);
      }

      [(KNBuildRenderer *)self resetPreviousStageToUnhighlightOnTextureSet:textureSet];
      v16 = v54;
      if ([(KNAnimatedBuild *)self->_animatedBuild isContentBuild])
      {
        [(KNBuildRenderer *)self setLayerVisibility:textureSet isAtEndOfBuild:1];
      }

      v21 = 0x280A39000;
      if ([(TSDInfo *)[(TSDRep *)v53 info] suppliesFinalTextures]&& [(KNBuildRenderer *)self textureDeliveryStyle])
      {
        v41 = [(KNBuildRenderer *)self setupFinalTextureGivenCurrentTextureSet:textureSet isRenderingToContext:0];
        [(KNBuildRenderer *)self setLayerVisibility:v41 isAtEndOfBuild:1];
        [(KNBuildRenderer *)self setEndOfBuildTextureSet:v41];
      }
    }

    [(TSDTextureSet *)self->_finalAttributesTextureSet teardown];

    self->_finalAttributesTextureSet = 0;
    v44 = *(v21 + 1628);

    *(&self->super.super.isa + v44) = 0;
    self->_areAnimationsReadyToStart = 0;
  }

  if (v16)
  {
    v45 = [(NSArray *)[(CALayer *)self->_parentLayer sublayers] copy];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v46 = [v45 countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v57;
      do
      {
        for (m = 0; m != v47; ++m)
        {
          if (*v57 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v56 + 1) + 8 * m);
          if ([objc_msgSend(v50 "name")])
          {
            [v50 removeAllAnimations];
            [v50 removeFromSuperlayer];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v56 objects:v72 count:16];
      }

      while (v47);
    }
  }

  buildEndCallbackTarget = self->_buildEndCallbackTarget;
  if (buildEndCallbackTarget)
  {
    if (self->_buildEndCallbackSelector)
    {
      buildEndCallbackSelector = self->_buildEndCallbackSelector;
    }

    else
    {
      buildEndCallbackSelector = 0;
    }

    [buildEndCallbackTarget performSelector:buildEndCallbackSelector withObject:self];
  }

  objc_autoreleasePoolPop(context);
  [MEMORY[0x277CD9FF0] commit];
}

- (void)p_resetAnimations
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277D81150];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildRenderer p_resetAnimations]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m") description:{1596, 0, "encountered an unexpected nil animated build"}];
      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  self->_isAnimationForPlayback = 0;
  self->_areAnimationsReadyToStart = 0;
  self->_numberOfAnimationsStarted = 0;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v5 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMapTable *)self->_animatedLayers keyEnumerator];
  v7 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        [*(*(&v12 + 1) + 8 * v10++) removeAnimationForKey:{-[KNBuildRenderer p_keyForAnimation](self, "p_keyForAnimation")}];
      }

      while (v8 != v10);
      v8 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  loadPluginIfNeeded = [(KNBuildRenderer *)self loadPluginIfNeeded];
  if (self->_animationWillBeginPerformed && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [loadPluginIfNeeded animationDidEndWithContext:{-[KNAnimationRenderer pluginContext](self, "pluginContext")}];
    self->_animationWillBeginPerformed = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [loadPluginIfNeeded restoreLayerHierarchy];
  }

  [(TSDTextureSet *)self->_textureSet removeAllPerspectiveLayers];

  self->_animatedLayers = 0;
  self->_areAnimationsReadyToStart = 0;
  objc_autoreleasePoolPop(v5);
  [MEMORY[0x277CD9FF0] commit];
}

@end