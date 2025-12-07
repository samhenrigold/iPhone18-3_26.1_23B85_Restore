@interface AVTRenderer
- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)renderer;
- (BOOL)arMode;
- (BOOL)deprecated_ntk_isPaused;
- (float)_cek_currentPointOfViewSensorHeight;
- (id)_initWithDevice:(id)device options:(id)options isPrivateRenderer:(BOOL)renderer privateRendererOwner:(id)owner clearsOnDraw:(BOOL)draw;
- (id)_renderer:(id)_renderer subdivDataForHash:(id)hash;
- (id)faceTrackingDelegate;
- (void)__setAvatar:(id)avatar;
- (void)_animateToNoTrackingState;
- (void)_avatarWantsSpecificTechniqueDidChange:(id)change;
- (void)_avtSetupWithOptions:(id)options;
- (void)_cek_applyBlendshapeWeightsInHierarchyUsingBlock:(id)block;
- (void)_cek_beginTransaction;
- (void)_cek_fetchBlendshapeWeightsInHierarchyUsingBlock:(id)block;
- (void)_cek_renderAtTime:(double)time enableAntialiasing:(BOOL)antialiasing viewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)_cek_setCurrentPointOfViewFocalLength:(float)length;
- (void)_detachAvatarFromRenderer;
- (void)_implementCEKWorkaroundIfNeeded;
- (void)_renderer:(id)_renderer didApplyAnimationsAtTime:(double)time;
- (void)_renderer:(id)_renderer didBuildSubdivDataForHash:(id)hash dataProvider:(id)provider;
- (void)_renderer:(id)_renderer updateAtTime:(double)time;
- (void)_setAvatar:(id)avatar;
- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)mode;
- (void)arMode;
- (void)clearOutAnimationToNoTrackingState;
- (void)dealloc;
- (void)deprecated_ntk_setPaused:(BOOL)paused;
- (void)deprecated_ntk_setPhysicsWorldTimeStep:(float)step;
- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error;
- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended;
- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted;
- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame;
- (void)renderAtTime:(double)time viewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)renderer:(id)renderer commandBufferDidCompleteWithError:(id)error;
- (void)renderer:(id)renderer didFallbackToDefaultTextureForSource:(id)source message:(id)message;
- (void)setArMode:(BOOL)mode;
- (void)setAvtRendererTechnique:(id)technique;
- (void)setAvt_antialiasingMode:(unint64_t)mode;
- (void)setCaptureImageIsTooDark:(BOOL)dark;
- (void)setEnableDepthMask:(BOOL)mask withFlippedDepth:(BOOL)depth;
- (void)setEnableReticle:(BOOL)reticle;
- (void)setFaceIsTracked:(BOOL)tracked;
- (void)setFaceTracker:(id)tracker;
- (void)setFaceTrackingDelegate:(id)delegate;
- (void)setPauseSimulation:(BOOL)simulation;
- (void)setPresentationConfiguration:(id)configuration;
- (void)setSensorCovered:(BOOL)covered;
- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)needed;
@end

@implementation AVTRenderer

- (void)_implementCEKWorkaroundIfNeeded
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:?];

    if (v5)
    {
      [MEMORY[0x1E697A8D8] _implementCEKWorkaroundIfNeeded];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = objc_opt_class();
        v7 = objc_opt_class();
        if (v6 != v7)
        {
          v8 = avt_default_log(v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [(AVTRenderer(AvatarKit_CEKWorkaround) *)self _implementCEKWorkaroundIfNeeded];
          }
        }

        v9 = objc_opt_class();
        object_setClass(self, v9);
      }
    }
  }
}

- (void)_avtSetupWithOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(MEMORY[0x1E696AE68]);
  lock = self->_lock;
  self->_lock = v4;

  v6 = objc_alloc(MEMORY[0x1E69DF388]);
  avt_init = [v6 avt_init];
  [(AVTRenderer *)self setWorld:?];

  world = [(AVTRenderer *)self world];
  physicsWorld = [world physicsWorld];
  [physicsWorld setSpeed:?];

  v10 = [AVTAvatarEnvironment alloc];
  world2 = [(AVTRenderer *)self world];
  v12 = [AVTAvatarEnvironment initAndInstallInScene:v10 renderer:"initAndInstallInScene:renderer:"];
  environment = self->_environment;
  self->_environment = v12;

  v14 = [optionsCopy objectForKeyedSubscript:?];
  v15 = v14;
  if (v14)
  {
    LOBYTE(v14) = [v14 BOOLValue];
  }

  self->_enableFaceTrackingLossFeedback = v14;
  self->_enableReticle = 0;
  v16 = [optionsCopy objectForKeyedSubscript:?];
  v17 = v16;
  if (v16 && ![v16 BOOLValue])
  {
    v18 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  else
  {
    v18 = objc_alloc_init(AVTAugmentedRealityPresentationConfiguration);
  }

  v19 = v18;
  [(AVTRenderer *)self setPresentationConfiguration:?];

  self->_antialiasingMode = 2;
  [(AVTRenderer *)self set_wantsWorldRendererDelegationMessages:?];
  [(AVTRenderer *)self set_resourceManagerMonitor:?];
  [(AVTRenderer *)self set_commandBufferStatusMonitor:?];
  [(AVTRenderer *)self _allowGPUBackgroundExecution];
  [(AVTRenderer *)self _implementCEKWorkaroundIfNeeded];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:? selector:? name:? object:?];
}

- (id)_initWithDevice:(id)device options:(id)options isPrivateRenderer:(BOOL)renderer privateRendererOwner:(id)owner clearsOnDraw:(BOOL)draw
{
  drawCopy = draw;
  rendererCopy = renderer;
  optionsCopy = options;
  ownerCopy = owner;
  deviceCopy = device;
  AVTInitializeShaderCache(deviceCopy, v15);
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  v18.receiver = self;
  v18.super_class = AVTRenderer;
  v16 = [(AVTRenderer *)&v18 _initWithDevice:deviceCopy options:optionsCopy isPrivateRenderer:rendererCopy privateRendererOwner:ownerCopy clearsOnDraw:drawCopy];

  if (v16)
  {
    [v16 _avtSetupWithOptions:?];
  }

  [MEMORY[0x1E69DF378] commit];

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:?];

  [(AVTRenderer *)self _detachAvatarFromRenderer];
  [(AVTFaceTracker *)self->_faceTracker removeDelegate:?];
  v4.receiver = self;
  v4.super_class = AVTRenderer;
  [(AVTRenderer *)&v4 dealloc];
}

- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)mode
{
  world = [(AVTRenderer *)self world];
  physicsWorld = [world physicsWorld];

  [physicsWorld scale];
  if (v6 != 100.0)
  {
    avatar = [(AVTRenderer *)self avatar];
    if (avatar && mode)
    {
      avatar2 = [(AVTRenderer *)self avatar];
      [avatar2 arScale];
      [physicsWorld setScale:?];
    }

    else
    {
      [physicsWorld setScale:?];
    }
  }
}

- (BOOL)arMode
{
  if ((arMode_done_1 & 1) == 0)
  {
    arMode_done_1 = 1;
    v3 = avt_default_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AVTRenderer *)v3 arMode];
    }
  }

  return [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
}

- (void)setArMode:(BOOL)mode
{
  modeCopy = mode;
  if ((setArMode__done_1 & 1) == 0)
  {
    setArMode__done_1 = 1;
    v5 = avt_default_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AVTRenderer setArMode:v5];
    }
  }

  if (modeCopy)
  {
    v6 = objc_alloc_init(AVTAugmentedRealityPresentationConfiguration);
  }

  else
  {
    v6 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  v7 = v6;
  [(AVTRenderer *)self setPresentationConfiguration:?];
}

- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)needed
{
  height = needed.height;
  width = needed.width;
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    if (![(AVTAvatarEnvironment *)self->_environment showReticle]&& width != 0.0 && height != 0.0)
    {
      [(AVTFaceTracker *)self->_faceTracker cameraIntrinsics];
      if ((v8 + (v6 + v7)) != 0.0)
      {
        [AVTFaceTracker projectionMatrixForViewportSize:"projectionMatrixForViewportSize:zNear:zFar:" zNear:? zFar:?];
        [(AVTRenderer *)self setFramingMode:?];
        pointOfView = [(AVTRenderer *)self pointOfView];
        camera = [pointOfView camera];

        [camera avt_setSimdProjectionTransform:?];
      }
    }
  }
}

- (void)setPauseSimulation:(BOOL)simulation
{
  if (self->_pauseSimulation != simulation)
  {
    self->_pauseSimulation = simulation;
    arMaskRenderer = self->_arMaskRenderer;
    if (arMaskRenderer)
    {
      [(AVTARMaskRenderer *)arMaskRenderer setDepthSmoothingFactor:?];
    }

    world = [(AVTRenderer *)self world];
    physicsWorld = [world physicsWorld];
    [physicsWorld setSpeed:?];

    world2 = [(AVTRenderer *)self world];
    clock = [world2 clock];
    [clock setPaused:?];
  }
}

- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame
{
  updateCopy = update;
  frameCopy = frame;
  lastFaceTrackerUpdateTimestamp = self->_lastFaceTrackerUpdateTimestamp;
  [updateCopy lastUpdateTimestamp];
  if (lastFaceTrackerUpdateTimestamp < v8)
  {
    [updateCopy lastUpdateTimestamp];
    self->_lastFaceTrackerUpdateTimestamp = v9;
  }

  lastFaceTrackerUpdateWithTrackedFaceTimestamp = self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp;
  [(AVTFaceTracker *)self->_faceTracker lastUpdateWithTrackedFaceTimestamp];
  if (lastFaceTrackerUpdateWithTrackedFaceTimestamp < v11)
  {
    [(AVTFaceTracker *)self->_faceTracker lastUpdateWithTrackedFaceTimestamp];
    self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp = v12;
    if (!self->_faceIsTracked)
    {
      [(AVTRenderer *)self setFaceIsTracked:?];
      [(AVTRenderer *)self clearOutAnimationToNoTrackingState];
    }

    faceTrackingInfo = [updateCopy faceTrackingInfo];
    avatar = self->_avatar;
    pointOfView = [(AVTRenderer *)self pointOfView];
    [AVTAvatar applyHeadPoseWithTrackingInfo:"applyHeadPoseWithTrackingInfo:gazeCorrection:pointOfView:" gazeCorrection:? pointOfView:?];

    [(AVTAvatar *)self->_avatar applyBlendShapesWithTrackingInfo:?];
LABEL_7:

    goto LABEL_13;
  }

  if (self->_lastFaceTrackerUpdateTimestamp - self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp > 1.5)
  {
    arSession = [(AVTFaceTracker *)self->_faceTracker arSession];
    faceTrackingInfo = arSession;
    if (self->_faceIsTracked && (!arSession || [arSession state] == 1))
    {
      [(AVTRenderer *)self _animateToNoTrackingState];
    }

    goto LABEL_7;
  }

LABEL_13:
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    arMaskRenderer = self->_arMaskRenderer;
    fallBackDepthData = [updateCopy fallBackDepthData];
    [updateCopy captureVideoOrientation];
    [updateCopy interfaceOrientation];
    [updateCopy mirroredDepthData];
    [AVTARMaskRenderer updateWithARFrame:"updateWithARFrame:fallBackDepthData:captureOrientation:interfaceOrientation:mirroredDepthData:" fallBackDepthData:? captureOrientation:? interfaceOrientation:? mirroredDepthData:?];
  }

  [updateCopy lowLight];
  [(AVTRenderer *)self setCaptureImageIsTooDark:?];
  [updateCopy isSensorCovered];
  [(AVTRenderer *)self setSensorCovered:?];
}

- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v8 avatarRenderer:? faceTrackingSessionFailedWithError:?];
  }
}

- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarRendererFaceTrackingSessionInterruptionDidBegin:?];
  }
}

- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarRendererFaceTrackingSessionInterruptionDidEnd:?];
  }
}

- (void)_animateToNoTrackingState
{
  [(AVTRenderer *)self setFaceIsTracked:?];
  if (self->_enableFaceTrackingLossFeedback)
  {
    [(AVTAvatarEnvironment *)self->_environment setShowReticle:?];
    objc_initWeak(&location, self);
    avatar = [(AVTRenderer *)self avatar];
    v4 = +[AVTAvatarPose friendlyPose];
    [avatar animatePhysicsScaleFactor:? duration:?];
    v5 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v6, &location);
    [avatar transitionToPose:v5 duration:3221225472 delay:__40__AVTRenderer__animateToNoTrackingState__block_invoke completionHandler:&unk_1E7F49470];
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }
}

void __40__AVTRenderer__animateToNoTrackingState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[56] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained[49] setEnablePhysicsSimulation:?];
    WeakRetained = v2;
  }
}

- (void)clearOutAnimationToNoTrackingState
{
  if (self->_enableFaceTrackingLossFeedback)
  {
    [(AVTAvatarEnvironment *)self->_environment setShowReticle:?];
    avatar = [(AVTRenderer *)self avatar];
    [avatar stopTransitionAnimation];
    [avatar animatePhysicsScaleFactor:? duration:?];
    [avatar setPose:?];
    [(AVTAvatarEnvironment *)self->_environment setEnablePhysicsSimulation:?];
  }
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

- (void)setAvt_antialiasingMode:(unint64_t)mode
{
  if (self->_antialiasingMode != mode)
  {
    self->_antialiasingMode = mode;
    [AVTARMaskRenderer setClearWithCamera:"setClearWithCamera:antialiasingMode:" antialiasingMode:?];
  }
}

- (void)setFaceTracker:(id)tracker
{
  trackerCopy = tracker;
  faceTracker = self->_faceTracker;
  if (faceTracker != trackerCopy)
  {
    v7 = trackerCopy;
    [(AVTFaceTracker *)faceTracker removeDelegate:?];
    objc_storeStrong(&self->_faceTracker, tracker);
    faceTracker = [(AVTFaceTracker *)self->_faceTracker addDelegate:?];
    trackerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](faceTracker, trackerCopy);
}

- (void)setFaceIsTracked:(BOOL)tracked
{
  if (self->_faceIsTracked != tracked)
  {
    self->_faceIsTracked = tracked;
    WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
      [v6 avatarRenderer:? didUpdateWithFaceTrackingStatus:?];
    }
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
  if (self->_captureImageIsTooDark != dark)
  {
    self->_captureImageIsTooDark = dark;
    WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
      [v6 avatarRenderer:? didUpdateWithLowLightStatus:?];
    }
  }
}

- (void)setSensorCovered:(BOOL)covered
{
  if (self->_isSensorCovered != covered)
  {
    self->_isSensorCovered = covered;
    WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
      [v6 avatarRenderer:? didUpdateWithSensorOcclusionStatus:?];
    }
  }
}

- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:?];
  v13.receiver = self;
  v13.super_class = AVTRenderer;
  [(AVTRenderer *)&v13 renderWithViewport:bufferCopy commandBuffer:descriptorCopy passDescriptor:x, y, width, height];
}

- (void)renderAtTime:(double)time viewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:?];
  v16.receiver = self;
  v16.super_class = AVTRenderer;
  [(AVTRenderer *)&v16 updateAtTime:time];
  v15.receiver = self;
  v15.super_class = AVTRenderer;
  [(AVTRenderer *)&v15 renderWithViewport:bufferCopy commandBuffer:descriptorCopy passDescriptor:x, y, width, height];
}

- (void)setPresentationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  if (self->_presentationConfiguration != configurationCopy)
  {
    objc_storeStrong(&self->_presentationConfiguration, configurationCopy);
    if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
    {
      arMaskRenderer = self->_arMaskRenderer;
      if (arMaskRenderer)
      {
        [(AVTARMaskRenderer *)arMaskRenderer setPresentationConfiguration:?];
      }

      else
      {
        objc_initWeak(&location, self);
        v8 = [AVTARMaskRenderer alloc];
        v11 = MEMORY[0x1E69E9820];
        objc_copyWeak(&v12, &location);
        v9 = [(AVTARMaskRenderer *)v8 initWithOwner:v11 presentationConfiguration:3221225472 techniqueDidChangeHandler:__44__AVTRenderer_setPresentationConfiguration___block_invoke, &unk_1E7F49560];
        v10 = self->_arMaskRenderer;
        self->_arMaskRenderer = v9;

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }

      [(AVTARMaskRenderer *)self->_arMaskRenderer setFlipDepth:?];
      [AVTARMaskRenderer setClearWithCamera:"setClearWithCamera:antialiasingMode:" antialiasingMode:?];
    }

    else
    {
      [(AVTRenderer *)self setAvtRendererTechnique:?];
      v7 = self->_arMaskRenderer;
      self->_arMaskRenderer = 0;
    }

    [(AVTRenderer *)self setFramingMode:?];
    [AVTAvatarEnvironment avatarDidChange:"avatarDidChange:presentationConfiguration:" presentationConfiguration:?];
    [(AVTAvatar *)self->_avatar setPresentationConfiguration:?];
    [(AVTRenderer *)self _updatePhysicsWorldForAvatarARScaleAndARMode:?];
  }
}

void __44__AVTRenderer_setPresentationConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setAvtRendererTechnique:?];
  }
}

- (void)_detachAvatarFromRenderer
{
  avatar = self->_avatar;
  world = [(AVTRenderer *)self world];
  [(AVTAvatar *)avatar willRemoveFromWorld:?];

  avatarNode = self->_avatarNode;

  [(VFXNode *)avatarNode removeFromParentNode];
}

- (void)__setAvatar:(id)avatar
{
  avatarCopy = avatar;
  if (self->_avatar != avatarCopy)
  {
    v16 = avatarCopy;
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:?];
    pose = [(AVTAvatar *)self->_avatar pose];
    [(AVTRenderer *)self lock];
    if ([(AVTAvatar *)self->_avatar avatarSpecificTechniqueClass])
    {
      avtRendererTechnique = [(AVTRenderer *)self avtRendererTechnique];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(AVTRenderer *)self setAvtRendererTechnique:?];
      }
    }

    [(AVTRenderer *)self _detachAvatarFromRenderer];
    objc_storeStrong(&self->_avatar, avatar);
    avatarNode = [(AVTAvatar *)v16 avatarNode];
    avatarNode = self->_avatarNode;
    self->_avatarNode = avatarNode;

    world = [(AVTRenderer *)self world];
    rootNode = [world rootNode];
    [rootNode addChildNode:?];

    avatar = self->_avatar;
    world2 = [(AVTRenderer *)self world];
    [(AVTAvatar *)avatar didAddToScene:?];

    [AVTAvatarEnvironment avatarDidChange:"avatarDidChange:presentationConfiguration:" presentationConfiguration:?];
    [(AVTAvatar *)self->_avatar setPresentationConfiguration:?];
    [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    [(AVTRenderer *)self _updatePhysicsWorldForAvatarARScaleAndARMode:?];
    if ([(AVTAvatar *)self->_avatar avatarSpecificTechniqueClass])
    {
      v15 = [(AVTAvatar *)self->_avatar newAvatarSpecificTechniqueWithRenderer:?];
      [(AVTRenderer *)self setAvtRendererTechnique:?];
    }

    [(AVTRenderer *)self avatarDidChange];
    [(AVTRenderer *)self unlock];
    [(AVTAvatar *)self->_avatar setPose:?];
    [MEMORY[0x1E69DF378] commit];

    avatarCopy = v16;
  }
}

- (void)_setAvatar:(id)avatar
{
  avatarCopy = avatar;
  kdebug_trace();
  [(AVTRenderer *)self __setAvatar:?];

  kdebug_trace();
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
      block[2] = __64__AVTRenderer__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke;
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

void __64__AVTRenderer__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke(uint64_t a1)
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

- (void)_renderer:(id)_renderer updateAtTime:(double)time
{
  avatarNode = self->_avatarNode;
  _rendererCopy = _renderer;
  world = [(VFXNode *)avatarNode world];
  world2 = [_rendererCopy world];

  if (world == world2)
  {
    avatar = [(AVTRenderer *)self avatar];
    [avatar updateWithOptions:?];

    [(AVTARMaskRenderer *)self->_arMaskRenderer updateMaskParametersAtTime:?];
    if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
    {
      arMaskRenderer = self->_arMaskRenderer;
      avatar2 = [(AVTRenderer *)self avatar];
      rootJointNode = [avatar2 rootJointNode];
      [(AVTARMaskRenderer *)arMaskRenderer updateMaskParametersWithRootJointNode:?];
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
    v24[3] = __69__AVTRenderer_renderer_didFallbackToDefaultTextureForSource_message___block_invoke;
    v24[4] = &unk_1E7F495B0;
    v25 = rendererCopy;
    v26 = sourceCopy;
    v27 = messageCopy;
    [(AVTRenderer *)self crashAppExtensionOrViewService_rdar98130076:?];
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
      *&buf[4] = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]";
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
    *&buf[4] = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]";
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
  v29 = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]";
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

void __69__AVTRenderer_renderer_didFallbackToDefaultTextureForSource_message___block_invoke(void *a1)
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
    *(buf + 4) = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]_block_invoke";
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
  v16 = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]_block_invoke";
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
    v28[3] = __58__AVTRenderer_renderer_commandBufferDidCompleteWithError___block_invoke;
    v28[4] = &unk_1E7F495B0;
    v29 = rendererCopy;
    v30 = errorCopy;
    v31 = error;
    [(AVTRenderer *)self crashAppExtensionOrViewService_rdar98130076:?];
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
          *&buf[4] = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
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
    *&buf[4] = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
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
  v33 = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
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

void __58__AVTRenderer_renderer_commandBufferDidCompleteWithError___block_invoke(uint64_t a1)
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
    *(buf + 4) = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]_block_invoke";
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
  v18 = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]_block_invoke";
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
      avtRendererTechnique = [(AVTRenderer *)self avtRendererTechnique];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [(AVTAvatar *)self->_avatar newAvatarSpecificTechniqueWithRenderer:?];
        [(AVTRenderer *)self setAvtRendererTechnique:?];
      }
    }

    else
    {

      [(AVTRenderer *)self setAvtRendererTechnique:?];
    }
  }
}

- (void)setAvtRendererTechnique:(id)technique
{
  techniqueCopy = technique;
  if (self->_avtRendererTechnique != techniqueCopy)
  {
    objc_storeStrong(&self->_avtRendererTechnique, technique);
    [(AVTRenderer *)self _avtUpdateRendersContinuously];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DF378];
    world = [(AVTRenderer *)self world];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __39__AVTRenderer_setAvtRendererTechnique___block_invoke;
    v11 = &unk_1E7F495D8;
    objc_copyWeak(&v13, &location);
    v12 = techniqueCopy;
    [v6 enqueueCommandForObject:? immediateTransactionBlock:?];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __39__AVTRenderer_setAvtRendererTechnique___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 64, *(a1 + 32));
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

- (BOOL)deprecated_ntk_isPaused
{
  world = [(AVTRenderer *)self world];
  clock = [world clock];
  isPaused = [clock isPaused];

  return isPaused;
}

- (void)deprecated_ntk_setPaused:(BOOL)paused
{
  world = [(AVTRenderer *)self world];
  clock = [world clock];
  [clock setPaused:?];
}

- (void)deprecated_ntk_setPhysicsWorldTimeStep:(float)step
{
  world = [(AVTRenderer *)self world];
  physicsWorld = [world physicsWorld];
  [physicsWorld setTimeStep:?];
}

- (void)_cek_beginTransaction
{
  [MEMORY[0x1E69DF378] begin];
  v2 = MEMORY[0x1E69DF378];

  [v2 setAnimationDuration:?];
}

- (float)_cek_currentPointOfViewSensorHeight
{
  pointOfView = [(AVTRenderer *)self pointOfView];
  camera = [pointOfView camera];

  [camera sensorHeight];
  v5 = v4;

  return v5;
}

- (void)_cek_setCurrentPointOfViewFocalLength:(float)length
{
  pointOfView = [(AVTRenderer *)self pointOfView];
  camera = [pointOfView camera];

  [camera setFocalLength:?];
}

- (void)_cek_renderAtTime:(double)time enableAntialiasing:(BOOL)antialiasing viewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  [(AVTRenderer *)self setAvt_antialiasingMode:?];
  [MEMORY[0x1E69DF378] flush];
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:?];
  v17.receiver = self;
  v17.super_class = AVTRenderer;
  [(AVTRenderer *)&v17 updateAtTime:time];
  v16.receiver = self;
  v16.super_class = AVTRenderer;
  [(AVTRenderer *)&v16 renderWithViewport:bufferCopy commandBuffer:descriptorCopy passDescriptor:x, y, width, height];
}

- (void)_cek_fetchBlendshapeWeightsInHierarchyUsingBlock:(id)block
{
  blockCopy = block;
  world = [(AVTRenderer *)self world];
  rootNode = [world rootNode];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __82__AVTRenderer_CameraEffectsKit___cek_fetchBlendshapeWeightsInHierarchyUsingBlock___block_invoke;
  v11 = &unk_1E7F496A8;
  v12 = blockCopy;
  v7 = blockCopy;
  [rootNode enumerateHierarchyUsingBlock:?];
}

void __82__AVTRenderer_CameraEffectsKit___cek_fetchBlendshapeWeightsInHierarchyUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 name];
  v4 = v3;
  if (v3 && AVTMorphTargetNameDefinesPose(v3))
  {
    v5 = [v8 presentationNode];
    v6 = [v5 morpher];
    v7 = [v6 weights];

    if (v7)
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_cek_applyBlendshapeWeightsInHierarchyUsingBlock:(id)block
{
  blockCopy = block;
  world = [(AVTRenderer *)self world];
  rootNode = [world rootNode];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke;
  v11 = &unk_1E7F496A8;
  v12 = blockCopy;
  v7 = blockCopy;
  [rootNode enumerateHierarchyUsingBlock:?];
}

void __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 name];
  v7 = v6;
  if (v6 && AVTMorphTargetNameDefinesPose(v6))
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke_2;
    v9[3] = &unk_1E7F496D0;
    v10 = v5;
    (*(v8 + 16))(v8, v7, a3, v9);
  }
}

void __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 presentationNode];
  v4 = [v5 morpher];
  [v4 setWeights:?];
}

- (void)setEnableDepthMask:(BOOL)mask withFlippedDepth:(BOOL)depth
{
  self->_arMaskRendererHasFlippedDepth = depth;
  [(AVTARMaskRenderer *)self->_arMaskRenderer setFlipDepth:?];

  [(AVTRenderer *)self setArMode:?];
}

- (void)arMode
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[AVTRenderer arMode]";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: %s is deprecated - use AVTPresentationConfiguration instead", &v1, 0xCu);
}

- (void)setArMode:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[AVTRenderer setArMode:]";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: %s is deprecated - use AVTPresentationConfiguration instead", &v1, 0xCu);
}

@end