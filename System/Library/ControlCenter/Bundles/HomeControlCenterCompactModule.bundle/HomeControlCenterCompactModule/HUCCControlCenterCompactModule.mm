@interface HUCCControlCenterCompactModule
- (BOOL)isDeviceUnlockedForModuleContentViewController:(id)controller;
- (HUCCControlCenterCompactModule)init;
- (id)contentViewControllerForContext:(id)context;
- (void)launchHomeAppForModuleContentViewController:(id)controller;
- (void)lockStateWasUpdated:(BOOL)updated;
- (void)moduleContentViewController:(id)controller viewDidDisappear:(BOOL)disappear;
- (void)moduleContentViewController:(id)controller viewWillAppear:(BOOL)appear;
@end

@implementation HUCCControlCenterCompactModule

- (HUCCControlCenterCompactModule)init
{
  v9.receiver = self;
  v9.super_class = HUCCControlCenterCompactModule;
  v2 = [(HUCCControlCenterCompactModule *)&v9 init];
  if (v2)
  {
    v3 = _os_feature_enabled_impl();
    if (v3)
    {
      mEMORY[0x29EDC54A8] = [MEMORY[0x29EDC54A8] sharedManager];
      [mEMORY[0x29EDC54A8] bootstrap];
    }

    else
    {
      HUCCPerformCommonInitialization(v3, v4);
    }

    v6 = [[HUCCLockStateHandler alloc] initWithDelegate:v2];
    lockStateHandler = v2->_lockStateHandler;
    v2->_lockStateHandler = v6;

    if (qword_2A179A1C8 != -1)
    {
      sub_29C98CB9C();
    }
  }

  return v2;
}

- (id)contentViewControllerForContext:(id)context
{
  v3 = [[HUCCCompactModuleContentViewController alloc] initWithDelegate:self];

  return v3;
}

- (void)lockStateWasUpdated:(BOOL)updated
{
  updatedCopy = updated;
  objc_opt_class();
  contentViewController = [(HUCCControlCenterCompactModule *)self contentViewController];
  if (objc_opt_isKindOfClass())
  {
    v6 = contentViewController;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 setAccessAllowedForCurrentLockState:updatedCopy];
}

- (void)moduleContentViewController:(id)controller viewWillAppear:(BOOL)appear
{
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x29EDC54A8] = [MEMORY[0x29EDC54A8] sharedManager];
    [mEMORY[0x29EDC54A8] enterModuleViewWillAppear];
  }

  else
  {

    HUCCUpdateRunningState(1);
  }
}

- (void)moduleContentViewController:(id)controller viewDidDisappear:(BOOL)disappear
{
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    mEMORY[0x29EDC54A8] = [MEMORY[0x29EDC54A8] sharedManager];
    [mEMORY[0x29EDC54A8] exitModuleViewDidDisappear];
  }

  else
  {

    HUCCUpdateRunningState(v4);
  }
}

- (void)launchHomeAppForModuleContentViewController:(id)controller
{
  controllerCopy = controller;
  contentModuleContext = [(HUCCControlCenterCompactModule *)self contentModuleContext];
  launchHomeAppForModuleViewController(controllerCopy, contentModuleContext);
}

- (BOOL)isDeviceUnlockedForModuleContentViewController:(id)controller
{
  lockStateHandler = [(HUCCControlCenterCompactModule *)self lockStateHandler];
  isDeviceUnlocked = [lockStateHandler isDeviceUnlocked];

  return isDeviceUnlocked;
}

@end