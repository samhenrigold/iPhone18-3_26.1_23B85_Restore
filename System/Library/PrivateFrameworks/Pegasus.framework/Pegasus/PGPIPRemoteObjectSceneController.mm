@interface PGPIPRemoteObjectSceneController
+ (id)sharedSceneWorkspace;
- (BOOL)isInvalidated;
- (PGPIPRemoteObjectSceneController)initWithRemoteObject:(id)object requestedSceneIdentifier:(id)identifier affectsAppLifeCycle:(BOOL)cycle;
- (UIView)sceneView;
- (void)_performAnimationWithType:(int64_t)type initialSpringVelocity:(double)velocity animations:(id)animations completion:(id)completion;
- (void)activateIfNeeded;
- (void)dealloc;
- (void)invalidate;
- (void)setForeground:(BOOL)foreground;
- (void)setInvalidated:(BOOL)invalidated;
- (void)updateInterfaceOrientation;
- (void)updateSize:(CGSize)size animationType:(int64_t)type initialSpringVelocity:(double)velocity;
@end

@implementation PGPIPRemoteObjectSceneController

+ (id)sharedSceneWorkspace
{
  if (sharedSceneWorkspace_onceToken != -1)
  {
    +[PGPIPRemoteObjectSceneController sharedSceneWorkspace];
  }

  v3 = sharedSceneWorkspace_shared;

  return v3;
}

uint64_t __56__PGPIPRemoteObjectSceneController_sharedSceneWorkspace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"com.apple.pegasus.pictureinpicture"];
  v1 = sharedSceneWorkspace_shared;
  sharedSceneWorkspace_shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (PGPIPRemoteObjectSceneController)initWithRemoteObject:(id)object requestedSceneIdentifier:(id)identifier affectsAppLifeCycle:(BOOL)cycle
{
  v45 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  identifierCopy = identifier;
  v40.receiver = self;
  v40.super_class = PGPIPRemoteObjectSceneController;
  v9 = [(PGPIPRemoteObjectSceneController *)&v40 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v9->_remoteObject, objectCopy);
    sharedSceneWorkspace = [objc_opt_class() sharedSceneWorkspace];
    v12 = [sharedSceneWorkspace sceneWithIdentifier:identifierCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      scene = v10->_scene;
      v10->_scene = v14;
    }

    else
    {
      v16 = MEMORY[0x1E69C75D0];
      v17 = MEMORY[0x1E69C75E0];
      pictureInPictureApplication = [objectCopy pictureInPictureApplication];
      v19 = [v17 identifierWithPid:{objc_msgSend(pictureInPictureApplication, "processIdentifier")}];
      v39 = 0;
      v20 = [v16 handleForIdentifier:v19 error:&v39];
      scene = v39;

      if (v20)
      {
        identity = [v20 identity];
        v23 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:identity];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke;
        v36[3] = &unk_1E7F33468;
        v37 = v23;
        v38 = identifierCopy;
        v32 = v23;
        v24 = [sharedSceneWorkspace createScene:v36];
        v25 = v10->_scene;
        v10->_scene = v24;

        sourceSceneSettingsInterfaceOrientation = [objectCopy sourceSceneSettingsInterfaceOrientation];
        sourceSceneSettingsDisplayConfiguration = [objectCopy sourceSceneSettingsDisplayConfiguration];
        v28 = v10->_scene;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke_2;
        v33[3] = &unk_1E7F334B8;
        v34 = sourceSceneSettingsDisplayConfiguration;
        v35 = sourceSceneSettingsInterfaceOrientation;
        v29 = sourceSceneSettingsDisplayConfiguration;
        [(FBScene *)v28 configureParameters:v33];
      }

      else
      {
        identity = PGLogCommon(v21);
        if (os_log_type_enabled(identity, OS_LOG_TYPE_ERROR))
        {
          v31 = _PGLogMethodProem(v10, 1);
          *buf = 138412546;
          v42 = v31;
          v43 = 2112;
          v44 = scene;
          _os_log_error_impl(&dword_1BB282000, identity, OS_LOG_TYPE_ERROR, "%@ not able to create scene, RBSProcessHandle look up failed with error: %@", buf, 0x16u);
        }
      }
    }
  }

  return v10;
}

void __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setClientIdentity:v3];
  [v4 setIdentifier:*(a1 + 40)];
  v5 = objc_alloc_init(PGPIPRemoteObjectSceneSpecification);
  [v4 setSpecification:v5];
}

void __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke_3;
  v5[3] = &unk_1E7F33490;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 updateSettingsWithBlock:v5];
}

void __102__PGPIPRemoteObjectSceneController_initWithRemoteObject_requestedSceneIdentifier_affectsAppLifeCycle___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setInterfaceOrientation:*(a1 + 40)];
  if (*(a1 + 32))
  {
    [v4 setDisplayConfiguration:?];
  }

  else
  {
    v3 = [MEMORY[0x1E699F7A8] mainConfiguration];
    [v4 setDisplayConfiguration:v3];
  }

  [v4 setInterfaceOrientationMode:2];
  [v4 setInterruptionPolicy:1];
}

- (UIView)sceneView
{
  sceneView = self->_sceneView;
  if (!sceneView)
  {
    scenePresenter = self->_scenePresenter;
    if (!scenePresenter)
    {
      uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v8 = [uiPresentationManager createPresenterWithIdentifier:uUIDString];
      v9 = self->_scenePresenter;
      self->_scenePresenter = v8;

      scenePresenter = self->_scenePresenter;
    }

    [(UIScenePresenter *)scenePresenter modifyPresentationContext:&__block_literal_global_115];
    [(UIScenePresenter *)self->_scenePresenter activate];
    presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
    v11 = self->_sceneView;
    self->_sceneView = presentationView;

    sceneView = self->_sceneView;
  }

  return sceneView;
}

void __45__PGPIPRemoteObjectSceneController_sceneView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
}

- (void)activateIfNeeded
{
  if ([(FBScene *)self->_scene isValid])
  {
    if (([(FBScene *)self->_scene isActive]& 1) == 0)
    {
      scene = self->_scene;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __52__PGPIPRemoteObjectSceneController_activateIfNeeded__block_invoke;
      v4[3] = &unk_1E7F33500;
      v4[4] = self;
      [(FBScene *)scene performUpdate:v4];
    }
  }
}

- (void)updateInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteObject);
  sourceSceneSettingsInterfaceOrientation = [WeakRetained sourceSceneSettingsInterfaceOrientation];

  settings = [(FBScene *)self->_scene settings];
  if ([settings interfaceOrientation] == sourceSceneSettingsInterfaceOrientation)
  {
  }

  else
  {
    isValid = [(FBScene *)self->_scene isValid];

    if (isValid)
    {
      isActive = [(FBScene *)self->_scene isActive];
      scene = self->_scene;
      if (isActive)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __62__PGPIPRemoteObjectSceneController_updateInterfaceOrientation__block_invoke_2;
        v9[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
        v9[4] = sourceSceneSettingsInterfaceOrientation;
        [(FBScene *)scene updateSettings:v9];
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __62__PGPIPRemoteObjectSceneController_updateInterfaceOrientation__block_invoke;
        v10[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
        v10[4] = sourceSceneSettingsInterfaceOrientation;
        [(FBScene *)scene performUpdate:v10];
      }
    }
  }
}

- (void)updateSize:(CGSize)size animationType:(int64_t)type initialSpringVelocity:(double)velocity
{
  self->_currentFrame.size = size;
  self->_currentFrame.origin = *MEMORY[0x1E695EFF8];
  if ([(FBScene *)self->_scene isActive])
  {
    settings = [(FBScene *)self->_scene settings];
    isForeground = [settings isForeground];

    if (isForeground)
    {
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x3032000000;
      v12[3] = __Block_byref_object_copy__2;
      v12[4] = __Block_byref_object_dispose__2;
      _synchronizedDrawingFence = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke;
      v11[3] = &unk_1E7F33590;
      v11[4] = self;
      v11[5] = v12;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke_3;
      v10[3] = &unk_1E7F335B8;
      v10[4] = v12;
      [(PGPIPRemoteObjectSceneController *)self _performAnimationWithType:type initialSpringVelocity:v11 animations:v10 completion:velocity];
      _Block_object_dispose(v12, 8);
    }
  }
}

void __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DD250] _currentAnimationSettings];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke_2;
  v7[3] = &unk_1E7F33568;
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v5;
  v7[4] = v3;
  v6 = v2;
  [v4 performUpdate:v7];
}

void __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 setFrame:{*(a1[4] + 24), *(a1[4] + 32), *(a1[4] + 40), *(a1[4] + 48)}];
  v6 = *(*(a1[6] + 8) + 40);
  v7 = v5;
  [v7 setAnimationFence:v6];
  [v7 setAnimationSettings:a1[5]];
}

void __83__PGPIPRemoteObjectSceneController_updateSize_animationType_initialSpringVelocity___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

- (void)_performAnimationWithType:(int64_t)type initialSpringVelocity:(double)velocity animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  switch(type)
  {
    case 2:
      [MEMORY[0x1E69DD250] PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity:animationsCopy animations:completionCopy completion:velocity];
      break;
    case 1:
      [MEMORY[0x1E69DD250] PG_animateUsingDefaultTimingWithAnimations:animationsCopy completion:completionCopy];
      break;
    case 0:
      [MEMORY[0x1E69DD250] PG_performWithoutAnimation:animationsCopy];
      completionCopy[2](completionCopy, 1);
      break;
  }
}

- (void)setForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  settings = [(FBScene *)self->_scene settings];
  if ([settings isForeground] == foregroundCopy)
  {
  }

  else
  {
    isValid = [(FBScene *)self->_scene isValid];

    if (isValid)
    {
      if (foregroundCopy && ([(FBScene *)self->_scene isActive]& 1) == 0)
      {
        scene = self->_scene;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __50__PGPIPRemoteObjectSceneController_setForeground___block_invoke;
        v11[3] = &unk_1E7F335E0;
        v12 = foregroundCopy;
        v11[4] = self;
        [(FBScene *)scene performUpdate:v11];
      }

      else
      {
        v6 = self->_scene;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __50__PGPIPRemoteObjectSceneController_setForeground___block_invoke_2;
        v9[3] = &unk_1E7F33608;
        v10 = foregroundCopy;
        v9[4] = self;
        [(FBScene *)v6 updateSettings:v9];
      }
    }
  }
}

void __50__PGPIPRemoteObjectSceneController_setForeground___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setForeground:v3];
  [v4 setFrame:{*(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40), *(*(a1 + 32) + 48)}];
}

void __50__PGPIPRemoteObjectSceneController_setForeground___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setForeground:v3];
  [v4 setFrame:{*(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40), *(*(a1 + 32) + 48)}];
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (void)setInvalidated:(BOOL)invalidated
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = invalidated;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  if (![(PGPIPRemoteObjectSceneController *)self isInvalidated])
  {
    [(PGPIPRemoteObjectSceneController *)self setInvalidated:1];
    v5 = self->_scene;
    v6 = self->_scenePresenter;
    v3 = v6;
    v4 = v5;
    BSDispatchMain();
  }
}

uint64_t __46__PGPIPRemoteObjectSceneController_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateSettings:&__block_literal_global_123];
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)dealloc
{
  [(PGPIPRemoteObjectSceneController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PGPIPRemoteObjectSceneController;
  [(PGPIPRemoteObjectSceneController *)&v3 dealloc];
}

@end