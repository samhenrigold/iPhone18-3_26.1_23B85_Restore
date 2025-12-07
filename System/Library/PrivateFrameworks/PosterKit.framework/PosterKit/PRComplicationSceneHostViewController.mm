@interface PRComplicationSceneHostViewController
- (PRComplicationSceneHostViewController)initWithScene:(id)scene;
- (void)_clearTouchDeliveryPolicies;
- (void)_updateTouchDeliveryPolicies;
- (void)invalidate;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation PRComplicationSceneHostViewController

- (PRComplicationSceneHostViewController)initWithScene:(id)scene
{
  v34[4] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v33.receiver = self;
  v33.super_class = PRComplicationSceneHostViewController;
  v6 = [(PRComplicationSceneHostViewController *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, scene);
    [(FBScene *)v7->_scene configureParameters:&__block_literal_global_22];
    uiPresentationManager = [(FBScene *)v7->_scene uiPresentationManager];
    v9 = [uiPresentationManager createPresenterWithIdentifier:@"complications"];
    v32 = sceneCopy;
    scenePresenter = v7->_scenePresenter;
    v7->_scenePresenter = v9;

    [(UIScenePresenter *)v7->_scenePresenter modifyPresentationContext:&__block_literal_global_7_0];
    [(UIScenePresenter *)v7->_scenePresenter activate];
    presentationView = [(UIScenePresenter *)v7->_scenePresenter presentationView];
    [presentationView setClipsToBounds:1];
    layer = [presentationView layer];
    [layer setName:@"Scene View"];

    [(FBScene *)v7->_scene activateWithTransitionContext:0];
    layerManager = [(FBScene *)v7->_scene layerManager];
    [layerManager addObserver:v7];

    view = [(PRComplicationSceneHostViewController *)v7 view];
    [view addSubview:presentationView];

    [presentationView setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(PRComplicationSceneHostViewController *)v7 view];
    v16 = MEMORY[0x1E695DF70];
    leadingAnchor = [presentationView leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[0] = v29;
    trailingAnchor = [presentationView trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[1] = v26;
    topAnchor = [presentationView topAnchor];
    topAnchor2 = [view2 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[2] = v18;
    bottomAnchor = [presentationView bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    v23 = [v16 arrayWithArray:v22];

    [MEMORY[0x1E696ACD8] activateConstraints:v23];
    sceneCopy = v32;
  }

  return v7;
}

void __55__PRComplicationSceneHostViewController_initWithScene___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E699F7A8];
  v4 = a2;
  v3 = [v2 mainConfiguration];
  [v4 setDisplayConfiguration:v3];

  [v4 setForeground:1];
}

void __55__PRComplicationSceneHostViewController_initWithScene___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
  [v2 setShouldPassthroughHitTestEventsIfTransparent:1];
}

- (void)invalidate
{
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  [(FBScene *)self->_scene setDelegate:0];
  [(FBScene *)self->_scene invalidate];
  scene = self->_scene;
  self->_scene = 0;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69C5650]);
  [(PRComplicationSceneHostViewController *)self setView:v3];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PRComplicationSceneHostViewController;
  [(PRComplicationSceneHostViewController *)&v13 viewDidLayoutSubviews];
  view = [(PRComplicationSceneHostViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  [view bounds];
  scene = self->_scene;
  v12[1] = 3221225472;
  if ((interfaceOrientation - 3) >= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __62__PRComplicationSceneHostViewController_viewDidLayoutSubviews__block_invoke;
  v12[3] = &__block_descriptor_72_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
  if ((interfaceOrientation - 3) >= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12[4] = 0;
  v12[5] = 0;
  v12[6] = v10;
  v12[7] = v11;
  v12[8] = interfaceOrientation;
  [(FBScene *)scene performUpdate:v12];
}

void __62__PRComplicationSceneHostViewController_viewDidLayoutSubviews__block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setFrame:{v3, v4, v5, v6}];
  [v7 setInterfaceOrientation:*(a1 + 8)];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PRComplicationSceneHostViewController;
  [(PRComplicationSceneHostViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(PRComplicationSceneHostViewController *)self _updateTouchDeliveryPolicies];
  }

  else
  {
    [(PRComplicationSceneHostViewController *)self _clearTouchDeliveryPolicies];
  }
}

- (void)_updateTouchDeliveryPolicies
{
  v68 = *MEMORY[0x1E69E9840];
  view = [(PRComplicationSceneHostViewController *)self view];
  _window = [view _window];

  if (_window)
  {
    layerManager = [(FBScene *)self->_scene layerManager];
    layers = [layerManager layers];

    v7 = objc_alloc(MEMORY[0x1E695DFA8]);
    allKeys = [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions allKeys];
    v44 = [v7 initWithArray:allKeys];

    view2 = [(PRComplicationSceneHostViewController *)self view];
    _window2 = [view2 _window];
    _contextId = [_window2 _contextId];

    v12 = PRLogCommon(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v63 = 2114;
      v64 = layers;
      _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "[%p] Updating touch delivery policies for layers: %{public}@", buf, 0x16u);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = layers;
    v13 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v13)
    {
      v43 = *v57;
      *&v14 = 134218498;
      v40 = v14;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(obj);
          }

          contextID = [*(*(&v56 + 1) + 8 * i) contextID];
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
          [v44 removeObject:v17];

          touchDeliveryPolicyAssertions = self->_touchDeliveryPolicyAssertions;
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
          v20 = [(NSMutableDictionary *)touchDeliveryPolicyAssertions objectForKey:v19];
          LODWORD(touchDeliveryPolicyAssertions) = v20 == 0;

          if (touchDeliveryPolicyAssertions)
          {
            v21 = objc_alloc_init(MEMORY[0x1E698E440]);
            v22 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:contextID withHostContextId:_contextId];
            endpoint = [v21 endpoint];
            [v22 setAssertionEndpoint:endpoint];

            objc_initWeak(&location, self);
            v49 = MEMORY[0x1E69E9820];
            v50 = 3221225472;
            v51 = __69__PRComplicationSceneHostViewController__updateTouchDeliveryPolicies__block_invoke;
            v52 = &unk_1E78446C0;
            objc_copyWeak(&v54, &location);
            v24 = v22;
            v53 = v24;
            v25 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
            v26 = v25;
            if (v25)
            {
              v27 = PRLogCommon(v25);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v40;
                selfCopy3 = self;
                v63 = 2114;
                v64 = v21;
                v65 = 1024;
                v66 = contextID;
                _os_log_impl(&dword_1A8AA7000, v27, OS_LOG_TYPE_DEFAULT, "[%p] Saving touch policy assertion %{public}@ for context id %u", buf, 0x1Cu);
              }

              v28 = self->_touchDeliveryPolicyAssertions;
              if (!v28)
              {
                v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v30 = self->_touchDeliveryPolicyAssertions;
                self->_touchDeliveryPolicyAssertions = v29;

                v28 = self->_touchDeliveryPolicyAssertions;
              }

              v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
              [(NSMutableDictionary *)v28 setObject:v21 forKey:v31];

              [v26 ipc_addPolicy:v24];
            }

            objc_destroyWeak(&v54);
            objc_destroyWeak(&location);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v13);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = v44;
    v33 = [v32 countByEnumeratingWithState:&v45 objects:v60 count:16];
    if (v33)
    {
      v34 = *v46;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v45 + 1) + 8 * j);
          v37 = [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions objectForKey:v36];
          [v37 invalidate];
          v38 = PRLogCommon([(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions removeObjectForKey:v36]);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            unsignedIntValue = [v36 unsignedIntValue];
            *buf = 134218498;
            selfCopy3 = self;
            v63 = 2114;
            v64 = v37;
            v65 = 1024;
            v66 = unsignedIntValue;
            _os_log_impl(&dword_1A8AA7000, v38, OS_LOG_TYPE_DEFAULT, "[%p] Invalidating assertion %{public}@ for context id %u", buf, 0x1Cu);
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v45 objects:v60 count:16];
      }

      while (v33);
    }
  }
}

void __69__PRComplicationSceneHostViewController__updateTouchDeliveryPolicies__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = PRLogCommon(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 134218498;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "[%p] Sending touch delivery policy %{public}@ failed with error: %{public}@", &v8, 0x20u);
    }
  }
}

- (void)_clearTouchDeliveryPolicies
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PRLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "[%p] Clearing any touch delivery policies", &v4, 0xCu);
  }

  [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_28];
  [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions removeAllObjects];
}

@end