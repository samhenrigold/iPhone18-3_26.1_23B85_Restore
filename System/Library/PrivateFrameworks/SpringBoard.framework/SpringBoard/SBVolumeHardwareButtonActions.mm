@interface SBVolumeHardwareButtonActions
- (BOOL)_handleVolumeButtonDownForIncrease:(BOOL)increase modifiers:(int64_t)modifiers;
- (BOOL)_handleVolumeButtonUpForIncrease:(BOOL)increase;
- (BOOL)_handleVolumeDecreaseUp;
- (BOOL)_handleVolumeIncreaseUp;
- (BOOL)_sendVolumeButtonToSBUIControllerForIncrease:(BOOL)increase down:(BOOL)down;
- (id)_sendVolumeButtonDownToLegacyRegisteredClientsForIncrease:(BOOL)increase;
- (id)_sendVolumeButtonDownToOverridingSceneForIncrease:(BOOL)increase;
- (id)_sendVolumeButtonDownToSBUIControllerForIncrease:(BOOL)increase;
- (id)_sendVolumeButtonDownToSoundControllerForIncrease:(BOOL)increase;
- (id)_sendVolumeButtonDownToSpringBoardInternalUIForIncrease:(BOOL)increase;
- (void)_launchVolumeSettings;
- (void)_sendBanditsVolumeDecreased;
- (void)_sendBanditsVolumeIncreased;
- (void)addVolumePressBandit:(id)bandit;
- (void)cancelVolumePress;
- (void)removeVolumePressBandit:(id)bandit;
- (void)volumeDecreasePressUp;
- (void)volumeIncreasePressUp;
@end

@implementation SBVolumeHardwareButtonActions

- (void)volumeIncreasePressUp
{
  if (self->_volumeIncreaseIsDown)
  {
    self->_volumeIncreaseIsDown = 0;
    [(SBVolumeHardwareButtonActions *)self _handleVolumeButtonUpForIncrease:1];
  }
}

- (void)volumeDecreasePressUp
{
  if (self->_volumeDecreaseIsDown)
  {
    self->_volumeDecreaseIsDown = 0;
    [(SBVolumeHardwareButtonActions *)self _handleVolumeButtonUpForIncrease:0];
  }
}

- (void)cancelVolumePress
{
  v3 = SBLogButtonsVolume(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "canceling volume button presses", v4, 2u);
  }

  [(SBVolumeHardwareButtonActions *)self volumeIncreasePressUp];
  [(SBVolumeHardwareButtonActions *)self volumeDecreasePressUp];
}

- (void)addVolumePressBandit:(id)bandit
{
  v11 = *MEMORY[0x277D85DE8];
  banditCopy = bandit;
  v5 = SBLogButtonsVolume(banditCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 138543362;
    *&v10[4] = objc_opt_class();
    v6 = *&v10[4];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "bandit added: %{public}@", v10, 0xCu);
  }

  volumePressBandits = self->_volumePressBandits;
  if (!volumePressBandits)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v9 = self->_volumePressBandits;
    self->_volumePressBandits = weakObjectsHashTable;

    volumePressBandits = self->_volumePressBandits;
  }

  [(NSHashTable *)volumePressBandits addObject:banditCopy, *v10, *&v10[8]];
}

- (void)removeVolumePressBandit:(id)bandit
{
  v9 = *MEMORY[0x277D85DE8];
  banditCopy = bandit;
  v5 = SBLogButtonsVolume(banditCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "bandit removed: %{public}@", &v7, 0xCu);
  }

  [(NSHashTable *)self->_volumePressBandits removeObject:banditCopy];
}

- (void)_sendBanditsVolumeIncreased
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(NSHashTable *)self->_volumePressBandits copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  handleVolumeIncrease = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (handleVolumeIncrease)
  {
    v5 = handleVolumeIncrease;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = SBLogButtonsVolume(handleVolumeIncrease);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          *buf = 138543362;
          v17 = v10;
          v11 = v10;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "sending volume increase to bandit: %{public}@", buf, 0xCu);
        }

        handleVolumeIncrease = [v8 handleVolumeIncrease];
        ++v7;
      }

      while (v5 != v7);
      handleVolumeIncrease = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      v5 = handleVolumeIncrease;
    }

    while (handleVolumeIncrease);
  }
}

- (void)_sendBanditsVolumeDecreased
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(NSHashTable *)self->_volumePressBandits copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  handleVolumeDecrease = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (handleVolumeDecrease)
  {
    v5 = handleVolumeDecrease;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = SBLogButtonsVolume(handleVolumeDecrease);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          *buf = 138543362;
          v17 = v10;
          v11 = v10;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "sending volume decrease to bandit: %{public}@", buf, 0xCu);
        }

        handleVolumeDecrease = [v8 handleVolumeDecrease];
        ++v7;
      }

      while (v5 != v7);
      handleVolumeDecrease = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      v5 = handleVolumeDecrease;
    }

    while (handleVolumeDecrease);
  }
}

- (BOOL)_sendVolumeButtonToSBUIControllerForIncrease:(BOOL)increase down:(BOOL)down
{
  downCopy = down;
  increaseCopy = increase;
  v6 = +[SBUIController sharedInstance];
  v7 = v6;
  if (increaseCopy)
  {
    v8 = 102;
  }

  else
  {
    v8 = 103;
  }

  [v6 handleVolumeButtonWithType:v8 down:downCopy];

  return 1;
}

- (BOOL)_handleVolumeIncreaseUp
{
  volumeIncreaseUpEventBlock = self->_volumeIncreaseUpEventBlock;
  if (volumeIncreaseUpEventBlock)
  {
    volumeIncreaseUpEventBlock[2](self->_volumeIncreaseUpEventBlock, a2);
    v4 = self->_volumeIncreaseUpEventBlock;
    self->_volumeIncreaseUpEventBlock = 0;
  }

  return volumeIncreaseUpEventBlock != 0;
}

- (BOOL)_handleVolumeDecreaseUp
{
  volumeDecreaseUpEventBlock = self->_volumeDecreaseUpEventBlock;
  if (volumeDecreaseUpEventBlock)
  {
    volumeDecreaseUpEventBlock[2](self->_volumeDecreaseUpEventBlock, a2);
    v4 = self->_volumeDecreaseUpEventBlock;
    self->_volumeDecreaseUpEventBlock = 0;
  }

  return volumeDecreaseUpEventBlock != 0;
}

- (BOOL)_handleVolumeButtonUpForIncrease:(BOOL)increase
{
  if (increase)
  {
    _handleVolumeIncreaseUp = [(SBVolumeHardwareButtonActions *)self _handleVolumeIncreaseUp];
    if (_handleVolumeIncreaseUp)
    {
      return 1;
    }
  }

  else
  {
    _handleVolumeIncreaseUp = [(SBVolumeHardwareButtonActions *)self _handleVolumeDecreaseUp];
    if (_handleVolumeIncreaseUp)
    {
      return 1;
    }
  }

  v6 = SBLogButtonsVolume(_handleVolumeIncreaseUp);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(SBVolumeHardwareButtonActions *)increase _handleVolumeButtonUpForIncrease:v6];
  }

  return 0;
}

- (id)_sendVolumeButtonDownToSpringBoardInternalUIForIncrease:(BOOL)increase
{
  increaseCopy = increase;
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  v6 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v6 transientOverlayPresentationManager];
  v8 = [transientOverlayPresentationManager transientOverlayPresenterForWindowScene:activeDisplayWindowScene];

  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  v10 = systemApertureControllerForMainDisplay;
  if (increaseCopy)
  {
    if (([systemApertureControllerForMainDisplay handleVolumeUpButtonPress] & 1) == 0)
    {
LABEL_3:
      v11 = 0;
      v12 = 0;
      goto LABEL_6;
    }
  }

  else if (![systemApertureControllerForMainDisplay handleVolumeDownButtonPress])
  {
    goto LABEL_3;
  }

  v12 = @"SystemApertureController";
  v11 = 1;
LABEL_6:
  bannerManager = [SBApp bannerManager];
  v14 = bannerManager;
  if (v11)
  {
    goto LABEL_29;
  }

  v15 = [bannerManager bannerWindowInWindowScene:activeDisplayWindowScene];
  [v15 windowLevel];
  v16 = [v8 hasPresentationAboveWindowLevel:?];

  if ((v16 & 1) == 0)
  {
    if (increaseCopy)
    {
      if (([v14 handleVolumeUpButtonPress] & 1) == 0)
      {
        if (([v8 canHandleButtonEvents] & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    else if (([v14 handleVolumeDownButtonPress] & 1) == 0)
    {
      if (([v8 canHandleButtonEvents] & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v12 = @"BannerManager";
LABEL_29:
    v21 = [@"SpringBoard Internal UI: " stringByAppendingString:v12];
    goto LABEL_30;
  }

  if (([v8 canHandleButtonEvents] & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!increaseCopy)
  {
LABEL_19:
    if ([v8 handleVolumeDownButtonPress])
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_14:
  if ([v8 handleVolumeUpButtonPress])
  {
LABEL_20:
    v12 = @"TransientOverlayPresenter";
    goto LABEL_29;
  }

LABEL_21:
  v17 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v17 lockScreenEnvironment];
  buttonEventsHandler = [lockScreenEnvironment buttonEventsHandler];

  if (increaseCopy)
  {
    if ([buttonEventsHandler handleVolumeUpButtonPress])
    {
LABEL_23:
      v12 = @"LockScreenEnvironment";
LABEL_28:

      goto LABEL_29;
    }
  }

  else if ([buttonEventsHandler handleVolumeDownButtonPress])
  {
    goto LABEL_23;
  }

  v20 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  buttonEventsHandler = v20;
  if (increaseCopy)
  {
    if ([v20 handleVolumeUpButtonPress])
    {
LABEL_27:
      v12 = @"Switcher";
      goto LABEL_28;
    }
  }

  else if ([v20 handleVolumeDownButtonPress])
  {
    goto LABEL_27;
  }

  v21 = 0;
LABEL_30:

  return v21;
}

- (id)_sendVolumeButtonDownToLegacyRegisteredClientsForIncrease:(BOOL)increase
{
  increaseCopy = increase;
  v28 = *MEMORY[0x277D85DE8];
  appsRegisteredForVolumeEvents = [SBApp appsRegisteredForVolumeEvents];
  firstObject = [appsRegisteredForVolumeEvents firstObject];

  if (firstObject && SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(firstObject))
  {
    bundleIdentifier = [firstObject bundleIdentifier];
    v8 = [@"Legacy Registered Client: " stringByAppendingString:bundleIdentifier];

    bundleIdentifier2 = [firstObject bundleIdentifier];
    processState = [firstObject processState];
    v11 = [processState pid];
    if (increaseCopy)
    {
      v12 = 102;
    }

    else
    {
      v12 = 103;
    }

    SBSendFakeButtonPressEventToApplication(bundleIdentifier2, v11, v12, 1);

    v14 = SBLogButtonsVolume(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (increaseCopy)
    {
      if (v15)
      {
        bundleIdentifier3 = [firstObject bundleIdentifier];
        *buf = 138543362;
        v27 = bundleIdentifier3;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "sent volume increase down to %{public}@", buf, 0xCu);
      }

      v17 = v25;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v18 = 24;
      v19 = __91__SBVolumeHardwareButtonActions__sendVolumeButtonDownToLegacyRegisteredClientsForIncrease___block_invoke;
    }

    else
    {
      if (v15)
      {
        bundleIdentifier4 = [firstObject bundleIdentifier];
        *buf = 138543362;
        v27 = bundleIdentifier4;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "sent volume decrease down to %{public}@", buf, 0xCu);
      }

      v17 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v18 = 32;
      v19 = __91__SBVolumeHardwareButtonActions__sendVolumeButtonDownToLegacyRegisteredClientsForIncrease___block_invoke_47;
    }

    v17[2] = v19;
    v17[3] = &unk_2783A8C18;
    v17[4] = firstObject;
    v21 = [v17 copy];
    v22 = *(&self->super.isa + v18);
    *(&self->super.isa + v18) = v21;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __91__SBVolumeHardwareButtonActions__sendVolumeButtonDownToLegacyRegisteredClientsForIncrease___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = SBLogButtonsVolume(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "sending volume increase up to previous down receipient: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) processState];
  SBSendFakeButtonPressEventToApplication(v2, [v4 pid], 102, 0);
}

void __91__SBVolumeHardwareButtonActions__sendVolumeButtonDownToLegacyRegisteredClientsForIncrease___block_invoke_47(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = SBLogButtonsVolume(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "sending volume decrease up to previous down receipient: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) processState];
  SBSendFakeButtonPressEventToApplication(v2, [v4 pid], 103, 0);
}

- (id)_sendVolumeButtonDownToSoundControllerForIncrease:(BOOL)increase
{
  v3 = +[SBSoundController sharedInstance];
  handleVolumeButtonDownEvent = [v3 handleVolumeButtonDownEvent];

  if (handleVolumeButtonDownEvent)
  {
    return @"SBSoundController";
  }

  else
  {
    return 0;
  }
}

- (id)_sendVolumeButtonDownToSBUIControllerForIncrease:(BOOL)increase
{
  increaseCopy = increase;
  v18 = *MEMORY[0x277D85DE8];
  v5 = SBLogButtonsVolume(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "decrease";
    if (increaseCopy)
    {
      v6 = "increase";
    }

    *buf = 136446210;
    v17 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBUIController will process %{public}s down event", buf, 0xCu);
  }

  [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonToSBUIControllerForIncrease:increaseCopy down:1];
  objc_initWeak(buf, self);
  if (increaseCopy)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__SBVolumeHardwareButtonActions__sendVolumeButtonDownToSBUIControllerForIncrease___block_invoke;
    v14[3] = &unk_2783A8C68;
    objc_copyWeak(&v15, buf);
    v7 = [v14 copy];
    volumeIncreaseUpEventBlock = self->_volumeIncreaseUpEventBlock;
    self->_volumeIncreaseUpEventBlock = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__SBVolumeHardwareButtonActions__sendVolumeButtonDownToSBUIControllerForIncrease___block_invoke_55;
    v12[3] = &unk_2783A8C68;
    objc_copyWeak(&v13, buf);
    v9 = [v12 copy];
    volumeDecreaseUpEventBlock = self->_volumeDecreaseUpEventBlock;
    self->_volumeDecreaseUpEventBlock = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  return @"SBUIController";
}

void __82__SBVolumeHardwareButtonActions__sendVolumeButtonDownToSBUIControllerForIncrease___block_invoke(uint64_t a1)
{
  v2 = SBLogButtonsVolume(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBUIController will process increase up event", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendVolumeButtonToSBUIControllerForIncrease:1 down:0];
}

void __82__SBVolumeHardwareButtonActions__sendVolumeButtonDownToSBUIControllerForIncrease___block_invoke_55(uint64_t a1)
{
  v2 = SBLogButtonsVolume(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBUIController will process decrease up event", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendVolumeButtonToSBUIControllerForIncrease:0 down:0];
}

- (void)_launchVolumeSettings
{
  v2 = SBLogButtonsVolume(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "launching volume prefs", v4, 2u);
  }

  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds"];
  SBWorkspaceActivateApplicationFromURL(v3, 0, 0);
}

- (id)_sendVolumeButtonDownToOverridingSceneForIncrease:(BOOL)increase
{
  increaseCopy = increase;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  physicalButtonSceneOverrideManager = [v5 physicalButtonSceneOverrideManager];
  v26 = 0;
  v7 = [(SBPhysicalButtonSceneOverrideManager *)physicalButtonSceneOverrideManager sendVolumeButtonDownForIncrease:increaseCopy shouldAlsoChangeVolume:&v26];
  v8 = v7;
  if (v7)
  {
    identifier = [v7 identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__SBVolumeHardwareButtonActions__sendVolumeButtonDownToOverridingSceneForIncrease___block_invoke;
    v24[3] = &unk_2783A8C18;
    v25 = v8;
    v10 = [v24 copy];
    if (v26 == 1)
    {
      [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonToSBUIControllerForIncrease:increaseCopy down:1];
      v11 = [identifier stringByAppendingString:@" + SBUIController"];

      objc_initWeak(&location, self);
      v12 = [v10 copy];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __83__SBVolumeHardwareButtonActions__sendVolumeButtonDownToOverridingSceneForIncrease___block_invoke_2;
      v19[3] = &unk_2783C2478;
      v13 = v12;
      v20 = v13;
      objc_copyWeak(&v21, &location);
      v22 = increaseCopy;
      v14 = [v19 copy];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      v10 = v14;
      identifier = v11;
    }
  }

  else
  {
    v10 = 0;
    identifier = 0;
  }

  v15 = MEMORY[0x223D6F7F0](v10);
  v16 = 32;
  if (increaseCopy)
  {
    v16 = 24;
  }

  v17 = *(&self->super.isa + v16);
  *(&self->super.isa + v16) = v15;

  return identifier;
}

void __83__SBVolumeHardwareButtonActions__sendVolumeButtonDownToOverridingSceneForIncrease___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendVolumeButtonToSBUIControllerForIncrease:*(a1 + 48) down:0];
}

- (BOOL)_handleVolumeButtonDownForIncrease:(BOOL)increase modifiers:(int64_t)modifiers
{
  increaseCopy = increase;
  v36 = *MEMORY[0x277D85DE8];
  if (modifiers == 0x80000)
  {
    [(SBVolumeHardwareButtonActions *)self _launchVolumeSettings];
    v6 = 32;
    if (increaseCopy)
    {
      v6 = 24;
      v7 = &__block_literal_global_406;
    }

    else
    {
      v7 = &__block_literal_global_65_2;
    }

    v8 = *(&self->super.isa + v6);
    *(&self->super.isa + v6) = v7;

    v10 = @"Volume Settings";
  }

  else
  {
    if (![(NSHashTable *)self->_volumePressBandits count])
    {
      goto LABEL_11;
    }

    if (increaseCopy)
    {
      [(SBVolumeHardwareButtonActions *)self _sendBanditsVolumeIncreased];
    }

    else
    {
      [(SBVolumeHardwareButtonActions *)self _sendBanditsVolumeDecreased];
    }

    allObjects = [(NSHashTable *)self->_volumePressBandits allObjects];
    v12 = [allObjects bs_map:&__block_literal_global_71_0];
    v13 = [v12 componentsJoinedByString:{@", "}];

    v10 = [@"bandit(s): " stringByAppendingString:v13];

    if (!v10)
    {
LABEL_11:
      v14 = +[SBPrototypeController sharedInstance];
      v15 = v14;
      if (increaseCopy)
      {
        handleVolumeIncreaseEvent = [v14 handleVolumeIncreaseEvent];
      }

      else
      {
        handleVolumeIncreaseEvent = [v14 handleVolumeDecreaseEvent];
      }

      v17 = handleVolumeIncreaseEvent;

      if (v17)
      {
        v10 = @"SBPrototypeController";
        goto LABEL_18;
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x277D67AF8] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 postNotificationName:*MEMORY[0x277D67AF0] object:0];

      v9 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToSpringBoardInternalUIForIncrease:increaseCopy];
      if (!v9)
      {
        v23 = +[SBHardwareButtonService sharedInstance];
        v24 = v23;
        if (increaseCopy)
        {
          v31 = 0;
          v25 = [v23 consumeVolumeIncreaseButtonSinglePressDownWithPriority:0 continuation:&v31];
          v26 = MEMORY[0x223D6F7F0](v31);

          v27 = MEMORY[0x223D6F7F0](v26);
          volumeIncreaseUpEventBlock = self->_volumeIncreaseUpEventBlock;
          self->_volumeIncreaseUpEventBlock = v27;
        }

        else
        {
          v30 = 0;
          v25 = [v23 consumeVolumeDecreaseButtonSinglePressDownWithPriority:0 continuation:&v30];
          v26 = MEMORY[0x223D6F7F0](v30);

          v29 = MEMORY[0x223D6F7F0](v26);
          volumeIncreaseUpEventBlock = self->_volumeDecreaseUpEventBlock;
          self->_volumeDecreaseUpEventBlock = v29;
        }

        if (v25)
        {
          v10 = @"SBHardwareButtonService";
          goto LABEL_18;
        }

        v9 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToSoundControllerForIncrease:increaseCopy];
        if (!v9)
        {
          v9 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToOverridingSceneForIncrease:increaseCopy];
          if (!v9)
          {
            v9 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToLegacyRegisteredClientsForIncrease:increaseCopy];
            if (!v9)
            {
              v9 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToSBUIControllerForIncrease:increaseCopy];
            }
          }
        }
      }

      v10 = v9;
    }
  }

LABEL_18:
  v20 = SBLogButtonsVolume(v9);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"decrease";
    if (increaseCopy)
    {
      v21 = @"increase";
    }

    *buf = 138543618;
    v33 = v21;
    v34 = 2114;
    v35 = v10;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Hardware Volume %{public}@ press handled by %{public}@", buf, 0x16u);
  }

  return v10 != 0;
}

uint64_t __78__SBVolumeHardwareButtonActions__handleVolumeButtonDownForIncrease_modifiers___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)_handleVolumeButtonUpForIncrease:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = "decrease";
  if (a1)
  {
    v2 = "increase";
  }

  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "ignoring %{public}s up event", &v3, 0xCu);
}

@end