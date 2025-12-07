@interface SBMainWorkspaceTransaction
- (SBMainWorkspaceTransaction)initWithTransitionRequest:(id)request;
- (void)_didComplete;
@end

@implementation SBMainWorkspaceTransaction

- (void)_didComplete
{
  v64 = *MEMORY[0x277D85DE8];
  if (![(SBMainWorkspaceTransaction *)self _isRootTransaction])
  {
    goto LABEL_35;
  }

  v3 = 0x277D6A000uLL;
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  isEnabled = [mEMORY[0x277D6A798] isEnabled];

  if (isEnabled)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"SBMainWorkspaceTransaction" forKeyedSubscript:@"LogSource"];
    v51 = @"VisibleUI";
  }

  else
  {
    v51 = 0;
    dictionary = 0;
  }

  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  activeInterfaceOrientation = [mEMORY[0x277D75128] activeInterfaceOrientation];

  v9 = +[SBCoverSheetPresentationManager sharedInstance];
  isVisible = [v9 isVisible];

  if ((isVisible & 1) == 0)
  {
    IsActive = SBWorkspaceSpringBoardIsActive();
    v50 = windowScene;
    switcherController = [windowScene switcherController];
    layoutState = [switcherController layoutState];
    unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

    if (IsActive)
    {
      if (unlockedEnvironmentMode != 2)
      {
        v12 = @"HomeScreen";
LABEL_26:
        windowScene = v50;
        goto LABEL_29;
      }

      interfaceOrientation = [switcherController interfaceOrientation];
      windowScene = v50;
      if (!isEnabled)
      {
        v12 = @"AppSwitcher";
LABEL_29:

        goto LABEL_30;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithInteger:interfaceOrientation];
      [dictionary setObject:v18 forKeyedSubscript:@"SwitcherInterfaceOrientation"];
      v12 = @"AppSwitcher";
    }

    else
    {
      if (unlockedEnvironmentMode == 2)
      {
        interfaceOrientation2 = [switcherController interfaceOrientation];
        if (!isEnabled)
        {
          v12 = @"AppSwitcher";
          goto LABEL_26;
        }

        v18 = [MEMORY[0x277CCABB0] numberWithInteger:interfaceOrientation2];
        [dictionary setObject:v18 forKeyedSubscript:@"SwitcherInterfaceOrientation"];
        v12 = @"AppSwitcher";
      }

      else
      {
        layoutState2 = [switcherController layoutState];
        v21 = [layoutState2 elementWithRole:1];
        workspaceEntity = [v21 workspaceEntity];
        deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];
        sceneHandle = [deviceApplicationSceneEntity sceneHandle];

        application = [sceneHandle application];
        bundleIdentifier = [application bundleIdentifier];
        v27 = bundleIdentifier;
        v28 = @"Unknown";
        if (bundleIdentifier)
        {
          v28 = bundleIdentifier;
        }

        v12 = v28;

        v18 = sceneHandle;
        currentInterfaceOrientation = [sceneHandle currentInterfaceOrientation];
        if (isEnabled)
        {
          v48 = v18;
          v30 = [MEMORY[0x277CCABB0] numberWithInteger:currentInterfaceOrientation];
          [dictionary setObject:v30 forKeyedSubscript:@"AppInterfaceOrientation"];

          v49 = switcherController;
          layoutStateStudyLogData = [switcherController layoutStateStudyLogData];
          [dictionary addEntriesFromDictionary:layoutStateStudyLogData];

          transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
          workspace = [transitionRequest workspace];
          pipCoordinator = [workspace pipCoordinator];

          v35 = 0;
          v36 = 1;
          do
          {
            v37 = v36;
            v38 = [pipCoordinator controllerForType:v35];
            if ([v38 isPictureInPictureWindowVisibleOnWindowScene:0])
            {
              v39 = SBStringFromSBPIPContentType(v35);
              [dictionary setObject:@"Visible" forKeyedSubscript:v39];
            }

            v36 = 0;
            v35 = 1;
          }

          while ((v37 & 1) != 0);

          v3 = 0x277D6A000;
          switcherController = v49;
          windowScene = v50;
          v18 = v48;
          goto LABEL_28;
        }
      }

      windowScene = v50;
    }

LABEL_28:

    goto LABEL_29;
  }

  v12 = @"CoverSheet";
LABEL_30:
  v40 = SBLogSystemGestureAppSwitcher(v11);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = BSInterfaceOrientationDescription();
    v42 = BSInterfaceOrientationDescription();
    BSInterfaceOrientationDescription();
    v44 = v43 = windowScene;
    *buf = 138413058;
    v57 = v12;
    v58 = 2112;
    v59 = v41;
    v60 = 2112;
    v61 = v42;
    v62 = 2112;
    v63 = v44;
    _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_INFO, "Visible UI change seen by Main Workspace Transaction: transition to %@ (SB interface orientation: %@, switcher interface orientation: %@,  app interface orientation: %@)", buf, 0x2Au);

    windowScene = v43;
  }

  if (isEnabled)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithInteger:activeInterfaceOrientation];
    [dictionary setObject:v45 forKeyedSubscript:@"SBInterfaceOrientation"];

    [dictionary setObject:v12 forKeyedSubscript:v51];
    sharedInstance = [*(v3 + 1944) sharedInstance];
    v54 = @"VisibleUIChanged";
    v55 = dictionary;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [sharedInstance log:v47];
  }

LABEL_35:
  v53.receiver = self;
  v53.super_class = SBMainWorkspaceTransaction;
  [(SBWorkspaceTransaction *)&v53 _didComplete];
}

- (SBMainWorkspaceTransaction)initWithTransitionRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = SBMainWorkspaceTransaction;
  return [(SBWorkspaceTransaction *)&v4 initWithTransitionRequest:request];
}

@end