@interface ABDeviceSceneViewController
- (CATransform3D)actionButtonPerspectiveTransform;
- (double)actionButtonScreenScale;
- (double)actionButtonTranslationWithPressProgress:(uint64_t)progress;
- (id)delegate;
- (id)setDelegate:(id *)result;
- (uint64_t)isScenePresented;
- (void)_didPresentFrame;
- (void)_renderWithTargetTimestamp:(double)timestamp duration:(double)duration renderInputs:(ABDeviceSceneRenderInputs *)inputs;
- (void)_setupSceneIfNeeded;
- (void)_subscribeToFramePresentationIfNeeded;
- (void)devicePerspectiveTransform;
- (void)renderWithTargetTimestamp:(double)timestamp duration:(double)duration renderInputs:;
- (void)renderer:(id)renderer willRenderScene:(id)scene atTime:(double)time;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation ABDeviceSceneViewController

- (void)viewDidLoad
{
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = ABDeviceSceneViewController;
  [(ABDeviceSceneViewController *)&v7 viewDidLoad];
  v3 = ABLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[ABDeviceSceneResourceLoader sharedLoader];
    areResourcesLoaded = [(ABDeviceSceneResourceLoader *)v4 areResourcesLoaded];
    v6 = @"no";
    if (areResourcesLoaded)
    {
      v6 = @"yes";
    }

    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_23DE18000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) loading the view; scene resources are ready: %{public}@", buf, 0x16u);
  }

  [(ABDeviceSceneViewController *)self _setupSceneIfNeeded];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = ABDeviceSceneViewController;
  [(ABDeviceSceneViewController *)&v7 viewIsAppearing:appearing];
  v4 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [(ABDeviceSceneViewController *)self setScenePresentationBarrier:v6];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ABDeviceSceneViewController;
  [(ABDeviceSceneViewController *)&v4 viewDidAppear:appear];
  [(ABDeviceSceneViewController *)self setScenePresentationBarrier:0];
}

- (void)renderWithTargetTimestamp:(double)timestamp duration:(double)duration renderInputs:
{
  v29 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v8 = +[ABDeviceSceneResourceLoader sharedLoader];
    areResourcesLoaded = [(ABDeviceSceneResourceLoader *)v8 areResourcesLoaded];

    if (areResourcesLoaded)
    {
      v10 = *(a2 + 168);
      v23 = *(a2 + 160);
      v11 = *(a2 + 144);
      v22[8] = *(a2 + 128);
      v22[9] = v11;
      v12 = *(a2 + 80);
      v22[4] = *(a2 + 64);
      v22[5] = v12;
      v13 = *(a2 + 112);
      v22[6] = *(a2 + 96);
      v22[7] = v13;
      v14 = *(a2 + 16);
      v22[0] = *a2;
      v22[1] = v14;
      v15 = *(a2 + 48);
      v22[2] = *(a2 + 32);
      v22[3] = v15;
      v16 = v10;
      v17 = *(a2 + 176);
      v24 = v16;
      v25 = v17;
      v26 = *(a2 + 184);
      [self _renderWithTargetTimestamp:v22 duration:timestamp renderInputs:duration];
    }

    else if (!self[144])
    {
      v18 = ABLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_23DE18000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@) view controller will initiate resource loading", buf, 0xCu);
      }

      v19 = +[ABDeviceSceneResourceLoader sharedLoader];
      v20 = [(ABDeviceSceneResourceLoader *)v19 loadResourcesWithCompletion:?];
      v21 = self[144];
      self[144] = v20;
    }
  }
}

void __79__ABDeviceSceneViewController_renderWithTargetTimestamp_duration_renderInputs___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = ABLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_23DE18000, v3, OS_LOG_TYPE_DEFAULT, "Finished resource loading, isSuccess: %{public}@", &v5, 0xCu);
  }
}

- (void)devicePerspectiveTransform
{
  if (self)
  {
    pointOfView = [self[124] pointOfView];
    memset(&v19, 0, sizeof(v19));
    camera = [pointOfView camera];
    v6 = camera;
    if (camera)
    {
      objc_msgSend_projectionTransform(camera);
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    memset(&v18, 0, sizeof(v18));
    if (pointOfView)
    {
      objc_msgSend_worldTransform(pointOfView);
    }

    memset(&v17, 0, sizeof(v17));
    m = v18;
    SCNMatrix4Invert(&v17, &m);
    memset(&m, 0, sizeof(m));
    view = [self view];
    [view bounds];
    v9 = v8 * 0.5;
    view2 = [self view];
    [view2 bounds];
    memset(&b.m22, 0, 40);
    v12 = v11 * 0.5;
    *&b.m12 = 0u;
    b.m11 = v9;
    b.m22 = v12;
    b.m33 = -1.0;
    b.m44 = 1.0;
    a = v19;
    SCNMatrix4Mult(&m, &a, &b);

    memset(&b, 0, sizeof(b));
    a = v17;
    v13 = m;
    SCNMatrix4Mult(&b, &a, &v13);
    a = b;
    CATransform3DFromSCNMatrix4(&a, a2);
  }

  else
  {
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }
}

- (CATransform3D)actionButtonPerspectiveTransform
{
  if (result)
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    m43 = result[7].m43;
    if (m43 == 0.0)
    {
      memset(&v13, 0, 64);
    }

    else
    {
      objc_msgSend_transform(*&m43, a2);
    }

    CATransform3DFromSCNMatrix4(&v13, &v14);
    memset(&v13, 0, sizeof(v13));
    v5 = ABDegreesToRadians(-90.0);
    v6 = CATransform3DMakeRotation(&v13, v5, 0.0, 1.0, 0.0);
    ABButtonOffsetFromDeviceCenter(v6);
    memset(&v12, 0, sizeof(v12));
    CATransform3DMakeTranslation(&v12, v7, v8, 0.0);
    a = v13;
    v9 = v12;
    CATransform3DConcat(&v11, &a, &v9);
    *&a.m31 = v18;
    *&a.m33 = v19;
    *&a.m41 = v20;
    *&a.m43 = v21;
    *&a.m11 = v14;
    *&a.m13 = v15;
    *&a.m21 = v16;
    *&a.m23 = v17;
    return CATransform3DConcat(a3, &v11, &a);
  }

  else
  {
    *(a3 + 96) = 0uLL;
    *(a3 + 112) = 0uLL;
    *(a3 + 64) = 0uLL;
    *(a3 + 80) = 0uLL;
    *(a3 + 32) = 0uLL;
    *(a3 + 48) = 0uLL;
    *a3 = 0uLL;
    *(a3 + 16) = 0uLL;
  }

  return result;
}

- (void)renderer:(id)renderer willRenderScene:(id)scene atTime:(double)time
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ABDeviceSceneViewController_renderer_willRenderScene_atTime___block_invoke;
  block[3] = &unk_278BFFC38;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__ABDeviceSceneViewController_renderer_willRenderScene_atTime___block_invoke(uint64_t a1)
{
  v2 = [(ABDeviceSceneViewController *)*(a1 + 32) delegate];
  [v2 deviceSceneViewControllerWillRenderScene:*(a1 + 32)];
}

- (void)_setupSceneIfNeeded
{
  if (!self->_sceneView)
  {
    v3 = +[ABDeviceSceneResourceLoader sharedLoader];
    areResourcesLoaded = [(ABDeviceSceneResourceLoader *)v3 areResourcesLoaded];

    if (areResourcesLoaded)
    {
      p_sceneModel = &self->_sceneModel;
      v6 = +[ABDeviceSceneResourceLoader sharedLoader];
      [(ABDeviceSceneResourceLoader *)v6 sceneModel];
      __move_assignment_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(&self->_sceneModel, v18);

      v7 = +[ABDeviceSceneResourceLoader sharedLoader];
      sceneView = [(ABDeviceSceneResourceLoader *)v7 sceneView];
      sceneView = self->_sceneView;
      self->_sceneView = sceneView;

      view = [(ABDeviceSceneViewController *)self view];
      [view addSubview:self->_sceneView];

      view2 = [(ABDeviceSceneViewController *)self view];
      [view2 frame];
      [(SCNView *)self->_sceneView setBounds:?];

      [(SCNView *)self->_sceneView setAutoresizingMask:18];
      [(SCNView *)self->_sceneView setDelegate:self];
      v12 = objc_opt_new();
      displayView = self->_displayView;
      self->_displayView = v12;

      [(ABDeviceDisplayView *)self->_displayView sizeToFit];
      layer = [(ABDeviceDisplayView *)self->_displayView layer];
      geometry = [(SCNNode *)p_sceneModel->displayNode geometry];
      firstMaterial = [geometry firstMaterial];
      emission = [firstMaterial emission];
      [emission setContents:layer];
    }
  }
}

- (void)_renderWithTargetTimestamp:(double)timestamp duration:(double)duration renderInputs:(ABDeviceSceneRenderInputs *)inputs
{
  [(ABDeviceSceneViewController *)self _setupSceneIfNeeded:timestamp];
  pointOfView = [(SCNView *)self->_sceneView pointOfView];
  camera = [pointOfView camera];

  [camera setFocusDistance:inputs->cameraAndLight.focusDistance];
  [camera setFocalLength:inputs->cameraAndLight.focalLength];
  [camera setFStop:inputs->cameraAndLight.fStop];
  [camera setApertureBladeCount:inputs->cameraAndLight.apertureBladeCount];
  lightingIntensity = inputs->cameraAndLight.lightingIntensity;
  lightingEnvironment = [(SCNScene *)self->_sceneModel.scene lightingEnvironment];
  [lightingEnvironment setIntensity:lightingIntensity];

  buttonPressProgress = inputs->buttonPressProgress;
  v12 = ABButtonPressDepth();
  IsD23 = ABDeviceIsD23(v13);
  LOBYTE(lightingEnvironment) = IsD23;
  IsV5x = ABDeviceIsV5x(IsD23);
  v16 = -(v12 * buttonPressProgress);
  v17 = IsV5x | lightingEnvironment;
  capNode = self->_sceneModel.buttonModel.capNode;
  if (v17)
  {
    v16 = -v16;
  }

  v19 = v16;
  a.m11 = 1.0;
  *&a.m14 = 0;
  *&a.m12 = 0;
  a.m22 = 1.0;
  *&a.m23 = 0;
  *&a.m31 = 0;
  *&a.m33 = 1065353216;
  a.m41 = v19;
  a.m42 = 0.0;
  a.m43 = 0.0;
  a.m44 = 1.0;
  [(SCNNode *)capNode setTransform:&a];
  sidesNode = self->_sceneModel.buttonModel.sidesNode;
  a.m11 = 1.0;
  *&a.m14 = 0;
  *&a.m12 = 0;
  a.m22 = 1.0;
  *&a.m23 = 0;
  *&a.m31 = 0;
  *&a.m33 = 1065353216;
  a.m41 = v19;
  a.m42 = 0.0;
  a.m43 = 0.0;
  a.m44 = 1.0;
  [(SCNNode *)sidesNode setTransform:&a];
  v21 = *&self->_sceneModel.buttonModel.highlightTransform.m21;
  *&a.m11 = *&self->_sceneModel.buttonModel.highlightTransform.m11;
  v22 = *&self->_sceneModel.buttonModel.highlightTransform.m31;
  v23 = *&self->_sceneModel.buttonModel.highlightTransform.m41;
  *&a.m21 = v21;
  *&a.m31 = v22;
  *&a.m41 = v23;
  *&b.m14 = 0;
  *&b.m12 = 0;
  b.m11 = 1.0;
  b.m22 = 1.0;
  *&b.m23 = 0;
  *&b.m31 = 0;
  *&b.m33 = 1065353216;
  b.m41 = v19;
  *&b.m42 = 0;
  b.m44 = 1.0;
  SCNMatrix4Mult(&v45, &a, &b);
  capNodeHighlight = self->_sceneModel.buttonModel.capNodeHighlight;
  a = v45;
  [(SCNNode *)capNodeHighlight setTransform:&a];
  v25 = *&self->_sceneModel.buttonModel.highlightTransform.m21;
  *&a.m11 = *&self->_sceneModel.buttonModel.highlightTransform.m11;
  v26 = *&self->_sceneModel.buttonModel.highlightTransform.m31;
  v27 = *&self->_sceneModel.buttonModel.highlightTransform.m41;
  *&a.m21 = v25;
  *&a.m31 = v26;
  *&a.m41 = v27;
  *&b.m14 = 0;
  *&b.m12 = 0;
  b.m11 = 1.0;
  b.m22 = 1.0;
  *&b.m23 = 0;
  *&b.m31 = 0;
  *&b.m33 = 1065353216;
  b.m41 = v19;
  *&b.m42 = 0;
  b.m44 = 1.0;
  SCNMatrix4Mult(&v43, &a, &b);
  sidesNodeHighlight = self->_sceneModel.buttonModel.sidesNodeHighlight;
  a = v43;
  [(SCNNode *)sidesNodeHighlight setTransform:&a];
  v29 = *&inputs->modelTransform.m31;
  v30 = *&inputs->modelTransform.m41;
  v31 = *&inputs->modelTransform.m43;
  v39 = *&inputs->modelTransform.m33;
  v40 = v30;
  v41 = v31;
  v32 = *&inputs->modelTransform.m13;
  *&a.m11 = *&inputs->modelTransform.m11;
  v33 = *&inputs->modelTransform.m21;
  v34 = *&inputs->modelTransform.m23;
  *&a.m21 = v32;
  *&a.m31 = v33;
  *&a.m41 = v34;
  v38 = v29;
  SCNMatrix4FromCATransform3D(&a, v42);
  deviceNode = self->_sceneModel.deviceNode;
  *&a.m11 = v42[0];
  *&a.m21 = v42[1];
  *&a.m31 = v42[2];
  *&a.m41 = v42[3];
  [(SCNNode *)deviceNode setTransform:&a];
  __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(v36, &self->_sceneModel.buttonModel);
  ABDeviceSceneButtonModelSetColor(v36, inputs->buttonHighlight.color, inputs->buttonHighlight.opacity);
  [(ABDeviceDisplayView *)&self->_displayView->super.super.super.isa setIslandMode:?];
  [(ABDeviceSceneViewController *)self _subscribeToFramePresentationIfNeeded];
}

- (void)_subscribeToFramePresentationIfNeeded
{
  if (!self->_isScenePresented)
  {
    objc_initWeak(&location, self);
    sceneView = self->_sceneView;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __68__ABDeviceSceneViewController__subscribeToFramePresentationIfNeeded__block_invoke;
    v4[3] = &unk_278BFFD20;
    objc_copyWeak(&v5, &location);
    [(SCNView *)sceneView _addGPUFramePresentedHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __68__ABDeviceSceneViewController__subscribeToFramePresentationIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didPresentFrame];
}

- (void)_didPresentFrame
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = ABLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_23DE18000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) did present frame", buf, 0xCu);
  }

  scenePresentationBarrier = [(ABDeviceSceneViewController *)self scenePresentationBarrier];
  [scenePresentationBarrier doubleValue];
  v6 = v5;

  if (v6 <= 0.0 || ([MEMORY[0x277CBEAA8] now], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceReferenceDate"), v9 = v8 - v6, v7, v9 <= 0.2))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ABDeviceSceneViewController__didPresentFrame__block_invoke;
    block[3] = &unk_278BFFC38;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = ABLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_23DE18000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@) delaying scene presentation", buf, 0xCu);
    }

    [(ABDeviceSceneViewController *)self setScenePresentationBarrier:0];
  }
}

- (double)actionButtonTranslationWithPressProgress:(uint64_t)progress
{
  if (progress)
  {
    return -(ABButtonPressDepth() * a2);
  }

  else
  {
    return 0.0;
  }
}

- (double)actionButtonScreenScale
{
  if (self)
  {
    return ABButtonScreenScale();
  }

  else
  {
    return 0.0;
  }
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 146);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 146, a2);
  }

  return result;
}

- (uint64_t)isScenePresented
{
  if (self)
  {
    v1 = *(self + 1160);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end