@interface SBLockedPointerManager
- (BOOL)_queue_prefersLockForSceneIdentifier:(id)identifier;
- (BOOL)_shouldAllowPointerLockedForScene:(id)scene;
- (SBLockedPointerManager)initWithWindowScene:(id)scene;
- (id)_possibleSceneHandleForLockingPointerFromLayoutState:(id)state;
- (void)_notInvalidated_updateLockForLayoutState:(id)state;
- (void)_queue_lockPointerForSceneIdentifier:(id)identifier;
- (void)_queue_unlockPointer;
- (void)_queue_updateLockForLayoutState:(id)state;
- (void)_setPointerLockStatus:(int64_t)status forSceneWithIdentifier:(id)identifier;
- (void)clientWithSceneIdentifier:(id)identifier prefersPointerLockStatus:(int64_t)status;
- (void)clientWithSceneIdentifier:(id)identifier suppressPreferredLockStatus:(BOOL)status;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)sceneManager:(id)manager didAddExternalForegroundApplicationSceneHandle:(id)handle;
- (void)sceneManager:(id)manager didRemoveExternalForegroundApplicationSceneHandle:(id)handle;
@end

@implementation SBLockedPointerManager

- (SBLockedPointerManager)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v17.receiver = self;
  v17.super_class = SBLockedPointerManager;
  v5 = [(SBLockedPointerManager *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D3DF50]);
    pointerClientController = v5->_pointerClientController;
    v5->_pointerClientController = v6;

    Serial = BSDispatchQueueCreateSerial();
    stateSerialQueue = v5->_stateSerialQueue;
    v5->_stateSerialQueue = Serial;

    v10 = objc_opt_new();
    queue_preferredLockStatusBySceneIdentifier = v5->_queue_preferredLockStatusBySceneIdentifier;
    v5->_queue_preferredLockStatusBySceneIdentifier = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    queue_sceneIdentifiersThatSuppressPreferredLockStatus = v5->_queue_sceneIdentifiersThatSuppressPreferredLockStatus;
    v5->_queue_sceneIdentifiersThatSuppressPreferredLockStatus = v12;

    sceneManager = [sceneCopy sceneManager];
    [sceneManager addObserver:v5];

    layoutStateTransitionCoordinator = [sceneCopy layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator addObserver:v5];

    objc_storeWeak(&v5->_windowScene, sceneCopy);
  }

  return v5;
}

- (void)clientWithSceneIdentifier:(id)identifier prefersPointerLockStatus:(int64_t)status
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __77__SBLockedPointerManager_clientWithSceneIdentifier_prefersPointerLockStatus___block_invoke;
  v15 = &unk_2783AA668;
  v18 = &v20;
  statusCopy = status;
  selfCopy = self;
  v8 = identifierCopy;
  v17 = v8;
  dispatch_sync(stateSerialQueue, &v12);
  if (v21[3])
  {
    v10 = SBLogPointer(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{status, v12, v13, v14, v15, selfCopy}];
      *buf = 138543618;
      v25 = v8;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring request from %{public}@ to set pointerLockStatus %{public}@ because I'm invalidated", buf, 0x16u);
    }
  }

  else
  {
    [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:0, v12, v13, v14, v15, selfCopy];
  }

  _Block_object_dispose(&v20, 8);
}

void __77__SBLockedPointerManager_clientWithSceneIdentifier_prefersPointerLockStatus___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = *(a1[4] + 80);
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v3 = *(a1[4] + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
    [v3 setObject:v4 forKey:a1[5]];
  }
}

- (void)clientWithSceneIdentifier:(id)identifier suppressPreferredLockStatus:(BOOL)status
{
  statusCopy = status;
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __80__SBLockedPointerManager_clientWithSceneIdentifier_suppressPreferredLockStatus___block_invoke;
  v19 = &unk_2783B90F0;
  v22 = &v24;
  selfCopy = self;
  v8 = identifierCopy;
  v21 = v8;
  v23 = statusCopy;
  dispatch_sync(stateSerialQueue, &v16);
  if (v25[3])
  {
    v10 = SBLogPointer(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:{statusCopy, v16, v17, v18, v19, selfCopy}];
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v11;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring request from %{public}@ to set suppressPreferredLockStatus %{public}@ because I'm invalidated", buf, 0x16u);
    }
  }

  else
  {
    v12 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    switcherController = [WeakRetained switcherController];
    contentViewController = [switcherController contentViewController];
    v10 = SBSafeCast(v12, contentViewController);

    if (v10)
    {
      [v10 clientWithSceneIdentifier:v8 suppressPreferredPointerLockStatusUpdated:statusCopy];
    }

    [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:0];
  }

  _Block_object_dispose(&v24, 8);
}

void *__80__SBLockedPointerManager_clientWithSceneIdentifier_suppressPreferredLockStatus___block_invoke(void *result, const char *a2)
{
  *(*(result[6] + 8) + 24) = *(result[4] + 80);
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v2 = result;
    result = objc_msgSend_containsObject_(*(result[4] + 48), a2, result[5]);
    if (result)
    {
      if ((v2[7] & 1) == 0)
      {
        v3 = v2[5];
        v4 = *(v2[4] + 48);

        return [v4 removeObject:v3];
      }
    }

    else if (*(v2 + 56))
    {
      v5 = v2[5];
      v6 = *(v2[4] + 48);

      return [v6 addObject:v5];
    }
  }

  return result;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  sceneManager = [WeakRetained sceneManager];
  [sceneManager removeObserver:self];

  layoutStateTransitionCoordinator = [WeakRetained layoutStateTransitionCoordinator];
  [layoutStateTransitionCoordinator removeObserver:self];

  stateSerialQueue = self->_stateSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SBLockedPointerManager_invalidate__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(stateSerialQueue, block);
}

void __36__SBLockedPointerManager_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  [*(*(a1 + 32) + 64) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = 0;

  *(*(a1 + 32) + 80) = 1;
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__SBLockedPointerManager_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(stateSerialQueue, block);
  if (v14[3])
  {
    toLayoutState = SBLogPointer(v9);
    if (os_log_type_enabled(toLayoutState, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_21ED4E000, toLayoutState, OS_LOG_TYPE_DEFAULT, "Ignoring layout state transition didBegin because I'm invalidated", v11, 2u);
    }
  }

  else
  {
    toLayoutState = [contextCopy toLayoutState];
    [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:toLayoutState];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SBLockedPointerManager_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(stateSerialQueue, block);
  if (v14[3])
  {
    toLayoutState = SBLogPointer(v9);
    if (os_log_type_enabled(toLayoutState, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_21ED4E000, toLayoutState, OS_LOG_TYPE_DEFAULT, "Ignoring layout state transition didEnd because I'm invalidated", v11, 2u);
    }
  }

  else
  {
    toLayoutState = [contextCopy toLayoutState];
    [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:toLayoutState];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)sceneManager:(id)manager didAddExternalForegroundApplicationSceneHandle:(id)handle
{
  managerCopy = manager;
  handleCopy = handle;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBLockedPointerManager_sceneManager_didAddExternalForegroundApplicationSceneHandle___block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(stateSerialQueue, v9);
  if ((v11[3] & 1) == 0)
  {
    [handleCopy addObserver:self];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)sceneManager:(id)manager didRemoveExternalForegroundApplicationSceneHandle:(id)handle
{
  managerCopy = manager;
  handleCopy = handle;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__SBLockedPointerManager_sceneManager_didRemoveExternalForegroundApplicationSceneHandle___block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(stateSerialQueue, v9);
  if ((v11[3] & 1) == 0)
  {
    [handleCopy removeObserver:self];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  handleCopy = handle;
  diffCopy = diff;
  settingsCopy = settings;
  if (!self->_sceneSettingsInspector)
  {
    v11 = objc_alloc_init(MEMORY[0x277D75178]);
    sceneSettingsInspector = self->_sceneSettingsInspector;
    self->_sceneSettingsInspector = v11;

    objc_initWeak(&location, self);
    v13 = self->_sceneSettingsInspector;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke;
    v23[3] = &unk_2783AC8A0;
    objc_copyWeak(&v24, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v13 observeDeactivationReasonsWithBlock:v23];
    v14 = self->_sceneSettingsInspector;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2;
    v21[3] = &unk_2783AC8A0;
    objc_copyWeak(&v22, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v14 observeIsForegroundWithBlock:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  location = 0;
  p_location = &location;
  v19 = 0x2020000000;
  v20 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_3;
  v16[3] = &unk_2783A8CE0;
  v16[4] = self;
  v16[5] = &location;
  dispatch_sync(stateSerialQueue, v16);
  if ((p_location[3] & 1) == 0)
  {
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsInspector inspectDiff:diffCopy withContext:0];
  }

  _Block_object_dispose(&location, 8);
}

void __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notInvalidated_updateLockForLayoutState:0];
}

void __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notInvalidated_updateLockForLayoutState:0];
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  handleCopy = handle;
  sceneCopy = scene;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__SBLockedPointerManager_sceneHandle_didDestroyScene___block_invoke;
  v10[3] = &unk_2783A8CE0;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(stateSerialQueue, v10);
  if ((v12[3] & 1) == 0)
  {
    identifier = [sceneCopy identifier];
    if (identifier)
    {
      [(NSMutableDictionary *)self->_queue_preferredLockStatusBySceneIdentifier removeObjectForKey:identifier];
      [(NSMutableSet *)self->_queue_sceneIdentifiersThatSuppressPreferredLockStatus removeObject:identifier];
      [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:0];
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (id)_possibleSceneHandleForLockingPointerFromLayoutState:(id)state
{
  stateCopy = state;
  elements = [stateCopy elements];
  v5 = [elements count];

  if (v5 >= 2)
  {
    v7 = SBLogPointer(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBLockedPointerManager _possibleSceneHandleForLockingPointerFromLayoutState:];
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    v7 = SBLogPointer(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBLockedPointerManager _possibleSceneHandleForLockingPointerFromLayoutState:];
    }

    goto LABEL_16;
  }

  v8 = objc_opt_class();
  v9 = SBSafeCast(v8, stateCopy);
  v7 = v9;
  if (!v9)
  {
LABEL_8:
    elements2 = [stateCopy elements];
    anyObject = [elements2 anyObject];

    workspaceEntity = [anyObject workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];

    goto LABEL_17;
  }

  unlockedEnvironmentMode = [v9 unlockedEnvironmentMode];
  if (unlockedEnvironmentMode == 3)
  {
    spaceConfiguration = [v7 spaceConfiguration];
    if (spaceConfiguration == 1)
    {
      goto LABEL_8;
    }

    v17 = SBLogPointer(spaceConfiguration);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SBLockedPointerManager _possibleSceneHandleForLockingPointerFromLayoutState:];
    }
  }

  else
  {
    v17 = SBLogPointer(unlockedEnvironmentMode);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SBLockedPointerManager _possibleSceneHandleForLockingPointerFromLayoutState:];
    }
  }

LABEL_16:
  sceneHandle = 0;
LABEL_17:

  return sceneHandle;
}

- (BOOL)_shouldAllowPointerLockedForScene:(id)scene
{
  v26 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  controlCenterController = [WeakRetained controlCenterController];
  isPresented = [controlCenterController isPresented];

  v8 = +[SBCoverSheetPresentationManager sharedInstance];
  isPresented2 = [v8 isPresented];

  sceneIfExists = [sceneCopy sceneIfExists];
  v11 = sceneIfExists;
  if (sceneIfExists)
  {
    isEffectivelyForeground = [sceneCopy isEffectivelyForeground];
    settings = [v11 settings];
    if ([settings isUISubclass])
    {
      v14 = ([settings deactivationReasons] & 0xFFFFFFFFFFFFFEFFLL) == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = isEffectivelyForeground & v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = ((isPresented | isPresented2) ^ 1) & v15;
  v17 = SBLogPointer(sceneIfExists);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109888;
    v19[1] = v16 & 1;
    v20 = 1024;
    v21 = isPresented ^ 1;
    v22 = 1024;
    v23 = isPresented2 ^ 1;
    v24 = 1024;
    v25 = v15;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_INFO, "shouldAllow:%d isAllowedBasedOnControlCenterState:%d isAllowedBasedOnCoverSheetState:%d isAllowedFromActivationState:%d", v19, 0x1Au);
  }

  return v16 & 1;
}

- (void)_notInvalidated_updateLockForLayoutState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    layoutStateProvider = [WeakRetained layoutStateProvider];
    stateCopy = [layoutStateProvider layoutState];
  }

  stateSerialQueue = self->_stateSerialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBLockedPointerManager__notInvalidated_updateLockForLayoutState___block_invoke;
  v9[3] = &unk_2783A92D8;
  v9[4] = self;
  v10 = stateCopy;
  v8 = stateCopy;
  dispatch_async(stateSerialQueue, v9);
}

- (void)_queue_updateLockForLayoutState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  dispatch_assert_queue_V2(self->_stateSerialQueue);
  if (self->_queue_isInvalidated)
  {
    v6 = SBLogPointer(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      *v18 = stateCopy;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring request to update pointer lock state for layout state: %@ because I'm invalidated", &v17, 0xCu);
    }
  }

  else
  {
    v6 = [(SBLockedPointerManager *)self _possibleSceneHandleForLockingPointerFromLayoutState:stateCopy];
    sceneIdentifier = [v6 sceneIdentifier];
    v8 = SBLogPointer(sceneIdentifier);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      *v18 = sceneIdentifier;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Re-evaluating pointer lock state for scene %@", &v17, 0xCu);
    }

    queue_sceneIdentifierThatHasLockedPointer = self->_queue_sceneIdentifierThatHasLockedPointer;
    v10 = [(SBLockedPointerManager *)self _queue_prefersLockForSceneIdentifier:sceneIdentifier];
    v11 = objc_msgSend_containsObject_(self->_queue_sceneIdentifiersThatSuppressPreferredLockStatus);
    if (v10)
    {
      v12 = v11;
      v11 = [(SBLockedPointerManager *)self _shouldAllowPointerLockedForScene:v6];
      v13 = v11 & (v12 ^ 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = SBLogPointer(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 67109632;
      *v18 = v10;
      *&v18[4] = 1024;
      *&v18[6] = v13;
      v19 = 1024;
      v20 = queue_sceneIdentifierThatHasLockedPointer != 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "currentScenePrefersLock:%d shouldBeLocked:%d isCurrentlyLocked:%d", &v17, 0x14u);
    }

    if (!v13 || queue_sceneIdentifierThatHasLockedPointer)
    {
      if (queue_sceneIdentifierThatHasLockedPointer)
      {
        v16 = v13;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        [(SBLockedPointerManager *)self _queue_unlockPointer];
      }
    }

    else
    {
      sceneIdentifier2 = [v6 sceneIdentifier];
      [(SBLockedPointerManager *)self _queue_lockPointerForSceneIdentifier:sceneIdentifier2];
    }
  }
}

- (BOOL)_queue_prefersLockForSceneIdentifier:(id)identifier
{
  stateSerialQueue = self->_stateSerialQueue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(stateSerialQueue);
  v6 = [(NSMutableDictionary *)self->_queue_preferredLockStatusBySceneIdentifier objectForKey:identifierCopy];

  if (v6)
  {
    v7 = [v6 integerValue] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_queue_lockPointerForSceneIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_stateSerialQueue);
  v6 = SBLogPointer(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = identifierCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Locking pointer for scene %{public}@", buf, 0xCu);
  }

  if (self->_queue_sceneIdentifierThatHasLockedPointer)
  {
    [(SBLockedPointerManager *)self _setPointerLockStatus:0 forSceneWithIdentifier:?];
  }

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Scene %@ requested locked pointer", identifierCopy];
  mEMORY[0x277CF0720] = [MEMORY[0x277CF0720] sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  hardwareIdentifier = [_fbsDisplayConfiguration hardwareIdentifier];
  v12 = [mEMORY[0x277CF0720] pointerSuppressionAssertionOnDisplay:hardwareIdentifier forReason:identifierCopy withOptionsMask:2];
  queue_backboardLockedPointerAssertion = self->_queue_backboardLockedPointerAssertion;
  self->_queue_backboardLockedPointerAssertion = v12;

  v14 = [(PSPointerClientController *)self->_pointerClientController persistentlyHidePointerAssertionForReason:4];
  queue_pointerHiddenAssertion = self->_queue_pointerHiddenAssertion;
  self->_queue_pointerHiddenAssertion = v14;

  queue_sceneIdentifierThatHasLockedPointer = self->_queue_sceneIdentifierThatHasLockedPointer;
  self->_queue_sceneIdentifierThatHasLockedPointer = identifierCopy;
  v17 = identifierCopy;

  [(SBLockedPointerManager *)self _setPointerLockStatus:1 forSceneWithIdentifier:v17];
}

- (void)_queue_unlockPointer
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateSerialQueue);
  v4 = SBLogPointer(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    queue_sceneIdentifierThatHasLockedPointer = self->_queue_sceneIdentifierThatHasLockedPointer;
    v11 = 138543362;
    v12 = queue_sceneIdentifierThatHasLockedPointer;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Unlocking pointer locked by scene %{public}@", &v11, 0xCu);
  }

  if (self->_queue_sceneIdentifierThatHasLockedPointer)
  {
    [(SBLockedPointerManager *)self _setPointerLockStatus:0 forSceneWithIdentifier:?];
  }

  else
  {
    v7 = SBLogPointer(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBLockedPointerManager _queue_unlockPointer];
    }
  }

  v8 = self->_queue_sceneIdentifierThatHasLockedPointer;
  self->_queue_sceneIdentifierThatHasLockedPointer = 0;

  [(BSInvalidatable *)self->_queue_backboardLockedPointerAssertion invalidate];
  queue_backboardLockedPointerAssertion = self->_queue_backboardLockedPointerAssertion;
  self->_queue_backboardLockedPointerAssertion = 0;

  [(BSInvalidatable *)self->_queue_pointerHiddenAssertion invalidate];
  queue_pointerHiddenAssertion = self->_queue_pointerHiddenAssertion;
  self->_queue_pointerHiddenAssertion = 0;
}

- (void)_setPointerLockStatus:(int64_t)status forSceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SBLockedPointerManager__setPointerLockStatus_forSceneWithIdentifier___block_invoke;
  v7[3] = &unk_2783A8BC8;
  v8 = identifierCopy;
  statusCopy = status;
  v6 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __71__SBLockedPointerManager__setPointerLockStatus_forSceneWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0AAD8] sharedInstance];
  v3 = [v2 sceneWithIdentifier:*(a1 + 32)];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SBLockedPointerManager__setPointerLockStatus_forSceneWithIdentifier___block_invoke_2;
  v4[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
  v4[4] = *(a1 + 40);
  [v3 updateSettingsWithBlock:v4];
}

@end