@interface SBCoverSheetAnimator
- (SBCoverSheetAnimator)initWithCoverSheetWindow:(id)window sceneManager:(id)manager hostingWindow:(id)hostingWindow switcherWindow:(id)switcherWindow wallpaperController:(id)controller folderController:(id)folderController unlockSettings:(id)settings;
- (UIWindow)coverSheetWindow;
- (void)_prepareIconAnimatorIncludingLockScreen:(BOOL)screen;
- (void)_setWallpaperToLocked:(BOOL)locked duration:(double)duration;
- (void)_updateCoverSheetHosting;
- (void)animateToCoverSheet:(BOOL)sheet animated:(BOOL)animated withCompletion:(id)completion;
@end

@implementation SBCoverSheetAnimator

- (SBCoverSheetAnimator)initWithCoverSheetWindow:(id)window sceneManager:(id)manager hostingWindow:(id)hostingWindow switcherWindow:(id)switcherWindow wallpaperController:(id)controller folderController:(id)folderController unlockSettings:(id)settings
{
  obj = window;
  managerCopy = manager;
  hostingWindowCopy = hostingWindow;
  switcherWindowCopy = switcherWindow;
  controllerCopy = controller;
  folderControllerCopy = folderController;
  settingsCopy = settings;
  v25.receiver = self;
  v25.super_class = SBCoverSheetAnimator;
  v18 = [(SBCoverSheetAnimator *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_coverSheetWindow, obj);
    objc_storeStrong(&v19->_sceneManager, manager);
    objc_storeStrong(&v19->_hostingWindow, hostingWindow);
    objc_storeStrong(&v19->_switcherWindow, switcherWindow);
    objc_storeStrong(&v19->_wallpaperController, controller);
    objc_storeStrong(&v19->_folderController, folderController);
    objc_storeStrong(&v19->_unlockSettings, settings);
  }

  return v19;
}

- (void)animateToCoverSheet:(BOOL)sheet animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = 0.0;
  if (sheet)
  {
    v11 = 0;
    v12 = 0.0;
  }

  else
  {
    if (animatedCopy)
    {
      v13 = SBLogTelemetrySignposts(completionCopy);
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_LOCKSCREEN_UNLOCK_ANIMATION_START", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
      }

      kdebug_trace();
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"SBCoverSheetWillAnimateDeactivation" object:self];
    }

    v15 = objc_alloc_init(SBLockToAppStatusBarAnimator);
    statusBarAnimator = self->_statusBarAnimator;
    self->_statusBarAnimator = v15;

    [(SBLockToAppStatusBarAnimator *)self->_statusBarAnimator animateStatusBarFromLockToHome];
    [(SBCoverSheetAnimator *)self _prepareIconAnimatorIncludingLockScreen:1];
    v12 = 1.0;
    [(SBIconZoomAnimator *)self->_iconAnimator setFraction:1.0];
    [MEMORY[0x277D75940] _synchronizeDrawing];
    v17 = MEMORY[0x277CF0BA0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke;
    v30[3] = &unk_2783A98A0;
    v30[4] = self;
    v31 = v9;
    v18 = [v17 sentinelWithQueue:MEMORY[0x277D85CD0] signalCount:2 completion:v30];
    iconAnimator = self->_iconAnimator;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_2;
    v28[3] = &unk_2783A9398;
    v11 = v18;
    v29 = v11;
    [(SBIconZoomAnimator *)iconAnimator animateToFraction:v28 afterDelay:0.0 withCompletion:0.0];
  }

  if (animatedCopy)
  {
    v10 = 0.5;
  }

  v20 = MEMORY[0x277D75D18];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_3;
  v26[3] = &unk_2783AE7A0;
  v26[4] = self;
  sheetCopy = sheet;
  *&v26[5] = v12;
  *&v26[6] = v10;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_4;
  v23[3] = &unk_2783A9C98;
  v24 = v11;
  v25 = v9;
  v21 = v9;
  v22 = v11;
  [v20 animateWithDuration:v26 animations:v23 completion:v10];
}

uint64_t __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) cleanup];
  [*(*(a1 + 32) + 32) stopHosting];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setAlpha:*(a1 + 40)];
  [*(*(a1 + 32) + 56) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);

  return [v2 _setWallpaperToLocked:v3 duration:v4];
}

uint64_t (**__68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_4(uint64_t a1))(void)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return [v2 signal];
  }

  result = *(a1 + 40);
  if (result)
  {
    return result[2]();
  }

  return result;
}

- (void)_updateCoverSheetHosting
{
  coverSheetWindowHostWrapper = self->_coverSheetWindowHostWrapper;
  if (coverSheetWindowHostWrapper)
  {
    [(SBWindowSelfHostWrapper *)coverSheetWindowHostWrapper stopHosting];
  }

  coverSheetWindow = [(SBCoverSheetAnimator *)self coverSheetWindow];
  hostingWindow = self->_hostingWindow;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [coverSheetWindow sb_hostWrapperForUseInWindow:hostingWindow hostRequester:v6];
  v8 = self->_coverSheetWindowHostWrapper;
  self->_coverSheetWindowHostWrapper = v7;
}

- (void)_prepareIconAnimatorIncludingLockScreen:(BOOL)screen
{
  if (screen)
  {
    [(SBCoverSheetAnimator *)self _updateCoverSheetHosting];
    hostView = [(SBWindowSelfHostWrapper *)self->_coverSheetWindowHostWrapper hostView];
  }

  else
  {
    hostView = 0;
  }

  view = [(SBFolderController *)self->_folderController view];
  window = [view window];

  v6 = [[SBCenterAppIconZoomAnimator alloc] initWithFolderController:self->_folderController appView:hostView window:window];
  iconAnimator = self->_iconAnimator;
  self->_iconAnimator = &v6->super.super;

  [(SBIconZoomAnimator *)self->_iconAnimator setSettings:self->_unlockSettings];
  [(SBIconZoomAnimator *)self->_iconAnimator setDistantScale:0.26];
  [(SBIconZoomAnimator *)self->_iconAnimator prepare];
}

- (void)_setWallpaperToLocked:(BOOL)locked duration:(double)duration
{
  v6 = !locked;
  v8 = [MEMORY[0x277CF0D38] factoryWithDuration:?];
  v7 = [MEMORY[0x277CF0D38] factoryWithDuration:duration];
  [(SBWallpaperController *)self->_wallpaperController setActiveVariant:v6 withOutAnimationFactory:v7 inAnimationFactory:v8 completion:0];
}

- (UIWindow)coverSheetWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetWindow);

  return WeakRetained;
}

@end