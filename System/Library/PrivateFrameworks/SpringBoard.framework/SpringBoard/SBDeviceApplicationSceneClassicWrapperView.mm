@interface SBDeviceApplicationSceneClassicWrapperView
+ (BOOL)shouldUseWrapperViewForSceneHandle:(id)handle;
- (BOOL)_isChamoisOrFlexibleWindowing;
- (BOOL)_isProbablyScreenSized;
- (BOOL)_shouldRasterizePositioningLayer;
- (BOOL)wantsBlackBackground;
- (CGRect)_effectiveSceneBounds;
- (SBDeviceApplicationSceneClassicWrapperView)initWithSceneHandle:(id)handle;
- (void)_shouldRasterizePositioningLayer;
- (void)addContentView:(id)view;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeContentView:(id)view;
- (void)setOrientation:(int64_t)orientation;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBDeviceApplicationSceneClassicWrapperView

+ (BOOL)shouldUseWrapperViewForSceneHandle:(id)handle
{
  handleCopy = handle;
  application = [handleCopy application];
  if ([application isClassic])
  {
    LOBYTE(v5) = 1;
  }

  else if ([handleCopy isHostedSecureApp])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    _windowScene = [handleCopy _windowScene];
    switcherController = [_windowScene switcherController];

    bundleIdentifier = [application bundleIdentifier];
    v9 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

    windowManagementContext = [switcherController windowManagementContext];
    if ([windowManagementContext isChamoisOrFlexibleWindowing] && (objc_msgSend(application, "supportsChamoisSceneResizing") & 1) == 0)
    {
      v11 = [switcherController activeAndVisibleSceneIdentifiersForApplication:application];
      sceneIdentifier = [handleCopy sceneIdentifier];
      v5 = objc_msgSend_containsObject_(v11) & (v9 ^ 1);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (SBDeviceApplicationSceneClassicWrapperView)initWithSceneHandle:(id)handle
{
  v30[2] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v29.receiver = self;
  v29.super_class = SBDeviceApplicationSceneClassicWrapperView;
  v6 = [(SBDeviceApplicationSceneClassicWrapperView *)&v29 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneHandle, handle);
    if (!v7->_positioningView)
    {
      v8 = [_SBDeviceApplicationSceneClassicHostPositioningView alloc];
      [(SBDeviceApplicationSceneClassicWrapperView *)v7 bounds];
      v9 = [(_SBDeviceApplicationSceneClassicHostPositioningView *)v8 initWithFrame:?];
      positioningView = v7->_positioningView;
      v7->_positioningView = v9;

      [(SBDeviceApplicationSceneClassicWrapperView *)v7 addSubview:v7->_positioningView];
      layer = [(_SBDeviceApplicationSceneClassicHostPositioningView *)v7->_positioningView layer];
      [layer setMinificationFilter:*MEMORY[0x277CDA278]];
      [layer setMagnificationFilter:*MEMORY[0x277CDA578]];
      if ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable())
      {
        v12 = +[SBAppSwitcherDomain rootSettings];
        windowingSettings = [v12 windowingSettings];
        windowingSettings = v7->_windowingSettings;
        v7->_windowingSettings = windowingSettings;

        [(PTSettings *)v7->_windowingSettings addKeyObserver:v7];
        v7->_canRasterize = [(SBSwitcherWindowingSettings *)v7->_windowingSettings rasterizeScaledApps];
        v15 = +[SBDefaults localDefaults];
        appSwitcherDefaults = [v15 appSwitcherDefaults];
        appSwitcherDefaults = v7->_appSwitcherDefaults;
        v7->_appSwitcherDefaults = appSwitcherDefaults;

        objc_initWeak(&location, v7);
        v18 = v7->_appSwitcherDefaults;
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisWindowingEnabled"];
        v30[0] = v19;
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"medusaMultitaskingEnabled"];
        v30[1] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
        v22 = MEMORY[0x277D85CD0];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __66__SBDeviceApplicationSceneClassicWrapperView_initWithSceneHandle___block_invoke;
        v26[3] = &unk_2783A8C68;
        objc_copyWeak(&v27, &location);
        v23 = [(SBAppSwitcherDefaults *)v18 observeDefaults:v21 onQueue:MEMORY[0x277D85CD0] withBlock:v26];
        appSwitcherDefaultsObserver = v7->_appSwitcherDefaultsObserver;
        v7->_appSwitcherDefaultsObserver = v23;

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }
    }
  }

  return v7;
}

void __66__SBDeviceApplicationSceneClassicWrapperView_initWithSceneHandle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _windowingModeChanged];
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_appSwitcherDefaultsObserver invalidate];
  [(PTSettings *)self->_windowingSettings removeKeyObserver:self];
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneClassicWrapperView;
  [(SBDeviceApplicationSceneClassicWrapperView *)&v3 dealloc];
}

- (void)addContentView:(id)view
{
  positioningView = self->_positioningView;
  viewCopy = view;
  [(_SBDeviceApplicationSceneClassicHostPositioningView *)positioningView addSubview:viewCopy];
  [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView bounds];
  [viewCopy setFrame:?];
}

- (void)removeContentView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  positioningView = self->_positioningView;

  if (superview == positioningView)
  {
    [viewCopy removeFromSuperview];
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(SBDeviceApplicationSceneClassicWrapperView *)self setNeedsLayout];
  }
}

- (BOOL)wantsBlackBackground
{
  if (![(SBDeviceApplicationSceneClassicWrapperView *)self _isChamoisOrFlexibleWindowing])
  {
    return 1;
  }

  if (SBFIsFullScreenLetterboxingAvailable())
  {
    application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
    onlySupportsOneOrientation = [application onlySupportsOneOrientation];

    if (onlySupportsOneOrientation)
    {
      return 1;
    }
  }

  return [(SBDeviceApplicationSceneClassicWrapperView *)self _isProbablyScreenSized];
}

- (BOOL)_isChamoisOrFlexibleWindowing
{
  sceneHandle = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
  _windowScene = [sceneHandle _windowScene];
  switcherController = [_windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  return isChamoisOrFlexibleWindowing;
}

- (BOOL)_isProbablyScreenSized
{
  sceneHandle = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
  _windowScene = [sceneHandle _windowScene];
  screen = [_windowScene screen];
  [screen _referenceBounds];
  v7 = v6;
  v9 = v8;
  [(SBDeviceApplicationSceneClassicWrapperView *)self bounds];
  if (v7 >= v9)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v10 >= v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v7 <= v9)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (v10 > v11)
  {
    v10 = v11;
  }

  v15 = v12 == v13 && v14 == v10;

  return v15;
}

- (void)layoutSubviews
{
  v103 = *MEMORY[0x277D85DE8];
  if (self->_suppressLayoutUpdatesForStartOfClassicPhoneAppRotation)
  {
    return;
  }

  v101.receiver = self;
  v101.super_class = SBDeviceApplicationSceneClassicWrapperView;
  [(SBDeviceApplicationSceneClassicWrapperView *)&v101 layoutSubviews];
  sceneHandle = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
  application = [sceneHandle application];
  [(SBDeviceApplicationSceneClassicWrapperView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBDeviceApplicationSceneClassicWrapperView *)self _effectiveSceneBounds];
  x = v104.origin.x;
  y = v104.origin.y;
  width = v104.size.width;
  height = v104.size.height;
  if (!CGRectIsEmpty(v104))
  {
    v83 = x;
    v84 = y;
    v81 = height;
    v82 = width;
    _windowScene = [sceneHandle _windowScene];
    switcherController = [_windowScene switcherController];
    screen = [_windowScene screen];
    startingOrientationForClassicPhoneAppRotation = [(SBDeviceApplicationSceneClassicWrapperView *)self orientation];
    v80 = startingOrientationForClassicPhoneAppRotation;
    if (self->_preparingForUserDrivenClassicRotation)
    {
      startingOrientationForClassicPhoneAppRotation = self->_startingOrientationForClassicPhoneAppRotation;
    }

    sceneHandle2 = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
    sceneIfExists = [sceneHandle2 sceneIfExists];
    settings = [sceneIfExists settings];
    [settings interfaceOrientation];

    [application classicAppPhoneAppRunningOnPad];
    sceneIfExists2 = [sceneHandle sceneIfExists];
    settings2 = [sceneIfExists2 settings];
    objc_msgSend_frame(settings2);
    v28 = v27;
    v30 = v29;

    v78 = v30;
    v79 = v28;
    _UIWindowConvertRectFromOrientationToOrientation();
    BSRectWithSize();
    v89 = v31;
    rect = v32;
    v86 = v33;
    rect1 = v34;
    layoutState = [switcherController layoutState];
    interfaceOrientation = [layoutState interfaceOrientation];

    if ((interfaceOrientation - 3) <= 1)
    {
      v105.origin.x = v6;
      v105.origin.y = v8;
      v105.size.width = v10;
      v105.size.height = v12;
      CGRectGetHeight(v105);
      v106.origin.x = v6;
      v106.origin.y = v8;
      v106.size.width = v10;
      v106.size.height = v12;
      CGRectGetWidth(v106);
    }

    _UIWindowConvertRectFromOrientationToOrientation();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    [screen _referenceBounds];
    v117.origin.x = v38;
    v117.origin.y = v40;
    v76 = v44;
    v77 = v42;
    v117.size.width = v42;
    v117.size.height = v44;
    v45 = CGRectEqualToRect(v107, v117);
    v108.origin.x = v89;
    v108.origin.y = rect;
    v108.size.width = v86;
    v108.size.height = rect1;
    v118.origin.x = v6;
    v118.origin.y = v8;
    v118.size.width = v10;
    v118.size.height = v12;
    v46 = CGRectEqualToRect(v108, v118);
    if ([application classicAppNonFullScreenWithHomeAffordance])
    {
      v47 = [application classicAppPhoneAppRunningOnPad] ^ 1;
    }

    else
    {
      v47 = 0;
    }

    v48 = v84;
    if ([(SBDeviceApplicationSceneClassicWrapperView *)self _isChamoisOrFlexibleWindowing])
    {
      sx = v10 / v86;
      v49 = rect1;
      if (v46 || !v45)
      {
        v50 = 0.0;
        if ([application classicAppFullScreen])
        {
          [screen _isEmbeddedScreen];
        }

        v47 = 0;
        v49 = rect1;
        v48 = v84;
        v51 = v12 / rect1;
        goto LABEL_35;
      }

      classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen = [application classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen];
      v109.origin.x = v89;
      v109.origin.y = rect;
      v109.size.width = v86;
      v109.size.height = rect1;
      CGRectGetWidth(v109);
      v110.origin.y = rect;
      v110.origin.x = v89;
      v110.size.width = v86;
      v110.size.height = rect1;
      CGRectGetHeight(v110);
      v111.origin.x = v6;
      v111.origin.y = v8;
      v111.size.width = v10;
      v111.size.height = v12;
      CGRectGetWidth(v111);
      v112.origin.x = v6;
      v112.origin.y = v8;
      v112.size.width = v10;
      v112.size.height = v12;
      CGRectGetHeight(v112);
      if (BSFloatApproximatelyEqualToFloat())
      {
        v51 = v12 / rect1;
      }

      else
      {
        v51 = v12 / rect1;
        if ([application classicAppPhoneAppRunningOnPad])
        {
          v51 = SBClassicUtilitiesScaleFactorForPhoneAppZoomedIn(startingOrientationForClassicPhoneAppRotation, v56, v79, v78);
          sx = v51;
        }
      }

      v48 = v84;
      if ([application classicAppFullScreen])
      {
        [screen _isEmbeddedScreen];
      }

      v47 = 0;
      v50 = 0.0;
      if (classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen)
      {
LABEL_35:
        if (SBFIsFullScreenLetterboxingAvailable())
        {
          wantsBlackBackground = [(SBDeviceApplicationSceneClassicWrapperView *)self wantsBlackBackground];
          v59 = sx;
          if (sx <= v51)
          {
            v60 = sx;
          }

          else
          {
            v60 = v51;
          }

          if (wantsBlackBackground)
          {
            v59 = v60;
            v51 = v60;
          }

          v61 = v80;
        }

        else
        {
          v61 = v80;
          v59 = sx;
        }

        v62 = *(MEMORY[0x277CBF2C0] + 16);
        *&v100.a = *MEMORY[0x277CBF2C0];
        *&v100.c = v62;
        *&v100.tx = *(MEMORY[0x277CBF2C0] + 32);
        memset(&v99, 0, sizeof(v99));
        CGAffineTransformMakeScale(&v99, v59, v51);
        if (self->_preparingForUserDrivenClassicRotation)
        {
          SBFAngleForRotationFromInterfaceOrientationToInterfaceOrientation();
          CGAffineTransformMakeRotation(&v100, v63);
          t1 = v99;
          t2 = v100;
          CGAffineTransformConcat(&v98, &t1, &t2);
          v99 = v98;
        }

        [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView setBounds:v89, rect, v86, v49];
        positioningView = self->_positioningView;
        UIRectGetCenter();
        [(_SBDeviceApplicationSceneClassicHostPositioningView *)positioningView setCenter:?];
        v65 = self->_positioningView;
        v98 = v99;
        [(_SBDeviceApplicationSceneClassicHostPositioningView *)v65 setTransform:&v98];
        v10 = v82;
        if (v47)
        {
          if ([(SBDeviceApplicationSceneClassicWrapperView *)self _isChamoisOrFlexibleWindowing])
          {
            v66 = 1;
          }

          else
          {
            v66 = [application includesStatusBarInClassicJailForInterfaceOrientation:v61];
          }

          layer = [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView layer];
          SBClassicUtilitiesInsetAndTranslateLayerForPresentationWithHomeAffordance(layer, screen, 0, v61, 1, v66, [application classicAppWithRoundedCorners], v77, v76, v79, v78, v51);

          v12 = v81;
        }

        else
        {
          v12 = v81;
          if (v50 <= 0.0)
          {
LABEL_53:

            v8 = v48;
            v6 = v83;
            goto LABEL_54;
          }

          [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView _setContinuousCornerRadius:v50];
        }

        [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView setClipsToBounds:1];
        goto LABEL_53;
      }

LABEL_30:
      v57 = sx;
      if (sx > v51)
      {
        v57 = v51;
      }

      sx = v57;
      v51 = v57;
      goto LABEL_35;
    }

    if ([application classicAppPhoneAppRunningOnPad])
    {
      v51 = 1.0;
      if ([application classicAppZoomedInOrRequiresHiDPI])
      {
        v51 = SBClassicUtilitiesScaleFactorForPhoneAppZoomedIn(startingOrientationForClassicPhoneAppRotation, v52, v79, v78);
      }

      v50 = 5.0 / v51;
      sx = v51;
    }

    else
    {
      v50 = 0.0;
      if ([application classicAppScaled])
      {
        v113.origin.x = v6;
        v113.origin.y = v8;
        v113.size.width = v10;
        v113.size.height = v12;
        v54 = CGRectGetHeight(v113);
        v114.origin.y = rect;
        v114.origin.x = v89;
        v114.size.width = v86;
        v114.size.height = rect1;
        v75 = v54 / CGRectGetHeight(v114);
        v115.origin.x = v6;
        v115.origin.y = v8;
        v115.size.width = v10;
        v115.size.height = v12;
        v55 = CGRectGetWidth(v115);
        v116.origin.x = v89;
        v48 = v84;
        v116.origin.y = rect;
        v116.size.width = v86;
        v49 = rect1;
        v51 = v75;
        v116.size.height = rect1;
        sx = v55 / CGRectGetWidth(v116);
        v50 = 0.0;
        if ([application classicAppFullScreen])
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      sx = 1.0;
      v51 = 1.0;
    }

    v49 = rect1;
    goto LABEL_35;
  }

  [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView setFrame:v6, v8, v10, v12];
  v17 = self->_positioningView;
  UIRectGetCenter();
  [(_SBDeviceApplicationSceneClassicHostPositioningView *)v17 setCenter:?];
  v18 = self->_positioningView;
  v19 = *(MEMORY[0x277CBF2C0] + 16);
  *&v100.a = *MEMORY[0x277CBF2C0];
  *&v100.c = v19;
  *&v100.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(_SBDeviceApplicationSceneClassicHostPositioningView *)v18 setTransform:&v100];
LABEL_54:
  layer2 = [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView layer];
  [layer2 setShouldRasterize:{-[SBDeviceApplicationSceneClassicWrapperView _shouldRasterizePositioningLayer](self, "_shouldRasterizePositioningLayer")}];
  traitCollection = [(SBDeviceApplicationSceneClassicWrapperView *)self traitCollection];
  [traitCollection displayScale];
  [layer2 setRasterizationScale:?];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  contentViews = [(SBDeviceApplicationSceneClassicWrapperView *)self contentViews];
  v71 = [contentViews countByEnumeratingWithState:&v92 objects:v102 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v93;
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v93 != v73)
        {
          objc_enumerationMutation(contentViews);
        }

        [*(*(&v92 + 1) + 8 * i) setFrame:{v6, v8, v10, v12}];
      }

      v72 = [contentViews countByEnumeratingWithState:&v92 objects:v102 count:16];
    }

    while (v72);
  }
}

- (CGRect)_effectiveSceneBounds
{
  sceneHandle = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];

  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    objc_msgSend_frame(settings);
    v6 = v5;
    v8 = v7;

    settings2 = [sceneIfExists settings];
    v10 = [settings2 interfaceOrientation] - 3;

    if (v10 > 1)
    {
      BSRectWithSize();
      v11 = v13;
      v12 = v14;
      v8 = v15;
      v6 = v16;
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
    }
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v17 = v11;
  v18 = v12;
  v19 = v8;
  v20 = v6;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_windowingSettings == settings && [key isEqualToString:@"rasterizeScaledApps"])
  {
    self->_canRasterize = [(SBSwitcherWindowingSettings *)self->_windowingSettings rasterizeScaledApps];

    [(SBDeviceApplicationSceneClassicWrapperView *)self setNeedsLayout];
  }
}

- (BOOL)_shouldRasterizePositioningLayer
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_canRasterize)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBDeviceApplicationSceneClassicWrapperView *)self _shouldRasterizePositioningLayer];
    }

    goto LABEL_9;
  }

  if (([(SBAppSwitcherDefaults *)self->_appSwitcherDefaults chamoisWindowingEnabled]& 1) == 0)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBDeviceApplicationSceneClassicWrapperView *)self _shouldRasterizePositioningLayer];
    }

LABEL_9:
    LOBYTE(v6) = 0;
    goto LABEL_13;
  }

  layer = [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView layer];
  v5 = layer;
  if (layer)
  {
    objc_msgSend_transform(layer, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  v6 = BSFloatIsOne() ^ 1;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v11 = v9;
    v12 = 1024;
    v13 = v6;
    _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ returning %{BOOL}u", buf, 0x12u);
  }

LABEL_13:
  return v6;
}

- (void)_shouldRasterizePositioningLayer
{
  v2 = _SBFLoggingMethodProem();
  LODWORD(v9) = 138543362;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v3, v4, "%{public}@ early return NO because we're not in chamois", v5, v6, v7, v8, v9, DWORD2(v9));
}

@end