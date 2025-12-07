@interface AVTView
- (AVTView)initWithCoder:(id)coder;
- (AVTView)initWithFrame:(CGRect)frame;
- (AVTView)initWithFrame:(CGRect)frame options:(id)options;
- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)renderer;
- (BOOL)arMode;
- (BOOL)faceIsFullyActive;
- (id)_renderer:(id)_renderer subdivDataForHash:(id)hash;
- (id)backgroundContentsBehindDrawable;
- (id)faceTrackingDelegate;
- (id)snapshotWithSize:(CGSize)size scaleFactor:(float)factor options:(id)options;
- (void)_animateToNoTrackingStateShowingReticle:(BOOL)reticle;
- (void)_avatarWantsSpecificTechniqueDidChange:(id)change;
- (void)_avtCommonInit;
- (void)_avtUpdateRendersContinuously;
- (void)_disconnectRendererFromAllAvatars;
- (void)_disconnectRendererFromAvatar:(id)avatar avatarNode:(id)node;
- (void)_drawAtTime:(double)time;
- (void)_drawWithUpdate:(id)update;
- (void)_fireTrackingLoss;
- (void)_refreshPerfTimesInfo;
- (void)_renderer:(id)_renderer didApplyAnimationsAtTime:(double)time;
- (void)_renderer:(id)_renderer didBuildSubdivDataForHash:(id)hash dataProvider:(id)provider;
- (void)_renderer:(id)_renderer updateAtTime:(double)time;
- (void)_renderer:(id)_renderer willRenderWorld:(id)world atTime:(double)time;
- (void)_resetFaceToRandomPosition;
- (void)_transitionCoordinatorOutOfStickerConfigurationWithDuration:(double)duration style:(unint64_t)style options:(unint64_t)options;
- (void)_transitionCoordinatorToStickerConfiguration:(id)configuration duration:(double)duration style:(unint64_t)style options:(unint64_t)options;
- (void)_transitionToCustomFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations faceTrackingDidStartHandlerReceiverBlock:(id)block completionHandler:(id)handler;
- (void)_transitionToFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations completionHandler:(id)handler;
- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)mode;
- (void)addAvatarPresentedOnScreenCallbackWithQueue:(id)queue block:(id)block;
- (void)arMode;
- (void)clearOutAnimationToNoTrackingState;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error;
- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended;
- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted;
- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame;
- (void)layoutSubviews;
- (void)renderer:(id)renderer commandBufferDidCompleteWithError:(id)error;
- (void)renderer:(id)renderer didFallbackToDefaultTextureForSource:(id)source message:(id)message;
- (void)setArMode:(BOOL)mode;
- (void)setAvatar:(id)avatar;
- (void)setAvtRendererTechnique:(id)technique;
- (void)setBackgroundContentsBehindDrawable:(id)drawable;
- (void)setCaptureImageIsTooDark:(BOOL)dark;
- (void)setEnableFaceTracking:(BOOL)tracking bySkippingARFramesInsteadOfStopping:(BOOL)stopping;
- (void)setEnableReticle:(BOOL)reticle;
- (void)setFaceIsTracked:(BOOL)tracked;
- (void)setFaceTracker:(id)tracker;
- (void)setFaceTrackingDelegate:(id)delegate;
- (void)setFaceTrackingPaused:(BOOL)paused;
- (void)setPresentationConfiguration:(id)configuration;
- (void)setSensorCovered:(BOOL)covered;
- (void)setShowPerfHUD:(BOOL)d;
- (void)setupOrientation;
- (void)transitionHelper;
- (void)transitionToCustomFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations faceTrackingDidStartHandlerReceiverBlock:(id)block completionHandler:(id)handler;
- (void)transitionToFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations completionHandler:(id)handler;
- (void)transitionToPose:(id)pose duration:(double)duration style:(unint64_t)style completionHandler:(id)handler;
- (void)transitionToStickerConfiguration:(id)configuration duration:(double)duration style:(unint64_t)style completionHandler:(id)handler;
- (void)updateAtTime:(double)time;
- (void)updateForChangedFaceTrackingPaused;
- (void)updateInterfaceOrientation;
- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)needed;
@end

@implementation AVTView

- (void)_avtCommonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
  lock = self->_lock;
  self->_lock = v3;

  PerfTimesCreate(0x3Cu, v20);
  v5 = v20[1];
  *&self->_perfTimes.lock._os_unfair_lock_opaque = v20[0];
  *&self->_perfTimes.current = v5;
  [(AVTView *)self setEnableReticle:?];
  _defaultBackgroundColor = [(AVTView *)self _defaultBackgroundColor];
  [(AVTView *)self setBackgroundColor:?];

  [(AVTView *)self setAntialiasingMode:?];
  [(AVTView *)self setFaceIsTracked:?];
  v7 = objc_alloc(MEMORY[0x1E69DF388]);
  avt_init = [v7 avt_init];
  [(AVTView *)self setWorld:?];

  world = [(AVTView *)self world];
  physicsWorld = [world physicsWorld];
  [physicsWorld setSpeed:?];

  v11 = [AVTAvatarEnvironment alloc];
  world2 = [(AVTView *)self world];
  v13 = [AVTAvatarEnvironment initAndInstallInScene:v11 renderer:"initAndInstallInScene:renderer:"];
  environment = self->_environment;
  self->_environment = v13;

  v15 = objc_alloc_init(AVTFaceTracker);
  faceTracker = self->_faceTracker;
  self->_faceTracker = v15;

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    [(AVTFaceTracker *)self->_faceTracker setLimitRoll:?];
  }

  [(AVTFaceTracker *)self->_faceTracker setShouldConstrainHeadPose:?];
  [(AVTFaceTracker *)self->_faceTracker addDelegate:?];
  [(AVTView *)self setupOrientation];
  [(AVTView *)self setup];
  [(AVTView *)self set_wantsWorldRendererDelegationMessages:?];
  [(AVTView *)self set_resourceManagerMonitor:?];
  [(AVTView *)self set_commandBufferStatusMonitor:?];
  [(AVTView *)self _allowGPUBackgroundExecution];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:? selector:? name:? object:?];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:?];

  [(AVTView *)self _disconnectRendererFromAllAvatars];
  PerfTimesFree(&self->_perfTimes);
  [(AVTFaceTracker *)self->_faceTracker removeDelegate:?];
  v4.receiver = self;
  v4.super_class = AVTView;
  [(AVTView *)&v4 dealloc];
}

- (AVTView)initWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  AVTInitializeShaderCache(optionsCopy, v10);
  v13.receiver = self;
  v13.super_class = AVTView;
  height = [(AVTView *)&v13 initWithFrame:optionsCopy options:x, y, width, height];

  if (height)
  {
    [(AVTView *)height _avtCommonInit];
  }

  return height;
}

- (AVTView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  AVTInitializeShaderCache(self, a2);
  v11.receiver = self;
  v11.super_class = AVTView;
  height = [(AVTView *)&v11 initWithFrame:0 options:x, y, width, height];
  v9 = height;
  if (height)
  {
    [(AVTView *)height _avtCommonInit];
  }

  return v9;
}

- (AVTView)initWithCoder:(id)coder
{
  coderCopy = coder;
  AVTInitializeShaderCache(coderCopy, v5);
  v8.receiver = self;
  v8.super_class = AVTView;
  v6 = [(AVTView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
    [(AVTView *)v6 _avtCommonInit];
  }

  return v6;
}

- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)mode
{
  modeCopy = mode;
  world = [(AVTView *)self world];
  physicsWorld = [world physicsWorld];

  [physicsWorld scale];
  if (v6 != 100.0)
  {
    avatar = [(AVTView *)self avatar];
    v8 = avatar;
    if (avatar && modeCopy)
    {
      [avatar arScale];
    }

    [physicsWorld setScale:?];
  }
}

- (BOOL)arMode
{
  if ((arMode_done_0 & 1) == 0)
  {
    arMode_done_0 = 1;
    v3 = avt_default_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AVTView *)v3 arMode:v4];
    }
  }

  return [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
}

- (void)setArMode:(BOOL)mode
{
  modeCopy = mode;
  if ((setArMode__done_0 & 1) == 0)
  {
    setArMode__done_0 = 1;
    v5 = avt_default_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AVTView *)v5 setArMode:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  if (modeCopy)
  {
    v13 = objc_alloc_init(AVTAugmentedRealityPresentationConfiguration);
  }

  else
  {
    v13 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  v14 = v13;
  [(AVTView *)self setPresentationConfiguration:?];
}

- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)needed
{
  height = needed.height;
  width = needed.width;
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR]&& ![(AVTAvatarEnvironment *)self->_environment showReticle]&& width != 0.0 && height != 0.0)
  {
    [AVTFaceTracker projectionMatrixForViewportSize:"projectionMatrixForViewportSize:zNear:zFar:" zNear:? zFar:?];
    pointOfView = [(AVTView *)self pointOfView];
    camera = [pointOfView camera];

    [camera avt_setSimdProjectionTransform:?];
  }
}

- (void)_animateToNoTrackingStateShowingReticle:(BOOL)reticle
{
  [(AVTView *)self setFaceIsTracked:?];
  [(AVTAvatarEnvironment *)self->_environment setShowReticle:?];
  objc_initWeak(&location, self);
  v4 = +[AVTAvatarPose friendlyPose];
  avatar = [(AVTView *)self avatar];
  v6 = avatar;
  if (avatar)
  {
    [avatar animatePhysicsScaleFactor:? duration:?];
    v7 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v8, &location);
    [v6 transitionToPose:v7 duration:3221225472 delay:__51__AVTView__animateToNoTrackingStateShowingReticle___block_invoke completionHandler:&unk_1E7F49470];
    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

void __51__AVTView__animateToNoTrackingStateShowingReticle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained faceIsTracked] & 1) == 0)
  {
    v1 = [WeakRetained environment];
    [v1 setEnablePhysicsSimulation:?];
  }
}

- (void)clearOutAnimationToNoTrackingState
{
  [(AVTAvatarEnvironment *)self->_environment setShowReticle:?];
  avatar = [(AVTView *)self avatar];
  if (avatar)
  {
    [avatar stopTransitionAnimation];
    [avatar animatePhysicsScaleFactor:? duration:?];
    [avatar setPose:?];
  }

  [(AVTAvatarEnvironment *)self->_environment setEnablePhysicsSimulation:?];
}

- (void)setEnableReticle:(BOOL)reticle
{
  self->_enableReticle = reticle;
  if ([(AVTAvatarEnvironment *)self->_environment showReticle]&& !self->_enableReticle)
  {
    environment = self->_environment;

    [(AVTAvatarEnvironment *)environment setShowReticle:?];
  }
}

- (void)updateAtTime:(double)time
{
  avatar = [(AVTView *)self avatar];
  if (avatar)
  {
    v24 = avatar;
    [(AVTARMaskRenderer *)self->_arMaskRenderer updateMaskParametersAtTime:?];
    if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
    {
      arMaskRenderer = self->_arMaskRenderer;
      avatar2 = [(AVTView *)self avatar];
      rootJointNode = [avatar2 rootJointNode];
      [(AVTARMaskRenderer *)arMaskRenderer updateMaskParametersWithRootJointNode:?];

      renderer = [(AVTView *)self renderer];
      [renderer _backingSize];
      [(AVTView *)self updateProjectionMatrixForARModeIfNeeded:?];
    }

    [v24 updateWithOptions:?];
    if ([(AVTView *)self enableFaceTracking])
    {
      [(AVTFaceTracker *)self->_faceTracker beginQuery];
      lastFaceTrackerUpdateTimestamp = self->_lastFaceTrackerUpdateTimestamp;
      [(AVTFaceTracker *)self->_faceTracker lastUpdateTimestamp];
      if (lastFaceTrackerUpdateTimestamp < v10)
      {
        [(AVTFaceTracker *)self->_faceTracker lastUpdateTimestamp];
        self->_lastFaceTrackerUpdateTimestamp = v11;
      }

      lastFaceTrackerUpdateWithTrackedFaceTimestamp = self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp;
      [(AVTFaceTracker *)self->_faceTracker lastUpdateWithTrackedFaceTimestamp];
      if (lastFaceTrackerUpdateWithTrackedFaceTimestamp >= v13)
      {
        if (self->_lastFaceTrackerUpdateTimestamp - self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp > 1.5 && self->_faceIsTracked)
        {
          arSession = [(AVTFaceTracker *)self->_faceTracker arSession];
          state = [arSession state];

          if (state == 1)
          {
            [(AVTView *)self _animateToNoTrackingStateShowingReticle:?];
            [(AVTView *)self _didLostTrackingForAWhile];
          }
        }
      }

      else
      {
        [(AVTFaceTracker *)self->_faceTracker lastUpdateWithTrackedFaceTimestamp];
        self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp = v14;
        pointOfView = [(AVTView *)self pointOfView];
        if (![(AVTView *)self faceIsTracked])
        {
          [(AVTView *)self setFaceIsTracked:?];
          [(AVTView *)self clearOutAnimationToNoTrackingState];
        }

        faceTrackingInfo = [(AVTFaceTracker *)self->_faceTracker faceTrackingInfo];
        v17 = faceTrackingInfo;
        if (faceTrackingInfo)
        {
          [faceTrackingInfo timestamp];
          if (v18 >= self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp)
          {
            if (-[AVTView directRetargetingMode](self, "directRetargetingMode") || !-[AVTView allowTrackSmoothing](self, "allowTrackSmoothing") || ([v24 isTransitioning] & 1) != 0)
            {
              [v24 applyHeadPoseWithTrackingInfo:? gazeCorrection:? pointOfView:?];
            }

            else
            {
              [MEMORY[0x1E69DF378] begin];
              [MEMORY[0x1E69DF378] setAnimationDuration:?];
              v22 = MEMORY[0x1E69DF378];
              v23 = [MEMORY[0x1E69793D0] functionWithName:?];
              [v22 setAnimationTimingFunction:?];

              [v24 applyHeadPoseWithTrackingInfo:? gazeCorrection:? pointOfView:?];
              [MEMORY[0x1E69DF378] commit];
            }

            [v24 applyBlendShapesWithTrackingInfo:?];
          }
        }
      }

      [(AVTFaceTracker *)self->_faceTracker faceTrackingFrameID];
      [(AVTFaceTracker *)self->_faceTracker endQuery];
      kdebug_trace();
      kdebug_trace();
      kdebug_trace();
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_perfPacketUpdateTimestamp = v21;
    avatar = v24;
  }
}

- (void)_drawAtTime:(double)time
{
  [(AVTView *)self lockAvatar];
  v9.receiver = self;
  v9.super_class = AVTView;
  [(AVTView *)&v9 _drawAtTime:time];
  v5 = self->_avatar;
  [(AVTView *)self unlockAvatar];
  delegate = [(AVTView *)self delegate];
  v7 = delegate;
  if (v5)
  {
    v8 = delegate == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 avatarView:? didRenderAvatar:?];
  }
}

- (void)_drawWithUpdate:(id)update
{
  updateCopy = update;
  [(AVTView *)self lockAvatar];
  v9.receiver = self;
  v9.super_class = AVTView;
  [(AVTView *)&v9 _drawWithUpdate:updateCopy];

  v5 = self->_avatar;
  [(AVTView *)self unlockAvatar];
  delegate = [(AVTView *)self delegate];
  v7 = delegate;
  if (v5)
  {
    v8 = delegate == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 avatarView:? didRenderAvatar:?];
  }
}

- (void)addAvatarPresentedOnScreenCallbackWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  renderer = [(AVTView *)self renderer];
  v11 = MEMORY[0x1E69E9820];
  v12 = queueCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = queueCopy;
  [renderer _addGPUFramePresentedHandler:{v11, 3221225472, __61__AVTView_addAvatarPresentedOnScreenCallbackWithQueue_block___block_invoke, &unk_1E7F49498}];
}

- (void)_disconnectRendererFromAvatar:(id)avatar avatarNode:(id)node
{
  nodeCopy = node;
  avatarCopy = avatar;
  world = [(AVTView *)self world];
  [avatarCopy willRemoveFromWorld:?];

  [nodeCopy removeFromParentNode];
}

- (void)_disconnectRendererFromAllAvatars
{
  avatar = self->_avatar;
  world = [(AVTView *)self world];
  [(AVTAvatar *)avatar willRemoveFromWorld:?];

  avatarNode = self->_avatarNode;

  [(VFXNode *)avatarNode removeFromParentNode];
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  v5 = self->_avatar;
  v6 = self->_avatarNode;
  if (v5 != avatarCopy)
  {
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:?];
    pose = [(AVTAvatar *)v5 pose];
    [(AVTView *)self lockAvatar];
    if ([(AVTAvatar *)v5 avatarSpecificTechniqueClass])
    {
      avtRendererTechnique = [(AVTView *)self avtRendererTechnique];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(AVTView *)self setAvtRendererTechnique:?];
      }
    }

    [AVTView _disconnectRendererFromAvatar:"_disconnectRendererFromAvatar:avatarNode:" avatarNode:?];
    v10 = avatarCopy;
    avatarNode = [(AVTAvatar *)v10 avatarNode];
    objc_storeStrong(&self->_avatar, avatar);
    objc_storeStrong(&self->_avatarNode, avatarNode);
    world = [(AVTView *)self world];
    rootNode = [world rootNode];
    [rootNode addChildNode:?];

    world2 = [(AVTView *)self world];
    [(AVTAvatar *)v10 didAddToScene:?];

    [AVTAvatarEnvironment avatarDidChange:"avatarDidChange:presentationConfiguration:" presentationConfiguration:?];
    [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    [(AVTView *)self _updatePhysicsWorldForAvatarARScaleAndARMode:?];
    if ([(AVTAvatar *)v10 avatarSpecificTechniqueClass])
    {
      v15 = [(AVTAvatar *)v10 newAvatarSpecificTechniqueWithRenderer:?];
      [(AVTView *)self setAvtRendererTechnique:?];
    }

    [(AVTView *)self avatarDidChange];
    [(AVTView *)self unlockAvatar];
    [(AVTAvatar *)v10 setPose:?];
    if (self->_enableReticle && ![(AVTView *)self faceIsTracked])
    {
      v16 = +[AVTAvatarPose friendlyPose];
      [(AVTAvatar *)v10 setPose:?];
    }

    [MEMORY[0x1E69DF378] commit];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVTView;
  [(AVTView *)&v3 didMoveToWindow];
  [(AVTView *)self updateInterfaceOrientation];
}

- (void)setupOrientation
{
  [(AVTView *)self updateInterfaceOrientation];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:? selector:? name:? object:?];
}

- (void)updateInterfaceOrientation
{
  window = [(AVTView *)self window];

  if (window)
  {
    window2 = [(AVTView *)self window];
    windowScene = [window2 windowScene];
    [windowScene interfaceOrientation];
    [(AVTFaceTracker *)self->_faceTracker setInterfaceOrientation:?];
  }
}

- (void)_fireTrackingLoss
{
  [(AVTView *)self _animateToNoTrackingStateShowingReticle:?];

  [(AVTView *)self _didLostTrackingForAWhile];
}

- (void)_transitionToFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = handlerCopy;
  if (self->_enableFaceTracking && !self->_faceTrackingPaused)
  {
    if (!handlerCopy)
    {
      goto LABEL_8;
    }

    if (self->_faceTrackerDidUpdateBlock)
    {
      v17 = avt_default_log(handlerCopy);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(AVTView *)v17 _transitionToFaceTrackingWithDuration:v18 style:v19 enableBakedAnimations:v20 completionHandler:v21, v22, v23, v24];
      }
    }

    v25 = MEMORY[0x1BFB0EC20](v10);
    faceTrackerDidUpdateBlock = self->_faceTrackerDidUpdateBlock;
    self->_faceTrackerDidUpdateBlock = v25;
  }

  else
  {
    v11 = self->_avatar;
    pose = [(AVTAvatar *)v11 pose];
    [(AVTAvatar *)v11 setPhysicsScaleFactor:?];
    [AVTAvatar transitionToPose:v11 duration:"transitionToPose:duration:delay:completionHandler:" delay:? completionHandler:?];
    [(AVTAvatar *)v11 setPose:?];
    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __95__AVTView__transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke;
    v26[3] = &unk_1E7F494E8;
    objc_copyWeak(v30, &location);
    v30[1] = *&duration;
    faceTrackerDidUpdateBlock = v11;
    v27 = faceTrackerDidUpdateBlock;
    animationsCopy = animations;
    v14 = pose;
    v28 = v14;
    v29 = v10;
    v15 = MEMORY[0x1BFB0EC20](v26);
    v16 = self->_faceTrackerDidUpdateBlock;
    self->_faceTrackerDidUpdateBlock = v15;

    if (self->_enableFaceTracking)
    {
      [(AVTView *)self setFaceTrackingPaused:?];
    }

    else
    {
      [(AVTView *)self setEnableFaceTracking:?];
    }

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }

LABEL_8:
}

void __95__AVTView__transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    [a1[4] animatePhysicsScaleFactor:? duration:?];
    v3 = a1[4];
    v5 = a1[6];
    [v3 _transitionFromPose:? toPose:? bakedAnimationBlendFactor:? duration:? delay:? timingFunction:? timingAnimation:? completionHandler:?];
  }

  else
  {
    v4 = a1[6];
    if (v4)
    {
      v4[2]();
    }
  }
}

uint64_t __95__AVTView__transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__AVTView_transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _transitionToFaceTrackingWithDuration:? style:? enableBakedAnimations:? completionHandler:?];
}

- (void)_transitionToCustomFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations faceTrackingDidStartHandlerReceiverBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  v13 = self->_avatar;
  pose = [(AVTAvatar *)v13 pose];
  [(AVTAvatar *)v13 setPhysicsScaleFactor:?];
  [AVTAvatar transitionToPose:v13 duration:"transitionToPose:duration:delay:completionHandler:" delay:? completionHandler:?];
  [(AVTAvatar *)v13 setPose:?];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __142__AVTView__transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke;
  v18[3] = &unk_1E7F494E8;
  objc_copyWeak(v22, &location);
  animationsCopy = animations;
  v15 = v13;
  v19 = v15;
  v16 = pose;
  v20 = v16;
  v22[1] = *&duration;
  v17 = handlerCopy;
  v21 = v17;
  blockCopy[2](blockCopy, v18);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

void __142__AVTView__transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = *(a1 + 48);
    [v3 _transitionFromPose:? toPose:? bakedAnimationBlendFactor:? duration:? delay:? timingFunction:? timingAnimation:? completionHandler:?];
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }
}

uint64_t __142__AVTView__transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __141__AVTView_transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _transitionToCustomFaceTrackingWithDuration:? style:? enableBakedAnimations:? faceTrackingDidStartHandlerReceiverBlock:? completionHandler:?];
}

- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame
{
  updateCopy = update;
  frameCopy = frame;
  if ([updateCopy faceIsTracked])
  {
    self->_packetNeedRecording = 1;
    self->_droppedFrameCount = 0;
  }

  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    if ([frameCopy capturedImage])
    {
      [(VFXCaptureDeviceOutputConsumer *)self->_arCaptureDeviceOutputConsumer setPixelBuffer:?];
    }

    arMaskRenderer = self->_arMaskRenderer;
    fallBackDepthData = [updateCopy fallBackDepthData];
    [updateCopy interfaceOrientation];
    [AVTARMaskRenderer updateWithARFrame:"updateWithARFrame:fallBackDepthData:captureOrientation:interfaceOrientation:mirroredDepthData:" fallBackDepthData:? captureOrientation:? interfaceOrientation:? mirroredDepthData:?];

    renderer = [(AVTView *)self renderer];
    AVTApplyARGrainIfNeeded(renderer, frameCopy);
  }

  [updateCopy lowLight];
  [(AVTView *)self setCaptureImageIsTooDark:?];
  [updateCopy isSensorCovered];
  [(AVTView *)self setSensorCovered:?];
  faceTrackerDidUpdateBlock = self->_faceTrackerDidUpdateBlock;
  if (faceTrackerDidUpdateBlock)
  {
    faceTrackerDidUpdateBlock[2]();
    v11 = self->_faceTrackerDidUpdateBlock;
    self->_faceTrackerDidUpdateBlock = 0;
  }
}

- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v8 avatarView:? faceTrackingSessionFailedWithError:?];
  }
}

- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarViewFaceTrackingSessionInterruptionDidBegin:?];
  }

  [(AVTView *)self _delayedTrackingLoss];
}

- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarViewFaceTrackingSessionInterruptionDidEnd:?];
  }

  [(AVTView *)self _cancelDelayedtrackingLoss];
}

- (void)setFaceTracker:(id)tracker
{
  trackerCopy = tracker;
  [(AVTFaceTracker *)self->_faceTracker removeDelegate:?];
  faceTracker = self->_faceTracker;
  self->_faceTracker = trackerCopy;
  v6 = trackerCopy;

  [(AVTFaceTracker *)self->_faceTracker addDelegate:?];
}

- (void)setFaceIsTracked:(BOOL)tracked
{
  if (self->_faceIsTracked != tracked)
  {
    self->_faceIsTracked = tracked;
    if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
    {
      [(AVTView *)self setAvtRendererTechnique:?];
      [(VFXNode *)self->_avatarNode setOpacity:?];
    }

    WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
      [v6 avatarView:? didUpdateWithFaceTrackingStatus:?];
    }
  }
}

- (void)setFaceTrackingPaused:(BOOL)paused
{
  if (self->_faceTrackingPaused != paused)
  {
    self->_faceTrackingPaused = paused;
    if (paused)
    {
      [(AVTView *)self setRendersContinuously:?];
    }

    else
    {
      [(AVTAvatarEnvironment *)self->_environment setEnablePhysicsSimulation:?];
    }

    [(AVTView *)self updateForChangedFaceTrackingPaused];
  }
}

- (void)updateForChangedFaceTrackingPaused
{
  faceTrackingIsPaused = [(AVTView *)self faceTrackingIsPaused];
  faceTracker = self->_faceTracker;
  if (faceTrackingIsPaused)
  {

    [(AVTFaceTracker *)faceTracker pauseByPausingARSession];
  }

  else
  {

    [(AVTFaceTracker *)faceTracker run];
  }
}

- (id)faceTrackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);

  return WeakRetained;
}

- (void)setFaceTrackingDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_faceTrackingDelegate, obj);
    v5 = obj;
  }
}

- (void)setCaptureImageIsTooDark:(BOOL)dark
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_captureImageIsTooDark != dark)
  {
    darkCopy = dark;
    self->_captureImageIsTooDark = dark;
    v5 = avt_default_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = darkCopy;
      _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "lowLight status changed: %d", v9, 8u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
      [v8 avatarView:? didUpdateWithLowLightStatus:?];
    }
  }
}

- (void)setSensorCovered:(BOOL)covered
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_isSensorCovered != covered)
  {
    coveredCopy = covered;
    self->_isSensorCovered = covered;
    v5 = avt_default_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = coveredCopy;
      _os_log_impl(&dword_1BB472000, v5, OS_LOG_TYPE_DEFAULT, "sensorCovered status changed: %d", v9, 8u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
      [v8 avatarView:? didUpdateWithSensorOcclusionStatus:?];
    }
  }
}

- (void)setEnableFaceTracking:(BOOL)tracking bySkippingARFramesInsteadOfStopping:(BOOL)stopping
{
  if (self->_enableFaceTracking != tracking)
  {
    faceTracker = self->_faceTracker;
    if (tracking)
    {
      [(AVTFaceTracker *)faceTracker run];
      if ([(AVTView *)self enableReticle])
      {
        [(AVTView *)self faceIsTracked];
      }
    }

    else if (stopping)
    {
      [(AVTFaceTracker *)faceTracker pauseBySkippingARFrames];
    }

    else
    {
      [(AVTFaceTracker *)faceTracker stop];
    }

    [(AVTAvatarEnvironment *)self->_environment setShowReticle:?];
    self->_enableFaceTracking = tracking;

    [(AVTView *)self setRendersContinuously:?];
  }
}

- (BOOL)faceIsFullyActive
{
  environment = [(AVTView *)self environment];
  faceIsFullyVisible = [environment faceIsFullyVisible];

  return faceIsFullyVisible;
}

- (void)_resetFaceToRandomPosition
{
  avatar = [(AVTView *)self avatar];
  [avatar _resetFaceToRandomPosition];
}

- (void)setPresentationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_presentationConfiguration != configurationCopy)
  {
    objc_storeStrong(&self->_presentationConfiguration, configuration);
    usesAR = [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    [(AVTView *)self setFramingMode:?];
    renderer = [(AVTView *)self renderer];
    AVTSetARCompositingEnabled(renderer, usesAR);

    if (usesAR)
    {
      captureDeviceOutputConsumer = [MEMORY[0x1E69DF300] captureDeviceOutputConsumer];
    }

    else
    {
      captureDeviceOutputConsumer = 0;
    }

    objc_storeStrong(&self->_arCaptureDeviceOutputConsumer, captureDeviceOutputConsumer);
    if (usesAR)
    {
    }

    world = [(AVTView *)self world];
    background = [world background];
    [background setContents:?];

    [(AVTFaceTracker *)self->_faceTracker setShouldConstrainHeadPose:?];
    [(AVTFaceTracker *)self->_faceTracker setWantsPersonSegmentation:?];
    [AVTAvatarEnvironment avatarDidChange:"avatarDidChange:presentationConfiguration:" presentationConfiguration:?];
    [(AVTAvatar *)self->_avatar setPresentationConfiguration:?];
    arMaskRenderer = self->_arMaskRenderer;
    if ((usesAR ^ 1))
    {
      self->_arMaskRenderer = 0;
    }

    else
    {
      if (arMaskRenderer)
      {
        [(AVTARMaskRenderer *)arMaskRenderer setPresentationConfiguration:?];
      }

      else
      {
        objc_initWeak(&location, self);
        v12 = [AVTARMaskRenderer alloc];
        v16 = MEMORY[0x1E69E9820];
        objc_copyWeak(&v17, &location);
        v13 = [(AVTARMaskRenderer *)v12 initWithOwner:v16 presentationConfiguration:3221225472 techniqueDidChangeHandler:__40__AVTView_setPresentationConfiguration___block_invoke, &unk_1E7F49560];
        v14 = self->_arMaskRenderer;
        self->_arMaskRenderer = v13;

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      v15 = self->_arMaskRenderer;
      [(AVTView *)self antialiasingMode];
      [AVTARMaskRenderer setClearWithCamera:v15 antialiasingMode:"setClearWithCamera:antialiasingMode:"];
    }

    [(AVTView *)self _updatePhysicsWorldForAvatarARScaleAndARMode:?];
    [(AVTView *)self updateForMultiAvatarPositioningStyle];
  }
}

void __40__AVTView_setPresentationConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained faceIsTracked];
    [v4 setAvtRendererTechnique:?];
  }
}

- (id)backgroundContentsBehindDrawable
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_backgroundContentsBehindDrawable;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setBackgroundContentsBehindDrawable:(id)drawable
{
  drawableCopy = drawable;
  [(NSRecursiveLock *)self->_lock lock];
  backgroundContentsBehindDrawable = self->_backgroundContentsBehindDrawable;
  self->_backgroundContentsBehindDrawable = drawableCopy;
  v6 = drawableCopy;

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)snapshotWithSize:(CGSize)size scaleFactor:(float)factor options:(id)options
{
  optionsCopy = options;
  world = [(AVTView *)self world];

  if (world)
  {
    kdebug_trace();
    [(AVTView *)self lockAvatar];
    v9 = [MEMORY[0x1E69DF358] rendererWithDevice:? options:?];
    world2 = [(AVTView *)self world];
    [v9 setWorld:?];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v9 setBackgroundColor:?];

    world3 = [(AVTView *)self world];
    clock = [world3 clock];
    [clock time];
    world4 = [v9 world];
    clock2 = [world4 clock];
    [clock2 setTime:?];

    v16 = [optionsCopy valueForKey:?];
    LOBYTE(clock) = [v16 BOOLValue];

    if ((clock & 1) == 0)
    {
      [v9 set_superSamplingFactor:?];
    }

    _resourceManagerMonitor = [(AVTView *)self _resourceManagerMonitor];
    [v9 set_resourceManagerMonitor:?];

    _commandBufferStatusMonitor = [(AVTView *)self _commandBufferStatusMonitor];
    [v9 set_commandBufferStatusMonitor:?];

    [v9 _allowGPUBackgroundExecution];
    [(AVTAvatarEnvironment *)self->_environment willSnapshot];
    [MEMORY[0x1E69DF378] lock];
    CACurrentMediaTime();
    [v9 updateAtTime:?];
    [v9 setAntialiasingMode:?];
    v19 = [v9 snapshotWithSize:?];
    v20 = v19;
    if (factor != 1.0)
    {
      v21 = MEMORY[0x1E69DCAB8];
      [v19 CGImage];
      v22 = [v21 imageWithCGImage:? scale:? orientation:?];

      v20 = v22;
    }

    [MEMORY[0x1E69DF378] unlock];
    [(AVTAvatarEnvironment *)self->_environment didSnapshot];
    [(AVTView *)self unlockAvatar];
    kdebug_trace();
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_renderer:(id)_renderer willRenderWorld:(id)world atTime:(double)time
{
  _rendererCopy = _renderer;
  worldCopy = world;
  world = [(VFXNode *)self->_avatarNode world];
  world2 = [_rendererCopy world];

  if (world == world2)
  {
    if (self->_packetNeedRecording)
    {
      currentRenderCommandEncoder = [_rendererCopy currentRenderCommandEncoder];
      commandBuffer = [currentRenderCommandEncoder commandBuffer];

      [(AVTFaceTracker *)self->_faceTracker arFrameTimestamp];
      v14 = v13;
      [(AVTFaceTracker *)self->_faceTracker arDelegateTimestamp];
      v16 = v15;
      self->_packetNeedRecording = 0;
      lastFaceTrackerUpdateTimestamp = self->_lastFaceTrackerUpdateTimestamp;
      objc_initWeak(&location, self);
      v18 = MEMORY[0x1E69E9820];
      v19[1] = *&lastFaceTrackerUpdateTimestamp;
      objc_copyWeak(v19, &location);
      v19[2] = v14;
      v19[3] = v16;
      [commandBuffer addCompletedHandler:{v18, 3221225472, __44__AVTView__renderer_willRenderWorld_atTime___block_invoke, &unk_1E7F49588, self}];
      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }

    else
    {
      ++self->_droppedFrameCount;
    }
  }
}

void __44__AVTView__renderer_willRenderWorld_atTime___block_invoke(uint64_t a1)
{
  kdebug_trace();
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 64);
    v4 = v3 - *(a1 + 56);
    v5 = *(*(a1 + 32) + 768) - v3;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6 - *(*(a1 + 32) + 768);
    *&v8 = v4;
    *(&v8 + 1) = v5;
    v9 = v7;
    PerfTimesPush(WeakRetained + 184, &v8);
  }
}

- (void)setShowPerfHUD:(BOOL)d
{
  self->_showPerfHUD = d;
  WeakRetained = objc_loadWeakRetained(&self->_perfTimeRefreshTimer);
  [WeakRetained invalidate];

  if (self->_showPerfHUD)
  {
    VFXSetShaderCollectionEnabled();
    VFXSetPerformanceStatisticsEnabled();
    v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:? target:? selector:? userInfo:? repeats:?];
    objc_storeWeak(&self->_perfTimeRefreshTimer, v5);

    if (!self->_debugView)
    {
      v6 = [[AVTHUDView alloc] initWithFrame:?];
      debugView = self->_debugView;
      self->_debugView = v6;

      [(AVTView *)self addSubview:?];
    }
  }

  [(AVTHUDView *)self->_debugView setHidden:?];

  VFXSetPerformanceStatisticsEnabled();
}

- (void)_refreshPerfTimesInfo
{
  PerfTimesAverageLatency(&self->_perfTimes);
  PerfTimesAverageLatencyForKind(&self->_perfTimes, 0);
  PerfTimesAverageLatencyForKind(&self->_perfTimes, 1);
  PerfTimesAverageLatencyForKind(&self->_perfTimes, 2);
  VFXGetPerformanceStatistics();
  [(AVTView *)self currentAudioTime];
  [(AVTFaceTracker *)self->_faceTracker arFrameDeltaTime];
  [(AVTView *)self isDoubleBuffered];
  v3 = VFXGetShaderCollectionOutputURL();
  path = [v3 path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager contentsOfDirectoryAtPath:? error:?];
  [v6 count];

  [(AVTHUDView *)self->_debugView updateWithData:?];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTView;
  [(AVTView *)&v3 layoutSubviews];
  if ([(AVTView *)self showPerfHUD])
  {
    [(AVTView *)self bounds];
    [(AVTHUDView *)self->_debugView setFrame:?];
  }
}

- (void)_renderer:(id)_renderer didApplyAnimationsAtTime:(double)time
{
  _rendererCopy = _renderer;
  world = [(VFXNode *)self->_avatarNode world];
  world2 = [_rendererCopy world];

  if (world == world2)
  {
    [AVTAvatar updateAfterAnimationsEvaluatedAtTime:"updateAfterAnimationsEvaluatedAtTime:renderer:" renderer:?];
  }
}

- (void)_renderer:(id)_renderer updateAtTime:(double)time
{
  avatarNode = self->_avatarNode;
  _rendererCopy = _renderer;
  world = [(VFXNode *)avatarNode world];
  world2 = [_rendererCopy world];

  if (world == world2)
  {

    [(AVTView *)self updateAtTime:?];
  }
}

- (id)_renderer:(id)_renderer subdivDataForHash:(id)hash
{
  hashCopy = hash;
  v5 = +[AVTResourceLocator sharedResourceLocator];
  subdivDataCacheURL = [(AVTResourceLocator *)v5 subdivDataCacheURL];

  if (subdivDataCacheURL)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:hashCopy];
    v8 = [subdivDataCacheURL URLByAppendingPathComponent:? isDirectory:?];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v8 path];
    v11 = [defaultManager fileExistsAtPath:?];

    if (v11)
    {
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:? options:? error:?];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_renderer:(id)_renderer didBuildSubdivDataForHash:(id)hash dataProvider:(id)provider
{
  hashCopy = hash;
  providerCopy = provider;
  v8 = +[AVTResourceLocator sharedResourceLocator];
  subdivDataCacheURL = [(AVTResourceLocator *)v8 subdivDataCacheURL];

  if (subdivDataCacheURL)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:hashCopy];
    v11 = [subdivDataCacheURL URLByAppendingPathComponent:? isDirectory:?];

    v12 = providerCopy[2](providerCopy);
    if (v12)
    {
      v13 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__AVTView__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke;
      block[3] = &unk_1E7F47E78;
      v16 = v12;
      v17 = v11;
      dispatch_async(v13, block);

      v14 = v16;
    }

    else
    {
      v14 = avt_default_log(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AVTView _renderer:v14 didBuildSubdivDataForHash:? dataProvider:?];
      }
    }
  }
}

void __60__AVTView__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0;
  v2 = [v1 writeToURL:? options:? error:?];
  v3 = v6;
  v4 = v3;
  if ((v2 & 1) == 0)
  {
    v5 = avt_default_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60__AVTView__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke_cold_1(v4, v5);
    }
  }
}

- (void)renderer:(id)renderer didFallbackToDefaultTextureForSource:(id)source message:(id)message
{
  v40 = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
  sourceCopy = source;
  messageCopy = message;
  if (AVTIsRunningInAppExtensionOrViewService())
  {
    v24[1] = MEMORY[0x1E69E9820];
    v24[2] = 3221225472;
    v24[3] = __65__AVTView_renderer_didFallbackToDefaultTextureForSource_message___block_invoke;
    v24[4] = &unk_1E7F495B0;
    v25 = rendererCopy;
    v26 = sourceCopy;
    v27 = messageCopy;
    [(AVTView *)self crashAppExtensionOrViewService_rdar98130076:?];
  }

  v11 = [sourceCopy description];
  v12 = [v11 containsString:?];

  v14 = avt_default_log(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
  if (v12)
  {
    if (v15)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 136316162;
      *&buf[4] = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]";
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2048;
      *&buf[24] = rendererCopy;
      *&buf[32] = 2112;
      *&buf[34] = sourceCopy;
      *&buf[42] = 2112;
      *&buf[44] = messageCopy;
      _os_log_fault_impl(&dword_1BB472000, v14, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Failed to find texture for source %@ with message:\n%@", buf, 0x34u);
    }

LABEL_10:
    return;
  }

  if (v15)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 136316162;
    *&buf[4] = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]";
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 2048;
    *&buf[24] = rendererCopy;
    *&buf[32] = 2112;
    *&buf[34] = sourceCopy;
    *&buf[42] = 2112;
    *&buf[44] = messageCopy;
    _os_log_fault_impl(&dword_1BB472000, v14, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Failed to find texture for source %@ with message:\n%@", buf, 0x34u);
  }

  if (!AVTLogAllowsInternalCrash())
  {
    goto LABEL_10;
  }

  v24[0] = 0;
  v39 = 0u;
  memset(buf, 0, sizeof(buf));
  v20 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v28 = 136316162;
  v29 = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]";
  v30 = 2112;
  v31 = v23;
  v32 = 2048;
  v33 = rendererCopy;
  v34 = 2112;
  v35 = sourceCopy;
  v36 = 2112;
  v37 = messageCopy;
  _os_log_send_and_compose_impl(v21, v24, buf, 80, &dword_1BB472000, v20, 16, "AvatarKit crash: %s %@ %p: Failed to find texture for source %@ with message:\n%@", &v28, 52);

  _os_crash_msg();
  __break(1u);
}

void __65__AVTView_renderer_didFallbackToDefaultTextureForSource_message___block_invoke(void *a1)
{
  v2 = avt_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    LODWORD(buf[0]) = 136316162;
    *(buf + 4) = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]_block_invoke";
    WORD6(buf[0]) = 2112;
    *(buf + 14) = v4;
    WORD3(buf[1]) = 2048;
    *(&buf[1] + 1) = v5;
    LOWORD(buf[2]) = 2112;
    *(&buf[2] + 2) = v6;
    WORD5(buf[2]) = 2112;
    *(&buf[2] + 12) = v7;
    _os_log_error_impl(&dword_1BB472000, v2, OS_LOG_TYPE_ERROR, "Error: %s %@ %p: Failed to find texture for source %@ with message:\n%@", buf, 0x34u);
  }

  v26 = 0;
  memset(buf, 0, sizeof(buf));
  v8 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = 136316162;
  v16 = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]_block_invoke";
  v17 = 2112;
  v18 = v11;
  v19 = 2048;
  v20 = v12;
  v21 = 2112;
  v22 = v13;
  v23 = 2112;
  v24 = v14;
  _os_log_send_and_compose_impl(v9, &v26, buf, 80, &dword_1BB472000, v8, 16, "AvatarKit crash: %s %@ %p: Failed to find texture for source %@ with message:\n%@", &v15, 52);

  _os_crash_msg();
  __break(1u);
}

- (void)renderer:(id)renderer commandBufferDidCompleteWithError:(id)error
{
  v48 = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
  errorCopy = error;
  error = [errorCopy error];
  code = AVTIsRunningInAppExtensionOrViewService();
  if (code)
  {
    v28[1] = MEMORY[0x1E69E9820];
    v28[2] = 3221225472;
    v28[3] = __54__AVTView_renderer_commandBufferDidCompleteWithError___block_invoke;
    v28[4] = &unk_1E7F495B0;
    v29 = rendererCopy;
    v30 = errorCopy;
    v31 = error;
    [(AVTView *)self crashAppExtensionOrViewService_rdar98130076:?];
  }

  if (error)
  {
    domain = [error domain];
    v11 = *MEMORY[0x1E6973F70];

    if (domain == v11)
    {
      code = [error code];
      if (code == 7)
      {
        v12 = avt_default_log(7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          status = [errorCopy status];
          logs = [errorCopy logs];
          *buf = 136316418;
          *&buf[4] = "[AVTView renderer:commandBufferDidCompleteWithError:]";
          *&buf[12] = 2112;
          *&buf[14] = v19;
          *&buf[22] = 2048;
          *&buf[24] = rendererCopy;
          LOWORD(v45) = 1024;
          *(&v45 + 2) = status;
          WORD3(v45) = 2112;
          *(&v45 + 1) = error;
          LOWORD(v46) = 2112;
          *(&v46 + 2) = logs;
          _os_log_fault_impl(&dword_1BB472000, v12, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
        }

LABEL_12:
        return;
      }
    }
  }

  v13 = avt_default_log(code);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    status2 = [errorCopy status];
    logs2 = [errorCopy logs];
    *buf = 136316418;
    *&buf[4] = "[AVTView renderer:commandBufferDidCompleteWithError:]";
    *&buf[12] = 2112;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    *&buf[24] = rendererCopy;
    LOWORD(v45) = 1024;
    *(&v45 + 2) = status2;
    WORD3(v45) = 2112;
    *(&v45 + 1) = error;
    LOWORD(v46) = 2112;
    *(&v46 + 2) = logs2;
    _os_log_fault_impl(&dword_1BB472000, v13, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
  }

  if (!AVTLogAllowsInternalCrash())
  {
    goto LABEL_12;
  }

  v28[0] = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  memset(buf, 0, sizeof(buf));
  v22 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  status3 = [errorCopy status];
  logs3 = [errorCopy logs];
  v32 = 136316418;
  v33 = "[AVTView renderer:commandBufferDidCompleteWithError:]";
  v34 = 2112;
  v35 = v25;
  v36 = 2048;
  v37 = rendererCopy;
  v38 = 1024;
  v39 = status3;
  v40 = 2112;
  v41 = error;
  v42 = 2112;
  v43 = logs3;
  _os_log_send_and_compose_impl(v23, v28, buf, 80, &dword_1BB472000, v22, 16, "AvatarKit crash: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", &v32, 58);

  _os_crash_msg();
  __break(1u);
}

void __54__AVTView_renderer_commandBufferDidCompleteWithError___block_invoke(uint64_t a1)
{
  v2 = avt_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) status];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 40) logs];
    LODWORD(buf[0]) = 136316418;
    *(buf + 4) = "[AVTView renderer:commandBufferDidCompleteWithError:]_block_invoke";
    WORD2(buf[1]) = 2112;
    *(&buf[1] + 6) = v4;
    HIWORD(buf[2]) = 2048;
    buf[3] = v5;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = v6;
    WORD3(v30) = 2112;
    *(&v30 + 1) = v7;
    LOWORD(v31) = 2112;
    *(&v31 + 2) = v8;
    _os_log_error_impl(&dword_1BB472000, v2, OS_LOG_TYPE_ERROR, "Error: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(buf, 0, sizeof(buf));
  v9 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) status];
  v15 = *(a1 + 48);
  v16 = [*(a1 + 40) logs];
  v17 = 136316418;
  v18 = "[AVTView renderer:commandBufferDidCompleteWithError:]_block_invoke";
  v19 = 2112;
  v20 = v12;
  v21 = 2048;
  v22 = v13;
  v23 = 1024;
  v24 = v14;
  v25 = 2112;
  v26 = v15;
  v27 = 2112;
  v28 = v16;
  _os_log_send_and_compose_impl(v10, &v33, buf, 80, &dword_1BB472000, v9, 16, "AvatarKit crash: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", &v17, 58);

  _os_crash_msg();
  __break(1u);
}

- (void)_avatarWantsSpecificTechniqueDidChange:(id)change
{
  object = [change object];
  avatar = self->_avatar;

  if (object == avatar)
  {
    if ([(AVTAvatar *)self->_avatar avatarSpecificTechniqueClass])
    {
      avtRendererTechnique = [(AVTView *)self avtRendererTechnique];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [(AVTAvatar *)self->_avatar newAvatarSpecificTechniqueWithRenderer:?];
        [(AVTView *)self setAvtRendererTechnique:?];
      }
    }

    else
    {

      [(AVTView *)self setAvtRendererTechnique:?];
    }
  }
}

- (void)_avtUpdateRendersContinuously
{
  v4 = self->_avtRendersContinuously || self->_avtRendererTechnique != 0;
  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = AVTView;
  [(AVTView *)&v5 setRendersContinuously:v4];
}

- (void)setAvtRendererTechnique:(id)technique
{
  techniqueCopy = technique;
  if (self->_avtRendererTechnique != techniqueCopy)
  {
    objc_storeStrong(&self->_avtRendererTechnique, technique);
    [(AVTView *)self _avtUpdateRendersContinuously];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DF378];
    world = [(AVTView *)self world];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __35__AVTView_setAvtRendererTechnique___block_invoke;
    v11 = &unk_1E7F495D8;
    objc_copyWeak(&v13, &location);
    v12 = techniqueCopy;
    [v6 enqueueCommandForObject:? immediateTransactionBlock:?];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __35__AVTView_setAvtRendererTechnique___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 89, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)renderer
{
  avtRendererTechniquePresentationTree = self->_avtRendererTechniquePresentationTree;
  if (avtRendererTechniquePresentationTree)
  {
    LOBYTE(avtRendererTechniquePresentationTree) = [(AVTRendererTechnique *)avtRendererTechniquePresentationTree techniqueIsActive];
  }

  return avtRendererTechniquePresentationTree;
}

- (void)transitionHelper
{
  if (self)
  {
    selfCopy = self;
    v3 = self[91];
    if (!v3)
    {
      v4 = [[AVTViewTransitionHelper alloc] initWithView:self];
      v5 = selfCopy[91];
      selfCopy[91] = v4;

      v3 = selfCopy[91];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)transitionToPose:(id)pose duration:(double)duration style:(unint64_t)style completionHandler:(id)handler
{
  v12 = OUTLINED_FUNCTION_3_2(self, a2, pose);
  v8 = v6;
  v9 = *(v7 + 672);
  if (!v12)
  {
    v12 = +[AVTAvatarPose neutralPose];
  }

  if (*(v7 + 624) == 1)
  {
    [v7 setEnableFaceTracking:? bySkippingARFramesInsteadOfStopping:?];
    [v9 animatePhysicsScaleFactor:? duration:?];
  }

  transitionHelper = [(AVTView *)v7 transitionHelper];
  OUTLINED_FUNCTION_1_8(transitionHelper, 0, v12, v11);
}

- (void)transitionToStickerConfiguration:(id)configuration duration:(double)duration style:(unint64_t)style completionHandler:(id)handler
{
  v12 = OUTLINED_FUNCTION_3_2(self, a2, configuration);
  v8 = v6;
  v9 = *(v7 + 672);
  if (*(v7 + 624) == 1)
  {
    [v7 setEnableFaceTracking:? bySkippingARFramesInsteadOfStopping:?];
    [v9 animatePhysicsScaleFactor:? duration:?];
  }

  transitionHelper = [(AVTView *)v7 transitionHelper];
  OUTLINED_FUNCTION_1_8(transitionHelper, v12, 0, v11);
}

- (void)transitionToFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations completionHandler:(id)handler
{
  v10 = OUTLINED_FUNCTION_4_1(self, a2, style, animations, handler);
  v11 = v8[84];
  objc_initWeak(&location, v8);
  if ((v7 - 1) > 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_1BB4F0A68[(v7 - 1)];
  }

  transitionHelper = [(AVTView *)v8 transitionHelper];
  objc_copyWeak(v20, &location);
  v20[1] = v9;
  v20[2] = v7;
  v21 = v6;
  v19 = v10;
  v14 = OUTLINED_FUNCTION_2_4();
  [(AVTViewTransitionHelper *)v15 transitionViewToStickerConfiguration:v16 fallbackPose:v17 duration:v12 style:v11 avatar:0 completionHandler:v18 simultaneousAnimationsBlock:v14];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)transitionToCustomFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations faceTrackingDidStartHandlerReceiverBlock:(id)block completionHandler:(id)handler
{
  v12 = OUTLINED_FUNCTION_4_1(self, a2, style, animations, block);
  handlerCopy = handler;
  v14 = v9[84];
  objc_initWeak(&location, v9);
  if ((v8 - 1) > 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_1BB4F0A68[(v8 - 1)];
  }

  transitionHelper = [(AVTView *)v9 transitionHelper];
  objc_copyWeak(v24, &location);
  v24[1] = v10;
  v24[2] = v8;
  v25 = v7;
  v22 = v12;
  v23 = handlerCopy;
  v17 = OUTLINED_FUNCTION_2_4();
  [(AVTViewTransitionHelper *)v18 transitionViewToStickerConfiguration:v19 fallbackPose:v20 duration:v15 style:v14 avatar:0 completionHandler:v21 simultaneousAnimationsBlock:v17];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (void)_transitionCoordinatorToStickerConfiguration:(id)configuration duration:(double)duration style:(unint64_t)style options:(unint64_t)options
{
  v11 = self->_avatar;
  configurationCopy = configuration;
  transitionHelper = [(AVTView *)self transitionHelper];
  [(AVTViewTransitionHelper *)transitionHelper transitionCoordinatorToStickerConfiguration:configurationCopy duration:style style:duration options:options avatar:v11];
}

- (void)_transitionCoordinatorOutOfStickerConfigurationWithDuration:(double)duration style:(unint64_t)style options:(unint64_t)options
{
  v9 = self->_avatar;
  transitionHelper = [(AVTView *)self transitionHelper];
  [(AVTViewTransitionHelper *)transitionHelper transitionCoordinatorOutOfStickerConfigurationWithDuration:style style:duration options:options avatar:v9];
}

- (void)arMode
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[AVTView arMode]";
  OUTLINED_FUNCTION_0(&dword_1BB472000, self, a3, "Error: %s is deprecated - use AVTPresentationConfiguration instead", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setArMode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[AVTView setArMode:]";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: %s is deprecated - use AVTPresentationConfiguration instead", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_transitionToFaceTrackingWithDuration:(uint64_t)a3 style:(uint64_t)a4 enableBakedAnimations:(uint64_t)a5 completionHandler:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_faceTrackerDidUpdateBlock == nil";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. A previously registered callback won't be executed because it will be overwritten", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __60__AVTView__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: Error while writing subdiv data: %@", &v4, 0xCu);
}

@end