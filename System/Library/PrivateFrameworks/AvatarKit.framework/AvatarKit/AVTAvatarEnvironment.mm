@interface AVTAvatarEnvironment
- (BOOL)faceIsFullyVisible;
- (VFXNode)currentPointOfView;
- (id)defaultEnvironmentNode;
- (id)initAndInstallInScene:(id)scene renderer:(id)renderer;
- (id)pointOfViewForFramingMode:(id)mode;
- (void)avatarDidChange:(id)change presentationConfiguration:(id)configuration;
- (void)configureARCameraForFaceTracking;
- (void)configureARCameraForReticle;
- (void)defaultEnvironmentNode;
- (void)didSnapshot;
- (void)hideTrackingLossIndicator;
- (void)setEnablePhysicsSimulation:(BOOL)simulation;
- (void)setFramingMode:(id)mode animationDuration:(double)duration;
- (void)setFramingModeForcingPointOfViewUpdate:(id)update;
- (void)setShowReticle:(BOOL)reticle;
- (void)showTrackingLossIndicator;
- (void)updateCustomCameras;
- (void)updatePointOfViewFromFramingMode;
- (void)updateSpecializedLighting;
- (void)updateWithPresentationConfiguration:(id)configuration;
- (void)willSnapshot;
@end

@implementation AVTAvatarEnvironment

- (id)defaultEnvironmentNode
{
  v2 = +[AVTResourceLocator sharedResourceLocator];
  v3 = [AVTResourceLocator pathForEnvironmentResource:v2 ofType:? isDirectory:?];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
  v5 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:? options:? error:?];
  v6 = 0;
  v7 = v6;
  if (v6)
  {
    v8 = avt_default_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AVTAvatarEnvironment *)v3 defaultEnvironmentNode];
    }
  }

  v9 = [AVTResourceLocator pathForMemojiResource:v2 ofType:? isDirectory:?];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v11 = [MEMORY[0x1E69DF388] avt_nodeNamed:? forWorldAtURL:? options:? error:?];
    v12 = 0;
    v13 = v12;
    if (v12)
    {
      v14 = avt_default_log(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarEnvironment *)v9 defaultEnvironmentNode];
      }
    }

    if (v11)
    {
      [v5 addChildNode:?];
    }
  }

  clone = [v5 clone];
  [clone setName:?];

  return clone;
}

- (id)initAndInstallInScene:(id)scene renderer:(id)renderer
{
  v60 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  rendererCopy = renderer;
  v57.receiver = self;
  v57.super_class = AVTAvatarEnvironment;
  v8 = [(AVTAvatarEnvironment *)&v57 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, sceneCopy);
    objc_storeWeak(&v9->_renderer, rendererCopy);
    defaultEnvironmentNode = [(AVTAvatarEnvironment *)v9 defaultEnvironmentNode];
    environmentNode = v9->_environmentNode;
    v9->_environmentNode = defaultEnvironmentNode;

    WeakRetained = objc_loadWeakRetained(&v9->_scene);
    rootNode = [WeakRetained rootNode];
    [rootNode addChildNode:?];

    v14 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
    animojiCamera = v9->_animojiCamera;
    v9->_animojiCamera = v14;

    v16 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
    memojiCameraGroup = v9->_memojiCameraGroup;
    v9->_memojiCameraGroup = v16;

    v18 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
    defaultLightingNode = v9->_defaultLightingNode;
    v9->_defaultLightingNode = v18;

    objc_storeStrong(&v9->_defaultPointOfView, v9->_animojiCamera);
    name = [(VFXNode *)v9->_defaultPointOfView name];
    framingMode = v9->_framingMode;
    v9->_framingMode = name;

    v22 = objc_loadWeakRetained(&v9->_renderer);
    [v22 setPointOfView:?];

    if (!v9->_defaultPointOfView)
    {
      v24 = avt_default_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatarEnvironment initAndInstallInScene:v24 renderer:?];
      }
    }

    node = [MEMORY[0x1E69DF330] node];
    whitePlane = v9->_whitePlane;
    v9->_whitePlane = node;

    v27 = [MEMORY[0x1E69DF338] planeWithWidth:? height:?];
    [(VFXNode *)v9->_whitePlane setModel:?];

    model = [(VFXNode *)v9->_whitePlane model];
    firstMaterial = [model firstMaterial];
    [firstMaterial setShadingModel:?];

    [(VFXNode *)v9->_whitePlane setPosition:?];
    [(VFXNode *)v9->_whitePlane setRenderingOrder:?];
    [(VFXNode *)v9->_whitePlane setOpacity:?];
    node2 = [MEMORY[0x1E69DF330] node];
    trackingLostIndicator = v9->_trackingLostIndicator;
    v9->_trackingLostIndicator = node2;

    v32 = [MEMORY[0x1E69DF338] planeWithWidth:? height:?];
    [(VFXNode *)v9->_trackingLostIndicator setModel:?];

    model2 = [(VFXNode *)v9->_trackingLostIndicator model];
    firstMaterial2 = [model2 firstMaterial];
    [firstMaterial2 setWritesToDepthBuffer:?];

    model3 = [(VFXNode *)v9->_trackingLostIndicator model];
    firstMaterial3 = [model3 firstMaterial];
    [firstMaterial3 setReadsFromDepthBuffer:?];

    model4 = [(VFXNode *)v9->_trackingLostIndicator model];
    firstMaterial4 = [model4 firstMaterial];
    [firstMaterial4 setBlendMode:?];

    model5 = [(VFXNode *)v9->_trackingLostIndicator model];
    firstMaterial5 = [model5 firstMaterial];
    [firstMaterial5 setShadingModel:?];

    redColor = [MEMORY[0x1E69DC888] redColor];
    model6 = [(VFXNode *)v9->_trackingLostIndicator model];
    firstMaterial6 = [model6 firstMaterial];
    diffuse = [firstMaterial6 diffuse];
    [diffuse setContents:?];

    [(VFXNode *)v9->_trackingLostIndicator setPosition:?];
    [(VFXNode *)v9->_trackingLostIndicator setRenderingOrder:?];
    [(VFXNode *)v9->_trackingLostIndicator setOpacity:?];
    v45 = MEMORY[0x1E696AAE8];
    objc_opt_class();
    v46 = [v45 bundleForClass:?];
    v47 = [v46 pathForResource:? ofType:?];

    v48 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:? encoding:? error:?];
    model7 = [(VFXNode *)v9->_trackingLostIndicator model];
    v58 = *MEMORY[0x1E69DF3B0];
    v59 = v48;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    [model7 setShaderModifiers:?];

    [(VFXNode *)v9->_defaultPointOfView addChildNode:?];
    v51 = [(VFXNode *)v9->_defaultPointOfView copy];
    arModeCamera = v9->_arModeCamera;
    v9->_arModeCamera = v51;

    camera = [(VFXNode *)v9->_defaultPointOfView camera];
    v54 = [camera copy];
    [(VFXNode *)v9->_arModeCamera setCamera:?];

    [(VFXNode *)v9->_arModeCamera setName:?];
    camera2 = [(VFXNode *)v9->_arModeCamera camera];
    [camera2 setName:?];

    [(VFXNode *)v9->_environmentNode addChildNode:?];
    [(AVTAvatarEnvironment *)v9 configureARCameraForReticle];
    [(VFXNode *)v9->_defaultPointOfView addChildNode:?];
  }

  return v9;
}

- (VFXNode)currentPointOfView
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);
  pointOfView = [WeakRetained pointOfView];

  return pointOfView;
}

- (void)avatarDidChange:(id)change presentationConfiguration:(id)configuration
{
  obj = change;
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_avatar);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_avatar, obj);
    [(AVTAvatarEnvironment *)self updateCustomCameras];
    [(AVTAvatarEnvironment *)self updateSpecializedLighting];
  }

  [(AVTAvatarEnvironment *)self updateWithPresentationConfiguration:?];
  [(AVTAvatarEnvironment *)self updatePointOfViewFromFramingMode];
}

- (void)updateCustomCameras
{
  [(VFXNode *)self->_customCamera removeFromParentNode];
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  cameraNode = [WeakRetained cameraNode];
  clone = [cameraNode clone];
  customCamera = self->_customCamera;
  self->_customCamera = clone;

  if (self->_customCamera)
  {
    environmentNode = self->_environmentNode;

    [(VFXNode *)environmentNode addChildNode:?];
  }
}

- (void)updateSpecializedLighting
{
  [(VFXNode *)self->_specializedLightingNode removeFromParentNode];
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  lightingNode = [WeakRetained lightingNode];
  clone = [lightingNode clone];
  specializedLightingNode = self->_specializedLightingNode;
  self->_specializedLightingNode = clone;

  if (self->_specializedLightingNode)
  {
    v7 = objc_loadWeakRetained(&self->_scene);
    rootNode = [v7 rootNode];
    [rootNode addChildNode:?];
  }

  defaultLightingNode = self->_defaultLightingNode;

  [(VFXNode *)defaultLightingNode setHidden:?];
}

- (void)setFramingMode:(id)mode animationDuration:(double)duration
{
  modeCopy = mode;
  if (![(NSString *)self->_framingMode isEqualToString:?])
  {
    v6 = [modeCopy copy];
    framingMode = self->_framingMode;
    self->_framingMode = v6;

    if (duration <= 0.0)
    {
      [(AVTAvatarEnvironment *)self updatePointOfViewFromFramingMode];
    }

    else
    {
      [MEMORY[0x1E69DF378] begin];
      [MEMORY[0x1E69DF378] setAnimationDuration:?];
      [(AVTAvatarEnvironment *)self updatePointOfViewFromFramingMode];
      [MEMORY[0x1E69DF378] commit];
    }
  }
}

- (void)setFramingModeForcingPointOfViewUpdate:(id)update
{
  v4 = [update copy];
  framingMode = self->_framingMode;
  self->_framingMode = v4;

  [(AVTAvatarEnvironment *)self updatePointOfViewFromFramingMode];
}

- (id)pointOfViewForFramingMode:(id)mode
{
  modeCopy = mode;
  if ([(__CFString *)modeCopy isEqualToString:?])
  {
    WeakRetained = objc_loadWeakRetained(&self->_avatar);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {

      modeCopy = @"cameraGridMemoji";
    }
  }

  v7 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];

  return v7;
}

- (void)updatePointOfViewFromFramingMode
{
  v2 = *self;
  name = [a2 name];
  LODWORD(v10) = 138412546;
  *(&v10 + 4) = v2;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_2(&dword_1BB472000, v4, v5, "Error: Failed to find the %@ camera, using the default one instead (%@)", v6, v7, v8, v9, v10, DWORD2(v10));
}

- (void)updateWithPresentationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  objc_opt_class();
  objc_opt_isKindOfClass();

  if (updateWithPresentationConfiguration__onceToken != -1)
  {
    [AVTAvatarEnvironment updateWithPresentationConfiguration:];
  }

  [configurationCopy usesAR];

  [(VFXNode *)self->_environmentNode enumerateHierarchyUsingBlock:?];
  v6 = objc_loadWeakRetained(&self->_avatar);
  rootJointNode = [v6 rootJointNode];
  parentNode = [rootJointNode parentNode];
  parentNode2 = [(VFXNode *)self->_arModeCamera parentNode];
  [parentNode convertTransform:? toNode:?];
  [(VFXNode *)self->_arModeCamera setTransform:?];
}

void __60__AVTAvatarEnvironment_updateWithPresentationConfiguration___block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    updateWithPresentationConfiguration__shadowSamples = 1;
    updateWithPresentationConfiguration__shadowSize = 1;
  }
}

void __60__AVTAvatarEnvironment_updateWithPresentationConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 light];
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    if ([v3 type] == 2)
    {
      [v4 setCastsShadow:?];
      [v4 setShadowMapSize:?];
      [v4 setShadowSampleCount:?];
      [v4 setShadowRadius:?];
      [v4 setZNear:?];
      [v4 setZFar:?];
      [v4 setAutomaticallyAdjustsShadowProjection:?];
      [v4 setOrthographicScale:?];
    }
  }

  else
  {
    [v3 setCastsShadow:?];
  }
}

- (void)setEnablePhysicsSimulation:(BOOL)simulation
{
  simulationCopy = simulation;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  physicsWorld = [WeakRetained physicsWorld];

  [physicsWorld speed];
  if ((((v6 != 4.0) ^ simulationCopy) & 1) == 0)
  {
    [physicsWorld setSpeed:?];
    if (simulationCopy)
    {
      v7 = objc_loadWeakRetained(&self->_scene);
      clock = [v7 clock];
      [clock isPaused];
      v9 = objc_loadWeakRetained(&self->_scene);
      clock2 = [v9 clock];
      [clock2 setPaused:?];

      v11 = objc_loadWeakRetained(&self->_scene);
      clock3 = [v11 clock];
      [clock3 isPaused];
      v13 = objc_loadWeakRetained(&self->_scene);
      clock4 = [v13 clock];
      [clock4 setPaused:?];
    }
  }
}

- (void)setShowReticle:(BOOL)reticle
{
  if (self->_trackingLostIndicatorVisible != reticle)
  {
    if (reticle)
    {
      [(AVTAvatarEnvironment *)self configureARCameraForReticle];

      [(AVTAvatarEnvironment *)self showTrackingLossIndicator];
    }

    else
    {
      [(AVTAvatarEnvironment *)self configureARCameraForFaceTracking];

      [(AVTAvatarEnvironment *)self hideTrackingLossIndicator];
    }
  }
}

- (void)showTrackingLossIndicator
{
  self->_trackingLostIndicatorVisible = 1;
  model = [(VFXNode *)self->_trackingLostIndicator model];
  [model setValue:? forKey:?];

  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  model2 = [(VFXNode *)self->_trackingLostIndicator model];
  [model2 setValue:? forKey:?];

  [(VFXNode *)self->_trackingLostIndicator setOpacity:?];
  [MEMORY[0x1E69DF378] commit];
  v12 = [MEMORY[0x1E6979318] animationWithKeyPath:?];
  [v12 setDuration:?];
  v5 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
  [v12 setFromValue:?];

  __asm { FMOV            V0.4S, #1.0 }

  v11 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
  [v12 setToValue:?];

  [VFXNode addAnimation:"addAnimation:forKey:" forKey:?];
}

- (void)hideTrackingLossIndicator
{
  self->_trackingLostIndicatorVisible = 0;
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  [MEMORY[0x1E69DF378] setCompletionBlock:?];
  model = [(VFXNode *)self->_trackingLostIndicator model];
  [model setValue:? forKey:?];

  [MEMORY[0x1E69DF378] commit];
}

void *__49__AVTAvatarEnvironment_hideTrackingLossIndicator__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  v2 = MEMORY[0x1E69DF378];
  v3 = [MEMORY[0x1E69793D0] functionWithName:?];
  [v2 setAnimationTimingFunction:?];

  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __49__AVTAvatarEnvironment_hideTrackingLossIndicator__block_invoke_2;
  v8 = &unk_1E7F47F90;
  v9 = *(a1 + 32);
  [MEMORY[0x1E69DF378] setCompletionBlock:?];
  [*(*(a1 + 32) + 32) setOpacity:?];
  return [MEMORY[0x1E69DF378] commit];
}

void *__49__AVTAvatarEnvironment_hideTrackingLossIndicator__block_invoke_2(void *result)
{
  v1 = result[4];
  if ((*(v1 + 40) & 1) == 0)
  {
    return [*(v1 + 32) removeAnimationForKey:?];
  }

  return result;
}

- (void)configureARCameraForFaceTracking
{
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  rootJointNode = [WeakRetained rootJointNode];
  parentNode = [rootJointNode parentNode];
  parentNode2 = [(VFXNode *)self->_arModeCamera parentNode];
  [parentNode convertTransform:? toNode:?];
  [(VFXNode *)self->_arModeCamera setTransform:?];
}

- (void)configureARCameraForReticle
{
  camera = [(VFXNode *)self->_defaultPointOfView camera];
  camera2 = [(VFXNode *)self->_arModeCamera camera];
  [camera focalLength];
  [camera2 setFocalLength:?];
  [camera sensorHeight];
  [camera2 setSensorHeight:?];
  [camera projectionDirection];
  [camera2 setProjectionDirection:?];
  defaultPointOfView = self->_defaultPointOfView;
  parentNode = [(VFXNode *)self->_arModeCamera parentNode];
  [VFXNode convertTransform:"convertTransform:toNode:" toNode:?];
  [(VFXNode *)self->_arModeCamera setTransform:?];
}

- (void)willSnapshot
{
  [(VFXNode *)self->_trackingLostIndicator setHidden:?];
  v2 = MEMORY[0x1E69DF378];

  [v2 flush];
}

- (void)didSnapshot
{
  [(VFXNode *)self->_trackingLostIndicator setHidden:?];
  v2 = MEMORY[0x1E69DF378];

  [v2 flush];
}

- (BOOL)faceIsFullyVisible
{
  presentationNode = [(VFXNode *)self->_whitePlane presentationNode];
  [presentationNode opacity];
  v4 = v3 == 0.0;

  return v4;
}

- (void)defaultEnvironmentNode
{
  v3 = [a2 description];
  LODWORD(v10) = 138412546;
  *(&v10 + 4) = self;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_2(&dword_1BB472000, v4, v5, "Error: could not load scene at %@ with error: %@", v6, v7, v8, v9, v10, DWORD2(v10));
}

@end